## Setup Basics
stage { 'pre': before => Stage['main'] }
class { 'bk2k': stage => 'pre'  }
include bk2k

## Install MySQL Client, Dumps the database and install MySQL Server
bk2k::mysql::client { "mysql":

}->

bk2k::mysql::server { "mysql_server":
  database => "bootstrap",
}->

## Install PHP
bk2k::php { "php7":

}->

## Install Apache
bk2k::apache { "bootstrap":
  hostname                 => "bootstrap",
  port                     => 80,
  create_log               => true
}
