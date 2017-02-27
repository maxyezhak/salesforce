- view: _user
  sql_table_name: salesforce."sf_User"
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}."Id"

#   - dimension: about_me
#     type: string
#     sql: ${TABLE}.aboutme

  - dimension: account_id
    type: string
    hidden: true
    sql: ${TABLE}."AccountId"

  - dimension: alias
    type: string
    sql: ${TABLE}."Alias"

  - dimension: badge_text
    type: string
    sql: ${TABLE}."BadgeText"

  - dimension: city
    type: string
    sql: ${TABLE}."City"

  - dimension: community_nickname
    type: string
    sql: ${TABLE}."CommunityNickname"

  - dimension: company_name
    type: string
    sql: ${TABLE}."CompanyName"

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: created_by_id
    type: string
    sql: ${TABLE}."CreatedById"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."CreatedDate"

  - dimension: default_group_notification_frequency
    type: string
    sql: ${TABLE}."DefaultGroupNotificationFrequency"

  - dimension: digest_frequency
    type: string
    sql: ${TABLE}."DigestFrequency"

  - dimension: email
    type: string
    sql: ${TABLE}."Email"

  - dimension: email_encoding_key
    type: string
    sql: ${TABLE}."EmailEncodingKey"

  - dimension: first_name
    type: string
    sql: ${TABLE}."FirstName"

  - dimension: forecast_enabled
    type: yesno
    sql: ${TABLE}."ForecastEnabled"

  - dimension: is_active
    type: yesno
    sql: ${TABLE}."IsActive"

  - dimension: language_locale_key
    type: string
    sql: ${TABLE}."LanguageLocaleKey"

  - dimension_group: last_login
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."LastLoginDate"

  - dimension: last_modified_by_id
    type: string
    sql: ${TABLE}."LastModifiedById"

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."LastModifiedDate"

  - dimension: last_name
    type: string
    sql: ${TABLE}."LastName"

  - dimension_group: last_password_change
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."LastPasswordChangeDate"

  - dimension_group: last_referenced
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."LastReferencedDate"

  - dimension_group: last_viewed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."LastViewedDate"

  - dimension: locale_sid_key
    type: string
    sql: ${TABLE}."LocaleSidKey"

  - dimension: mobile_phone
    type: string
    sql: ${TABLE}."MobilePhone"

  - dimension: name
    type: string
    sql: ${TABLE}."Name"

  - dimension: phone
    type: string
    sql: ${TABLE}."Phone"
    
  - dimension: postal_code
    type: string
    sql: ${TABLE}."PostalCode"

  - dimension: profile_id
    type: string
    sql: ${TABLE}."ProfileId"

  - dimension: receives_admin_info_emails
    type: yesno
    sql: ${TABLE}."ReceivesAdminInfoEmails"

  - dimension: receives_info_emails
    type: yesno
    sql: ${TABLE}."ReceivesInfoEmails"

  - dimension: state
    type: string
    sql: ${TABLE}."State"

  - dimension: street
    type: string
    sql: ${TABLE}."Street"

  - dimension_group: system_modstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."SystemModStamp"

  - dimension: time_zone_sid_key
    type: string
    sql: ${TABLE}."TimezoneSidKey"

  - dimension: username
    type: string
    sql: ${TABLE}."Username"

  - dimension: title
    type: string
    sql: ${TABLE}."Title"

  - dimension: user_role_id
    type: string
    sql: ${TABLE}."UserRoleId"

  - dimension: user_type
    type: string
    sql: ${TABLE}."UserType"


# measures #

  - measure: count
    type: count
    drill_fields: detail*

  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - username
    - company_name
    - last_name
    - name
    - company_name
    - community_nickname
    - firstname