require 'marky_markov'
require 'date'

module Service
	class Markov
		def initialize
      time_now = DateTime.now
      @dictionary ||= MarkyMarkov::Dictionary.new(
        Rails.root.join(
          'dictionaries',
          "haldun#{time_now.strftime("%d%m%Y%H%M")}"
        )
      )
      @count ||= 0
		end

    def learn(input)
      @dictionary.parse_string(input.to_s)
      persist
    end

    def sentences(count)
      @dictionary.generate_n_sentences(count)
    end

    def words(count)
      @dictionary.generate_n_words(count.to_i)
    end

	private

    def persist
      @count += 1
      @dictionary.save_dictionary! if (@count % 10) == 0
    end
	end
end
