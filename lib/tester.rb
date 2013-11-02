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
    product.quality += 1
  end

  def product
    Product.instance
  end
end
