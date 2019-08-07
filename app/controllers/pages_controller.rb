class PagesController < ApplicationController
  def survey
    @politician = "Test again"
    @parties = ["Parti 1", "Parti 2", "Parti 3", "Parti 4", "Parti 5", "Parti 6", "Parti 7", "Parti 8", "Parti 9"]
    @question_answers = "Test"
    @values = [
      { value: 1, icon: 'far fa-angry' },
      { value: 2, icon: 'far fa-frown'},
      { value: 3, icon: 'far fa-smile'},
      { value: 4, icon: 'far fa-laugh'}
    ]
  end
end
