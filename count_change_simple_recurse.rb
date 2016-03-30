# https://www.hackerrank.com/contests/programming-interview-questions/challenges/coin-change/submissions/code/5595228

# Enter your code here. Read input from STDIN. Print output to STDOUT
def getCoins(inp, ct)
    coins = []
    (2..ct+1).each { |i| coins.push(Integer(inp[i])) }
    
    coins
end

def getCombos(coins)
    combos = []
    (1..coins.length).each { |i| combos.concat(coins.combination(i).to_a.sort) }
    combos
end

# recurse
def numSolns(combo, goal)
    if goal < 0 || combo.length == 0 || combo.reduce(:+) > goal
        return 0
    elsif (combo.length == 1 && goal % combo[0] == 0)
        return 1
    end
    
    return numSolns(combo, goal - combo[combo.length-1]) +
        numSolns(combo.slice(0,combo.length-1), goal - combo[combo.length-1])
end

# code execution starts here

inp = $stdin.read.split(" ")
solns = 0

goal = Integer(inp[0])
coinCt = Integer(inp[1])
coins = getCoins(inp, coinCt)

allCombos = getCombos(coins)

allCombos.each do |combo|
    solns += numSolns(combo, goal)
end

puts solns
