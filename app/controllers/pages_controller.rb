class PagesController < ApplicationController
  def about
  	 
  end

 def home
  	 @top_tutors = TopTutor.all
  	 @popular_institutes = PopularInstitute.all
  end

  def team
  end
end



 