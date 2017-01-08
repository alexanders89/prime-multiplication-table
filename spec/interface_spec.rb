require_relative '../lib/interface.rb'

describe Interface do
  it 'displays a help menu' do
    expect { Interface.help }.to output("Welcome to the Primes Multiplication Table Help Menu!\nUse '-s' to set the amount of primes\nExample: ruby runner.rb -s 15\n").to_stdout
  end

  it 'can output a custom size primes table' do
    expect { Interface.size('5') }.to output("+----+----+----+----+----+-----+\n|    | 2  | 3  | 5  | 7  | 11  |\n| 2  | 4  | 6  | 10 | 14 | 22  |\n| 3  | 6  | 9  | 15 | 21 | 33  |\n| 5  | 10 | 15 | 25 | 35 | 55  |\n| 7  | 14 | 21 | 35 | 49 | 77  |\n| 11 | 22 | 33 | 55 | 77 | 121 |\n+----+----+----+----+----+-----+\n").to_stdout
  end

  it 'outputs the default table of 10x10 primes' do
    expect { Interface.table }.to output("+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+\n|    | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  | 29  |\n| 2  | 4  | 6  | 10  | 14  | 22  | 26  | 34  | 38  | 46  | 58  |\n| 3  | 6  | 9  | 15  | 21  | 33  | 39  | 51  | 57  | 69  | 87  |\n| 5  | 10 | 15 | 25  | 35  | 55  | 65  | 85  | 95  | 115 | 145 |\n| 7  | 14 | 21 | 35  | 49  | 77  | 91  | 119 | 133 | 161 | 203 |\n| 11 | 22 | 33 | 55  | 77  | 121 | 143 | 187 | 209 | 253 | 319 |\n| 13 | 26 | 39 | 65  | 91  | 143 | 169 | 221 | 247 | 299 | 377 |\n| 17 | 34 | 51 | 85  | 119 | 187 | 221 | 289 | 323 | 391 | 493 |\n| 19 | 38 | 57 | 95  | 133 | 209 | 247 | 323 | 361 | 437 | 551 |\n| 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |\n| 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |\n+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+\n").to_stdout
  end
end

describe String do
  it 'has a new method to test if a string is actually an integer' do
    expect('15'.is_i?).to eq(true)
    expect('hi'.is_i?).to eq(false)
  end
end
