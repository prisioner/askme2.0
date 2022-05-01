class CreateUserConfigs < ActiveRecord::Migration[7.0]
  def change
    create_table :user_configs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :header_color, default: "#370617"

      t.timestamps
    end
  end
end
