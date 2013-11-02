#
# = 開発リーダークラスです。
#
require './lib/base'

class Leader
  include Base
  #
  # = 製品を開発します。リーダーなので能力が高いです。
  #
  def execute
    product = Product.instance
    product.progress += 2
    product.quality += 2
  end
end
