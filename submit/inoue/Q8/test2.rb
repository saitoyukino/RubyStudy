=begin
## ２.仕様に合わせてHit And Blowゲームを作成させよ

### ゲーム仕様
ランダムな用意された3桁の数値（解答）を当てるゲーム。
※ゲームクリアするまでの回答数を競うゲーム.
ユーザが答えた3桁の数値に対して、hitまたはblowのヒントを与える。  　　

- hit：数字も場所も当たっている数字（3hitでゲームクリア）
- blow：数字は当たっているが場所が違う数字　　

例.正解が123の場合921は2で1Hit,で1で1Blow　　

### 動作仕様
- ユーザの入力値をチェックすること（エラーメッセージ表示）
　数値チェック：数値かどうか
　桁数チェック：3ケタかどうか
　同一値チェック：同じ値を入力していないかどうか
- ゲーム中「0」を入力でゲームを終了して初期状態に戻すこと
- ゲームクリア後、回答回数を表示すること
表示形式：[Hit:○ blow:○]

### コード条件
- 配列を使うこと
- クラス、メソッドをなるべく使うこと
- 数値以外を入れた場合はエラーメッセージを表示し終了すること

### ヒント
なし

=end

# 未解決
# 0がanswerにある場合　blow1加算される
# 0入力で初期化

def make_answer
  list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  answer = []
  while answer.size < 3
    rand_num = rand(list.size - 1)
    answer << list[rand_num]
    list.delete_at(rand_num)
  end
  answer
end

def check(user, answer)
  hit = 0
  blow = 0
  3.times { |i| hit += 1 if user[i] == answer[i] }
  answer.each do |item_ans|
    user.each { |item_user| blow += 1 if item_ans == item_user }
  end
  blow -= hit
  [hit, blow]
end

answer =  make_answer
p '== Hit and Blow =='
p 'Please enter number (3-digit)'
p answer

try_times = 0

loop do
  try_times += 1
  print 'try', try_times, '::'
  user = $stdin.gets.chomp!.unpack('a1a1a1a1').collect(&:to_i)
  h_b = check(user, answer)
  if h_b[0] == 3
    p '回答回数：', try_times, '回'
    p 'You win!'
    break
  else
    print "[Hit:#{h_b[0]}  blow:#{h_b[1]}]", "\n"
  end
end
