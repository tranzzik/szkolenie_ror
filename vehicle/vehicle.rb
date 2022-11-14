#!/usr/bin/ruby
# frozen_string_literal: true

class Vehicle
  attr_accessor :open_doors_count

  def initialize
    @open_doors_count = 0
  end

  def open_door
    raise StandardError, 'Cant open any more doors' unless open_doors_count < doors_count

    @open_doors_count += 1
    print_current_count
  rescue Exception => e
    puts "ERROR: #{self.class} #{e}"
  end

  def close_door
    raise StandardError, 'Cant close any more doors' unless open_doors_count.positive?

    @open_doors_count -= 1
    print_current_count
  rescue Exception => e
    puts "ERROR: #{self.class} #{e}"
  end

  private

  def print_current_count
    puts "#{self.class} Doors currently open #{open_doors_count}"
  end
end

class PassengerCar < Vehicle
  def doors_count
    4
  end
end

class Coach < Vehicle
  def doors_count
    4
  end
end

Seat = PassengerCar.new
Volvo = Coach.new
Seat.open_door
Volvo.close_door

6.times { Volvo.open_door }
5.times { Seat.open_door }
