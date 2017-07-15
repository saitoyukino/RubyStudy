class HITBALL
  @@count = 0
    
  #答え作成
  def initialize
    @ary = Array.new(3)
    @ary[0] = rand(0..9)
    begin
      @ary[1] = rand(0..9)
    end while @ary[0]==@ary[1]
    begin
      @ary[2] = rand(0..9)
    end while (@ary[0]==@ary[2])||(@ary[1]==@ary[2])
  end
  
  #答えとuser入力値比較
  def check(ans)
    @@count += 1
    hit = 0
    blow = 0
    result = true
    for i in 0..2
      for j in 0..2
        #puts "(#{i})#{@ary[i]}  (#{j})#{ans[j]}"
        if (i == j) && (@ary[i] == ans[j].to_i)
          hit += 1
        elsif @ary[i] == ans[j].to_i
          blow += 1
        end
      end
    end
    if hit==3
      result = false
      puts "Hit 3! you win Times #{@@count}"
    else
      puts "Hit:#{hit} Blow:#{blow}  #{@@count}Times"
    end
    return result
  end
end

def userCheck(user)
  userAry = user.split("")
  for i in 0..userAry.length-1
    for j in i+1..userAry.length
      if(userAry[i]==userAry[j])
        puts "Not Allowed Same number"
        return true
      end
    end
  end
  return false
end


hitball = HITBALL.new()  

begin
#入力
  begin
    begin
      puts "input 3 number (0で終了)"
      user = gets.chomp
      if(/^[0-9]{3}$/ =~ user)
        break
      elsif user=="0"
        exit(0)
      else
        puts "Error !!! please enter three number"
      end
    end while true
  end while (userCheck(user)) 
end while (hitball.check(user.split("")))