class Tarot
  attr_reader :date

  def initialize(start_date)
    @start_date = start_date
  end

  def suits
    %w{Coins Swords Cups Wands}
  end

  def suit_cards
    ["Ace"].concat((2..10).to_a).concat ["Knight", "Queen", "King"]
  end

  def minor_arcana
    @_cards if @_cards
    @_cards ||= suits.map {|s| suit_cards.map {|c| "#{c} of #{s}"}}.flatten
  end

  def major_arcana
    [
      "The Magician",
      "The High Priestess",
      "The Empress",
      "The Emporor",
      "The Hierophant",
      "The Lovers",
      "The Chariot",
      "Strength",
      "The Hermit",
      "The Wheel of Fortune",
      "Justice",
      "The Hanged Man",
      "Death",
      "Temperence",
      "The Devil",
      "The Tower",
      "The Star",
      "The Moon",
      "The Sun",
      "Judgement",
      "The World"
    ]
  end

  def today
    Date.today
  end

  def get_weeks(date = @start_date, weeks = [])
    return weeks if(date == @start_date.next_year)
    weeks = weeks.push(date) if date.wday == @start_date.wday
    get_weeks(date + 1, weeks)
  end

  def get_minor_arcana
    week, index = get_weeks.each_with_index.find {|week, index| week >= today}
    minor_arcana[index] || 'Wild'
  end

  def get_major_arcana
    diff = (today - @start_date).to_i
    major_arcana[diff % major_arcana.length]
  end
end

