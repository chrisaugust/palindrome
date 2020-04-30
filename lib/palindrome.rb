require "palindrome/version"

class String
  
  # Returns true for a palindrome, false for non-palindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters
    the_letters = []
    for i in (0..self.length - 1) do
      if (self[i].match(/[A-Za-z]/))
        the_letters << self[i]
      end
    end
    the_letters.join 
  end
  
  private
   
    # Returns content for palindrome testing
    def processed_content
      self.letters.downcase
    end
end
