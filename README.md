# GraphQL & GraphIQL

http://localhost:3000/graphiql

To use GraphIQL you need to add the query on the left panel then press the play button on the top left.

----------------------------------------------------------------- 
You can retrieve the address of the building, the beginning and the end of the intervention for a specific intervention.
  
Change the id  
*interventions(id: )*

```
{
  interventions(id: 2) {
    building {
      address {
        id
        entity
        status
        addressType
        apartmentNumber
        streetNumberName
        city
        stateProvince
        country
        zipCode
        latitude
        longitude
        status
      }
    }
  }
}
```
----------------------------------------------------------------- 
You can retrieve customer information and the list of interventions that look place for a specific building.
  
Change the id  
*buildings(id: )*

```
{
  buildings(id: 1) {
    customer {
      id
      businessName
      contactFullName
      contactPhone
      contactEmail
    }
    interventions {
      id
      batteryId
      columnId
      elevatorId
      employeeId
      status
      startDateTimeIntervention
      result
      endDateTimeIntervention
      report
    }
  }
}
```
----------------------------------------------------------------- 
You can retrieve all interventions carried out by a specified employee with the buildings associated with these interventions including the details (Table BuildingDetails) associated with these buildings.
  
Change the id  
*employees(id: )*

```
{
  employees(id: 1) {
    id
    userId
    firstName
    lastName
    interventions {
      batteryId
      columnId
      elevatorId
      startDateTimeIntervention
      result
      status
      endDateTimeIntervention
      report
      building {
        buildingDetails {
          buildingId
          informationKey
          value
        }
      }
    }
  }
}
```
