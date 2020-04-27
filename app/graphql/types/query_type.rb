require 'graphql'
require 'pg'

module Types
  QueryType = GraphQL::ObjectType.define do
    name "Query"
   

    field :interventions do
      type types[InterventionType]
      description "Look for a building ID using Intervetion ID"
      resolve -> (obj, args, ctx) {
        Intervention.all
      }
    end
  
   field :interventions do
    argument :id, types.ID
    type InterventionType
    resolve -> (obj, args, ctx) {
      Intervention.find(args[:id])
    }
    end

    field :buildings do
      type types[BuildingType]
      resolve -> (obj, args, ctx) {
        Building.all
      }
    end

    field :buildings do
      argument :id, types.ID
      type BuildingType
      resolve -> (obj, args, ctx) {
        Building.find(args[:id])
      }
    end

    field :addresses do
      type types[AddressType]
      resolve -> (obj, args, ctx) {
        Address.all
      }
    end

    field :addresses do
      argument :id, types.ID
      type AddressType
      resolve -> (obj, args, ctx) {
        Address.find(args[:id])
      }
    end

    field :customers do
        type types[CustomerType]
        resolve -> (obj, args, ctx) {
          Customer.all
        }
    end
  
    field :customers do
        argument :id, types.ID
        type CustomerType
        resolve -> (obj, args, ctx) {
          Customer.find(args[:id])
        }
    end

    field :users do
          type types[UserType]
          resolve -> (obj, args, ctx) {
            User.all
          }
    end

    field :users do
      argument :id, types.ID
      type UserType
      resolve -> (obj, args, ctx) {
        User.find(args[:id])
      }
  end

  field :employees do
        type types[EmployeeType]
        resolve -> (obj, args, ctx) {
          Employee.all
        }
  end
    
    field :employees do
          argument :id, types.ID
          type EmployeeType
          resolve -> (obj, args, ctx) {
            Employee.find(args[:id])
          }
    end
    field :building_details do
          type types[BuildingDetailType]
          resolve -> (obj, args, ctx) {
            BuildingDetail.all
          }
    end
    
    field :building_details do
          argument :id, types.ID
          type BuildingDetailType
          resolve -> (obj, args, ctx) {
            BuildingDetail.find(args[:id])
          }
    end

  end
end




# class QueryType < BaseObject
#   # queries are just represented as fields
#   # `all_links` is automatically camelcased to `allLinks`
#   field :all_customers, [CustomerType], null: false
#   field :all_addresses, [AddressType], null: false
#   field :all_interventions, [InterventionType], null: false
#   field :all_buildings, [BuildingType], null: false
#   field :all_building_details, [BuildingDetailType], null: false

#   # this method is invoked, when `all_link` fields is being resolved
#   def all_building_details
#     BuildingDetail.all
#   end
#   def all_buildings
#     Building.all
#   end
#   def all_interventions
#     Intervention.all
#   end
#   def all_customers
#     Customer.all
#   end
#   def all_addresses
#     Address.all
#   end
# end