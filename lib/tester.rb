#
# = テスタークラスです。プログラマーと製品の完成度をあげることができます。
#
require './lib/base'

class Tester
  include Base
  #
  # == 製品をテストします
  #
  def execute
    product = Product.instance
    product.quality += 1
  end
end
