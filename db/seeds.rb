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
                    title: 'History'
                  },
                  {
                    title: 'News'
                  },
                  {
                    title: 'Science'
                  }
                ])

Lesson.create([
                {
                  title: 'World War I',
                  category_id: 1,
                  avatar_url: 'https://www.brookdalecc.edu/center-for-world-war-ii-studies/wp-content/uploads/sites/255/2012/12/Iwo-Jima-1945.gif'
                },
                {
                  title: 'World War II',
                  category_id: 1,
                  avatar_url: 'https://nationalinterest.org/sites/default/files/styles/desktop__1486_x_614/public/main_images/German_troops_in_Russia%2C_1941_-_NARA_-_540155.jpg?itok=nDbmsAok'
                },
                {
                  title: 'Breaking news 256',
                  category_id: 2,
                  avatar_url: 'https://s3.amazonaws.com/s3.wben.com/styles/nts_image_cover_tall_775x425/s3/s3fs-public/breaking%20graphic%20deamstime.jpg?itok=EO-VUuNW&c=b6edab9350f457edd2df68f0c7623b9c'
                },
                {
                  title: 'Breaking news 173',
                  category_id: 2,
                  avatar_url: 'https://s3.amazonaws.com/s3.wben.com/styles/nts_image_cover_tall_775x425/s3/s3fs-public/breaking%20graphic%20deamstime.jpg?itok=EO-VUuNW&c=b6edab9350f457edd2df68f0c7623b9c'
                },
                {
                  title: 'Blackhole',
                  category_id: 3,
                  avatar_url: 'https://www.nasa.gov/sites/default/files/cygx1_ill.jpg'
                },
                {
                  title: 'Neutron star',
                  category_id: 3,
                  avatar_url: 'https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2018/neutronstarj.jpg'
                }
              ])

Sentence.create([
                  {
                    content: 'World War I (often abbreviated as WWI or WW1), also known as the First World War or the Great War, was a global war originating in Europe that lasted from 28 July 1914 to 11 November 1918',
                    lesson_id: 1
                  },
                  {
                    content: 'Contemporaneously described as "the war to end all wars", it led to the mobilisation of more than 70 million military personnel, including 60 million Europeans, making it one of the largest wars in history',
                    lesson_id: 1
                  },
                  {
                    content: 'It is also one of the deadliest conflicts in history',
                    lesson_id: 1
                  },
                  {
                    content: 'A network of interlocking alliances enlarged the crisis from a bilateral issue in the Balkans to one involving most of Europe',
                    lesson_id: 1
                  },
                  {
                    content: 'By July 1914, the great powers of Europe were divided into two coalitions',
                    lesson_id: 1
                  },

                  {
                    content: 'World War II (often abbreviated to WWII or WW2), also known as the Second World War, was a global war that lasted from 1939 to 1945',
                    lesson_id: 2
                  },
                  {
                    content: "The vast majority of the world's countries—including all the great powers—eventually formed two opposing military alliances",
                    lesson_id: 2
                  },
                  {
                    content: 'A state of total war emerged, directly involving more than 100 million people from over 30 countries',
                    lesson_id: 2
                  },
                  {
                    content: 'A network of interlocking alliances enlarged the crisis from a bilateral issue in the Balkans to one involving most of Europe',
                    lesson_id: 2
                  },
                  {
                    content: 'By July 1914, the great powers of Europe were divided into two coalitions',
                    lesson_id: 2
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
                    content: 'You may want a writing group',
                    lesson_id: 4
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
                    content: 'The study was released at the African Green Revolution Forum in Addis Ababa, Ethiopia',
                    lesson_id: 5
                  },
                  {
                    content: 'David Sarfo Ameyaw was a lead producer of the report',
                    lesson_id: 5
                  },
                  {
                    content: 'He is a director at the Alliance for a Green Revolution in Africa',
                    lesson_id: 5
                  },

                  {
                    content: 'He said small farm owners produce about 80 percent of the food needed in Africa',
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
