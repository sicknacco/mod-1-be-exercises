class LeatherChair
  def initialize
  end

  def faded?
    faded = false
  end

  def expose_to_sunlight
    if faded? == true
      false
    else
      true
    end
  end
end