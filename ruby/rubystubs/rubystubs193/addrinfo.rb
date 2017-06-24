=begin
 This is a machine generated stub using stdlib-doc for <b>class Addrinfo</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The Addrinfo class maps <tt>struct addrinfo</tt> to ruby.  This
# structure identifies an Internet host and a service.
class Addrinfo < Data
    # Addrinfo.new(sockaddr)                             => addrinfo
    # Addrinfo.new(sockaddr, family)                     => addrinfo
    # Addrinfo.new(sockaddr, family, socktype)           => addrinfo
    # Addrinfo.new(sockaddr, family, socktype, protocol) => addrinfo
    #  
    # returns a new instance of Addrinfo.
    # The instance contains sockaddr, family, socktype, protocol.
    # sockaddr means struct sockaddr which can be used for connect(2), etc.
    # family, socktype and protocol are integers which is used for arguments of socket(2).
    # 
    # sockaddr is specified as an array or a string.
    # The array should be compatible to the value of IPSocket#addr or UNIXSocket#addr.
    # The string should be struct sockaddr as generated by
    # Socket.sockaddr_in or Socket.unpack_sockaddr_un.
    # 
    # sockaddr examples:
    # - ["AF_INET", 46102, "localhost.localdomain", "127.0.0.1"]
    # - ["AF_INET6", 42304, "ip6-localhost", "::1"]
    # - ["AF_UNIX", "/tmp/sock"]
    # - Socket.sockaddr_in("smtp", "2001:DB8::1")
    # - Socket.sockaddr_in(80, "172.18.22.42")
    # - Socket.sockaddr_in(80, "www.ruby-lang.org")
    # - Socket.sockaddr_un("/tmp/sock")
    # 
    # In an AF_INET/AF_INET6 sockaddr array, the 4th element,
    # numeric IP address, is used to construct socket address in the Addrinfo instance.
    # If the 3rd element, textual host name, is non-nil, it is also recorded but used only for Addrinfo#inspect.
    # 
    # family is specified as an integer to specify the protocol family such as Socket::PF_INET.
    # It can be a symbol or a string which is the constant name
    # with or without PF_ prefix such as :INET, :INET6, :UNIX, "PF_INET", etc.
    # If omitted, PF_UNSPEC is assumed.
    # 
    # socktype is specified as an integer to specify the socket type such as Socket::SOCK_STREAM.
    # It can be a symbol or a string which is the constant name
    # with or without SOCK_ prefix such as :STREAM, :DGRAM, :RAW, "SOCK_STREAM", etc.
    # If omitted, 0 is assumed.
    # 
    # protocol is specified as an integer to specify the protocol such as Socket::IPPROTO_TCP.
    # It must be an integer, unlike family and socktype.
    # If omitted, 0 is assumed.
    # Note that 0 is reasonable value for most protocols, except raw socket.
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    # addrinfo.inspect => string
    #  
    # returns a string which shows addrinfo in human-readable form.
    # 
    #   Addrinfo.tcp("localhost", 80).inspect #=> "#<Addrinfo: 127.0.0.1:80 TCP (localhost:80)>"
    #   Addrinfo.unix("/tmp/sock").inspect    #=> "#<Addrinfo: /tmp/sock SOCK_STREAM>"
    def inspect()
        #This is a stub, used for indexing
    end
    # addrinfo.inspect_sockaddr => string
    #  
    # returns a string which shows the sockaddr in _addrinfo_ with human-readable form.
    # 
    #   Addrinfo.tcp("localhost", 80).inspect_sockaddr     #=> "127.0.0.1:80"
    #   Addrinfo.tcp("ip6-localhost", 80).inspect_sockaddr #=> "[::1]:80"
    #   Addrinfo.unix("/tmp/sock").inspect_sockaddr        #=> "/tmp/sock"
    def inspect_sockaddr()
        #This is a stub, used for indexing
    end
    # Addrinfo.getaddrinfo(nodename, service, family, socktype, protocol, flags) => [addrinfo, ...]
    # Addrinfo.getaddrinfo(nodename, service, family, socktype, protocol)        => [addrinfo, ...]
    # Addrinfo.getaddrinfo(nodename, service, family, socktype)                  => [addrinfo, ...]
    # Addrinfo.getaddrinfo(nodename, service, family)                            => [addrinfo, ...]
    # Addrinfo.getaddrinfo(nodename, service)                                    => [addrinfo, ...]
    #  
    # returns a list of addrinfo objects as an array.
    # 
    # This method converts nodename (hostname) and service (port) to addrinfo.
    # Since the conversion is not unique, the result is a list of addrinfo objects.
    # 
    # nodename or service can be nil if no conversion intended.
    # 
    # family, socktype and protocol are hint for preferred protocol.
    # If the result will be used for a socket with SOCK_STREAM,
    # SOCK_STREAM should be specified as socktype.
    # If so, Addrinfo.getaddrinfo returns addrinfo list appropriate for SOCK_STREAM.
    # If they are omitted or nil is given, the result is not restricted.
    # 
    # Similarly, PF_INET6 as family restricts for IPv6.
    # 
    # flags should be bitwise OR of Socket::AI_??? constants.
    # 
    # Note that socktype should be specified whenever application knows the usage of the address.
    # Some platform causes an error when socktype is omitted and servname is specified as an integer
    # because some port numbers, 512 for example, are ambiguous without socktype.
    # 
    #   Addrinfo.getaddrinfo("www.kame.net", 80, nil, :STREAM)
    #   #=> [#<Addrinfo: 203.178.141.194:80 TCP (www.kame.net:80)>,
    #   #    #<Addrinfo: [2001:200:0:8002:203:47ff:fea5:3085]:80 TCP (www.kame.net:80)>]
    def self.getaddrinfo(*several_variants)
        #This is a stub, used for indexing
    end
    # Addrinfo.ip(host) => addrinfo
    #  
    # returns an addrinfo object for IP address.
    # 
    # The port, socktype, protocol of the result is filled by zero.
    # So, it is not appropriate to create a socket.
    # 
    #   Addrinfo.ip("localhost") #=> #<Addrinfo: 127.0.0.1 (localhost)>
    def self.ip(host)
        #This is a stub, used for indexing
    end
    # Addrinfo.tcp(host, port) => addrinfo
    #  
    # returns an addrinfo object for TCP address.
    # 
    #   Addrinfo.tcp("localhost", "smtp") #=> #<Addrinfo: 127.0.0.1:25 TCP (localhost:smtp)>
    def self.tcp(host, port)
        #This is a stub, used for indexing
    end
    # Addrinfo.udp(host, port) => addrinfo
    #  
    # returns an addrinfo object for UDP address.
    # 
    #   Addrinfo.udp("localhost", "daytime") #=> #<Addrinfo: 127.0.0.1:13 UDP (localhost:daytime)>
    def self.udp(host, port)
        #This is a stub, used for indexing
    end
    # Addrinfo.unix(path [, socktype]) => addrinfo
    #  
    # returns an addrinfo object for UNIX socket address.
    # 
    # _socktype_ specifies the socket type.
    # If it is omitted, :STREAM is used.
    # 
    #   Addrinfo.unix("/tmp/sock")         #=> #<Addrinfo: /tmp/sock SOCK_STREAM>
    #   Addrinfo.unix("/tmp/sock", :DGRAM) #=> #<Addrinfo: /tmp/sock SOCK_DGRAM>
    def self.unix(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # addrinfo.afamily => integer
    #  
    # returns the address family as an integer.
    # 
    #   Addrinfo.tcp("localhost", 80).afamily == Socket::AF_INET #=> true
    def afamily()
        #This is a stub, used for indexing
    end
    # addrinfo.pfamily => integer
    #  
    # returns the protocol family as an integer.
    # 
    #   Addrinfo.tcp("localhost", 80).pfamily == Socket::PF_INET #=> true
    def pfamily()
        #This is a stub, used for indexing
    end
    # addrinfo.socktype => integer
    #  
    # returns the socket type as an integer.
    # 
    #   Addrinfo.tcp("localhost", 80).socktype == Socket::SOCK_STREAM #=> true
    def socktype()
        #This is a stub, used for indexing
    end
    # addrinfo.protocol => integer
    #  
    # returns the socket type as an integer.
    # 
    #   Addrinfo.tcp("localhost", 80).protocol == Socket::IPPROTO_TCP #=> true
    def protocol()
        #This is a stub, used for indexing
    end
    # addrinfo.canonname => string or nil
    #  
    # returns the canonical name as an string.
    # 
    # nil is returned if no canonical name.
    # 
    # The canonical name is set by Addrinfo.getaddrinfo when AI_CANONNAME is specified.
    # 
    #   list = Addrinfo.getaddrinfo("www.ruby-lang.org", 80, :INET, :STREAM, nil, Socket::AI_CANONNAME)
    #   p list[0] #=> #<Addrinfo: 221.186.184.68:80 TCP carbon.ruby-lang.org (www.ruby-lang.org:80)>
    #   p list[0].canonname #=> "carbon.ruby-lang.org"
    def canonname()
        #This is a stub, used for indexing
    end
    # addrinfo.ipv4? => true or false
    #  
    # returns true if addrinfo is IPv4 address.
    # returns false otherwise.
    # 
    #   Addrinfo.tcp("127.0.0.1", 80).ipv4? #=> true
    #   Addrinfo.tcp("::1", 80).ipv4?       #=> false
    #   Addrinfo.unix("/tmp/sock").ipv4?    #=> false
    def ipv4?()
        #This is a stub, used for indexing
    end
    # addrinfo.ipv6? => true or false
    #  
    # returns true if addrinfo is IPv6 address.
    # returns false otherwise.
    # 
    #   Addrinfo.tcp("127.0.0.1", 80).ipv6? #=> false
    #   Addrinfo.tcp("::1", 80).ipv6?       #=> true
    #   Addrinfo.unix("/tmp/sock").ipv6?    #=> false
    def ipv6?()
        #This is a stub, used for indexing
    end
    # addrinfo.unix? => true or false
    #  
    # returns true if addrinfo is UNIX address.
    # returns false otherwise.
    # 
    #   Addrinfo.tcp("127.0.0.1", 80).unix? #=> false
    #   Addrinfo.tcp("::1", 80).unix?       #=> false
    #   Addrinfo.unix("/tmp/sock").unix?    #=> true
    def unix?()
        #This is a stub, used for indexing
    end
    # addrinfo.ip? => true or false
    #  
    # returns true if addrinfo is internet (IPv4/IPv6) address.
    # returns false otherwise.
    # 
    #   Addrinfo.tcp("127.0.0.1", 80).ip? #=> true
    #   Addrinfo.tcp("::1", 80).ip?       #=> true
    #   Addrinfo.unix("/tmp/sock").ip?    #=> false
    def ip?()
        #This is a stub, used for indexing
    end
    # addrinfo.ip_unpack => [addr, port]
    #  
    # Returns the IP address and port number as 2-element array.
    # 
    #   Addrinfo.tcp("127.0.0.1", 80).ip_unpack    #=> ["127.0.0.1", 80]
    #   Addrinfo.tcp("::1", 80).ip_unpack          #=> ["::1", 80]
    def ip_unpack()
        #This is a stub, used for indexing
    end
    # addrinfo.ip_address => string
    #  
    # Returns the IP address as a string.
    # 
    #   Addrinfo.tcp("127.0.0.1", 80).ip_address    #=> "127.0.0.1"
    #   Addrinfo.tcp("::1", 80).ip_address          #=> "::1"
    def ip_address()
        #This is a stub, used for indexing
    end
    # addrinfo.ip_port => port
    #  
    # Returns the port number as an integer.
    # 
    #   Addrinfo.tcp("127.0.0.1", 80).ip_port    #=> 80
    #   Addrinfo.tcp("::1", 80).ip_port          #=> 80
    def ip_port()
        #This is a stub, used for indexing
    end
    # Returns true for IPv4 private address (10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16).
    # It returns false otherwise.
    def ipv4_private?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv4 loopback address (127.0.0.0/8).
    # It returns false otherwise.
    def ipv4_loopback?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv4 multicast address (224.0.0.0/4).
    # It returns false otherwise.
    def ipv4_multicast?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv6 unspecified address (::).
    # It returns false otherwise.
    def ipv6_unspecified?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv6 loopback address (::1).
    # It returns false otherwise.
    def ipv6_loopback?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv6 multicast address (ff00::/8).
    # It returns false otherwise.
    def ipv6_multicast?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv6 link local address (ff80::/10).
    # It returns false otherwise.
    def ipv6_linklocal?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv6 site local address (ffc0::/10).
    # It returns false otherwise.
    def ipv6_sitelocal?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv4-mapped IPv6 address (::ffff:0:0/80).
    # It returns false otherwise.
    def ipv6_v4mapped?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv4-compatible IPv6 address (::/80).
    # It returns false otherwise.
    def ipv6_v4compat?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv6 multicast node-local scope address.
    # It returns false otherwise.
    def ipv6_mc_nodelocal?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv6 multicast link-local scope address.
    # It returns false otherwise.
    def ipv6_mc_linklocal?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv6 multicast site-local scope address.
    # It returns false otherwise.
    def ipv6_mc_sitelocal?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv6 multicast organization-local scope address.
    # It returns false otherwise.
    def ipv6_mc_orglocal?()
        #This is a stub, used for indexing
    end
    # Returns true for IPv6 multicast global scope address.
    # It returns false otherwise.
    def ipv6_mc_global?()
        #This is a stub, used for indexing
    end
    # Returns IPv4 address of IPv4 mapped/compatible IPv6 address.
    # It returns nil if +self+ is not IPv4 mapped/compatible IPv6 address.
    # 
    #   Addrinfo.ip("::192.0.2.3").ipv6_to_ipv4      #=> #<Addrinfo: 192.0.2.3>
    #   Addrinfo.ip("::ffff:192.0.2.3").ipv6_to_ipv4 #=> #<Addrinfo: 192.0.2.3>
    #   Addrinfo.ip("::1").ipv6_to_ipv4              #=> nil
    #   Addrinfo.ip("192.0.2.3").ipv6_to_ipv4        #=> nil
    #   Addrinfo.unix("/tmp/sock").ipv6_to_ipv4      #=> nil
    def ipv6_to_ipv4()
        #This is a stub, used for indexing
    end
    # addrinfo.unix_path => path
    #  
    # Returns the socket path as a string.
    # 
    #   Addrinfo.unix("/tmp/sock").unix_path       #=> "/tmp/sock"
    def unix_path()
        #This is a stub, used for indexing
    end
    # addrinfo.to_sockaddr => string
    # addrinfo.to_s => string
    #  
    # returns the socket address as packed struct sockaddr string.
    # 
    #   Addrinfo.tcp("localhost", 80).to_sockaddr
    #   #=> "\x02\x00\x00P\x7F\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00"
    def to_sockaddr()
        #This is a stub, used for indexing
    end
    # addrinfo.to_sockaddr => string
    # addrinfo.to_s => string
    #  
    # returns the socket address as packed struct sockaddr string.
    # 
    #   Addrinfo.tcp("localhost", 80).to_sockaddr
    #   #=> "\x02\x00\x00P\x7F\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00"
    def to_s(*several_variants)
        #This is a stub, used for indexing
    end
    # addrinfo.getnameinfo        => [nodename, service]
    # addrinfo.getnameinfo(flags) => [nodename, service]
    #  
    # returns nodename and service as a pair of strings.
    # This converts struct sockaddr in addrinfo to textual representation.
    # 
    # flags should be bitwise OR of Socket::NI_??? constants.
    # 
    #   Addrinfo.tcp("127.0.0.1", 80).getnameinfo #=> ["localhost", "www"]
    # 
    #   Addrinfo.tcp("127.0.0.1", 80).getnameinfo(Socket::NI_NUMERICSERV)
    #   #=> ["localhost", "80"]
    def getnameinfo(*several_variants)
        #This is a stub, used for indexing
    end
end
