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
        score += (answer.weight - pol_ans.weight).abs
      end
      match_hash[pol] = score
    end
    return match_hash
  end

  def top_five
    st = Time.now
    scores = score_against_all
    top = scores.min_by(5) { |k,v| v }
    puts "Took #{Time.now - st} sec to run"
    return top
  end


end

%w(C C D A C D PASS A D A D C D B A C C A C B D C PASS D C C D)
