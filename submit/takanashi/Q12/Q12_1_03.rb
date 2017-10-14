column = 5

column.downto(1) do |i|
    print(" " * (column - i))
    print("*" * (2 * i - 1))
    print("\n");
end