#
# = テスタークラスです。プログラマーと製品の完成度をあげることができます。
#
require './lib/base'

class Tester
  include Base
  #
  # == 製品をテストします
  #
  attr_accessor :tired_point_test #テスター疲労度
  def initialize
    @tired_point_test ||= 1
  end

  def execute(product)
    product.quality += 1
    @tired_point_test += 2

    if @tired_point_test == 0
      p "今日からまた頑張ります！！！"
    elsif @tired_point_test < 5
      p "【テスターが発言している。】"
      p "まだまだ楽勝です！"
    elsif < 10
      p "【テスターが文句をいっている】"
      p "バグばっかりじゃねーかよ。。。"
    elsif < 15
      p "【テスターの様子がおかしい。】"
      p "最近、夢にテストシナリオが出てくる。。。"
    elsif < 20
      p "【テスターから連絡があった。】"
      p "体調不良で今日休みます。。。"
      @tired_point_test = 0
      product.quality -= 1
    end
  end

  def product
    Product.instance
  end
end
