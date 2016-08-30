class VersionCmp
  include Comparable

  attr_accessor :version
  def initialize(version)
    @version = version.split('.').map {|v| v.to_i}
  end

  def <=>(other)
    other.version.each_with_index do |rseg, i|
      next if version[i] == rseg
      return version[i] <=> rseg
    end

    return 0
  end
end
