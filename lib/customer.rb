#
# = 顧客クラスです。あらぶっています。
#   クレバーな顧客なので、要因の連絡先をそれぞれ知っています。
#
class Customer
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
  # == 納品すると喜びます
  #
  def happy!; end

  private

  def programmer
    @programmer || = Programmer.new
  end

  def leader
    @leader || = Leader.new
  end

  def sales
    @sales || = Sales.new
  end

  def project_manager
    @project_manager || = ProjectManager.new
  end

  def programmer
    @programmer || = Programmer.new
  end

  def tester
    @tester || = Tester.new
  end
end

