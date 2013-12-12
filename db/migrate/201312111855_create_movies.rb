class CreateMovies < ActiveRecord::Migration
	def change
		create_table :movies do |t|
			t.string :name
			t.string :leadActor
			t.string :leadActress
			t.integer :year_of_release
		end
	end
end