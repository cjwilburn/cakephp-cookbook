maintainer       "Jason Ardell"
maintainer_email "ardell@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures CakePHP"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"

recipe "cakephp", "Installs and configures CakePHP LAMP stack on a single system"

%w{ debian ubuntu }.each do |os|
  supports os
end

%w{ apache2 php mysql openssl }.each do |d|
  depends d
end

attribute "cakephp/version",
  :display_name => "CakePHP download version",
  :description => "Version of CakePHP to download from the CakePHP site.",
  :default => "2.4.3"

attribute "cakephp/dir",
  :display_name => "CakePHP installation directory",
  :description => "Location to place CakePHP files.",
  :default => "/var/www"

attribute "cakephp/db/database",
  :display_name => "CakePHP MySQL database",
  :description => "CakePHP will use this MySQL database to store its data.",
  :default => "cakephpdb"

attribute "cakephp/db/user",
  :display_name => "CakePHP MySQL user",
  :description => "CakePHP will connect to MySQL using this user.",
  :default => "cakephpuser"

attribute "cakephp/db/password",
  :display_name => "CakePHP MySQL password",
  :description => "Password for the CakePHP MySQL user.",
  :default => "randomly generated"
