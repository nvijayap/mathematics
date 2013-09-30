mathematics
===========
Wrapper around Ruby Math module; Has additional methods.<br/>
http://rubygems.org/gems/mathematics

#<br/>
# mathematics.rb<br/>
#<br/>
# IMPORTANT NOTE:<br/>
# --------------<br/>
# This program introduces/relies on "Prior Knowledge"<br/>
# in the domain of mathematics, and avoids<br/>
# computation where unnecessary.<br/>
#<br/>
# Also, resorting to computation sometimes doesn't yield<br/>
# perfect results as known/anticipated. Example:<br/>
# (environment: ruby 2.0.0p247 (2013-06-27 revision 41674) [x86_64-darwin12.4.0])<br/>
#<br/>
# $ ruby -e "puts Math.sin(Math::PI) # I expect 0"<br/>
# 1.2246467991473532e-16<br/>
#<br/>

install
=======
gem install mathematics

use
===
require 'mathematics'<br/>
<br/>
Mathematics.add(1,2)<br/>
Mathematics.sum(1,2,3)<br/>
Mathematics.total(1,2,3,4)<br/>
<br/>
Mathematics.average(1,2,3)<br/>
Mathematics.avg(1,2,3,4)<br/>
Mathematics.mean(1,2,3,4,5)<br/>
<br/>
Mathematics.sin(0)<br/>
Mathematics.cos(0)<br/>
Mathematics.sin(Math::PI/2)<br/>
Mathematics.cos(Math::PI/2)<br/>

comments
========
Feel free to provide comments

LICENSE
=======
MIT - http://opensource.org/licenses/MIT
