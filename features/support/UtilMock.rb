require 'faker'

class UtilMock
    def self.gera_email
        return (Faker::Name.first_name + Faker::Name.last_name + "@mailinator.com").downcase
    end

    def self.gera_cpf
        return Faker::IDNumber.brazilian_citizen_number
    end
end