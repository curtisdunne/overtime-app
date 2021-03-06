FactoryGirl.define do
  sequence :email do |n|
    "test(#{n}@example.com)"
  end

  factory :user, class: "User" do
    first_name "Joe"
    last_name "Smith"
    email { generate :email }
    password "password"
    password_confirmation "password"
    phone "1234567890"
    ssn 1234
    company "ABC Company"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name "User"
    email { generate :email }
    password "password"
    password_confirmation "password"
    phone "1234567890"
    ssn 1234
    company "ABC Company"
  end

  factory :non_authorized_user, class: "User" do
    first_name "Non"
    last_name "Authorized"
    email { generate :email }
    password "password"
    password_confirmation "password"
    phone "1234567890"
    ssn 1234
    company "ABC Company"
  end

end
