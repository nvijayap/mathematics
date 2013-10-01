#
# mathematics.rb
#
# IMPORTANT NOTE:
# --------------
# This program introduces/relies on "Prior Knowledge"
# in the domain of mathematics, and avoids
# computation where unnecessary.
#
# Also, resorting to computation sometimes doesn't yield
# perfect results as known/anticipated. Example:
#
# $ ruby -e "puts Math.sin(Math::PI) # I expect 0"
# 1.2246467991473532e-16
#
module Mathematics

  extend Math # rely on Math module / build atop Math module

  # .. describe .......................

  def self.describe
    "Wrapper around Math module; Has additional methods."
  end

  def self.desc
    describe
  end

  # .. min .......................

  def self.min *a
    a.min
  end

  # .. max .......................

  def self.max *a
    a.max
  end

  # .. minmax .......................

  def self.minmax *a
    a.minmax
  end

  # .. sum .......................

  def self.add *a
    a.reduce :+
  end

  def self.sum *a
    add *a
  end

  def self.total *a
    add *a
  end

  # .. mean .......................

  def self.average *a
    1.0 * (a.reduce :+) / a.size
  end

  def self.avg *a
    average *a
  end

  def self.mean *a
    average *a
  end

  # .. median .......................

  def self.median *a
    a.sort!
    n = a.size
    n.odd? ? a[(n-1)/2] : avg(1.0 * a[n/2], a[n/2-1])
  end

  # .. mode .......................

  def self.mode *a
    h = Hash.new(0)
    a.each { |e| h[e] = h[e] + 1 }
    (h.sort_by &:last).last[0]
  end

  # .. range .......................

  def self.range *a
    (max *a) - (min *a)
  end

  # .. variance .......................

  def self.variance *a
    m = mean *a
    b = a.map { |e| (e-m)*(e-m) } # / a.size
    b.inject { |s,e| s+e } / b.size
  end

  def self.var *a
    variance *a
  end

  # .. standard deviation .......................

  def self.stddev *a
    Math.sqrt(variance *a)
  end

  def self.sd *a
    stddev *a
  end

  # .. factorial .......................

  def self.factorial n
    if (n < 0)
      return nil
    elsif (n <= 1)
      return 1
    else
      n * factorial(n-1)
    end
  end

  # .. sin .......................

  def self.sin radians
    h = Hash.new(Math.sin(radians))
    h[0.0] = 0
    h[90.0] = 1
    h[180.0] = 0
    h[270.0] = -1
    degrees = (radians / Math::PI * 180) % 360 # think in degrees for ease
    h[degrees]
  end

  # .. cos .......................

  def self.cos radians
    h = Hash.new(Math.cos(radians))
    h[0.0] = 1
    h[90.0] = 0
    h[180.0] = -1
    h[270.0] = 0
    degrees = (radians / Math::PI * 180) % 360 # think in degrees for ease
    h[degrees]
  end

  # .. tan .......................

  def self.tan radians
    h = Hash.new(Math.tan(radians))
    h[0] = 0
    h[45] = 1
    h[90] = 1.0/0
    h[135] = -1
    h[180] = 0
    h[225] = 1
    h[270] = -1.0/0
    h[315] = -1
    degrees = (radians / Math::PI * 180) % 360 # think in degrees for ease
    # to deal with 45, 135, 225, 315 ...
    quantum = 1.0e-12
    degrees = degrees.ceil if degrees.ceil - degrees < quantum
    degrees = degrees.floor if degrees - degrees.floor < quantum
    h[degrees]
  end

  # == method_missing ========================================================

  def self.method_missing m, *a
  end

end
