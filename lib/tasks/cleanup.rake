task :cleanup do
  puts "cleaning up users for more space"
  DummyUser.destroy_all
end
