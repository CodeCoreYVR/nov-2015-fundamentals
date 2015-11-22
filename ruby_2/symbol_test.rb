require "benchmark"

strings = Benchmark.measure do
            10000000.times do
              "Hello"
            end
          end.total

symbols = Benchmark.measure do
            10000000.times do
              :hello
            end
          end.total

puts strings
puts symbols
