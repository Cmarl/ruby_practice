# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.

def wonky_coins(coin)
  return 1 if coin == 0
  return wonky_coins(coin / 2) + wonky_coins(coin / 3) + wonky_coins(coin / 4)
end

# without recursion
def wonky_coins(n)
  return 1 if n == 0
  coins = [n]
  while coins.select{|c| c > 0} != []
    coin = coins.shift
    coin > 0 ? coin = [(coin / 2),(coin / 3),(coin / 4)] : coins << 0
    3.times {coins << coin.pop} if coin != 0
  end
  return coins.count
end
