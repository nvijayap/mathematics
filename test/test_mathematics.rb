require 'test/unit'
require File.dirname(__FILE__) + '/../lib/mathematics'

class TestColorize < Test::Unit::TestCase

  # .........................
  
  def test_describe
    assert Mathematics.desc == "Wrapper around Math module; Has additional methods."
  end

  def test_desc
    assert Mathematics.desc == "Wrapper around Math module; Has additional methods."
  end

  # .. min .......................

  def test_min
    assert Mathematics.min(1,2,3) == 1
  end

  # .. max .......................

  def test_max
    assert Mathematics.max(1,2,3) == 3
  end

  # .. minmax .......................

  def test_minmax
    assert Mathematics.minmax(1,2,3,4,5) == [1,5]
  end

  # .. sum .......................
  
  def test_add
    assert Mathematics.add(1,2) == 3
  end

  def test_sum
    assert Mathematics.sum(1,2,3) == 6
  end
    
  def test_total
    assert Mathematics.total(1,2,3,4) == 10
  end
  
  # .........................
  
  def test_average
    assert Mathematics.average(1,2,3) == 2
  end
  
  def test_avg
    assert Mathematics.avg(1,2,3,4) == 2.5
  end
  
  def test_mean
    assert Mathematics.mean(1,2,3,4,5) == 3
  end
  
  # .........................

  def test_median
    assert Mathematics.median(1,2,4,7,11) == 4
    assert Mathematics.median(1,2,4,7,11,13) == 5.5
  end
  
  # .........................

  def test_mode
    assert Mathematics.mode(1,2,2,3,3,3) == 3
  end
  
  # .........................

  def test_range
    assert Mathematics.range(0,1,2,3,4,5,6,7,8,9) == 9
    assert Mathematics.range(3,4,5,6,7,8) == 5
  end
  
  # .........................

  def test_sin_0
    assert Mathematics.sin(0) == 0
  end
  
  def test_cos_0
    assert Mathematics.cos(0) == 1
  end
  
  def test_sin_pi_by_2
    assert Mathematics.sin(Math::PI/2) == 1
  end
  
  def test_cos_pi_by_2
    assert Mathematics.cos(Math::PI/2) < 0.000001
  end
  
  # .........................
  
end
