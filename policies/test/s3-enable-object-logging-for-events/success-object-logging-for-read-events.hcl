mock "tfplan/v2" {
  module {
    source = "./mocks/policy-success-object-logging-for-read-events/mock-tfplan-v2.sentinel"
  }
}

import "plugin" "tfresources" {
  source = "../../../plugins/darwin/arm64/sentinel-plugin-tfresources"
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}

param "event_type" {
  value = "ReadOnly"
}

test {
  rules = {
    main = true
  }
}