class BinaryMatrix
  class << self
  	def group_count(input)
  	  new(input).group_count
  	end
  end

  def initialize(input)
  	@length = input.first.length
  	@collection = input.flatten
    @groups = {1 => 0, 0 =>0 }
  end

  def group_count
  	@collection.each_with_index do |element, indx|
  	  find_group(element, indx)
  	end
  	@groups.values
  end

  def find_group(element, indx)
  	@groups[element] += 1 if new_group?(element, indx)
  end

  def new_group?(element, indx)
  	!top_is_group?(element, indx) && !left_is_group?(element, indx) && !j_connect?(element, indx)
  end

  def j_connect?(element,indx)
  	if right_is_group?(element, indx)
  	  top_is_group?(element, indx+1) || j_connect?(element, indx+1)
  	elsif bottom_is_group?(element, indx)
  	  j_connect?(element, indx + @length)
  	end
  end

  def top_is_group?(element, indx)
  	indx >= @length && element == @collection[indx - @length]
  end

  def right_is_group?(element, indx)
  	!((indx+1) % @length).zero? && element == @collection[indx+1]
  end

  def bottom_is_group?(element, indx)
  	!@collection[indx + @length].nil? && element == @collection[indx + @length]
  end

  def left_is_group?(element, indx)
  	!(indx % @length).zero? && element == @collection[indx - 1]
  end
end
