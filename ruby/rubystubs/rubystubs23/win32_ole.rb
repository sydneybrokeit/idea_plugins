=begin
 This is a machine generated stub using stdlib-doc for <b>class WIN32OLE</b>
 Sources used:  Ruby 2.3.1
 Created by IntelliJ Ruby Stubs Generator.
=end

# <code>WIN32OLE</code> objects represent OLE Automation object in Ruby.
# 
# By using WIN32OLE, you can access OLE server like VBScript.
# 
# Here is sample script.
# 
#   require 'win32ole'
# 
#   excel = WIN32OLE.new('Excel.Application')
#   excel.visible = true
#   workbook = excel.Workbooks.Add();
#   worksheet = workbook.Worksheets(1);
#   worksheet.Range("A1:D1").value = ["North","South","East","West"];
#   worksheet.Range("A2:B2").value = [5.2, 10];
#   worksheet.Range("C2").value = 8;
#   worksheet.Range("D2").value = 20;
# 
#   range = worksheet.Range("A1:D2");
#   range.select
#   chart = workbook.Charts.Add;
# 
#   workbook.saved = true;
# 
#   excel.ActiveWorkbook.Close(0);
#   excel.Quit();
# 
# Unfortunately, Win32OLE doesn't support the argument passed by
# reference directly.
# Instead, Win32OLE provides WIN32OLE::ARGV or WIN32OLE_VARIANT object.
# If you want to get the result value of argument passed by reference,
# you can use WIN32OLE::ARGV or WIN32OLE_VARIANT.
# 
#   oleobj.method(arg1, arg2, refargv3)
#   puts WIN32OLE::ARGV[2]   # the value of refargv3 after called oleobj.method
# 
# or
# 
#   refargv3 = WIN32OLE_VARIANT.new(XXX,
#               WIN32OLE::VARIANT::VT_BYREF|WIN32OLE::VARIANT::VT_XXX)
#   oleobj.method(arg1, arg2, refargv3)
#   p refargv3.value # the value of refargv3 after called oleobj.method.
class WIN32OLE
    # Version string of WIN32OLE.
    VERSION = nil #value is unknown, used for indexing.
    # After invoking OLE methods with reference arguments, you can access
    # the value of arguments by using ARGV.
    # 
    # If the method of OLE(COM) server written by C#.NET is following:
    # 
    #   void calcsum(int a, int b, out int c) {
    #       c = a + b;
    #   }
    # 
    # then, the Ruby OLE(COM) client script to retrieve the value of
    # argument c after invoking calcsum method is following:
    # 
    #   a = 10
    #   b = 20
    #   c = 0
    #   comserver.calcsum(a, b, c)
    #   p c # => 0
    #   p WIN32OLE::ARGV # => [10, 20, 30]
    # 
    # You can use WIN32OLE_VARIANT object to retrieve the value of reference
    # arguments instead of referring WIN32OLE::ARGV.
    ARGV = nil #value is unknown, used for indexing.
    # ANSI code page. See WIN32OLE.codepage and WIN32OLE.codepage=.
    CP_ACP = nil #value is unknown, used for indexing.
    # OEM code page. See WIN32OLE.codepage and WIN32OLE.codepage=.
    CP_OEMCP = nil #value is unknown, used for indexing.
    # 2
    CP_MACCP = nil #value is unknown, used for indexing.
    # current thread ANSI code page. See WIN32OLE.codepage and
    # WIN32OLE.codepage=.
    CP_THREAD_ACP = nil #value is unknown, used for indexing.
    # symbol code page. See WIN32OLE.codepage and WIN32OLE.codepage=.
    CP_SYMBOL = nil #value is unknown, used for indexing.
    # UTF-7 code page. See WIN32OLE.codepage and WIN32OLE.codepage=.
    CP_UTF7 = nil #value is unknown, used for indexing.
    # UTF-8 code page. See WIN32OLE.codepage and WIN32OLE.codepage=.
    CP_UTF8 = nil #value is unknown, used for indexing.
    # default locale for the operating system. See WIN32OLE.locale
    # and WIN32OLE.locale=.
    LOCALE_SYSTEM_DEFAULT = nil #value is unknown, used for indexing.
    # default locale for the user or process. See WIN32OLE.locale
    # and WIN32OLE.locale=.
    LOCALE_USER_DEFAULT = nil #value is unknown, used for indexing.
    # WIN32OLE.new(server, [host]) -> WIN32OLE object
    # 
    # Returns a new WIN32OLE object(OLE Automation object).
    # The first argument server specifies OLE Automation server.
    # The first argument should be CLSID or PROGID.
    # If second argument host specified, then returns OLE Automation
    # object on host.
    # 
    #     WIN32OLE.new('Excel.Application') # => Excel OLE Automation WIN32OLE object.
    #     WIN32OLE.new('{00024500-0000-0000-C000-000000000046}') # => Excel OLE Automation WIN32OLE object.
    def self.new(server, *host)
        #This is a stub, used for indexing
    end
    # WIN32OLE.connect( ole ) --> aWIN32OLE
    # 
    # Returns running OLE Automation object or WIN32OLE object from moniker.
    # 1st argument should be OLE program id or class id or moniker.
    # 
    #    WIN32OLE.connect('Excel.Application') # => WIN32OLE object which represents running Excel.
    def self.connect( ole )
        #This is a stub, used for indexing
    end
    # WIN32OLE.const_load( ole, mod = WIN32OLE)
    # 
    # Defines the constants of OLE Automation server as mod's constants.
    # The first argument is WIN32OLE object or type library name.
    # If 2nd argument is omitted, the default is WIN32OLE.
    # The first letter of Ruby's constant variable name is upper case,
    # so constant variable name of WIN32OLE object is capitalized.
    # For example, the 'xlTop' constant of Excel is changed to 'XlTop'
    # in WIN32OLE.
    # If the first letter of constant variable is not [A-Z], then
    # the constant is defined as CONSTANTS hash element.
    # 
    #    module EXCEL_CONST
    #    end
    #    excel = WIN32OLE.new('Excel.Application')
    #    WIN32OLE.const_load(excel, EXCEL_CONST)
    #    puts EXCEL_CONST::XlTop # => -4160
    #    puts EXCEL_CONST::CONSTANTS['_xlDialogChartSourceData'] # => 541
    # 
    #    WIN32OLE.const_load(excel)
    #    puts WIN32OLE::XlTop # => -4160
    # 
    #    module MSO
    #    end
    #    WIN32OLE.const_load('Microsoft Office 9.0 Object Library', MSO)
    #    puts MSO::MsoLineSingle # => 1
    def self.const_load( ole, mod = WIN32OLE)
        #This is a stub, used for indexing
    end
    # WIN32OLE.ole_free(aWIN32OLE) --> number
    # 
    # Invokes Release method of Dispatch interface of WIN32OLE object.
    # You should not use this method because this method
    # exists only for debugging WIN32OLE.
    # The return value is reference counter of OLE object.
    def self.ole_free(aWIN32OLE)
        #This is a stub, used for indexing
    end
    # WIN32OLE.ole_reference_count(aWIN32OLE) --> number
    # 
    # Returns reference counter of Dispatch interface of WIN32OLE object.
    # You should not use this method because this method
    # exists only for debugging WIN32OLE.
    def self.ole_reference_count(aWIN32OLE)
        #This is a stub, used for indexing
    end
    # WIN32OLE.ole_show_help(obj [,helpcontext])
    # 
    # Displays helpfile. The 1st argument specifies WIN32OLE_TYPE
    # object or WIN32OLE_METHOD object or helpfile.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    typeobj = excel.ole_type
    #    WIN32OLE.ole_show_help(typeobj)
    def self.ole_show_help(obj, *helpcontext)
        #This is a stub, used for indexing
    end
    # WIN32OLE.codepage
    # 
    # Returns current codepage.
    #    WIN32OLE.codepage # => WIN32OLE::CP_ACP
    def self.codepage()
        #This is a stub, used for indexing
    end
    # WIN32OLE.codepage = CP
    # 
    # Sets current codepage.
    # The WIN32OLE.codepage is initialized according to
    # Encoding.default_internal.
    # If Encoding.default_internal is nil then WIN32OLE.codepage
    # is initialized according to Encoding.default_external.
    # 
    #    WIN32OLE.codepage = WIN32OLE::CP_UTF8
    #    WIN32OLE.codepage = 65001
    def self.codepage=(code_page)
        #This is a stub, used for indexing
    end
    # WIN32OLE.locale -> locale id.
    # 
    # Returns current locale id (lcid). The default locale is
    # WIN32OLE::LOCALE_SYSTEM_DEFAULT.
    # 
    #    lcid = WIN32OLE.locale
    def self.locale()
        #This is a stub, used for indexing
    end
    # WIN32OLE.locale = lcid
    # 
    # Sets current locale id (lcid).
    # 
    #    WIN32OLE.locale = 1033 # set locale English(U.S)
    #    obj = WIN32OLE_VARIANT.new("$100,000", WIN32OLE::VARIANT::VT_CY)
    def self.locale= lcid
        #This is a stub, used for indexing
    end
    # WIN32OLE.create_guid
    # 
    # Creates GUID.
    #    WIN32OLE.create_guid # => {1CB530F1-F6B1-404D-BCE6-1959BF91F4A8}
    def self.create_guid()
        #This is a stub, used for indexing
    end
    # WIN32OLE#invoke(method, [arg1,...])  => return value of method.
    # 
    # Runs OLE method.
    # The first argument specifies the method name of OLE Automation object.
    # The others specify argument of the <i>method</i>.
    # If you can not execute <i>method</i> directly, then use this method instead.
    # 
    #   excel = WIN32OLE.new('Excel.Application')
    #   excel.invoke('Quit')  # => same as excel.Quit
    def invoke(method, *args)
        #This is a stub, used for indexing
    end
    # WIN32OLE[a1,a2,...]
    # 
    # Returns the value of Collection specified by a1, a2,....
    # 
    #    dict = WIN32OLE.new('Scripting.Dictionary')
    #    dict.add('ruby', 'Ruby')
    #    puts dict['ruby'] # => 'Ruby' (same as `puts dict.item('ruby')')
    # 
    # Remark: You can not use this method to get the property.
    #    excel = WIN32OLE.new('Excel.Application')
    #    # puts excel['Visible']  This is error !!!
    #    puts excel.Visible # You should to use this style to get the property.
    def [](*args)
        #This is a stub, used for indexing
    end
    # WIN32OLE#_invoke(dispid, args, types)
    # 
    # Runs the early binding method.
    # The 1st argument specifies dispatch ID,
    # the 2nd argument specifies the array of arguments,
    # the 3rd argument specifies the array of the type of arguments.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    excel._invoke(302, [], []) #  same effect as excel.Quit
    def _invoke(dispid, args, types)
        #This is a stub, used for indexing
    end
    # WIN32OLE#_getproperty(dispid, args, types)
    # 
    # Runs the early binding method to get property.
    # The 1st argument specifies dispatch ID,
    # the 2nd argument specifies the array of arguments,
    # the 3rd argument specifies the array of the type of arguments.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    puts excel._getproperty(558, [], []) # same effect as puts excel.visible
    def _getproperty(dispid, args, types)
        #This is a stub, used for indexing
    end
    # WIN32OLE#_setproperty(dispid, args, types)
    # 
    # Runs the early binding method to set property.
    # The 1st argument specifies dispatch ID,
    # the 2nd argument specifies the array of arguments,
    # the 3rd argument specifies the array of the type of arguments.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    excel._setproperty(558, [true], [WIN32OLE::VARIANT::VT_BOOL]) # same effect as excel.visible = true
    def _setproperty(dispid, args, types)
        #This is a stub, used for indexing
    end
    # WIN32OLE[a1, a2, ...]=val
    # 
    # Sets the value to WIN32OLE object specified by a1, a2, ...
    # 
    #    dict = WIN32OLE.new('Scripting.Dictionary')
    #    dict.add('ruby', 'RUBY')
    #    dict['ruby'] = 'Ruby'
    #    puts dict['ruby'] # => 'Ruby'
    # 
    # Remark: You can not use this method to set the property value.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    # excel['Visible'] = true # This is error !!!
    #    excel.Visible = true # You should to use this style to set the property.
    def []=(a1, a2, *smth, val)
        #This is a stub, used for indexing
    end
    # WIN32OLE#ole_free
    # 
    # invokes Release method of Dispatch interface of WIN32OLE object.
    # Usually, you do not need to call this method because Release method
    # called automatically when WIN32OLE object garbaged.
    def ole_free()
        #This is a stub, used for indexing
    end
    # WIN32OLE#each {|i|...}
    # 
    # Iterates over each item of OLE collection which has IEnumVARIANT interface.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    book = excel.workbooks.add
    #    sheets = book.worksheets(1)
    #    cells = sheets.cells("A1:A5")
    #    cells.each do |cell|
    #      cell.value = 10
    #    end
    def each()
        #This is a stub, used for indexing
    end
    # WIN32OLE#method_missing(id [,arg1, arg2, ...])
    # 
    # Calls WIN32OLE#invoke method.
    def method_missing(id, *args)
        #This is a stub, used for indexing
    end
    # WIN32OLE.setproperty('property', [arg1, arg2,...] val)
    # 
    # Sets property of OLE object.
    # When you want to set property with argument, you can use this method.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    excel.Visible = true
    #    book = excel.workbooks.add
    #    sheet = book.worksheets(1)
    #    sheet.setproperty('Cells', 1, 2, 10) # => The B1 cell value is 10.
    def setproperty(property, *args)
        #This is a stub, used for indexing
    end
    # WIN32OLE#ole_methods
    # 
    # Returns the array of WIN32OLE_METHOD object.
    # The element is OLE method of WIN32OLE object.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    methods = excel.ole_methods
    def ole_methods()
        #This is a stub, used for indexing
    end
    # WIN32OLE#ole_get_methods
    # 
    # Returns the array of WIN32OLE_METHOD object .
    # The element of the array is property (gettable) of WIN32OLE object.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    properties = excel.ole_get_methods
    def ole_get_methods()
        #This is a stub, used for indexing
    end
    # WIN32OLE#ole_put_methods
    # 
    # Returns the array of WIN32OLE_METHOD object .
    # The element of the array is property (settable) of WIN32OLE object.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    properties = excel.ole_put_methods
    def ole_put_methods()
        #This is a stub, used for indexing
    end
    # WIN32OLE#ole_func_methods
    # 
    # Returns the array of WIN32OLE_METHOD object .
    # The element of the array is property (settable) of WIN32OLE object.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    properties = excel.ole_func_methods
    def ole_func_methods()
        #This is a stub, used for indexing
    end
    # WIN32OLE#ole_method_help(method)
    # 
    # Returns WIN32OLE_METHOD object corresponding with method
    # specified by 1st argument.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    method = excel.ole_method_help('Quit')
    def ole_method(p1)
        #This is a stub, used for indexing
    end
    alias ole_method_help ole_method
    # WIN32OLE#ole_activex_initialize() -> Qnil
    # 
    # Initialize WIN32OLE object(ActiveX Control) by calling
    # IPersistMemory::InitNew.
    # 
    # Before calling OLE method, some kind of the ActiveX controls
    # created with MFC should be initialized by calling
    # IPersistXXX::InitNew.
    # 
    # If and only if you received the exception "HRESULT error code:
    # 0x8000ffff catastrophic failure", try this method before
    # invoking any ole_method.
    # 
    #    obj = WIN32OLE.new("ProgID_or_GUID_of_ActiveX_Control")
    #    obj.ole_activex_initialize
    #    obj.method(...)
    def ole_activex_initialize()
        #This is a stub, used for indexing
    end
    # WIN32OLE#ole_type
    # 
    # Returns WIN32OLE_TYPE object.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    tobj = excel.ole_type
    def ole_type()
        #This is a stub, used for indexing
    end
    alias ole_obj_help ole_type
    # WIN32OLE#ole_typelib -> The WIN32OLE_TYPELIB object
    # 
    # Returns the WIN32OLE_TYPELIB object. The object represents the
    # type library which contains the WIN32OLE object.
    # 
    #    excel = WIN32OLE.new('Excel.Application')
    #    tlib = excel.ole_typelib
    #    puts tlib.name  # -> 'Microsoft Excel 9.0 Object Library'
    def ole_typelib()
        #This is a stub, used for indexing
    end
    # WIN32OLE#ole_query_interface(iid) -> WIN32OLE object
    # 
    # Returns WIN32OLE object for a specific dispatch or dual
    # interface specified by iid.
    # 
    #     ie = WIN32OLE.new('InternetExplorer.Application')
    #     ie_web_app = ie.ole_query_interface('{0002DF05-0000-0000-C000-000000000046}') # => WIN32OLE object for dispinterface IWebBrowserApp
    def ole_query_interface(iid)
        #This is a stub, used for indexing
    end
    # WIN32OLE#ole_respond_to?(method) -> true or false
    # 
    # Returns true when OLE object has OLE method, otherwise returns false.
    # 
    #     ie = WIN32OLE.new('InternetExplorer.Application')
    #     ie.ole_respond_to?("gohome") => true
    def ole_respond_to?(method)
        #This is a stub, used for indexing
    end
    def ole_method_help(p1)
        #This is a stub, used for indexing
    end
    def ole_obj_help()
        #This is a stub, used for indexing
    end
    # The WIN32OLE::VARIANT module includes constants of VARIANT type constants.
    # The constants is used when creating WIN32OLE_VARIANT object.
    # 
    #   obj = WIN32OLE_VARIANT.new("2e3", WIN32OLE::VARIANT::VT_R4)
    #   obj.value # => 2000.0
    module VARIANT
        # represents VT_EMPTY type constant.
        VT_EMPTY = nil #value is unknown, used for indexing.
        # represents VT_NULL type constant.
        VT_NULL = nil #value is unknown, used for indexing.
        # represents VT_I2 type constant.
        VT_I2 = nil #value is unknown, used for indexing.
        # represents VT_I4 type constant.
        VT_I4 = nil #value is unknown, used for indexing.
        # represents VT_R4 type constant.
        VT_R4 = nil #value is unknown, used for indexing.
        # represents VT_R8 type constant.
        VT_R8 = nil #value is unknown, used for indexing.
        # represents VT_CY type constant.
        VT_CY = nil #value is unknown, used for indexing.
        # represents VT_DATE type constant.
        VT_DATE = nil #value is unknown, used for indexing.
        # represents VT_BSTR type constant.
        VT_BSTR = nil #value is unknown, used for indexing.
        # represents VT_USERDEFINED type constant.
        VT_USERDEFINED = nil #value is unknown, used for indexing.
        # represents VT_PTR type constant.
        VT_PTR = nil #value is unknown, used for indexing.
        # represents VT_DISPATCH type constant.
        VT_DISPATCH = nil #value is unknown, used for indexing.
        # represents VT_ERROR type constant.
        VT_ERROR = nil #value is unknown, used for indexing.
        # represents VT_BOOL type constant.
        VT_BOOL = nil #value is unknown, used for indexing.
        # represents VT_VARIANT type constant.
        VT_VARIANT = nil #value is unknown, used for indexing.
        # represents VT_UNKNOWN type constant.
        VT_UNKNOWN = nil #value is unknown, used for indexing.
        # represents VT_I1 type constant.
        VT_I1 = nil #value is unknown, used for indexing.
        # represents VT_UI1 type constant.
        VT_UI1 = nil #value is unknown, used for indexing.
        # represents VT_UI2 type constant.
        VT_UI2 = nil #value is unknown, used for indexing.
        # represents VT_UI4 type constant.
        VT_UI4 = nil #value is unknown, used for indexing.
        # represents VT_I8 type constant.
        VT_I8 = nil #value is unknown, used for indexing.
        # represents VT_UI8 type constant.
        VT_UI8 = nil #value is unknown, used for indexing.
        # represents VT_INT type constant.
        VT_INT = nil #value is unknown, used for indexing.
        # represents VT_UINT type constant.
        VT_UINT = nil #value is unknown, used for indexing.
        # represents VT_ARRAY type constant.
        VT_ARRAY = nil #value is unknown, used for indexing.
        # represents VT_BYREF type constant.
        VT_BYREF = nil #value is unknown, used for indexing.
    end
end
