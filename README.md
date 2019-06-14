# primetime

## What it does

It creates a multiplication table consisting of the products of primes up through a number the user provides.

## How to use it

Navigate to the project root and call it:

```
$ ruby ./primes.rb
```

It will prompt for the maximum prime number to calculate:

```
Calculate prime products up to what value? default = 10
```

If you provide an integer, it will use that.

```
Calculate prime products up to what value? default = 10
5
    2  3  5
 2  4  6 10
 3  6  9 15
 5 10 15 25
```

If you provide an unparse-able value, it will fall back to the default.
```
Calculate prime products up to what value? default = 10
cheeseburger
Hmmm... I couldn't parse 'cheeseburger'.  I'll just use 10 instead.
    2  3  5  7
 2  4  6 10 14
 3  6  9 15 21
 5 10 15 25 35
 7 14 21 35 49
```


## Design Choices

`primes.rb` The starting point for the application.  It calls a number of helper classes and factories.

`io_helper.rb` This class prompts the user for input and either parses their input or returns a default value.

`prime_helper.rb` This class verifies a number's prime-ness and calculates arrays of primes.

`product_hash_factory.rb` This class creates a hash where the keys are the input values (an array of primes in this assignment) and the values are the products of those keys multiplied against each other.

`report_factory.rb` Takes a hash of data and turns it into an array of strings, padding the columns so the values right-align nicely.

## Tests

Each class has a corresponding `_spec` file except the starting point of the application.

You may run the tests by navigating to the application root and typing

```
rspec ./
```

## Dependencies

I used [faker](https://github.com/stympy/faker) to generate fake test data and [simplecov](https://github.com/colszowka/simplecov) to calculate code coverage.  [Rubocop](https://github.com/rubocop-hq/rubocop) made sure everything looks nice.
