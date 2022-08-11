require 'csv'
$max_temp=[]
$min_temp=[]
$avg_humidity=[]

$file_name =ARGV[0]


class Weatherman

    # def address(city,year,month)
    #     @city=city
    #     @year=year
    #     @month=month
    #     $file_name="/home/wahab/Desktop/weatherman/#{@city}_weather/#{@city}_weather_#{@year}_#{@month}.txt"
  
    def max_temp_avg

     CSV.foreach($file_name) {|row| $max_temp << row[1].to_i}
     array_size=$max_temp.size-1
     total_max_temp=$max_temp.inject(0) {|sum,num| sum+=num}
     max_avg_temp=total_max_temp/array_size
     puts "Highest Average Temperature: #{max_avg_temp}"

  end


def min_temp_avg

     CSV.foreach($file_name) {|row| $min_temp << row[3].to_i}
     array_size=$min_temp.size-1
     total_min_temp=$min_temp.inject(0)  {|sum,num| sum+=num}
     min_avg_temp=total_min_temp/array_size
     puts "Lowest Average Temperature: #{min_avg_temp}"

  end

  def avghumidity

     CSV.foreach($file_name) {|row| $avg_humidity << row[8].to_i}
     array_size=$min_temp.size-1
     total_avg_humidity=$avg_humidity.inject(0)  {|sum,num| sum+=num}
     average_humidity=total_avg_humidity/array_size
     puts "Average Humidity: #{average_humidity}"

  end
end

obj=Weatherman.new
obj.max_temp_avg
obj.min_temp_avg
obj.avghumidity

