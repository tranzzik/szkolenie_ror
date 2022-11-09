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
    end

    def close_door
        if open_doors_count > 0
            @open_doors_count -= 1
            print_current_count
        else
            raise Exception, "Cant close any more doors"
        end
    end

    private
    def print_current_count
        puts "Doors currently open #{open_doors_count}"
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