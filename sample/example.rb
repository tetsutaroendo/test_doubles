class StubSUT
  def initalize(dependency)
    @dependency = dependency
  end

  def mut
    @dependency.do
  end
end

class SpySUT
  def initialize(dependency)
    @dependency = dependency
  end

  def mut
    @dependency.do
  end
end

class MockSUT
  def initialize(dependency)
    @dependency = dependency
  end

  def mut
    @dependency.do
  end
end
