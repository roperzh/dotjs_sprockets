# DotjsSprockets

[![Gem Version](https://badge.fury.io/rb/dotjs_sprockets.svg)](http://badge.fury.io/rb/dotjs_sprockets)
[![Code Climate](https://codeclimate.com/github/roperzh/dotjs_sprockets.png)](https://codeclimate.com/github/roperzh/dotjs_sprockets)
[![Inline docs](http://inch-ci.org/github/roperzh/dotjs_sprockets.png?branch=master)](http://inch-ci.org/github/roperzh/dotjs_sprockets)

[doT.js](https://github.com/olado/doT) templates for any application using [sprockets](https://github.com/sstephenson/sprockets).

## Installation

Add this line to your application's Gemfile:

```ruby
 gem "dotjs_sprockets"
```

And then execute:

```bash
$ bundle
```

## Usage

To get your template loaded and accessible client-side via the JST variable, you must follow:

- The template file must be under one of the Sprockets load paths ( usually `assets/javascripts` or `assets/templates` )
- The template must have the following extension: `.jst.djs`

That's all!

***Example***

```
app/
└── assets/
    └── javascripts/
        └── my_template.jst.djs
```

In this case the template will be accessible in the client via:

```javascript
// The compiler function
JST["my_template"] //=> function() ...

//The compiled template
JST["my_template"]() //=> <h2>Hello!</h2> ...
```

## Roadmap

- Provide an easy way to change the `djs` extension
- Check support and compatibility for nested templates

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dotjs-sprockets/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
