# Verbatim code example from:
# http://ruby-doc.org/stdlib-2.3.0/libdoc/socket/rdoc/Socket.html

require 'socket'

server = TCPServer.new 2000 # Server bound to port 2000

loop do
  client = server.accept    # Wait for a client to connect
  client.puts "Hello !"
  client.puts "Time is #{Time.now}"
  client.close
end