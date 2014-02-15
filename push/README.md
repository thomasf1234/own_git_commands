master will be called with the name of the script to be called (client), along with some parameters constrained
to the client. master will then include the library associated with the client and then finally run the client


master
  -include necessary libs
  -pass of args to the client
  
client
  -uses the libs
  
spec


need bats, bash testing framework
$ git clone https://github.com/sstephenson/bats.git
$ cd bats
$ ./install.sh /usr/local


to run tests, from project root do:
bats spec/file.sh   for example, #ps will add more functionality to it
