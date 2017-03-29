class CreateVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :current_title
      t.string :current_project
      t.string :bio
      t.string :topics_of_expertise
      t.string :location
      t.string :travel_distance
      t.boolean :agreed_to_tos

      t.timestamps
    end
  end
end
