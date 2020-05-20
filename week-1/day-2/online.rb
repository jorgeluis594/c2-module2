def who_is_online(friends)
  friends
      .group_by{ |f| f['status'] != 'online' ? 'offline' : f['last_activity'] > 10 ? 'away' : 'online' }
      .transform_values{ |fs| fs.map{ |f| f['username'] } }
end