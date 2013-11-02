#
# = プログラマクラスです。製品の進捗率を上げることが出来ます。
#
require './lib/base'

class Programmer
  include Base

  #
  # == 製品を開発します
  #
  def execute
    product = Product.instance
    product.progress += 1
  end
end
