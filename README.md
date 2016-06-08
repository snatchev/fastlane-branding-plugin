# branding plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-branding)

Render your App's icon to the terminal whenever you run fastlane!

_Serious Branding!_

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-branding`, add it to your project by running:

```bash
fastlane add_plugin branding
```

Once you've added the plugin, add the `branding` action to your `Fastfile`.
Like this:

```ruby
platform :ios do
  before_all do
    branding
  end
end
```

## Why?

You worked hard on your app, so show some pride and see your app's icon during the start of your fastlane runs.

## Usage

This plugin makes use of [branding.rb](https://github.com/snatchev/branding.rb) to render your AppIcon in glorious hi-res 240 colors!



## Example


````
rake
```

To automatically fix many of the styling issues, use 
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/PluginsTroubleshooting.md) doc in the main `fastlane` repo.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Plugins.md).

## About `fastlane`

`fastlane` is the easiest way to automate building and releasing your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
