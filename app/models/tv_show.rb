class TvShow < ApplicationRecord

  # rememeber to add the module BEFORE the code!!
  include PgSearch::Model
  
  # By adding this code to the models tells our table what is the CONTENT I'm searching for:
  multisearchable against: [:title, :syllabus]
end
