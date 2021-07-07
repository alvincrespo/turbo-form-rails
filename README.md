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

If you provide the `as: :button` option, you'll get the following:

```erb
<%= turbo_confirm "Cancel Account", registration_path(resource_name), as: "button" %>
```

```html
<form class="button_to" method="post" action="/users">
  <input type="hidden" name="_method" value="delete" />
  <input
    data-controller="confirm"
    data-confirm-message="Are you sure?"
    type="submit"
    value="Delete"
  />
  <input type="hidden" name="authenticity_token" value="[REDACTED]" />
</form>
```

### `turbo_link(title = nil, path = nil, options = {}, &block)`

```erb
<%= turbo_link "Add", add_path(@resource) %>
```

This will generate the following:

```html
<a
  data-controller="link-method"
  rel="nofollow"
  data-method="post"
  href="/some/path"
  >Add</a
>
```

## Development

Checkout the [CONTRIBUTING](./CONTRIBUTING.md) for info on how to help out with contributions/development.

## License

This project is licensed under the [MIT License](./LICENSE)
