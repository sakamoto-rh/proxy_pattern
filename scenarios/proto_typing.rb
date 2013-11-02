#
# = プロトタイプを開発中
#
require './scenarios/base'
module Scenarios
  class ProtoTyping
    #
    #引数
    #hashで渡して下さい
    #　members
    #    customerのインスタンス
    #    project_managerのインスタンス
    #    salesのインスタンス
    def execute(members)
      product = Product.instance

      puts "プロトタイプ開発を行います"
      wait 2
      puts "Productの進捗率：#{product.progress}"
      wait 2
      puts "Productの完成度：#{product.quality}"
      wait 2

      #productの進捗が25になるまで繰り返す。
      while product.progress < 25

        #開発する
        members[:project_customer].execute
     
        #顧客は4分の3の確率でパニックに陥る。
        puts "顧客が様子を見に来た..."
        wait 2

        random = rand(3)
        puts ["顧客は満足そうだ。", "顧客の理解の範疇を超えた"]
        if random > 0
          puts ["顧客はを理解していない!!", ""]
        end

      end


      #最終的にもう一回見せる。
      members[:project_manager].
    end
  end
end
