# Cv

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'cv'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cv

## Usage

Public API:

    cv = CV.new(dir)
    cv.export_to(path)

    CV::Generator.new(dir)

    CV::CLI.new(ARGV)

Binary:

    $ cv new PATH
    $ cv export
    $ cv help
    $ cv version

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
