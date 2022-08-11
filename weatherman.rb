 require 'csv'
filenames_Dubai = Dir.chdir("/home/wahab/Desktop/weatherman/Dubai_weather") { Dir.entries(".") }
filenames_Murree = Dir.chdir("/home/wahab/Desktop/weatherman/Murree_weather") { Dir.entries(".") }
filenames_lahore = Dir.chdir("/home/wahab/Desktop/weatherman/lahore_weather") { Dir.entries(".") }


filenames_Dubai.sort!
filenames_Murree.sort!
filenames_lahore.sort!

 
 puts "Enter  Year: "
 year = gets.chomp

cities = ["lahore","Dubai","Murree"]
month = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]



max_temp=-1000
max_temp_date=""
min_temp=1000
min_temp_date=""
max_humidity=-0
max_humidity_date=""


file_path = "" 
file_name=""

countLahore=0
countDubai=0
countMurree=0

cities.each do |city|
    month.each do |mon|
        
        file_path = "/home/wahab/Desktop/weatherman/#{city}_weather/" 
        if city == "Dubai"
 

            file_name = "#{city}_weather_#{year}_#{mon}.txt"
            if filenames_Dubai.include?(file_name) 
                file_pth = file_path << file_name
                 file_path
                file = File.open(file_path,"r+")
                 file.inspect
                 file.read


                csv = CSV.read(file_path, :headers=>true)
                size = csv['Max TemperatureC'].size
                
                for i in 0...size
                    
                    if max_temp.to_i < csv['Max TemperatureC'][i].to_i
                        max_temp = csv['Max TemperatureC'][i]
                        max_temp_date= csv['GST'][i]
                        
                    end
                end

                size = csv['Min TemperatureC'].size
                
                for i in 0...size 
                    
                    if min_temp.to_i > csv['Min TemperatureC'][i].to_i
                        min_temp = csv['Min TemperatureC'][i]
                        min_temp_date= csv['GST'][i]
                        
                    end
                end
                size = csv['Max Humidity'].size
                
                for i in 0...size
                    
                    if max_humidity.to_i < csv['Max Humidity'][i].to_i
                        max_humidity = csv['Max Humidity'][i]
                        max_humidity_date= csv['GST'][i]

                    end
                end


            elsif
                puts "no file exist dubai"  
            end


        elsif city == "lahore"
 
            file_name = "#{city}_weather_#{year}_#{mon}.txt"
            if filenames_lahore.include?(file_name) 
                file_path = file_path << file_name
                 file_path
                file = File.open(file_path,"r+")
                 file.inspect
                 file.read


                csv = CSV.read(file_path, :headers=>true)
                size = csv['Max TemperatureC'].size
                
                for i in 0...size
                   
                    if max_temp.to_i < csv['Max TemperatureC'][i].to_i
                        max_temp = csv['Max TemperatureC'][i]
                        max_temp_date= csv['PKT'][i]
                        
                    end
                end

                size = csv['Min TemperatureC'].size
                
                for i in 0...size
                    
                    if min_temp.to_i > csv['Min TemperatureC'][i].to_i
                        min_temp = csv['Min TemperatureC'][i]
                        min_temp_date= csv['PKT'][i]
                        # puts "min"
                    end
                end

                size = csv['Max Humidity'].size
                
                for i in 0...size
                   
                    if max_humidity.to_i < csv['Max Humidity'][i].to_i
                        max_humidity = csv['Max Humidity'][i]
                        max_humidity_date= csv['PKT'][i]
                        
                    end
                end

            elsif
                puts "no file exist in lahore"  
            end

        elsif city == "Murree"
               
            
            file_name = "#{city}_weather_#{year}_#{mon}.txt"
            if filenames_Murree.include?(file_name) 
                file_path = file_path << file_name
                 file_path
                file = File.open(file_path,"r+")
                 file.inspect
                 file.read


                csv = CSV.read(file_path, :headers=>true)
                size = csv['Max TemperatureC'].size
                
                for i in 0...size
                    # puts "in loop"    # ... tells ruby to exclude the last number (here 10 if we .. only then it includes the last num)
                    if max_temp.to_i < csv['Max TemperatureC'][i].to_i
                        max_temp = csv['Max TemperatureC'][i]
                        max_temp_date= csv['PKT'][i]
                        # puts "max"
                    end
                end

                size = csv['Min TemperatureC'].size
                
                for i in 0...size
                    # puts "in loop"    # ... tells ruby to exclude the last number (here 10 if we .. only then it includes the last num)
                    if min_temp.to_i > csv['Min TemperatureC'][i].to_i
                        min_temp = csv['Min TemperatureC'][i]
                        min_temp_date= csv['PKT'][i]
                        # puts "min"
                    end
                end
                
                size = csv['Max Humidity'].size
                
                for i in 0...size
                    # puts "in loop"    # ... tells ruby to exclude the last number (here 10 if we .. only then it includes the last num)
                    if max_humidity.to_i < csv['Max Humidity'][i].to_i
                        max_hmidity = csv['Max Humidity'][i]
                        max_humidity_date= csv['PKT'][i]
                        # puts "max"
                    end
                end

            elsif
                puts "no file exist in Murree"  
            end

        end
    end
            # count+=1
        
    # file = File.open(file_open,"r+")
    # puts file.inspect
    # puts file.read
end

puts "Max Temperature: #{max_temp}"
puts "ON Date: #{max_temp_date}" 
puts "Min Temperature: #{min_temp}"
puts "ON Date: #{min_temp_date}"
puts "Max Humidity: #{max_humidity}"
# puts "ON Date: #{max_humidity_date}"