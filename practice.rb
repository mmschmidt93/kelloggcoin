# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
 
#payment_from = blockchain[:from_user]
ben_balance = 0
brian_balance = 0
evan_balance = 0
anthony_balance = 0

for transaction in blockchain

to_wallets = transaction[:to_user] 
from_wallets = transaction[:from_user]

if transaction[:to_user] == "ben"
ben_balance += transaction[:amount]
elsif from_wallets == "ben"
ben_balance -= transaction[:amount]
end

if transaction[:to_user] == "brian"
brian_balance += transaction[:amount]
elsif from_wallets == "brian"
brian_balance -= transaction[:amount]
end

if transaction[:to_user] == "evan"
evan_balance += transaction[:amount]
elsif from_wallets == "evan"
evan_balance -= transaction[:amount]
end

if transaction[:to_user] == "anthony"
anthony_balance += transaction[:amount]
elsif from_wallets == "anthony"
anthony_balance -= transaction[:amount]
end

end

puts "Ben's KelloggCoin balance is #{ben_balance}"
puts "Brian's KelloggCoin balance is #{brian_balance}"
puts "Evan's KelloggCoin balance is #{evan_balance}"
puts "Anthony's KelloggCoin balance is #{anthony_balance}"

#puts wallet_amount
#unique_wallet = wallets.uniq.sort
#combined_wallets = to_wallets + from_wallets
#puts "#{transaction[:to_user]} wallet"
#puts "The most recent payment to #{transaction[:to_user]}"
#puts "The most recent payment amount of #{transaction[:amount]}"