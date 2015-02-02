name             'cygwin'
maintainer       'OpenAcademyChefs/molisani'
maintainer_email 'github.com/molisani'
license          'Apache 2.0'
description      'Installs/Configures cygwin'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
recipe           'cygwin', 'Installs base cygwin packages'
supports         'windows'

depends          'windows'