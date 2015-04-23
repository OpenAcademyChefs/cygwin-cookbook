# Michael Molisani (github.com/molisani)


remote_file "#{Chef::Config[:file_cache_path]}/cygwin-setup.exe" do
  source node['cygwin']['setup'][node['cygwin']['arch']]
  backup false
  action :create
end

execute "initial setup" do
  cwd Chef::Config[:file_cache_path]
  command "cygwin-setup.exe -q -R #{node['cygwin']['root']} -O -s #{node['cygwin']['mirror']} -C Base -n"
  not_if Dir.exists?(node['cygwin']['root'])
end

windows_path "#{node['cygwin']['root']}/bin" do
  action :add
end

node['cygwin']['pkgs'].each do |pkg|
  execute "installing package: #{pkg}" do
    cwd Chef::Config[:file_cache_path]
    command "cygwin-setup.exe -q -R #{node['cygwin']['root']} -O -s #{node['cygwin']['mirror']} -P #{pkg} -n"
  end
end