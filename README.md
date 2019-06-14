# primetime
Are we ready for prime time?

## What it does

It builds a grid of prime products



## How do I use it

Navigate to the project root and call it:

```
$ ruby ./primes.rb

```

It will prompt for the maximum prime number to calculate:

```
Calculate prime products up to what value? default = 10
```

If you provide an integer, it will use that.

If you provide an unparse-able value, it will fallback to the default.

# Design Choices

`primes.rb` The starting point for the application.  It calls a number of helper classes and factories.

`io_helper` This class prompts the user for input and either parses their input or returns a default value.

`prime_helper.rb` This class verifies a number's prime-ness and calculates arrays of primes.

`product_hash_factory.rb` This class creates a hash where the keys are the input values (an array of primes in this assignment) and the values are the products of those keys multiplied against each other.

`report_factory.rb` Takes a hash of data and turns it into an array of strings, padding the columns so the values right-align nicely.

# Tests

Each class has a corresponding _spec file except the starting point of the application.

You may run the tests by navigating to the application root and typing

```
rspec ./
```

# Dependencies
I used (faker)[https://github.com/stympy/faker]to generate fake test data and (simplecov)[https://github.com/colszowka/simplecov] to calculate code coverage.
