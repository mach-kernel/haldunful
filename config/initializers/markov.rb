module Markov
	mattr_reader :adapter
	@@adapter = Service::Markov.new
end