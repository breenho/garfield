class CreateConsultants < ActiveRecord::Migration[5.0]
  def change
    create_table :consultants do |t|      
      t.string :job_title
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :pincode
      t.integer :phone
      t.text :profile_brief
      t.text :project_experience
      t.text :success_stories
      t.string :award_recognitions
      t.string :recommendations
      t.integer :created_by
      t.integer :updated_by

      # t.references :user, foreign_key: true
      # t.references :industry, foreign_key: true
      # t.references :specialization, foreign_key: true

      t.timestamps
    end
  end
end
