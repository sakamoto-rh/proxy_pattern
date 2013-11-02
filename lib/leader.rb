#
# = 開発リーダークラスです。
#   
class Leader
  #
  # = 製品を開発します。リーダーなので能力が高いです。
  #
  def execute(product)
    product.progress += 2
    product.quality += 2
  end
end
