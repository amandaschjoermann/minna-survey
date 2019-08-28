require 'pry-byebug'

class DummyUser < ApplicationRecord
  has_many :answers

  def score_against_all
    match_hash = {}

    Politician.all.each do |pol|
      score = 0
      pol_answers = pol.pol_answers.order(question_number: :asc)
      answers.each_with_index do |answer, idx|
        pol_ans = pol_answers[idx]
        next if pol_ans.weight == 0
        score += get_score_for_answers([answer.weight, pol_ans.weight].sort)
      end
      match_hash[pol] = ((score.fdiv(270)) * 100).round(1)
    end
    return match_hash
  end

  def top_five
    scores = score_against_all
    return scores.max_by(5) { |k,v| v }
  end

  def get_score_for_answers(answers)
    {
      [1,1] => 10,
      [2,2] => 10,
      [3,3] => 10,
      [4,4] => 10,
      [1,2] => 8,
      [3,4] => 8,
      [2,3] => 2,
      [1,3] => 1,
      [2,4] => 1,
      [1,4] => 0
    }[answers]
  end
end
