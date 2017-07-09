# 課題8

## 1.文字列の英単語をすべて小文字に変換した結果を配列で返すstr_downcaseメソッドを作成せよ
# 実行例
# ```
# p str_downcase("HELLO WORLD")
# ```
#
# 実行結果
# ```
# [hello,world]
# ```

def str_downcase(words)
  words = words.downcase
  words = words.split(' ')
  words
end

p str_downcase('HELLO WORLD')
