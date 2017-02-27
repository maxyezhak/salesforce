- view: _opportunity
  sql_table_name: salesforce."sf_Opportunity"
  fields:
  
# dimensions #

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}."Id"

  - dimension: account_id
    type: string
    sql: ${TABLE}."AccountId"

  - dimension: amount
    type: number
    sql: ${TABLE}."Amount"
    
  - dimension: campaign_id
    type: string
    hidden: true
    sql: ${TABLE}."CampaignId"

  - dimension_group: close
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}."CloseDate"

  - dimension: created_by_id
    type: string
    sql: ${TABLE}."CreatedById"

  - dimension_group: created
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}."CreatedDate"

  - dimension: description
    type: string
    sql: ${TABLE}."Description"

  - dimension: fiscal
    type: string
    sql: ${TABLE}."Fiscal"

  - dimension: fiscal_quarter
    type: number
    sql: ${TABLE}."FiscalQuarter"

  - dimension: fiscal_year
    type: number
    sql: ${TABLE}."FiscalYear"

  - dimension: forecast_category
    type: string
    sql: ${TABLE}."ForecastCategory"

  - dimension: forecast_category_name
    type: string
    sql: ${TABLE}."ForecastCategoryName"

  - dimension: has_opportunity_line_item
    type: yesno
    sql: ${TABLE}."HasOpportunityLineItem"

  - dimension: is_closed
    type: yesno
    sql: ${TABLE}."IsClosed"

  - dimension: is_deleted
    type: yesno
    sql: ${TABLE}."IsDeleted"

  - dimension: is_private
    type: yesno
    hidden: true
    sql: ${TABLE}."IsPrivate"

  - dimension: is_won
    type: yesno
    sql: ${TABLE}."IsWon"

  - dimension: last_modified_by_id
    type: string
    sql: ${TABLE}."LastmodiFiedById"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."LastModifiedDate"

  - dimension: lead_source
    type: string
    sql: ${TABLE}."LeadSource"

  - dimension: name
    type: string
    sql: ${TABLE}."Name"

  - dimension: owner_id
    type: string
    sql: ${TABLE}."OwnerId"

  - dimension: probability
    type: number
    sql: ${TABLE}."Probability"

  - dimension: stage_name
    type: string
    sql: ${TABLE}."StageName"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."SystemModStamp"

  - dimension: type
    type: string
    sql: ${TABLE}."Type"

# measures #

  - measure: count
    type: count
    drill_fields: [id, name, stage_name, forecast_category_name]
#     filters:
#       opportunity.is_deleted: 0