class Factory
  attr_accessor :name, :downtime, :workingtime, :machines

  def initialize(builder)
    @name = builder.name
    @downtime = builder.downtime
    @workingtime = builder.workingtime
    @machines = builder.machines
  end

  def downtime?
    @downtime
  end

  def to_s
    "Factory Name: #{@name}, Downtime: #{@downtime}, Workingtime: #{@workingtime}, Machines: #{machines}"
  end
  def inspect
    "#{@name}"
  end
  def get_name()
    return @name
  end
  def get_downtime()
    return @downtime
  end
  def get_workingtime()
    return @workingtime
  end
  def get_machines()
    return @machines
  end
  class FactoryBuilder
    attr_reader :name, :downtime, :workingtime, :machines
    def initialize
      @workingtime = {}
      @downtime = {}
      @machines = []
    end

    def set_name(name)
      @name = name
      self
    end

    def set_downtime(downtime)
      @downtime = downtime
      self
    end

    def set_workingtime(workingtime)
      @workingtime = workingtime
      self
    end
    def set_machines(machines)
      @machines = machines
      self
    end
    def build
      Factory.new(self)
    end
  end

  class FactoryGenerator
    def generate
      factories = []
      factories << FactoryBuilder.new.set_name("11").set_workingtime({"jan"=>10,"feb"=>50}).set_downtime({"jan"=>50,"feb"=>10}).set_machines(["Machine1","Machine2"]).build
      factories << FactoryBuilder.new.set_name("1").set_workingtime({"jan"=>100,"feb"=>50}).set_downtime({"jan"=>20,"feb"=>50}).set_machines(["Machine1","Machine2"]).build
      factories << FactoryBuilder.new.set_name("2").set_workingtime({"jul"=>1430,"aug"=>343}).set_downtime({"jul"=>0,"aug"=>0}).set_machines(["Machine1","Machine2"]).build
      factories << FactoryBuilder.new.set_name("3").set_workingtime({"sep"=>0,"oct"=>0}).set_downtime({"sep"=>500,"oct"=>100}).set_machines(["Machine1","Machine2"]).build
      factories << FactoryBuilder.new.set_name("4").set_workingtime({"nov"=>1121,"dec"=>232}).set_downtime({"nov"=>176,"dec"=>252}).set_machines(["Machine1","Machine2"]).build
      factories
    end
  end
end
