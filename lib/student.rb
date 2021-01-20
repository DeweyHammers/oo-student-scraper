class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    set_attrs(student_hash)
    @@all << self 
  end

  def set_attrs(hash)
    hash.each {|key, value| self.send(("#{key}="), value)}
  end

  def self.create_from_collection(students_array)
    students_array.map {|attr| Student.new(attr)}
  end

  def add_student_attributes(attributes_hash)
    set_attrs(attributes_hash)
  end

  def self.all
    @@all
  end
end

