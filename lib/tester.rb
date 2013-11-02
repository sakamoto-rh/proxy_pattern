#
# = テスタークラスです。プログラマーと製品の完成度をあげることができます。
#
class Tester
  #
  # == 製品をテストします
  #
  def execute(product)
    product.quality += 1
  end
end
