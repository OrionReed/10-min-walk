class Walk
  def walk(steps)
    return false if steps.count != 10
    steps.count("N") == steps.count("S") && steps.count("E") == steps.count("W")
  end
end
