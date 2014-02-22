class Pomodoro
  attr_reader :tiempo, :hilo

  def initialize(tiempo=0)
    self.start tiempo
  end

  def start(tiempo=25)
  	@tiempo = tiempo
  	self.count
  end

  def count
    @hilo = Thread.new{ loop { 
    	sleep(1)
    	@tiempo -= 1 } }
  end

  def stop
    Thread.kill(@hilo)
  end

end
