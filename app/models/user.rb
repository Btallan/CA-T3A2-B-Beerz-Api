class User < ApplicationRecord
    has_secure_password
    #has: first_name:string - last_name:string - email:string - username:string - date_of_birth:date - mobile:string - employer:boolean - admin:boolean
    #has: password_digestLstring but is used as secure.
    #secure has added in : password:string (virtual) and password_confirmation:string (virtual)
    #User exmaple test information:
    #User.create({first_name: "test", last_name: "test_last", email: "email@testing.com", username: "testuser", mobile: "mobiletest", employer: true, admin: true, password: "password", password_confirmation: "password"} 
end