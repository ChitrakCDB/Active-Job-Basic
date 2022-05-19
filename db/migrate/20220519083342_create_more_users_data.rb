class CreateMoreUsersData < ActiveRecord::Migration[7.0]
  def change
    create_table :more_users_data do |t|
      User.create(name:"ChitrakMU", email:"chitrak.bhatt104779@marwadiuniversity.ac.in")
      User.create(name:"ChitrakSimform", email:"chitrak.b@simformsolutions.com")
      User.create(name:"Kiran", email:"kiran.tanwani105551@marwadiuniversity.ac.in")
      t.timestamps
    end
  end
end
