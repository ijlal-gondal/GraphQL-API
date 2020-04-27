module Types
  class CustomerType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, ID, null: false
    field :address_id, ID, null: false
    field :business_name, String, null: false
    field :contact_full_name, String, null: false
    field :contact_phone, String, null: false
    field :contact_email, String, null: false
    field :business_description, String, null: true
    field :technician_full_name, String, null: false
    field :technician_phone, String, null: false
    field :technician_email, String, null: false
  end
end




