# Implement your object-oriented solution here!

class EvenFibonacci
    attr_accessor :limit

    def initialize(limit)
        @limit = limit
    end

    def sum
        fibonacci = [1, 2]
        # Have to start my sum at 2 to catch the first even number in the initial fibonacci array
        sum = 2
        until fibonacci[-1] > self.limit 
            fibonacci << fibonacci[-1] + fibonacci[-2]
            if fibonacci[-1] % 2 == 0 && fibonacci[-1] < self.limit
                sum = sum + fibonacci[-1]
            end
        end
        sum
    end
end





