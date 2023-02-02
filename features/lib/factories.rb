require 'faker'
require_relative '../models/users_model'

FactoryBot.define do
    factory :user, class: UsersModel do
        nome { Faker::Name.name }
        email { Faker::Internet.email }
        password { '123456' }
        administrador { 'false' }
    end
end