# Making an Encrypt algorithm
# First set index = 0
# While the value of index is less than the length of the password
# Set the value of password[index] to the next one
# Add a value to index and loop.
# if the password has an ending of ab replace it with just a (This is a workaround because it originally would post a+b if the program was asked to encrypt "z")

def encrypt(password)
    index = 0
    while index < password.length
    password[index] = password[index].next!
    index += 1
    end
    password = password.gsub(/ab/ , "a")
end

# Making a Decrypt algorithm
# Set string = "abcdefghijklmnopqrstuvwxyz"
# rewrite the letter value of each letter in password by:
# asking for the string index number of a particular letter in password
# lowering that index number by 1 
# setting letter of the password to the new password
# loop it so it happens with each letter as in the encrypt algorithm
# print out the decrypted password.

def decrypt(password)
    count = 0
    string = "abcdefghijklmnopqrstuvwxyz"
    while count < password.length
        password[count] = string[string.index(password[count]) - 1]
        count += 1
    end
    puts password
end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish"))