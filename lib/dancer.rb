require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'


# using include will include the module's methods as instance methods
# extend will extend class methods (do they need to come from separate modules?)
class Dancer
	include Dance
	extend MetaDancing
	attr_accessor :name

	def initialize(name)
		@name = name
	end


	# refactored
	extend FancyDance::ClassMethods 
	include FancyDance::InstanceMethods
	# the :: references the parent child relationship of the nested modules
end
