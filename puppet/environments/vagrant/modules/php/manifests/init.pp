# Installs php, php modules and config files
class php {
  package { ['php5',
             'php5-cli',
             'libapache2-mod-php5',
             'php5-mysql',
             'php5-mysqlnd',
             'php5-sqlite',
             'php5-tidy',
             'php5-xdebug']:
    ensure => present,
    notify  => Service['apache2'],
  }

  file {  '/etc/php5/apache2':
      ensure => directory,
      before => File['/etc/php5/apache2/php.ini'];
  }

  file {  '/etc/php5/apache2/php.ini':
      source  => 'puppet:///modules/php/php.ini',
      require => Package['php5'];

  }
}
