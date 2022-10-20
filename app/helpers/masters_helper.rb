module MastersHelper
  def range
    arr = []
    @masters.each do |master|
    arr << master.rating
    end
    arr.inject{ |sum, el| sum + el }.to_f / arr.size
  end
end
