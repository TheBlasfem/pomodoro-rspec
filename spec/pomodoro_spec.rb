require 'rspec'
require_relative '../lib/pomodoro'

describe Pomodoro do
  before { @pomodoro = Pomodoro.new }
  context 'crear' do

	  it 'un pomodoro tiene una duracion de 25 minutos' do
	  	@pomodoro.start(25)
	    expect(@pomodoro.tiempo).to eq 25
	  end

	  it 'un pomodoro puede tener cualquier duracion' do
	  	@pomodoro = Pomodoro.new(15)
	    expect(@pomodoro.tiempo).to eq 15
	  end

	  it 'un pomodoro puede iniciar con 0' do
	    expect(@pomodoro.tiempo).to eq 0
	  end

	  it 'inicia la cuenta atras' do
	  	sleep(4)
        expect(@pomodoro.tiempo).to be < 25 
	  end
  end
end
