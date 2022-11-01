module MastercarsHelper
  def range1
    arr = []
    @mastercars.each do |mastercar|
    arr << mastercar.rating
    end
    f = arr.inject{ |sum, el| sum + el }.to_f / arr.size
    f.round(2)
  end

  def proc1
    t = range1 * 100 / 10
    t.round(2)
  end
end
