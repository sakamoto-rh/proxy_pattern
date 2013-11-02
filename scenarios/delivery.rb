#
# == 納品フェイズです
#
module Scenarios
  class Delivery
    def execute(members)
      product = Product.instance
      puts "顧客「プログラムは出来ましたか？＾＾」"
      3.times do
       print "."
       wait 1.5
      end
      puts ""
     
      members[:customer]
     
    end

  end
end
