# SortRank

[![Build Status](https://travis-ci.org/4rlm/sort_rank.svg?branch=master)](https://travis-ci.org/4rlm/sort_rank)
[![Gem Version](https://badge.fury.io/rb/sort_rank.svg)](https://badge.fury.io/rb/sort_rank)
[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

#### SortRank Sorts and Ranks text in strings, like a full text article or document.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sort_rank'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sort_rank

## Usage


1) Add your text to a hash with `:text` symbol key, then pass the arguments to `SortRank.parse(args)` like the example below.  If you don't pass any args, and just run `SortRank.parse` it will return sample data for testing.

```
args = { text: "The state capitol in Austin, Texas Austin is a city of over 912,000 in the Hill Country of central Texas. It is the state capital and home to a major university as well as an influential center for politics, technology, music, film and increasingly a food scene. Austin's embrace of alternative cultures is commonly emblazoned about town on T-Shirts and bumper stickers that read: 'Keep Austin Weird.' Austin is also marketed as the 'Live Music Capital of the World' due to the large number of venues and 'Silicon Hills' reflecting the many technology companies." }

result_hash = SortRank.parse(args)
```

2) The returned data will be in hash format like below:

You can access the data, like so: `result_hash[:results]` and `result_hash[:text]`

```
{
  :results=>
  {
    "the"=>7, "austin"=>5, "of"=>5, "is"=>4, "and"=>4, "as"=>3, "music"=>2, "to"=>2, "technology"=>2, "capital"=>2, "texas"=>2, "in"=>2, "state"=>2, "keep"=>1, "read"=>1, "that"=>1, "stickers"=>1, "bumper"=>1, "shirts"=>1, "on"=>1, "town"=>1, "about"=>1, "emblazoned"=>1, "commonly"=>1, "cultures"=>1, "alternative"=>1, "embrace"=>1, "scene"=>1, "food"=>1, "increasingly"=>1, "film"=>1, "politics"=>1, "for"=>1, "center"=>1, "influential"=>1, "an"=>1, "well"=>1, "university"=>1, "major"=>1, "home"=>1, "it"=>1, "central"=>1, "country"=>1, "hill"=>1, "000"=>1, "912"=>1, "over"=>1, "city"=>1, "capitol"=>1, "many"=>1, "reflecting"=>1, "hills"=>1, "silicon"=>1, "venues"=>1, "number"=>1, "large"=>1, "due"=>1, "world"=>1, "live"=>1, "marketed"=>1, "also"=>1, "weird"=>1, "companies"=>1
  },
 :text=>
  "The state capitol in Austin, Texas Austin is a city of over 912,000 in the Hill Country of central Texas. It is the state capital and home to a major university as well as an influential center for politics, technology, music, film and increasingly a food scene. Austin's embrace of alternative cultures is commonly emblazoned about town on T-Shirts and bumper stickers that read: 'Keep Austin Weird.' Austin is also marketed as the 'Live Music Capital of the World' due to the large number of venues and 'Silicon Hills' reflecting the many technology companies."
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/4rlm/sort_rank. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SortRank project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/4rlm/sort_rank/blob/master/CODE_OF_CONDUCT.md).
