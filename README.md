# Pixeldistance

PixelDistance calculates the distance in pixels between two geographic points using Google Maps/Leaflet scale levels.
This is a Ruby implementation of code [found here](http://www.appelsiini.net/2008/introduction-to-marker-clustering-with-google-maps).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pixeldistance'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pixeldistance

## Usage

PixelDistance module has only one method, `from_coords(lat1,lon1,lat2,lon2,zoom)`. The output is the distance in pixels.

For example, if I want to find the distance in pixels between a point and a certain centroid in zoom level 12:
```ruby
pixel_distance = PixelDistance::from_coords(point[:lat], point[:lon], centroid[:lat], centroid[:lon], 12)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pixeldistance/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
