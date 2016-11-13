class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    seconds = (@seconds%3600) % 60
      @seconds = (@seconds - seconds)
    minutes = (@seconds%3600) / 60
      @seconds = (@seconds - (minutes*60))
    hours = @seconds/3600
    if hours < 10
      hours = "0#{hours}"
    end
    if minutes < 10
      minutes = "0#{minutes}"
    end
    if seconds < 10
      seconds = "0#{seconds}"
    end
    return "#{hours}:#{minutes}:#{seconds}"
end
end
