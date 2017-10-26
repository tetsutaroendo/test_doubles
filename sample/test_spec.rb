class Stub
  def initialize(returnValue)
    @returnValue = returnValue
  end

  def do
    @returnValue
  end
end

describe StubSUT do
  it do
    stub = Stub.new(1)
    sut = StubSUT.new(stub)
    expect(sut.mut).to eq(1)
  end
end


class Spy
  def initialize
    @init
  end

  def do
    @init = 1
  end

  def get
    @init
  end
end

describe SpySUT do
  it do
    spy = Spy.new
    spy_sut = SpySUT.new(spy)
    spy_sut.mut
    expect(spy.get).to eq(1)
  end
end


class Mock
  def initialize
    @init
  end

  def do
    @init = 1
  end

  def verify
    expect(@init).to eq(1)
  end
end

describe MockSUT do
  it do
    mock = Mock.new
    mock_sut = MockSUT.new(mock)
    mock_sut.mut
    mock.verify
  end
end
