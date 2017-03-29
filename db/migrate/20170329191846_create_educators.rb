class CreateEducators < ActiveRecord::Migration[5.0]
  def change
    create_table :educators do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :school_job_function
      t.string :school_name
      t.string :school_location
      t.string :topics_of_interest
      t.string :message
      t.string :other

      t.timestamps
    end
  end
end
