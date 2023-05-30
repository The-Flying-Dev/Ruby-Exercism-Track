class BirdCount
  def self.last_week
    #raise 'Please implement the BirdCount.last_week method'
    last_weeks_count = [0, 2, 5, 3, 7, 8, 4]
    last_weeks_count
  end

  def initialize(birds_per_day)
    #raise 'Please implement the BirdCount#initialize method'
    @birds_per_day = birds_per_day
  end

  def yesterday
    #raise 'Please implement the BirdCount#yesterday method'
    @birds_per_day[-2]
  end

  def total
    #raise 'Please implement the BirdCount#total method'
    @birds_per_day.sum
  end

  def busy_days
    #raise 'Please implement the BirdCount#busy_days method'
    @birds_per_day.count { |birds| birds >= 5 }
  end

  def day_without_birds?
    #raise 'Please implement the BirdCount#day_without_birds method'
    @birds_per_day.any? { |bird| bird == 0 }
  end
end