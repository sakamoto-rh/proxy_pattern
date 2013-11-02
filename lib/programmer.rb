#
# = プログラマクラスです。製品の進捗率を上げることが出来ます。
#
class Programmer

  #
  # == 製品を開発します
  #
  def execute(product)
    product.progress += 1
  end
end
