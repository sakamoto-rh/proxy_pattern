#
# = 納品物です。ごまかして納品をすることができます。
#   Singletonクラスです   
require 'singleton'
class Product
  attr_accessor :progress, :quality #進捗率、完成度
  include Singleton

  def initialize
    @progress = 0
    @quality = 0
  end
end
