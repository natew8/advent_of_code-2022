key_hash = {
  %w[A X] => 3,
  %w[A Y] => 4,
  %w[A Z] => 8,
  %w[B X] => 1,
  %w[B Y] => 5,
  %w[B Z] => 9,
  %w[C X] => 2,
  %w[C Y] => 6,
  %w[C Z] => 7
}
score = File.readlines('input').reduce(0) do |score, match_outcome|
  match_outcome = match_outcome.strip.split(' ')
  points = key_hash[match_outcome]
  score + points
end

pp score
