# mruby-versioncmp   [![Build Status](https://travis-ci.org/hfm/mruby-versioncmp.svg?branch=master)](https://travis-ci.org/hfm/mruby-versioncmp)
VersionCmp class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 'hfm/mruby-versioncmp'
end
```
## example
```ruby
p VersionCmp.hi
#=> "hi!!"
t = VersionCmp.new "hello"
p t.hello
#=> "hello"
p t.bye
#=> "hello bye"
```

## License
under the MIT License:
- see LICENSE file
