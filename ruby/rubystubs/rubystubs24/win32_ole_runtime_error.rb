=begin
 This is a machine generated stub using stdlib-doc for <b>class WIN32OLERuntimeError</b>
 Sources used:  Ruby 2.4.0-preview1
 Created by IntelliJ Ruby Stubs Generator.
=end

# Raised when OLE processing failed.
# 
# EX:
# 
#   obj = WIN32OLE.new("NonExistProgID")
# 
# raises the exception:
# 
#   WIN32OLERuntimeError: unknown OLE server: `NonExistProgID'
#       HRESULT error code:0x800401f3
#         Invalid class string
class WIN32OLERuntimeError < RuntimeError
end
