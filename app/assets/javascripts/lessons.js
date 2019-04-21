$(document).on('turbolinks:load', function () {
  try {
    var SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
    var recognition = new SpeechRecognition();
  } catch (e) {
    console.error(e);
  }

  var noteTextarea;
  var clicked = false;

  var noteContent = '';
  var targetID;
  var points = [];

  /*-----------------------------
        Voice Recognition 
  ------------------------------*/

  // If false, the recording will stop after a few seconds of silence.
  // When true, the silence period is longer (about 15 seconds),
  // allowing us to keep recording even when the user pauses. 
  recognition.continuous = true;

  // This block is called every time the Speech APi captures a line. 
  recognition.onresult = function (event) {

    // event is a SpeechRecognitionEvent object.
    // It holds all the lines we have captured so far. 
    // We only need the current one.
    var current = event.resultIndex;

    // Get a transcript of what was said.
    var transcript = event.results[current][0].transcript;

    // Add the current transcript to the contents of our Note.
    // There is a weird bug on mobile, where everything is repeated twice.
    // There is no official solution so far so we have to handle an edge case.
    var mobileRepeatBug = (current == 1 && transcript == event.results[0][0].transcript);

    if (!mobileRepeatBug) {
      noteContent = transcript;
      noteTextarea.val(noteContent);

      var message = $('#content_' + targetID).data("content");
      var point = Math.floor(similarity(message, noteContent) * 100);
      points[targetID] = point;
      changeProgressBar(targetID, point);
    }
  };

  /*-----------------------------
        App buttons and input 
  ------------------------------*/

  $('.sentence .record').on('click', function (e) {
    if (clicked) {
      targetID = e.target.value;
      recognition.stop();
      clicked = false;
    } else {
      clicked = true;
      if (noteContent.length) {
        noteContent += ' ';
      }
      noteTextarea = $('#sentence_' + e.target.value)
      recognition.start();

      // Sync the text inside the text area with the noteContent variable.
      noteTextarea.on('input', function () {
        noteContent = $(this).val();
      })
    }


  });

  /*-----------------------------
        Speech Synthesis 
  ------------------------------*/
  $('.sound').on('click', function (e) {
    var message = $('#content_' + e.target.value).data("content");
    readOutLoud(message);
  });


  function readOutLoud(message) {
    var speech = new SpeechSynthesisUtterance();

    // Set the text and voice attributes.
    speech.text = message;
    speech.volume = 1;
    speech.rate = 0.8;
    speech.pitch = 1;

    window.speechSynthesis.speak(speech);
  }

  /*-----------------------------
        Compare String 
  ------------------------------*/
  function similarity(s1, s2) {
    var longer = s1;
    var shorter = s2;
    if (s1.length < s2.length) {
      longer = s2;
      shorter = s1;
    }
    var longerLength = longer.length;
    if (longerLength == 0) {
      return 1.0;
    }
    return (longerLength - editDistance(longer, shorter)) / parseFloat(longerLength);
  }

  function editDistance(s1, s2) {
    s1 = s1.toLowerCase();
    s2 = s2.toLowerCase();

    var costs = new Array();
    for (var i = 0; i <= s1.length; i++) {
      var lastValue = i;
      for (var j = 0; j <= s2.length; j++) {
        if (i == 0)
          costs[j] = j;
        else {
          if (j > 0) {
            var newValue = costs[j - 1];
            if (s1.charAt(i - 1) != s2.charAt(j - 1))
              newValue = Math.min(Math.min(newValue, lastValue),
                costs[j]) + 1;
            costs[j - 1] = lastValue;
            lastValue = newValue;
          }
        }
      }
      if (i > 0)
        costs[s2.length] = lastValue;
    }
    return costs[s2.length];
  }

  function changeProgressBar(id, point) {
    var elem = $('#progress_' + id);
    var width = 1;
    var id = setInterval(frame, 1);

    function frame() {
      if (width >= point) {
        clearInterval(id);
      } else {
        width++;
        elem.css('width', point + '%').html(point + '%');
      }
    }
  }

  $('#submit').click(function (e) {
    var totalPoint = points.reduce(function (a, b) {
      return a + b;
    });

    $.ajax({
      type: 'POST',
      url: '/user_lessons',
      data: {
        lesson_id: gon.lesson_id,
        total_point: totalPoint
      }
    });
  });

  $('#reset').click(function (e) {
    $('textarea').html('');
    $('.progress-bar').css('width', '0%').html(0 + '%');
    clicked = false;
    noteContent = '';
    targetID = 0;
    points = [];
  });
});
