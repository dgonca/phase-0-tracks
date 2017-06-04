def encrypt(x)
  index = 0
  password = x
  while index < password.length
    # this code works right now for everything
    # besides using Z or spaces
    # the pseudocode below would work out an if else
    # statement that would make the rest of the code work
    # password[index] = password[index].next.upcase!
    # index += 1
    if password[index] = ('a'..'y').to_s
      password[index] = password[index].next!
      index += 1
      # p password[index]
    elsif password[index] == "z"
      password[index] == "a"
      index += 1
      # p password[index]
    elsif password[index] == " "
      password[index] == " "
      index += 1
      # p password[index]
    end
  end
  puts password
end

encrypt("zed")