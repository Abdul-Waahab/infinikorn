require 'csv'
require 'colorize'
#$max_temp=[]
#$min_temp=[]
$file_name=ARGV[0]
class Bar
    # def address(city,year,month)
    #     @city=city
    #     @year=year
    #     @month=month
    #     $file_name="/home/wahab/Desktop/weatherman/#{@city}_weather/#{@city}_weather_#{@year}_#{@month}.txt"
def bar
    @max_temp=[]
    @min_temp=[]
     CSV.foreach($file_name) do|row| 
        @max_temp << row[1].to_i
        @min_temp << row[3].to_i
     end
     @count = @max_temp.size-1
     i=0
     while i<@count
        print "#{i+1}  "
        j=0
        while j<@max_temp[i].to_i
            print "+".red
            j+=1
        end
        print "#{j}C"
        puts"\n"

        print "#{i+1}  "
        k=0
        while k<@min_temp[i].to_i
            @count 
            print"+".blue
            k+=1
        end
        print"#{k}C"
        print"\n"

        i+=1
    end
    end
end

obj=Bar.new
obj.bar