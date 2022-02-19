require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
 memo_type = gets.chomp
 
 if memo_type == "1"
  
  puts "作成したいファイルの名前を拡張子を除いき、入力して下さい"
  
  file_name = gets.chomp
  
  CSV.open("#{file_name}.csv",'w') do |csv|
   
   puts "メモしたい内容を記入して下さい"
   puts "完了したら Ctrl + D を押して下さい"
   
   content = readlines
   csv << content
   
 end
  
 elsif memo_type == "2"
 
 puts "編集したいファイルの名前をを拡張子を除き、入力して下さい"
 
 file_name = gets.chomp
 
 CSV.open("#{file_name}.csv",'a') do |csv|
 
 puts "メモしたい内容を記入して下さい"
 puts "完了したら Ctrl + D を押して下さい"
 
 content = readlines
 csv << content
 
end

 else
  p "エラー"
  
 end
 