class CreateProgrammers < ActiveRecord::Migration[6.1]
  def change
    create_table :programmers do |t|
      t.string :name
    end
  end
end
