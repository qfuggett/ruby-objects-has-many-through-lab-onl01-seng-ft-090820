class Doctor
  attr_accessor :name, :patient
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def new_appointment(date, patient)
    Appointment.new()
  end
  
  def appointments
    Appointment.all.select do |element|
      element
  
  
end