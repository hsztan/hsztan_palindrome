require "hsztan_palindrome/version"

module HsztanPalindrome

  def palindrome?
    return false if processed_content.empty?
    return true if processed_content.length == 1
    check_for_palindrome
  end

  private
    def check_for_palindrome
      processed_content == processed_content.reverse
    end

    def processed_content
      self.flatten if self.is_a?(Array)
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include HsztanPalindrome
end

class Integer
  include HsztanPalindrome
end

class Array
  include HsztanPalindrome
end