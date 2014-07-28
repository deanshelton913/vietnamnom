Welcome to the placeholder sinatra app for vietnamnom.

Check it out at [http://vietnamnom.com](http://vietnamnom.com)

![Built Status](https://codeship.io/projects/8aacfd80-d159-0131-3e06-7e9211fe563d/status "Build Status at CodeShip.io")

Seanet
======
Seanet is a stateless rails application that front-ends Daphne, Poseidon, Apollo, and (by proxy) ICS APIs, to allow purchasing of usage plans. 

Dependencies
------------
* ruby 1.9.3p392
* [bundler](https://github.com/bundler/bundler)

Seanet relies on the existance and availability of multiple subsystems to operate in production.
Those subsystems are:
* [Apollo](https://github.com/mtnsat/apollo) - User accounts, purchase gateway
* [Daphne](https://github.com/mtnsat/daphne) - Oauth provider.
* [Poseidon](https://github.com/mtnsat/poseidon-dev) - Nomadix API provider.

Subsystem's expected API endpoints:
* ${environment}.apollo.mtnsatcloud.com/v1
* ${environment}.daphne.mtnsatcloud.com/oauth2/v1
* ${environment}.poseidon.mtnsatcloud.com/v1

Supported Browsers
------------------
* Desktop
  * Chrome - 34+
  * Firefox - 30+
  * IE - 10+
  * Safari - 7+
* Mobile
  * iOS Safari - 7+
  * Android Browser - 4+
  * Android Chrome - 34+

Getting Started
---------------
```
# Install Gem Dependencies
bundle install
```
```
# Start server for development.
bundle exec rails server
```
```
# Start server with [Unicorn](https://github.com/defunkt/unicorn) for production.
bundle exec unicorn -p $PORT -c ./config/unicorn.rb
```

Running Specs
------
Both unit tests use [rspec](https://github.com/rspec/rspec).  
Functional tests are run with the [Poltergeist](https://github.com/teampoltergeist/poltergeist) webdriver for [Capybara](https://github.com/jnicklas/capybara).  
To run feature tests that include Javascript you will need to install PhantomJS.  Installation instructions can be found [here](https://github.com/jonleighton/poltergeist/tree/v1.3.0).

#### Unit Tests

```
# All unit tests.
bundle exec rake spec:unit
```

```
# Javascript unit tests only.
bundle exec rake spec:javascript
```

#### Feature tests.
0. Get a client device on the PAX network, and take note if it's MAC address.
0. Start seanet using the commands above.
0. 

```
bundle exec rake spec:func MA=$YOUR_MAC
```

Nomadix Config
--------------

We need this

