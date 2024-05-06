# install flask 2.1.0
package {'flask':
   # specified version
   ensure => '2.1.0',
   # using pip3
   provider => 'pip3'
}
