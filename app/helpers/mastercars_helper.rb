module MastercarsHelper
  def range1
    arr = []
    @mastercars.each do |mastercar|
    arr << mastercar.rating
    end
    f = arr.inject{ |sum, el| sum + el }.to_f / arr.size
    f.round(2)
  end
end
