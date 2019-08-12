class String
  def smart_titleize
    new_str = []
    exclusions = %w{with to or and for but nor}
    self.split(' ').each.with_index do |word, i|
      new_word = word
      unless word.scan(/[A-Z]/).size > 1 
        unless  (exclusions.include?(word)) && i != 0  && i != (self.size - 1)
         new_word = word.capitalize
        end
      end
      new_str << new_word
    end
    new_str.join(' ')
  end
end 


