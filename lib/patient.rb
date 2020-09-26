class Patient
  attr_accessor :name, :doctor
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def self.all
    @@all
  end
  
  
  def new_appointment(date, doctor)
    Appointment.new(date, patient, doctor)
  end
  
  
  def appointments
    Appointment.all.select do |element|
      element.patient == self
    end
  end
  
  
  def doctors
    appointments.collect do |element|
      element.doctor
    end
  end
  
end