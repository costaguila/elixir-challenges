defmodule PalindromeValidation do
  def is_palindrome(word) when is_binary(word) do
      String.to_charlist(word)
      |> reverse
      |> is_palindrome(word)
    end

    def is_palindrome(word) when is_list(word) do
      word
      |> reverse
      |> is_palindrome(word)
    end

    def is_palindrome(number) when is_integer(number) do
      Integer.to_string(number)
      |> reverse
      |> is_palindrome
    end

    def is_palindrome do
      IO.puts "Please enter a word"
    end

    defp reverse([head|tail]) do
      reversed_word = [head]
      reverse(reversed_word, tail)
    end

    defp reverse(reversed_word, [head|tail]) do
      reverse([head] ++ [reversed_word], tail)
    end

    defp reverse(reversed_word, []) do
      List.to_string reversed_word
    end

    defp is_palindrome(reversed_word, word) when word == reversed_word do
     IO.puts "the word #{word} IS a palindrome"
    end

    defp is_palindrome(reversed_word, word) when word != reversed_word do
    IO.puts "the word#{word} IS NOT a palindrome"
    end

end
