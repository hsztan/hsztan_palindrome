require "hsztan_palindrome/version"

module HsztanPalindrome

  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    def processed_content
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include HsztanPalindrome
end

class Integer
  include HsztanPalindrome
end