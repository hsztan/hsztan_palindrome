require "test_helper"

class HsztanPalindromeTest < Minitest::Test

  def test_non_palindrome
    refute 'apple'.palindrome?
  end

  def test_literal_palindrome
    assert 'racecar'.palindrome?
  end

  def test_mixed_case_palindrome
    assert 'RaceCar'.palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_non_palindrome_integer
    refute 12345.palindrome?
  end

  def test_palindrome_integer
    assert 12321.palindrome?
  end
end
