column = 5

1.upto(column) do |i|
    print(" " * (column - i))
    print("*" * (2 * i - 1))
    print("\n");
end