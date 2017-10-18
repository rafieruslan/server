require 'socket'

server = TCPSocket.open('192.168.60.133', 1550)
loop
{
	client = server.accept
	client.puts("Hello, client!")
	client.puts("Goodbye, client!")
	client.puts("closing connection...")
	client.close
}

