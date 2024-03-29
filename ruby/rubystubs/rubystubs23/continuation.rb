=begin
 This is a machine generated stub using stdlib-doc for <b>class Continuation</b>
 Sources used:  Ruby 2.3.1
 Created by IntelliJ Ruby Stubs Generator.
=end

# Continuation objects are generated by Kernel#callcc,
# after having +require+d <i>continuation</i>. They hold
# a return address and execution context, allowing a nonlocal return
# to the end of the <code>callcc</code> block from anywhere within a
# program. Continuations are somewhat analogous to a structured
# version of C's <code>setjmp/longjmp</code> (although they contain
# more state, so you might consider them closer to threads).
# 
# For instance:
# 
#    require "continuation"
#    arr = [ "Freddie", "Herbie", "Ron", "Max", "Ringo" ]
#    callcc{|cc| $cc = cc}
#    puts(message = arr.shift)
#    $cc.call unless message =~ /Max/
# 
# <em>produces:</em>
# 
#    Freddie
#    Herbie
#    Ron
#    Max
# 
# Also you can call callcc in other methods:
# 
#    require "continuation"
# 
#    def g
#      arr = [ "Freddie", "Herbie", "Ron", "Max", "Ringo" ]
#      cc = callcc { |cc| cc }
#      puts arr.shift
#      return cc, arr.size
#    end
# 
#    def f
#      c, size = g
#      c.call(c) if size > 1
#    end
# 
#    f
# 
# This (somewhat contrived) example allows the inner loop to abandon
# processing early:
# 
#    require "continuation"
#    callcc {|cont|
#      for i in 0..4
#        print "\n#{i}: "
#        for j in i*5...(i+1)*5
#          cont.call() if j == 17
#          printf "%3d", j
#        end
#      end
#    }
#    puts
# 
# <em>produces:</em>
# 
#    0:   0  1  2  3  4
#    1:   5  6  7  8  9
#    2:  10 11 12 13 14
#    3:  15 16
class Continuation
    # cont.call(args, ...)
    # 
    # Invokes the continuation. The program continues from the end of the
    # <code>callcc</code> block. If no arguments are given, the original
    # <code>callcc</code> returns <code>nil</code>. If one argument is
    # given, <code>callcc</code> returns it. Otherwise, an array
    # containing <i>args</i> is returned.
    # 
    #    callcc {|cont|  cont.call }           #=> nil
    #    callcc {|cont|  cont.call 1 }         #=> 1
    #    callcc {|cont|  cont.call 1, 2, 3 }   #=> [1, 2, 3]
    def call(*smth)
        #This is a stub, used for indexing
    end
    # cont[args, ...]
    # 
    # Invokes the continuation. The program continues from the end of the
    # <code>callcc</code> block. If no arguments are given, the original
    # <code>callcc</code> returns <code>nil</code>. If one argument is
    # given, <code>callcc</code> returns it. Otherwise, an array
    # containing <i>args</i> is returned.
    # 
    #    callcc {|cont|  cont.call }           #=> nil
    #    callcc {|cont|  cont.call 1 }         #=> 1
    #    callcc {|cont|  cont.call 1, 2, 3 }   #=> [1, 2, 3]
    def [](args, *smth)
        #This is a stub, used for indexing
    end
end
