require 'csv'

Answer.destroy_all
PolAnswer.destroy_all
Politician.destroy_all
DummyUser.destroy_all

WEIGHTS = { 'A' => 1, 'B' => 2, 'C' => 3, 'D' => 4, 'PASS' => 0 }

csv_path = File.join(__dir__, 'survey.csv')
csv_options = { headers: :first_row}

def clean_string(string)
  string.tr("ðáíýóø", "daiyoo")
end

CSV.foreach(csv_path, csv_options) do |row|
  attributes = { name: row[0], party: row[1], age: row[2].to_i }
  attributes[:image] = clean_string("#{row[0].split.first.downcase}_#{row[1].downcase}.jpg")
  pol = Politician.create!(attributes)
  (1..27).each do |qnum|
    p_ans = PolAnswer.create!(question_number: qnum, politician: pol, weight: WEIGHTS[row["answer#{qnum}"]] )
  end
end

# minna = DummyUser.create
# answers = %w(B B C B C C B B D D B C B C C D D C D D D D C B D C D)

# answers.each_with_index do |answer, idx|
#   ans = Answer.create!(question_number: idx + 1, dummy_user: minna, weight: WEIGHTS[answer])
# end
