# https://www.hackerrank.com/contests/programming-interview-questions/challenges/fibonacci-lite

def fib(n)
    return 1 if n == 1
    return 0 if n == 0
    
    return fib(n-1) + fib(n-2)
end

inp = Integer($stdin.read)

puts fib(inp)
