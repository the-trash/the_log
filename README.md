# TheLog

Take care of your joints. Write less, do same.

Replace `console.log` with `log` in your Rails App

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'the_log'
```

And then execute:

```
bundle
```

Or install it yourself as:

```
gem install the_log
```

## Usage

**application.js**

```coffeescript
//= require jquery
//= require the_log
```

**layouts/application.html.haml**

```haml
!!!
%html{ data: { the_log: Rails.env.development? } }
%head
  %title My Application
  = stylesheet_link_tag    :application, media: :all
  = javascript_include_tag :application
  = csrf_meta_tags

%body
  / ....
```

**Into your Browser Console**

```javascript
log('Hello World!')
```

**Into your CoffeeScript code**

```coffeescript
# DOM 'ready' event
$ ->
  log 'Hello World!'
```

## TheLog and Production env

Nobody wants to see `log` messages in web console in production mode.
You can configure visibility of `log` messages with `data-the-log` param

```haml
%AnyTag{ data: { the_log: Rails.env.development? } }
```

or you can switch it in JS console

```javascript
TheLog.enable = true  // log messages will be visible
TheLog.enable = false // there is no log messages
```

## MIT licence
