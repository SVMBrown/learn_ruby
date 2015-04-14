class Changer
  def initialize
  end
  @@coins = [25, 10, 5, 1]
  def self.make_change(amt)
    amt = amt.to_i
    @@coins.inject([]) do |answer, coin|
      until amt < coin do
        amt -= coin
        answer << coin
      end
      answer
    end
  end
end
