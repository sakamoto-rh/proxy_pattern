require './lib/base'
require './lib/project_manager'

class GoodProjectManager < ProjectManager
  def execute(customer, scenario=nil)
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
        customer.execute(product)
      rescue
        raise ArgumentError.new('この金額でやってられるか!!') if
        !product.respond_to?('price') || product.price < 300_000
      end
    end

    product
  end
end
