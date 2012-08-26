user { 'onemedia':
  ensure     => present,
  shell      => '/bin/bash',
  home       => '/home/onemedia',
  managehome => true,
}

file { 'testfile':
  path    => '/home/onemedia/testfile',
  ensure  => present,
  mode    => 0777,
  owner => 'onemedia',
  content => "#!/bin/bash\necho 'I am a test file'",
  require => User['onemedia']
}
