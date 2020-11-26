class Movie < ApplicationRecord
  belongs_to :director
  
  # rememeber to add the module BEFORE the code!!
  include PgSearch::Model

  # By adding this code to the models tells our table what is the CONTENT I'm searching for:
  multisearchable against: [:title, :syllabus]

  pg_search_scope :search_by_title_and_syllabus,
    against: [ :title, :syllabus ],

    #SEARCHING THROUGH ASSOCIATION - We can now search using director :first_name AND :last_name
    associated_against: {
    director: [ :first_name, :last_name ]
    },

    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
