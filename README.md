# cucumber-ruby-example

This is an assignment in cucumber + rest-client + Ruby for API testing. 

## Install Dependencies

### Ruby installed		
$ ruby -v 
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-darwin14]

### Gems used - defined in Gemfile
 * cucumber
 * json
 * rest-client
 * test-unit
 
#### Steps to install gems
 * create Gemfile
 * $ bundle install
 * Gemfile.lock is created.
 * Make sure gems are installed. $ gem list 

### Run test
* Go to the directory project directory
* Run "$ cucumber -t@demo-test" on the terminal (tests are tagged as demo-test)
* Or "cucumber -t@demo-test --format json_pretty"
* Observe the output of the test run
* Cuke CLI can be easily integerated with Jenkins (CI/CD) tools