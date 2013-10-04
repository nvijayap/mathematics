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

  def self.factorial n # uses "Prior Knowledge" paradigm
    h = { 0=>1, 1=>1, 2=>2, 3=>6, 4=>24, 5=>120,
      6=>720, 7=>5040, 8=>40320, 9=>362880, 10=>3628800 }
    n < 0 ? nil : (h[n] || n * factorial(n-1))
  end

  def self.fact n
    factorial n
  end

  # .. triangular_number .......................

  def self.triangular_number n # uses "Prior Knowledge" paradigm
    h = { 1=>1, 2=>3, 3=>6, 4=>10, 5=>15, 6=>21,
    7=>28, 8=>36, 9=>45, 10=>55, 11=>66, 12=>78, 13=>91 }
    n < 1 ? nil : (h[n] || n*(n+1)/2)
  end

  # .. triangle_number .......................

  def self.triangle_number n
    triangular_number n
  end

  # .. binomial_coefficient .......................

  def self.binomial_coefficient n, k
    if k < 0 or k > n
      0
    elsif k == 0 or n == k
      1
    else
      c = 1
      (1..k).each do |i|
	c *= n - k + i
	c /= i
      end
      c
    end
  end

  # .. sin .......................

  @sin_hash = { 0.0 => 0, 90.0 => 1, 180.0 => 0, 270.0 => -1 }

  def self.sin radians
    degrees = (radians / Math::PI * 180) % 360 # think in degrees for ease
    @sin_hash[degrees] || Math.sin(radians)
  end

  # .. cos .......................

  @cos_hash = { 0.0 => 1, 90.0 => 0, 180.0 => -1, 270.0 => 0 }

  def self.cos radians
    degrees = (radians / Math::PI * 180) % 360 # think in degrees for ease
    @cos_hash[degrees] || Math.cos(radians)
  end

  # .. tan .......................

  @tan_hash = { 0 => 0, 45 => 1, 90 => 1.0/0, 135 => -1,
    180 => 0, 225 => 1, 270 => -1.0/0, 315 => -1 }

  def self.tan radians
    degrees = (radians / Math::PI * 180) % 360 # think in degrees for ease
    # to deal with 45, 135, 225, 315 ...
    quantum = 1.0e-12
    degrees = degrees.ceil if degrees.ceil - degrees < quantum
    degrees = degrees.floor if degrees - degrees.floor < quantum
    @tan_hash[degrees] || Math.tan(radians)
  end

  # == method_missing ========================================================

  def self.method_missing m, *a
  end

end
