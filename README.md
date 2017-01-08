# Prime Multiplication Table

A command-line program written in ruby to be able to generate the multiplication table of any number of prime numbers

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Testing](#testing)
- [User Stories](#user-stories)
- [Built With](#built-with)
- [License](#license)

## Installation

These Instructions assume that you already have [Ruby](https://www.ruby-lang.org/en/documentation/installation/) and the [Bundler Gem](http://bundler.io/) installed.

Alright, lets get started!

First you need to clone the repository to a folder of your choosing. I'm going to use my Desktop.

```bash
$ cd ~/Desktop
$ git clone https://github.com/coleby210/prime-multiplication-table.git
# Cloning into 'prime-multiplication-table'...
# ...
# Checking connectivity... done.
```

Now we need to install all of the dependencies:

```bash
$ bundle install
# Using coderay 1.1.1
# ...
# Use `bundle show [gemname]` to see where a bundled gem is installed.
```

Woo! The programs installed!

## Usage

First we need to jump into our program folder using the Terminal. So this depends on where you installed the program, if you followed my installation this will work:

```bash
$ cd ~/Desktop/prime-multiplication-table
```

Now we can properly run the program.

To use the default table of 10x10 primes:

```bash
$ ruby runner.rb
# +----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
# |    | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  | 29  |
# | 2  | 4  | 6  | 10  | 14  | 22  | 26  | 34  | 38  | 46  | 58  |
# | 3  | 6  | 9  | 15  | 21  | 33  | 39  | 51  | 57  | 69  | 87  |
# | 5  | 10 | 15 | 25  | 35  | 55  | 65  | 85  | 95  | 115 | 145 |
# | 7  | 14 | 21 | 35  | 49  | 77  | 91  | 119 | 133 | 161 | 203 |
# | 11 | 22 | 33 | 55  | 77  | 121 | 143 | 187 | 209 | 253 | 319 |
# | 13 | 26 | 39 | 65  | 91  | 143 | 169 | 221 | 247 | 299 | 377 |
# | 17 | 34 | 51 | 85  | 119 | 187 | 221 | 289 | 323 | 391 | 493 |
# | 19 | 38 | 57 | 95  | 133 | 209 | 247 | 323 | 361 | 437 | 551 |
# | 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |
# | 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |
# +----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
```

To set the size of the table to use a custom number, use -s:

```bash
$ ruby runner.rb -s 3
# +---+----+----+----+
# |   | 2  | 3  | 5  |
# | 2 | 4  | 6  | 10 |
# | 3 | 6  | 9  | 15 |
# | 5 | 10 | 15 | 25 |
# +---+----+----+----+
```

If you want assistance through the Terminal:

```bash
$ ruby runner.rb -h
# Welcome to the Primes Multiplication Table Help Menu!
# Use '-s' to set the amount of primes
# Example: ruby runner.rb -s 15
```

## Testing

Open your Terminal and navigate to the project folder, I put mine on my desktop.

```bash
$ cd ~/Desktop/prime-multiplication-table
```

Run the testing suite:

```bash
$ rspec
# Interface
#  displays a help menu
#  can output a custom size primes table
#  outputs the default table of 10x10 primes

# String
#  has a new method to test if a string is actually an integer

# MultiplicationTable
#  is a Multiplication Table Object
#  can transform a prime multiplication table to a matrix
#  can transform any set of numbers in an array to a matrix

# Prime
#  checks if a number is prime
#  generates any number of primes
#  generates 10 primes by default
```

## User Stories

- [x] I want to be able to print out to console a multiplication table of the first n primes
- [x] I want n to default to 10
- [x] I want the primes to be the x and y of the table
- [x] The program needs to be fully tested
- [x] I want all dependencies to be specified
- [x] The program needs to be deployed to github with clear documentation
- [x] The code needs to be fast and scalable

## Built With

- [Ruby](https://www.ruby-lang.org/en/)
- [Bundler Gem](http://bundler.io/)
- [Terminal Table Gem](https://github.com/tj/terminal-table)
- [RSpec Gem](http://rspec.info/)
- [Pry Gem](https://github.com/pry/pry)

## License

This program is licensed under the MIT License
