
require 'sqlite3'
require 'active_record'
ActiveRecord::Base.establish_connection(
  adapter:   'sqlite3',
    database:  'school.db'
    )




class Main

   selectAll = "s"
   insert = "i"
   delete = "d"
   close = "e"
  regex_select = /[(s|i|d|e)]/
 
 
 def self.start()

 choice = 's.全部表示 / i.idを入力してください/ d.削除する/exit.終了'
 regex_select = /[(s|i|d)]/


　begin
 
  while true
  case Ask (choice,regex_select)
  when selectAll then
    showAll_rec
  when insert then
    puts insert_rec
 when delete then
   puts delete_rec
 
end
end

rescue => e 
 puts "終了"
 returns false
end

action

## 全部表示

def self.showAll_rec
recs = Post.all
 if recs
 recs.each do |post|
 puts post.id
 puts post.name
 puts "全部表示"			        
 end
else
puts "table empty"
end

end


## id を入力
 
def self.insert_rec
  input_id = "idを入力"
  id_reg = /[0-9]{2}/
  input_name= "名前を入力"
  name_reg = /[aA-zZ]{25}/


