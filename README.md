# Turbo Form (Rails)

This library builds on top of [turbo-form](https://github.com/alvincrespo/turbo-form) by providing template helpers specifically for Ruby on Rails.

## Installation

```
gem "turbo_form", git: "https://github.com/alvincrespo/turbo-form-rails.git"
```

Note: I know, this isn't great - but I'll be implementing versioning soon.

## Usage

### `turbo_confirm(title = nil, path = nil, options = {}, &block)`

```erb
<%= turbo_confirm "Delete", delete_path(@resource) %>
```

### `turbo_link(title = nil, path = nil, options = {}, &block)`

```erb
<%= turbo_link "Add", add_path(@resource) %>
```

## Development

Checkout the [CONTRIBUTING](./CONTRIBUTING.md) for info on how to help out with contributions/development.

## License

This project is licensed under the [MIT License](./LICENSE)
