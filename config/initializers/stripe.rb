Rails.configuration.stripe = {
  :publishable_key => 'pk_test_pgwAuVdpLxuvIxJe7NL1Ivud',
  :secret_key      => 'sk_test_gZyZGOL0JRI8Zld9zqgN4GmS'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]