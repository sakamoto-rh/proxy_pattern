#
# = 納品物です。ごまかして納品をすることができます。
#   Singletonクラスです   
#
class Product
  attr_accessor :progress, :quality #進捗率、完成度
  include Singleton
end
