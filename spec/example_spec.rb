require 'example'
class Spy
  def initialize
    @arg
  end

  def execute(arg)
    @arg = arg
  end

  def get_arg
    @arg
  end
end

class Mock
  def initialize(rspec)
    @rspec = rspec
  end

  def execute(arg)
    @arg = arg
  end

  def verify
    @rspec.expect(@arg).to @rspec.eq('trace data')
  end
end

describe SUT1 do
  context 'Spy' do
    it do
      spy = Spy.new
      sut1 = SUT1.new(spy)
      sut1.mut
      expect(spy.get_arg).to eq('trace data')
    end
  end

  context 'Mock' do

    it do
      mock = Mock.new(self)
      sut1 = SUT1.new(mock)
      sut1.mut
      mock.verify
    end
  end
end


class Stub
  def initialize(return_value)
    @return_value = return_value
  end

  def execute
    @return_value
  end
end

describe SUT2 do
  it do
    stub = Stub.new(1)
    sut2 = SUT2.new(stub)
    expect(sut2.mut).to eq(2)
  end
end

