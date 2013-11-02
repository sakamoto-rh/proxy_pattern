#
# == 納品フェイズです
#
module Scenarios
  class Delivery
    def execute(members)
      product = Product.instance

      puts "顧客「プログラムは出来ましたか？＾＾」"
      wait 2

      3.times do
       print "."
       wait 2
      end
      puts ""

      members[:customer].execute(product, self)
    end
  end
end
