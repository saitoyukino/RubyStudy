
module Hoge
  def foo
    "Foo" + bar
  end

  private
  def bar
    "Bar"
  end
end

class Test
  class << self
    include Hoge
  end
end

puts Test.foo



