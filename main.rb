#
# = メイン処理クラス
#
Dir.glob("./lib/*.rb"){|file| require file}
Dir.glob("./scenarios/*.rb"){|file| require file}


class Main
  def execute
    product = Product.instance
    [ Scenarios::ProtoTyping, Scenarios::ProductDevelopment, Scenarios::Test, Scenarios::Delivery].each do |klass|
      klass.new.execute
    end
  end
end


Main.new.execute
