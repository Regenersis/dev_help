class TestHarnessController < ApplicationController
  def index
    @reference = Luhnacy.generate(15)
    @claim_reference = "REG#{Luhnacy.generate(14)}"
            

    @apps = {"accessory-staging" => "accessories",
             "additional-product-details-staging" => "",
             "credit-staging" => "",
             "exclusions-staging" => "exclusions",
             "forward-staging" => "shipments",
             "oem-returns-staging" => "",
             "pre-alert-staging" => "",
             "returns-staging" => "",
             "software-versions-staging" => "",
             "test-library-staging" =>"",
             "users-staging" => "",
             "viability-staging" => "product_viabilities",
             "logistics-service-staging" => "",
             "dispatcher-service-staging" => "",
             "insurance-exchange-service-staging" => ":8080/insurance-exchange/app/insurance_claims",
             "communication-service-staging" => "emails",
             "wms-staging" => ""}
  end

end
