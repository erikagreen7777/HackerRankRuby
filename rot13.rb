def rot13(secret_messages)
  # your code here
    print secret_messages.map {|word|
      word.split('').map { |letter| 
        if (letter.ord >= 65 and letter.ord <=77) or (letter.ord >=97 and letter.ord <=109)
           (letter.ord + 13).chr
        elsif (letter.ord > 77 and letter.ord <=90) or (letter.ord > 109 and letter.ord <=122)
           (letter.ord - 13).chr
        else
           letter
        end
        }.join('')
      }
end

rot13(["uryyb", "rirelbar"])
