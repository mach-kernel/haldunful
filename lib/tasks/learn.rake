require 'csv'
require 'httparty'

namespace :learn do
	task :from_csv, [:csv, :host] do |t, args|
		CSV.parse(File.read(args[:csv]), headers: true) do |row|
			HTTParty.post(
				"#{args[:host]}/v1/learn", 
				{
					:body => {:learn_data => row['Phrase']}
				})
			p "Learned #{row['Phrase']}"
		end
	end
end