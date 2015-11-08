# Installs mysql, sets root password and imports db dump

$mysql_password = hiera('mysql_pass')

class mysql {
  package { ['mysql-server']:
    ensure => present;
  }

  service { 'mysql':
    ensure  => running,
    require => Package['mysql-server'];
  }

  exec { 'set-root-password':
    unless  => 'mysqladmin -uroot -p123 status',
    command => "mysqladmin -uroot password 123",
    path    => ['/usr/bin'],
    require => Service['mysql'];
  }

  exec { 'load-sql':
    command => 'mysql -u root -p123 < /vagrant/sql/db.sql',
    path    => ['/usr/bin'],
    require => Exec['set-root-password'];
  }
}
