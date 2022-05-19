class CreateUsersData < ActiveRecord::Migration[7.0]
  def change
    create_table :users_data do |t|
      User.create(name:"xasig", email:"xasig11970@akapple.com")
      User.create(name:"siwoyi", email:"siwoyi3240@dufeed.com")
      User.create(name:"Chitrak", email:"bhattchitrak@gmail.com")
      t.timestamps
    end
  end
end
