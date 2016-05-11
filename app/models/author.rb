class Author < ActiveRecord::Base
  def self.tokens(query)
    authors = where("name like ?", "%#{query}%")
    if authors.empty?
      [{id: "<<<#{query}>>>", name: "New: \"#{query}\""}]
    else
      authors
    end
  end
end
