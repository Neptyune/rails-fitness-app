# Fitness Application

> Written in Ruby on Rails.

## Development

### Initilize tailwindcss

```sh
rails tailwindcss:install
```

### Routing

Routes are guarded by default.

To add an unguarded route add
```rb 
skip_before_action :authorized
```

Have a look at `sessions_controller.rb` for an example implementation.