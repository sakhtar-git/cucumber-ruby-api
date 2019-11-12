
=begin
/***************************************************************************
 *   Add all common methods in one place                                   *
 *   Date           Author          Description                            *
 *   11/11/2019     Sharique        Initial                                *

 ***************************************************************************/
=end
class Demo
	def filetest(fileName)
		if File.exist?(fileName)
			return fileName
		else
			raise "File #{fileName} not found"
		end
	end

	def jsonHash(fileName)
		file = File.read(fileName)
		data_hash = JSON.parse(file)
		return data_hash
	end

end