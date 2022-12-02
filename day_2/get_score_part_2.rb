key_hash = {
  %w[A X] => [0, 3],
  %w[A Y] => [3, 1],
  %w[A Z] => [6, 2],
  %w[B X] => [0, 1],
  %w[B Y] => [3, 2],
  %w[B Z] => [6, 3],
  %w[C X] => [0, 2],
  %w[C Y] => [3, 3],
  %w[C Z] => [6, 1]
}
score = File.readlines('input').reduce(0) do |score, match_outcome|
  match_outcome = match_outcome.strip.split(' ')
  points = key_hash[match_outcome].sum
  score + points
end

pp score
