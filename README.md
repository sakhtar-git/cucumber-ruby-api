# cucumber-ruby-example

Developed a API test framework in cucumber + rest-client + Ruby for API testing. 

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
In case you experience any issue in installing gem rest-client / unf_ext ( make: g++: Command not found ), please run this 
                          $ sudo apt-get install build-essential
 * Gemfile.lock is created.
 * Make sure gems are installed. $ gem list 

The automation framework designed to support web UI test is structured as follows:
```  
     |-- config
           |-- sandbox_env.json
     |-- features
           |- step_definitions
                |-- demo_test_steps.rb
           |- support
                |-- env.rb
                |-- master.rb
           |- demo_test.feature
     |-- Gemfile      
```
### Run test
* Go to the directory project directory
* Run "$ cucumber -t@demo-test" on the terminal (tests are tagged as demo-test)
* Or "cucumber -t@demo-test --format json_pretty"
* Observe the output of the test run
* Cuke CLI can be easily integerated with Jenkins (CI/CD) tools
