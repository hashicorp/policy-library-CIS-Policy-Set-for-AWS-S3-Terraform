mock "tfconfig/v2" {
  module {
    source = "./mocks/failure-s3-bucket-with-not-a-valid-policy/mock-tfconfig-v2.sentinel"
  }
}

mock "tfstate/v2" {
  module {
    source = "./mocks/failure-s3-bucket-with-not-a-valid-policy/mock-tfstate-v2.sentinel"
  }
}

mock "tfresources" {
  module {
    source = "../../../modules/tfresources/tfresources.sentinel"
  }
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
