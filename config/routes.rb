Rails.application.routes.draw do
  get 'welcome/index'

  get 'games/start'
  post 'games/start'

  get 'games/play'
  post 'games/play'

  get 'games/next_question'

  get 'answers/check'

  get 'questions/ask'

  get 'questions/answer_question'
  post 'questions/answer_question'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index'

end
