# EpicFail
Initial build based on the [Mountable Engines Railscast](http://railscasts.com/episodes/277-mountable-engines) by Ryan Bates &mdash; Will be heavily extended and developed upon and probably end up being the basis of quite a few 'engine' creations.

## Usage
Perform the installation as follows

    rails g epic_fail:install
    
Run the installed migration

    rake db:migrate

Add the following to your `config/routes.rb`

```ruby
    mount EpicFail::Engine => "/epic_fail"
    engine_routing
```

## Changelog

* added namespaced generator to copy migrations across
* routes listed in Railtie [dynamically generated in host application](https://gist.github.com/1228809)

## Muchas gracias!
Here's thanking those that have inspired, assisted, and possibly just listened to my ranting and raving &mdash; in no particular order:

* workmad3
* SpaceGhostSC
* Karpah
* #RubyOnRails
* ...anyone I may have forgotten to mention.

## License
EpicFail is Copyright (c) 2010-2011 [Michael de Silva](http://www.bsodmike.com) ([@bsodmike](https://twitter.com/#!/bsodmike) &amp; [G+](https://plus.google.com/102197309611185157885/posts)), and is released under MIT-LICENSE.