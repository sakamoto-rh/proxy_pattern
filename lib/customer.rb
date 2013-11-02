#
# = 顧客クラスです。あらぶっています。
#   クレバーな顧客なので、要因の連絡先をそれぞれ知っています。
#
require './lib/base'

class Customer
  include Base
  attr_accessor :angry_mater
  #
  # == 営業を呼び出してクレームをする
  #
  def claim; end

  #
  # == 進捗が遅いとおいかり
  #    各所に当たり散らします
  def angry; end

  #
  # == 発狂中、プログラマーに直接電話します
  #
  def panic!; end

  #
  # == 納品物を受け取ります
  #
  def receive(product)
    if product.progress > 100 && product.qualify > 80
      happy!
    else
      raise ArgumentError.new("このやろう！！")
    end
  end


  private

  #
  # == 納品すると喜びます
  #
  def happy!
    p "ありがとう！！！"
  end

  #
  # == プログラマーの連絡先を知っています
  #
  def programmer
    @programmer ||= Programmer.new
  end

  #
  # == リーダーの連絡先を知っています
  #
  def leader
    @leader ||= Leader.new
  end

  #
  # == 営業の連絡先を知っています
  #
  def sales
    @sales ||= Sales.new
  end

  #
  # == PMの連絡先を知っています
  #
  def project_manager
    @project_manager ||= ProjectManager.new
  end

  #
  # == Testerの連絡先を知っています
  #
  def tester
    @tester ||= Tester.new
  end
end

