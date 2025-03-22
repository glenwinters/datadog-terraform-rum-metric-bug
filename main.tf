resource "datadog_rum_metric" "test" {
  event_type = "view"
  name = "just.a.test"

  compute {
    aggregation_type = "count"
  }

  uniqueness {
    when = "match"
  }

  group_by {
    path = "env"
    # tag_name = "env"
  }
}