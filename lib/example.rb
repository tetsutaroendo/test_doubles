# For Spy and Mock

class ActualDependency1
  def execute(str)
    str.upcase
  end
end

class SUT1

  def initialize(dependency)
    @dependency = dependency
  end

  def mut
    @dependency.execute('trace data')
  end
end


# For Stub

class ActualDependency2
  def execute
    rand(100)
  end
end

class SUT2

  def initialize(dependency)
    @dependency = dependency
  end

  def mut
    @dependency.execute * 2
  end
end
