#
# = Project Managerクラスです。
#   各種情報のフィルタリングや顧客への回答、プログラマへの伝達などをおこないます。
require './lib/base'

class ProjectManager
  include Base

  def claim(customer)
  	Sales.new.execute
  end

  def execute(customer, scenario=nil)
  	product = Product.instance

    return product if customer.angry_mater < 100

    case scenario.instance_of?
  	when Scenarios::ProtoTyping
      leader.execute(product)
  	when Scenarios::ProductDevelopment
      programmer.execute(product)
  	when Scenarios::Test
      tester.execute(product)
  	when Scenarios::Delivery
      leader.execute(product) rescue nil
      programmer.execute(product) rescue nil
      tester.execute(product) rescue nil

      begin
        customer.receive(product)
      rescue
        raise ArgumentError.new('この金額でやってられるか!!') if
          !product.respond_to?('price') || product.price < 300_000
      end
  	end

  	product
  end

  def leader
    @leader ||= Leader.new
  end

  def programmer
    @programmer ||= Programmer.new
  end

  def tester
    @tester = Tester.new
  end
end
