# Michael Molisani (github.com/molisani)


default['cygwin']['arch'] = kernel['machine'] =~ /x86_64/ ? 'x86_64' : 'x86'
default['cygwin']['root'] = kernel['machine'] =~ /x86_64/ ? 'c:/cygwin64' : 'c:/cygwin'
default['cygwin']['mirror'] = 'http://mirrors.kernel.org/sourceware/cygwin/'


default['cygwin']['setup']['url'] = 'https://cygwin.com/'
default['cygwin']['setup']['x86'] = 'setup-x86.exe'
default['cygwin']['setup']['x86_64'] = 'setup-x86_64.exe'