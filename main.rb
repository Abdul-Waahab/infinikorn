require 'csv'
require_relative 'Weatherman'
require_relative 'weatherman3'
require_relative 'weatherman4'


flag= ARGV[0]
@city=ARGV[1]
@year=ARGV[2]
@month=ARGV[3]

case flag
    
when '-a'
    obj=Weatherman.new
    obj.address(city, year, month)
    obj.max_temp_avg
    obj.min_temp_avg
    obj.avghumidity

when '-c'
    obj=Bar.new
    obj.address(city, year, month)
    obj.bar
    

# when '-e'
#     obj=weatherman.new
    
else
    puts"Invalid key"
end    