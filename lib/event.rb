require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :emails, :end_date

  def initialize(date, duration, title, emails)
    @start_date = Time.parse(date)
    @duration = duration
    @title = title
    @emails = emails
  end

  def end_date()
    @end_date = self.start_date + (self.duration * 60)
  end

  def is_past?()
    if self.start_date < Time.now
      return true
    else
      return false  
    end
  end

  def is_future?()
    return !is_past?
  end

  def is_soon?()
    if is_future?()
      if self.start_date - Time.now < 1800
        return true
      end
    end
    return false
  end

  def postpone_24h()
    @start_date = self.start_date + 86400
  end

  def to_s()
    puts "> Titre         : #{self.title}"
    puts "> Date de début : #{self.start_date}"
    puts "> Durée         : #{self.duration}"
    puts "> Invités       : #{self.emails}"
  end
end