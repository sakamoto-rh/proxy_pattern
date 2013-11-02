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

    s

  end

  private
  #
  # == プログラマーの連絡先を知っています
  #
  def project_manager
    @project_manager || = ProjectManager.new
  end

  #
  # == プログラマーの連絡先を知っています
  #
  def programmer
    @programmer || = Programmer.new
  end

  #
  # == リーダーの連絡先を知っています
  #
  def leader
    @leader || = Leader.new
  end

  #
  # == 営業の連絡先を知っています
  #
  def sales
    @sales || = Sales.new
  end
end
