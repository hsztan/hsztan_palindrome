require "test_helper"

class HsztanPalindromeTest < Minitest::Test

  def test_with_empty_string
    refute "".palindrome?
  end

  def test_with_one_character
    assert "a".palindrome?
  end

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

  def test_palindrome_arrays
    assert [1, 2, 3, 2, 1].palindrome?
    assert [
      "level",
      "rotator",
      "deified",
      "rotator",
      "level"
    ].palindrome?
  end

  def test_non_palindrome_array_with_nested_arrays
    refute [[1, 2], [3, 4], [3, 4], [1, 2]].palindrome?
  end

  def test_palindrome_array_with_nested_arrays
    assert [
      [1, 2, 3, 4],
      [2, 3, 4, 3],
      [3, 4, 3, 2],
      [4, 3, 2, 1]
      ].palindrome?
  end
end
