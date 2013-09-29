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
    [(min *a), (max *a)]
  end

  # .. sum .......................

  def self.add *a
    _sum *a
  end

  def self.sum *a
    add *a
  end

  def self.total *a
    add *a
  end

  # .. mean .......................
  
  def self.average *a
    1.0 * (_sum *a) / a.size
  end

  def self.avg *a
    average *a
  end

  def self.mean *a
    average *a
  end

  private # -- private -----------------------

  def self._sum *a
    a.inject { |sum, e| sum + e }
  end
  
  # == method_missing ==============================================

  def self.method_missing m, *a
    Math.send m, *a
  end

end

