# primetime
Are we ready for prime time?





# What I like

Breaking responsibilties apart for calculating primes, verifying prime-ness, creating the data, and formatting the data.

Right now, all this lives in a single class: the cleverly-named `helper.rb`.

One could certainly refactor this into a bunch of single-purpose classes.  A `PrimeGenerator`, `PrimeTester`, `ReportBuilder`, and `ReportFormatter`.  For the moment, I think this is fine.  