class Wildflowers

attr_accessor :name, :color

end
		
	class Aster < Wildflowers
		def vibe
			return "Sassy like my name says!"
		end
	end

	class Carrot < Wildflowers
		def season
			return "late summer"
		end
	end

	class Orchid < Wildflowers
		def hiding_place
			return "low to the ground, near decaying logs"
		end
	end

my_aster = Aster.new
my_aster.name = "Yellow Salsify"
aster_name = my_aster.name

my_carrot = Carrot.new
my_carrot.name = "Queen Anne's Lace"
carrot_name = my_carrot.name

my_orchid = Orchid.new
my_orchid.name = "Calypso Orchid"
orchid_name = my_orchid.name

puts "#{aster_name}, #{carrot_name}, and #{orchid_name} are all Montana wildflowers but they are so different!"
puts my_aster.inspect
puts my_carrot.inspect
puts my_orchid.inspect
