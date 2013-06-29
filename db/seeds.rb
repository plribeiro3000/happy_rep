admin_attributes = { :email => 'admin@admin.com',
                     :password => '12345678',
                     :password_confirmation => '12345678',
                     :profile_attributes => { :name => 'Admin',
                                              :birthday => '01-01-1990',
                                              :cpf => '712.984.957-68',
                                              :phone => '35 36293452',
                                              :role => 'admin' } }
User.create(admin_attributes)