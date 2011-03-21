class TestHarnessController < ApplicationController
  def index
    @reference = Luhnacy.generate(15)

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
             "wms-staging" =>""}
  end

end
