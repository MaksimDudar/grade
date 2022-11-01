module CardsHelper
  def range2
    arr = []
    @cards.each do |card|
    arr << card.rating
    end
    f = arr.inject{ |sum, el| sum + el }.to_f / arr.size
    f.round(2)
  end

  def proc2
    t = range2 * 100 / 10
    t.round(2)
  end
end
