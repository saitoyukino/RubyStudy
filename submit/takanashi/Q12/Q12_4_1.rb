def fib(num)
    if num == 0
        return 0
    end
    if num == 1
        return 1
    end
    return fib(num - 2) + fib(num - 1)
end

for i in 1..20
    print(fib(i))
    print(", ")
end