$redis = Redis.new(:host => 'localhost', :port => 6379)

$redis.set(:admin_path, '/omeiadmin') unless $redis.get(:admin_path)
$redis.set(:website_name, 'default website') unless $redis.get(:website_name)
$redis.set(:admin_list_per_page, '20') unless $redis.get(:admin_list_per_page)