module Types
    class EmployeeType < Types::BaseObject
      field :id, ID, null: false
      field :user_id, ID, null: false
      field :first_name, String, null: false
      field :last_name, String, null: false
      field :interventions, [InterventionType], null: true

    end
end

