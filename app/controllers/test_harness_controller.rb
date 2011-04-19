class TestHarnessController < ApplicationController

  def index
    @reference = Luhnacy.generate(15)
    @claim_reference = "REG#{Luhnacy.generate(14)}"
            

    @apps = {"accessories" => {:logout => get_logout("accessories"), :link => get_link("accessories")},
             "additional-product-details-staging" => {:logout => get_logout("additional-product-details"), :link => get_link("additional-product-details")},
             "credit" => {:logout => get_logout("credit"), :link => get_link("credit")},
             "exclusions" => {:logout => get_logout("exclusions"), :link => get_link("exclusions", "exclusions")},
             "forward" => {:logout => get_logout("forward"), :link => get_link("forward", "shipments")},
             "oem-returns" => {:logout => get_logout("oem-returns"), :link => get_link("oem-returns")},
             "pre-alert" => {:logout => get_logout("pre-alert"), :link => get_link("pre-alert")},
             "returns" => {:logout => get_logout("returns"), :link => get_link("returns")},
             "software-versions"  => {:logout => get_logout("software-versions"), :link => get_link("software-versions")},
             "test-library"  => {:logout => get_logout("test-library"), :link => get_link("test-library")},
             "users"  => {:logout => get_logout("users"), :link => get_link("users")},
             "viability"  => {:logout => get_logout("viability"), :link => get_link("viability", "product_viabilities")},
             "logistics-service-jiffy"  => {:logout => get_logout("logistics-service"), :link => get_link("logistics-service", "jiffy_bag_requests")},
             "logistics-service-collection"  => {:logout => get_logout("logistics-service"), :link => get_link("logistics-service", "courier_collections")},
             "dispatcher-service-collection"  => {:logout => get_logout("dispatcher-service"), :link => get_link("dispatcher-service")},
             "insurance-exchange"  => {:logout => "", :link => "http://insurance-exchange-staging.therepairline.co.uk:8080/insurance-exchange/app/insurance_claims"},
             "communication-service-email"  => {:logout => get_logout("communication-service"), :link => get_link("communication-service", "emails")},
             "communication-service-sms"  => {:logout => get_logout("communication-service"), :link => get_link("communication-service", "text_messages")},
             "wms-staging" => {:logout => get_logout("wms"), :link => get_link("wms")}}
  end

  private
  def get_logout(key)
    "http://#{key}-staging.therepairline.co.uk/pages/logout"
  end

  def get_link(key, resource = nil)
    "http://#{key}-staging.therepairline.co.uk/#{resource}"
  end

end
