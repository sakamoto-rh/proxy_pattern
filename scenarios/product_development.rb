require './scenarios/base'
#
# = 製品開発中
#
# members = {customer:Customer.new,
#            project_manager:ProjectManager.new,
#            sales:Sales.new}

module Scenarios
  class ProductDevelopment

    # def execute
    def execute(members)
      product = Product.instance

      #進捗が100以上になるまで繰り返す
      i = 0
      j = 0
      while product.progress >= 100
        members[:project_manager].programmer.execute

        #進捗が10ごとにテストを実施する、また顧客に見せる
        if product.progress > 10 && i/10 > j
          members[:project_manager].tester.execute
          members[:customer].execute
        end

        #Time.now.secがゾロ目だったら、営業は怒らない
        unless Time.now.sec =~ /00|11|22|33|44|55/
          #20回繰り返すごとに、顧客から営業にクレームが入る
          #50回繰り返すごとに、顧客から営業、PM、プログラマー、テスターにクレームが入る
          if i/20 > j
            members[:customer].claim
          elsif i/50 > j
            members[:customer].claim
          end
        end
      end

      #フェイズの最後に顧客に見せる
      members[:project_manager].execute(members[:customer], self)
    end
  end
end
