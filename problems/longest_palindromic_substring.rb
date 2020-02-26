#!/usr/bin/env ruby
=begin
 given a string `s`, find the longest palindromic substring in `s`
 assume the max length of `s` is 1000

 examples:
 Input: "babad"
 Output: "bab"
 Note: "aba" is also a valid answer.

 Input: "cbbd"
 Output: "bb"
=end
# @param {String} s
# @return {String}
def longest_palindrome(string)
  longest = ''
  counter1 = 0

  while counter1 < string.length # iterate through the string
    counter2 = 1
    while (counter1 + counter2) <= string.length # stay in bounds
      x = string.slice(counter1, counter2) # slice the string
      longest = x if (x.length > longest.length) && (x == x.reverse) # test if x is a palindrome and if x is the longest palindrome
      counter2 += 1 #increment our counter1
    end
    counter1 += 1 # increment our counter2
  end

  longest # return the longest substring
end

p longest_palindrome("lphbehiapswjudnbcossedgioawodnwdruaaxhbkwrxyzaxygmnjgwysafuqbmtzwdkihbwkrjefrsgjbrycembzzlwhxneiijgzidhngbmxwkhphoctpilgooitqbpjxhwrekiqupmlcvawaiposqttsdgzcsjqrmlgyvkkipfigttahljdhtksrozehkzgshekeaxezrswvtinyouomqybqsrtegwwqhqivgnyehpzrhgzckpnnpvajqevbzeksvbezoqygjtdouecnhpjibmsgmcqcgxwzlzztdneahixxhwwuehfsiqghgeunpxgvavqbqrelnvhnnyqnjqfysfltclzeoaletjfzskzvcdwhlbmwbdkxnyqappjzwlowslwcbbmcxoiqkjaqqwvkybimebapkorhfdzntodhpbhgmsspgkbetmgkqlolsltpulgsmyapgjeswazvhxedqsypejwuzlvegtusjcsoenrcmypexkjxyduohlvkhwbrtzjnarusbouwamazzejhnetfqbidalfomecehfmzqkhndpkxinzkpxvhwargbwvaeqbzdhxzmmeeozxxtzpylohvdwoqocvutcelgdsnmubyeeeufdaoznxpvdiwnkjliqtgcmvhilndcdelpnilszzerdcuokyhcxjuedjielvngarsgxkemvhlzuprywlypxeezaxoqfges")
