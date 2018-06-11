# FidoFinder
Find adoptable pets in your area with this application!

## Get API access

Register for the [PetFinder API](https://www.petfinder.com/user/register/?next=https%3A%2F%2Fwww.petfinder.com%2Fdevelopers%2Fapi-key)
to obtain an `API_KEY` needed to make requests.

## Configure your application

Create a file in the `config` directory called `dev.secret.exs`. Enter the
`api_key` you obtained in the step above in your file.

```
# config/dev.secret.exs
use Mix.Config

config :fido_finder,
  api_url: "http://api.petfinder.com",
  api_key: "YOUR API KEY"
```

## Start your application

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
