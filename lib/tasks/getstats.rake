task :getstats do
  puts "Currently there are #{DummyUser.count} users in the db"
  if DummyUser.last
    puts "In total, #{DummyUser.last.id} users have taken the test"
  end
end
