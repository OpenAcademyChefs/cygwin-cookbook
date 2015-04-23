Cygwin Cookbook for Chef
========================

This cookbook installs Cygwin on a Windows installation. As well, it installs additional Cygwin packages as requested by the user (see attributes).

For compatibility and ease of use, the cookbook has been tested with images pre-loaded with ssh, but should theoretically work with WinRM.

Requirements
------------

#### packages
- `windows` - Needed to modify Windows PATH variable. (https://github.com/opscode-cookbooks/windows) 

Attributes
----------

#### cygwin::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['cygwin']['arch']</tt></td>
    <td>String</td>
    <td>Architecture determined automatically upon execution</td>
    <td>Either <tt>x86</tt> or <tt>x86_64</tt></td>
  </tr>
  <tr>
    <td><tt>['cygwin']['root']</tt></td>
    <td>String</td>
    <td>Defaults to normal Cygwin directory (as specified by <tt>['arch']</tt>)</td>
    <td>Either <tt>c:/cygwin</tt> or <tt>c:/cygwin64</tt></td>
  </tr>
  <tr>
    <td><tt>['cygwin']['mirror']</tt></td>
    <td>String</td>
    <td>Default mirror used to download the current Cygwin package info</td>
    <td><tt>http://mirrors.kernel.org/sourceware/cygwin/</tt></td>
  </tr>
  <tr>
    <td><tt>['cygwin']['setup']['url']</tt></td>
    <td>String</td>
    <td>Defines location of Cygwin installer</td>
    <td><tt>https://cygwin.com/</tt></td>
  </tr>
  <tr>
    <td><tt>['cygwin']['setup']['x86']</tt></td>
    <td>String</td>
    <td>Defines filename of the 32-bit installer</td>
    <td><tt>setup-x86.exe</tt></td>
  </tr>
  <tr>
    <td><tt>['cygwin']['setup']['x86_64']</tt></td>
    <td>String</td>
    <td>Defines filename of the 64-bit installer</td>
    <td><tt>setup-x86_64.exe</tt></td>
  </tr>
  <tr>
    <td><tt>['cygwin']['pkgs']</tt></td>
    <td>String Array</td>
    <td>Lists packages to be installed</td>
    <td>Empty by default: <tt>[]</tt></td>
  </tr>
</table>

Usage
-----
#### cygwin::default

Just include `cygwin` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cygwin]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github


License and Authors
-------------------
Authors: Michael Molisani (as part of Chef project for Facebook Open Academy)
