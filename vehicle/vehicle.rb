#!/usr/bin/ruby

class Vehicle
    attr_accessor :open_doors_count

    def initialize
        @open_doors_count = 0
    end

    def open_door
        if open_doors_count < doors_count
            @open_doors_count += 1
            print_current_count
        else
            raise Exception, "Cant open any more doors"
        end
    rescue Exception => e
        puts "ERROR: #{self.class}" + " " + e.to_s
    end

    def close_door
        if open_doors_count > 0
            @open_doors_count -= 1
            print_current_count
        else
            raise Exception, "Cant close any more doors"
        end
    rescue Exception => e
        puts "ERROR: #{self.class}" + " " + e.to_s
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

6.times {Volvo.open_door}
5.times {Seat.open_door}