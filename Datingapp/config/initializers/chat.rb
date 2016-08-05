Thread.new do
  # system("RAILS_ENV=production rackup private_pub.ru -s thin -E production")
  system("rackup private_pub.ru -s thin -E production")
end