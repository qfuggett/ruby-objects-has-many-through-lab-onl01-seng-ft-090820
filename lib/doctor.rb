class Doctor
  attr_accessor :name, :patient
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def self.all
    @@all
  end
  
  
  def new_appointment(date, patient)
    Appointment.new(name)
  end
  
  def appointments
    Appointment.all.select do |element|
      element.doctor == self
    end
  end
  
  def patients
    appointment.collect do |element|
      element.doctor
    end
  end
  
  
end