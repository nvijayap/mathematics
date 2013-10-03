mathematics
===========
Wrapper around Ruby Math module; Has additional methods.<br/>
http://rubygems.org/gems/mathematics

--------------<br/>
mathematics.rb<br/>
--------------<br/>
<br/>
IMPORTANT NOTE:<br/>
--------------<br/>
This program introduces/relies on "Prior Knowledge"<br/>
in the domain of mathematics, and avoids<br/>
computation where unnecessary.<br/>
<br/>
Also, resorting to computation sometimes doesn't yield<br/>
perfect results as known/anticipated. Example:<br/>
(environment: ruby 2.0.0p247 (2013-06-27 revision 41674) [x86_64-darwin12.4.0])<br/>
<br/>
$ ruby -e "puts Math.sin(Math::PI) # I expect 0"<br/>
1.2246467991473532e-16<br/><br/>
Under the hood of "Prior Knowledge" style/paradigm of programming,
some characteristic functions can manifest as "Intelligent Functions".<br/>
The intelligent function can rely on proven, tested, established<br/>
knowledge bases/answers; retrieving the result(s) can be on one or<br/>
more of these lines ...<br/>
. from cache (in-memory/local/remote/distributed)<br/>
. via delegation<br/>
. via rpc/rest/*cloud calls<br/>
.. depending on the need/nature of the "intelligent function" in the<br/>
domain space, and the prior knowledge of the complexity vis-a-vis<br/>
the path to take (not resorting to any call based on judgement,<br/>
distills down to a normal function,<br/>
which is a subset of the intelligent function).<br/>

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
