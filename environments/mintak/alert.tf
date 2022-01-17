# providerの設定でuser_project_override = true、billing_project= "mintak-bxqa"
# と設定しないとAPIから403で弾かれてしまう(ユーザーアカウントでapplyする場合)

resource "google_billing_budget" "this" {
  billing_account = data.google_billing_account.account.id
  display_name    = "GCP Budget Alert"

  budget_filter {
    credit_types_treatment = "INCLUDE_ALL_CREDITS"
  }

  amount {
    specified_amount {
      currency_code = "JPY"
      units         = var.budget
    }
  }

  threshold_rules {
    threshold_percent = 0.5
    spend_basis       = "CURRENT_SPEND"
  }
  threshold_rules {
    threshold_percent = 0.85
    spend_basis       = "FORECASTED_SPEND"
  }
  threshold_rules {
    threshold_percent = 1.0
    spend_basis       = "CURRENT_SPEND"
  }
}

data "google_billing_account" "account" {
  billing_account = "01ED0E-0EF6B9-F55E96"
}
