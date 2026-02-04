# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
# make variables for each person
ct_br = 0
ct_bn = 0
ct_ev = 0
ct_an = 0

# loop through each i hash in blockchain
for i in blockchain
  #subtract the amount from user looking at each name
  if i["from_user"] == "brian"
    ct_br = ct_br - i["amount"]
  elsif i["from_user"] == "ben"
    ct_bn = ct_bn - i["amount"]
  elsif i["from_user"] == "evan"
  ct_ev = ct_ev - i["amount"]
  elsif i["from_user"] == "anthony"
    ct_an = ct_an - i["amount"]
  end

  #add the amount to user looking at each name
  if i["to_user"] == "brian"
    ct_br = ct_br + i["amount"]
  elsif i["to_user"] == "ben"
    ct_bn = ct_bn + i["amount"]
  elsif i["to_user"] == "evan"
  ct_ev = ct_ev + i["amount"]
  elsif i["to_user"] == "anthony"
    ct_an = ct_an + i["amount"]
  end
end

#print statements
puts "Ben's KelloggCoin balance is #{ct_bn}"
puts "Brian's KelloggCoin balance is #{ct_br}"
puts "Evan's KelloggCoin balance is #{ct_ev}"
puts "Anthony's KelloggCoin balance is #{ct_an}"