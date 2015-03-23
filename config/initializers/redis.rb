$redis = Redis.new(:host => 'localhost', :port => 6379)

$redis.set('admin_path', '/omeiadmin') if $redis.get('admin_path').nil?
$redis.set('website_name', 'default website') if $redis.get('website_name').nil?