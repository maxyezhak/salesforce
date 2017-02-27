- view: _lead
  sql_table_name: salesforce."sf_Lead"
  fields:
  
# dimensions #

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}."Id"

  - dimension: annual_revenue
    type: number
    sql: ${TABLE}."AnnualRevenue"

  - dimension: city
    type: string
    sql: ${TABLE}."City"

  - dimension: company
    type: string
    sql: ${TABLE}."Company"

  - dimension: country
    type: string
    sql: ${TABLE}."Country"
    
  - dimension: converted_account_id
    type: string
    hidden: true
    sql: ${TABLE}."ConvertedAccountId"

  - dimension: converted_contact_id
    type: string
    hidden: true
    sql: ${TABLE}."ConvertedContactId"

  - dimension_group: converted
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."ConvertedDate"

  - dimension: converted_opportunity_id
    type: string
    hidden: true
    sql: ${TABLE}."ConvertedOpportunityId"

  - dimension: created_by_id
    type: string
    hidden: true
    sql: ${TABLE}."CreatedById"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."CreatedDate"

  - dimension: description
    type: string
    sql: ${TABLE}."Description"

  - dimension: email
    type: string
    sql: ${TABLE}."Email"

#   - dimension: fax
#     type: string
#     sql: ${TABLE}.fax

  - dimension: first_name
    type: string
    sql: ${TABLE}."FirstName"

  - dimension: industry
    type: string
    sql: ${TABLE}."Industry"

  - dimension: is_converted
    type: yesno
    sql: ${TABLE}."IsConverted"

  - dimension: is_deleted
    type: yesno
    sql: ${TABLE}."IsDeleted"

  - dimension: is_unread_by_owner
    type: yesno
    sql: ${TABLE}."IsUnreadByOwner"

  - dimension: last_modified_by_id
    type: string
    sql: ${TABLE}."LastModifiedById"

  - dimension_group: last_modified
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}."LastModifiedDate"

  - dimension: last_name
    type: string
    sql: ${TABLE}."LastName"

  - dimension: lead_source
    type: string
    sql: ${TABLE}."LeadSource"

  - dimension: name
    type: string
    sql: ${TABLE}."Name"

  - dimension: number_of_employees
    type: number
    sql: ${TABLE}."NumberOfEmployees"

  - dimension: owner_id
    type: string
    hidden: true
    sql: ${TABLE}."OwnerId"

  - dimension: phone
    type: string
    sql: ${TABLE}."Phone"

  - dimension: postal_code
    type: string
    sql: ${TABLE}."PostalCode"

  - dimension: salutation
    type: string
    sql: ${TABLE}."Salutation"

  - dimension: state
    type: string
    sql: ${TABLE}."State"

  - dimension: status
    type: string
    sql: ${TABLE}."Status"

  - dimension: street
    type: string
    sql: ${TABLE}."Street"

  - dimension_group: system_modstamp
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}."SystemModStamp"

  - dimension: title
    type: string
    sql: ${TABLE}."Title"

  - dimension: website
    type: string
    sql: ${TABLE}."Website"

    
    # measures #
  - measure: count
    type: count
    drill_fields: [id, last_name, name, first_name]
#     filters:
#       lead.is_deleted: 0

  - measure: avg_annual_revenue
    type: avg
    sql: ${TABLE}.annual_revenue
#     filters:
#       lead.is_deleted: 0