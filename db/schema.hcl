schema "barfe_nou" {}

table "transactions" {
  schema = schema.barfe_nou

  column "id" {
    type = bigint
    null = false
  }
  column "created_at" {
    type = timestamp
    null = false
  }
  column "amount" {
    type = numeric(9, 2) // 1.00 = 10,000IRR
    null = false
  }
  column "legal_name" {
    type = varchar(128)
    null = false
  }

  primary_key {
    columns = [column.id]
  }

  index "idx_name" {
    columns = [column.name]
    unique = true
  }
}
