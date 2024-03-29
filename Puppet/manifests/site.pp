#site.pp
# Define filebucket 'main':
filebucket { 'main':
	#server => 'localhost.localdomain',
	path   => '/tmp/puppet-filebucket',
}

# Make filebucket 'main' the default backup location for all File resources:
File { 
	backup => 'main',
	ignore => ['.DS_Store']
}

#Defaults for Exec paths
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

node default {
	class { os: }
	class { tomcat: }
}

file { '/home/vagrant/password.txt':
	ensure => present,
	mode => 0644,
	content => "password"
}

file { '/iheos-toolkit-cache':
	ensure => 'directory',
	mode => 0777
}
