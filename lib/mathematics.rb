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

  # == method_missing ========================================================

  def self.method_missing m, *a
    case m.to_s
    when "sin" # rely on known knowledge first, before relying on Math module
      h = Hash.new(Math.sin(a[0]))
      h[0.0] = 0
      h[90.0] = 1
      h[180.0] = 0
      h[270.0] = -1
      degrees = (a[0] / Math::PI * 180) % 360 # think in degrees for ease
      h[degrees]
    when "cos" # rely on known knowledge first, before relying on Math module
      h = Hash.new(Math.cos(a[0]))
      h[0.0] = 1
      h[90.0] = 0
      h[180.0] = -1
      h[270.0] = 0
      degrees = (a[0] / Math::PI * 180) % 360 # think in degrees for ease
      h[degrees]
    when "tan" # rely on known knowledge first, before relying on Math module
      h = {}
      h["0.0"] = 0
      h["45.0"] = 1
      h["90.0"] = 1.0/0
      h["135.0"] = -1
      h["180.0"] = 0
      h["225.0"] = 1
      h["270.0"] = -1.0/0
      h["315.0"] = -1
      h.default = Math.tan(a[0])
      degrees = (a[0] / Math::PI * 180) % 360 # think in degrees for ease
      degrees = ('%.1f' % degrees).to_s
      h[degrees]
    end
  end

end
