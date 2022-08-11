require 'csv'
require 'colorize'
#$max_temp=[]
#$min_temp=[]
$file_name=ARGV[0]
class Bar
def bar
    @max_temp=[]
    @min_temp=[]
     CSV.foreach($file_name) {|row| @max_temp << row[1].to_i}
     CSV.foreach($file_name) {|row| @min_temp << row[3].to_i}

     