class TestData

  def self.user
    {
      clientUserId: "C301245",
      profileType: "INDIVIDUAL",
      firstName: "John",
      lastName: "Doe",
      dateOfBirth: "1978-01-03",
      email: "jdoe@hyperwallet.com",
      addressLine1: "600 Main Street",
      city: "Los Angeles",
      stateProvince: "CA",
      country: "US",
      postalCode: "90012",
      programToken: "prg-eb305d54-00b4-432b-eac2-ab6b9e123409"
    }
  end

  def self.payment
    {
      clientPaymentId: "C301245",
      amount: "100.00",
      currency: 'USD',
      purpose: "OTHER", # Research and development services
      destinationToken: "trm-ac5727ac-8fe7-42fb-b69d-977ebdd7b48b",
      programToken: "prg-eb305d54-00b4-432b-eac2-ab6b9e123409"
    }
  end

end
