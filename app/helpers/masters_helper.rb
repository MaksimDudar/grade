module MastersHelper
  def range
    arr = []
    @masters.each do |master|
    arr << master.rating
    end
    f = arr.inject{ |sum, el| sum + el }.to_f / arr.size
    f.round(2)
  end

  def proc
    t = range * 100 / 10
    t.round(2)
  end

end
