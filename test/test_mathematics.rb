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

  # .........................
  
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
