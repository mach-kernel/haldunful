module Haldunful
  class V1 < Grape::API
    prefix 'v1'
    format :json

    # TODO
    # Provide something more useful than a catchall
    rescue_from :all 
    error_formatter :txt, ->(message, backtrace, options, env) {
      {:Message => message, :Backtrace => backtrace}
    }

    desc "Add to Haldun's dictionary. The more, the better!"
    params do 
      requires :learn_data, type: String, desc: 'What do you want Haldun to learn?'
    end
    post 'learn' do 
      Markov.adapter.learn(params[:learn_data])
    end

    desc "What would Haldun say?"
    params do 
      requires :word_count, type: Integer, desc: 'How many words?'
    end
    get 'wwhs' do 
      Markov.adapter.words(params[:word_count])
    end
  end
end