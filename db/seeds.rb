# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
              {
                email: 'normal_user@gmail.com',
                password: '123456',
                password_confirmation: '123456',
                is_admin: false
              },
              {
                email: 'admin@gmail.com',
                password: '123456',
                password_confirmation: '123456',
                is_admin: true
              }
            ])

Category.create([
                  {
                    title: '/j/'
                  },
                  {
                    title: '/ch/'
                  },
                  {
                    title: '/s/'
                  }
                ])

Lesson.create([
                {
                  title: 'Greating (/j/ sound)',
                  category_id: 1,
                  level: 1,
                  avatar_url: 'https://images.twinkl.co.uk/tw1n/image/private/t_630/image_repo/81/3b/T-E-662-English-Greetings-Display-Posters.jpg'
                },
                {
                  title: 'Practice your self (/j/ sound)',
                  category_id: 1,
                  level: 2,
                  avatar_url: 'https://www.incimages.com/uploaded_files/image/970x450/getty_133970892_157811.jpg'
                },
                {
                  title: 'Breaking news 256 (/ch/ sound)',
                  category_id: 2,
                  level: 1,
                  avatar_url: 'https://static.wixstatic.com/media/9d5371_6259dfc0d7724ff5a24406d96171df51~mv2.jpg'
                },
                {
                  title: 'Breaking news 173 (/s/ sound)',
                  category_id: 3,
                  level: 2,
                  avatar_url: 'https://static.wixstatic.com/media/9d5371_6259dfc0d7724ff5a24406d96171df51~mv2.jpg'
                },
                {
                  title: 'Discovery the Asia (/ch/ sound)',
                  category_id: 2,
                  level: 1,
                  avatar_url: 'https://www.dca.org.au/whatsyourasiacapability/whatsyourasiacapability_files/asia_map.jpg'
                },
                {
                  title: 'Practice your self (/s/ sound)',
                  category_id: 3,
                  level: 2,
                  avatar_url: 'https://www.incimages.com/uploaded_files/image/970x450/getty_133970892_157811.jpg'
                }
              ])

Sentence.create([
                  {
                    content: 'You',
                    lesson_id: 1
                  },
                  {
                    content: 'Your',
                    lesson_id: 1
                  },
                  {
                    content: 'Meet you',
                    lesson_id: 1
                  },
                  {
                    content: 'Your name',
                    lesson_id: 1
                  },
                  {
                    content: "It's nice to meet you",
                    lesson_id: 1
                  },
                  {
                    content: 'I bet your boss doesn’t know',
                    lesson_id: 1
                  },
                  {
                    content: "Right, so you've heard the examples, and now it's your turn. Are you ready to start? Listen and repeat",
                    lesson_id: 1
                  },

                  {
                    content: 'Judge',
                    lesson_id: 2
                  },
                  {
                    content: 'Jump',
                    lesson_id: 2
                  },
                  {
                    content: 'Joy',
                    lesson_id: 2
                  },
                  {
                    content: 'By July 1914, the great powers of Europe were divided into two coalitions',
                    lesson_id: 2
                  },
                  {
                    content: 'I enjoy eating jam and jelly',
                    lesson_id: 2
                  },
                  {
                    content: 'Just apologize to the teacher for touching the giraffe',
                    lesson_id: 2
                  },
                  {
                    content: 'The joyful judge ate fudge in the kitchen',
                    lesson_id: 2
                  },
                  {
                    content: 'Imagine a giant, gentle witch with an itch',
                    lesson_id: 2
                  },

                  {
                    content: 'China',
                    lesson_id: 3
                  },
                  {
                    content: 'Chip',
                    lesson_id: 3
                  },
                  {
                    content: 'Teach',
                    lesson_id: 3
                  },
                  {
                    content: 'Writing an essay or paper for school can feel like – and often is – a big challenge',
                    lesson_id: 3
                  },
                  {
                    content: 'But an expert from Duke University in North Carolina has some ideas to make the process easier and produce better results',
                    lesson_id: 3
                  },
                  {
                    content: 'Jennifer Ahern- Dodson is an assistant writing professor',
                    lesson_id: 3
                  },
                  {
                    content: 'She also helps organize writing groups for both students and teachers',
                    lesson_id: 3
                  },
                  {
                    content: 'She believes getting writing advice and suggestions from others can help the writing process',
                    lesson_id: 3
                  },

                  {
                    content: 'Say',
                    lesson_id: 4
                  },
                  {
                    content: 'Sister',
                    lesson_id: 4
                  },
                  {
                    content: 'Cross',
                    lesson_id: 4
                  },
                  {
                    content: 'Misty',
                    lesson_id: 4
                  },
                  {
                    content: 'Ms. Ahern-Dodson says that students usually share their writing when it is in its final version',
                    lesson_id: 4
                  },
                  {
                    content: 'Instead, she suggests that students seek comments and advice on earlier versions',
                    lesson_id: 4
                  },
                  {
                    content: 'She says try to find someone who you think can provide helpful criticism',
                    lesson_id: 4
                  },
                  {
                    content: 'Ms. Ahern-Dodson also says you may want more than one reader to comment',
                    lesson_id: 4
                  },

                  {
                    content: 'Change',
                    lesson_id: 5
                  },
                  {
                    content: 'Children',
                    lesson_id: 5
                  },
                  {
                    content: 'Church',
                    lesson_id: 5
                  },
                  {
                    content: 'Kitchen',
                    lesson_id: 5
                  },
                  {
                    content: 'A new study says the speed and severity of climate change could cause major damage to small African farms',
                    lesson_id: 5
                  },
                  {
                    content: 'These farmers are already struggling to deal with the effects of climate change',
                    lesson_id: 5
                  },
                  {
                    content: 'Teach the children at the church',
                    lesson_id: 5
                  },
                  {
                    content: 'The spatula is in the kitchen',
                    lesson_id: 5
                  },
                  {
                    content: 'We eat cheese and chips on a china plate',
                    lesson_id: 5
                  },

                  {
                    content: 'Said',
                    lesson_id: 6
                  },
                  {
                    content: 'Small',
                    lesson_id: 6
                  },
                  {
                    content: 'Size',
                    lesson_id: 6
                  },
                  {
                    content: 'These farmers grow most of the main crops in Africa on fields from two to 10 hectares in size',
                    lesson_id: 6
                  },
                  {
                    content: 'But, small farms in Africa are much less productive than those in other places',
                    lesson_id: 6
                  },
                  {
                    content: 'Mr. Ameyaw said a main reason is weather',
                    lesson_id: 6
                  },
                  {
                    content: 'He said most of the African farms are rain-fed',
                    lesson_id: 6
                  }
                ])
