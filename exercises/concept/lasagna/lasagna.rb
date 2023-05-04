class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    #raise 'Please implement the Lasagna#remaining_minutes_in_oven method'
    time_remaining = 0
    return time_remaining = EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    #raise 'Please implement the Lasagna#preparation_time_in_minutes method'
    return 2 * layers
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    #raise 'Please implement the Lasagna#total_time_in_minutes method'
    sum = 0
    sum += (2 * number_of_layers) + actual_minutes_in_oven
    return sum
  end
end
