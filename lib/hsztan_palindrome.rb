require "hsztan_palindrome/version"

class String

  def palindrome?
    processed_content == processed_content.reverse
  end

  def letters
    self.scan(/[a-zA-Z]/).join
  end

  private

    def processed_content
      self.scan(/[a-z]/i).join.downcase
    end
end