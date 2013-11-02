

class BadProjectManager < ProjectManager
  
  def execute(customer, scenario=nil)
    product = Product.instance

    if customer.anger_mater > 200 # 怒り始めたらリーダーを頼る
      leader.execute(product) rescue nil     
    end    
  
    super
    
  end

end

  

end 