#
# = メイン処理クラス
#
Dir.glob("./lib/*.rb"){|file| require file}
Dir.glob("./schenarios/*.rb"){|file| require file}

class Main
  def execute
    product = Product.instance
    Programmer.new.execute product
  end
end


Main.new.execute
