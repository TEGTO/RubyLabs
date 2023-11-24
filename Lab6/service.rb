require_relative 'factory'
def count_downtime_of_factory(factory)
  downtime = 0
  factory.get_downtime.each do |key, value|
    downtime+= value
  end
  downtime
end

def print_all_machines(factory)
  factory.get_machines.each do |machine|
    puts machine
  end
end

def find_factories_with_zero_downtime(factories)
  zero_downtime_machines = []
  factories.each do |factory|
    factory.get_downtime.each do |key, value|
      if value == 0
        zero_downtime_machines << factory.get_name
      end
    end
  end

  
  puts "Factories with machines with zero downtime: #{zero_downtime_machines.join(', ')}"
end

def print_average_downtime(factories)
  factories.each do |factory|
    puts "Average downtime of Factiory #{factory.get_name}: #{count_downtime_of_factory(factory)/factory.get_downtime().length}"
  end
end

factories = Factory::FactoryGenerator.new.generate

factories.each do |machine|
  puts machine
end


puts "#{count_downtime_of_factory(factories[0])} hours of downtime"
print_all_machines(factories[0])
find_factories_with_zero_downtime(factories)
print_average_downtime(factories)