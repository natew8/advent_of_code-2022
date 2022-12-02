key_hash = {
  %w[A X] => 4,
  %w[A Y] => 8,
  %w[A Z] => 3,
  %w[B X] => 1,
  %w[B Y] => 5,
  %w[B Z] => 9,
  %w[C X] => 7,
  %w[C Y] => 2,
  %w[C Z] => 6
}
score = File.readlines('input').reduce(0) do |score, match_outcome|
  match_outcome = match_outcome.strip.split(' ')
  points = key_hash[match_outcome]
  score + points
end

pp score
