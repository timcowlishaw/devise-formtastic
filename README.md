# Devise Formtastic

Devise Formtastic is a [Formtastic](https://github.com/justinfrench/formtastic)
form builder for [Devise](https://github.com/plataformatec/devise) with some
extra features like full I18n support and dynamic page titles.

## Requirements

* Ruby 1.9 or later
* Rails 3.2 or later

## Installation

Add this line to your application's Gemfile:

    gem "devise-formtastic"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devise-formtastic

Devise Formtastic depends on latest stable versions of Devise and Formtastic
gems, so you don't have to add them in your Gemfile if you don't want to
specify version, git repository, etc.

All generators works as normal:

    $ rails generate formtastic:install
    $ rails generate devise:install
    $ rails generate devise User

Don't forget to require Formtastic styles in your asset pipeline:

    *= require formtastic

## Usage

### Generating views

If you want to modify Devise Formtastic views, you can copy them to app/views/:

    $ rails g devise:views

### Dynamic page titles

Devise Formtastic sets @title variable for each page (if it's not already set
in controllers), so you can use it in your layouts:

    <head>
      <title><%= "#{@title} | " unless @title.blank? %>Dummy App</title>
    </head>

    <body>
      <%= content_tag(:h1, @title) unless @title.blank? %>
    </body>

### I18n support

All buttons, titles, links, hint texts, etc. are configurable using locales.

    devise:
      buttons:
        sign_in: "Log in"
        sign_up: "Sign up"
      links:
        sign_in: "Log in"
        sign_up: "Join now"
      titles:
        sign_in: "Login"
        sign_up: "Registration"

For full list of available options please take a look at 
[default locale file](https://github.com/jarijokinen/devise-formtastic/blob/master/config/locales/en.yml).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Support

If you have any questions or issues with Devise Formtastic, or if you like to
report a bug, please create an [issue on GitHub](https://github.com/jarijokinen/devise-formtastic/issues).

## License

MIT License. Copyright (c) 2013 [Jari Jokinen](http://jarijokinen.com). See
[LICENSE](https://github.com/jarijokinen/devise-formtastic/blob/master/LICENSE.txt)
for further details.
