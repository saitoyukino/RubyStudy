# 課題5
=begin
## 1.下記Hogeモジュールを利用しクラスメソッドfooを持つTestクラスを定義せよ

### Hogeモジュールの定義
```
module Hoge
  def foo
    "Foo" + bar
  end

  private
  def bar
    "Bar"
  end
end
```

### 実行結果

#### 実行コマンド
```
puts Test.foo
```
#### 結果
```
FooBar
```

### コード条件
- なし

=end

module Hoge
  def foo
    "Foo" + bar
  end

  private
  def bar
    "Bar"
  end
    #module_function :foo, :bar
end

class TestModule
  include Hoge
  def link
    print foo,bar
  end
end

Test = TestModule.new

puts Test.foo


## 2.下記条件に従い、じゃんけんゲームを完成させよ
=begin
### 仕様
1)ジャンケンゲームでユーザにカード（0:グー、1:チョキ、2:パー、end:ゲーム終了）を選択させコンピュータと対戦。
2)「自分の手：相手の手：勝ち負けあいこの結果」を出力。
3)endを入力するまで1)2)を繰り返し
end:「ゲーム数：勝数：負数：引き分け数」を出力して終了。

### コード条件
- クラス、メソッドをなるべく使うこと
- 入力検証を行いエラーメッセージを出力すること（文字チェック[0,1,2,end以外]）

### ヒント
ランダム値はrandメソッド
https://docs.ruby-lang.org/ja/latest/method/Kernel/m/rand.html

=end

=begin
#あいこ処理
def tie()
  next_game = true
  # じゃんけんを繰り返す
  while next_game do
    next_game = game
  end
end
=end

#ゲーム
def game()
  win = [0]*3
  1.upto(0/(0.0)) do |count|
    print count,"戦目\n"
    puts "最初はグー、じゃんけん..."
    puts "[0]:グー\n[1]:チョキ\n[2]:パー\n[end]:ゲーム終了"

    player_hand = gets.chomp
    if player_hand == "end"
      puts "終了します"
      print "ゲーム数：",count-1," ","勝数：",win[0]," ","敗数：",win[1]," ","あいこ：",win[2],"\n"
      return
    else
      player_hand = player_hand.to_i(10)

      while player_hand >=3 || player_hand < 0 do
        puts "範囲外の数値です。再入力"
        player_hand = gets.to_i
      end
    end
      program_hand = rand(3)

      jankens = ["グー", "チョキ", "パー"]

      puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"
<<<<<<< HEAD
      diff = player_hand - program_hand
=======
>>>>>>> 92ba84d5f09a4d4b96257408d42359d2fb8af95f
    if player_hand == program_hand
      puts "あいこ"
      win[2] += 1
      # 返り値を返す
<<<<<<< HEAD
    elsif diff == -1 || diff == 2
=======
    elsif player_hand < program_hand
>>>>>>> 92ba84d5f09a4d4b96257408d42359d2fb8af95f
      puts "あなたの勝ちです"
      win[0] += 1

    else
      puts "あなたの負けです"
      win[1] += 1
    end
    print "ゲーム数：",count," ","勝数：",win[0]," ","敗数：",win[1]," ","あいこ：",win[2],"\n"
  end
end


game()
