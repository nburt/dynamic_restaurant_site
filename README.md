# gSchool Restaurant Site

## Setup

* Fork this repo
* Clone your fork
* Make sure your dependencies are installed `bundle install`
* Start the server with `rackup`
* Open [localhost:9292](http://localhost:9292) in your browser

## Specs

To run the specs, run `rspec`. You can also run specs from a single file
using `rspec spec/features/homepage_spec.rb`. To run a specific spec, use
`rspec spec/features/homepage_spec.rb:5`, where the number, in this case "5"
is any line within the it block you want to run.

Acceptance-level specs are written
with [Capybara](http://rubydoc.info/github/jnicklas/capybara/master#Using_Capybara_with_RSpec).

Capybara is a DSL, just like RSpec. For details on the DSL,
see the [documentation](http://rubydoc.info/github/jnicklas/capybara/master#The_DSL).

You can find them in the `spec/features` directory.

## Development

NOTE: Whenever you change a ruby file, you need to stop the server, and restart it.

##Staging

URL: http://lit-journey-3344.herokuapp.com/