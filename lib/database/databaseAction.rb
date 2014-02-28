#!/usr/bin/ruby -w

require "dbi"

begin
  #connect to the MSSQL server
  dbh = DBI.connect("DBI:ODBC:192.168.0.133", "sa", "openview")
  puts dbh.connected?
rescue DBI::DatabaseError => e
  puts "An error occurred"
  puts "Error code:    #{e.err}"
  puts "Error message: #{e.errstr}"
ensure
  # disconnect from server
  dbh.disconnect if dbh
end
