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
      puts "Productの進捗率：#{product.progress}"
      puts "Productの完成度：#{product.quality}"

      #productの進捗が25になるまで繰り返す。
      next_check = 10

      # PMが業務を遂行する
      members[:project_manager].execute members[:customer], self

      random = rand(2)
      puts ["顧客は満足そうだ。", "顧客の理解の範疇を超えた!!", "顧客が思っていたモノと違っている!!"][random]
      if random > 0
        members[:customer].panic!
      end
=begin
      while product.progress < 25

        #開発する
        members[:project_customer].execute

        if product_progress > next_check
          next_check += 10

          #顧客は3分の2の確率でパニックに陥る。
          puts "顧客が様子を見に来た..."
          wait 2

        end
      end
=end


      #最終的にもう一回見せる。
      members[:project_manager]
    end
  end
end
