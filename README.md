# mruby-versioncmp   [![Build Status](https://travis-ci.org/hfm/mruby-versioncmp.svg?branch=master)](https://travis-ci.org/hfm/mruby-versioncmp)
VersionCmp class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem github: 'hfm/mruby-versioncmp'
end
```
## example
```ruby
v1 = VersionCmp.new("1.0.0")
v2 = VersionCmp.new("1.0.1")

if v1 < v2
  p "v1 is smaller than v2"
else
  p "v1 is bigger than v2"
end
```

## License
under the MIT License:
- see LICENSE file
