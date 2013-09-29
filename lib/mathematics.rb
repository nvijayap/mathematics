module Mathematics

  extend Math

  # .. desc .......................

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

  # == method_missing ==============================================

  def self.method_missing m, *a
    Math.send m, *a
  end

end

