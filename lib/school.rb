require 'pry'

class School

  GRADES = []

  def initialize(school)
    @school = school
    @roster = {}
  end


  def roster
    @roster
  end


  def add_student(student_name, grade_number)
    #binding.pry
    if @roster[grade_number]
      @roster[grade_number] << student_name
    else
      @roster[grade_number] = []
      @roster[grade_number] << student_name
    end
  end


  def grade(grade_number)
    @roster[grade_number]
  end


  def sort
    #sorted_names = {}
    #@roster.each do |grade, students|
    #  sorted_names[grade] = []
    #  sorted_names[grade] << students.sort
    #end
    #sorted_names
    sorted_names = {}
    GRADES.each do |grade|
      sorted_names[grade] = []
      sorted_names[grade] << @roster[grade].sort
    end
    sorted_names

  end
end
