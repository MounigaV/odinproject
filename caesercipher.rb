Aord=65
Zord=90

def caesar_cipher(str,num)
num=num%26
res=""
cipher_ord=0
a_ord=97
z_ord=122
str.each_char.with_index do |char, index|
  c_ord= char.ord
  cipher_ord=c_ord+num
  if(char=~ /[A-Z]/)
    if(cipher_ord>Zord)
      diff=cipher_ord-Zord
      cipher_ord=(Aord+diff)-1
    end
    char=cipher_ord.chr
  elsif (char=~ /[a-z]/)
    if (cipher_ord>z_ord)
      diff=cipher_ord-z_ord
      cipher_ord=(a_ord+diff)-1
    end
    char=cipher_ord.chr
  end
  res+=char
end
res
end
