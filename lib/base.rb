# 基底クラス
require './lib/product'

module Base
  def execute
    raise "abstract method !!"
  end
end
