# Shortener

API Project: URL Shortener Microservice
User Story:

    1. I can POST a URL to [project_url]/api/shorturl/new and I will receive a shortened URL in the JSON response.
    Example : {"original_url":"www.google.com","short_url":1}
    2. If I pass an invalid URL that doesn't follow the http(s)://www.example.com(/more/routes) format, the JSON response will contain an error like {"error":"invalid URL"}
    HINT: to be sure that the submitted url points to a valid site you can use the function dns.lookup(host, cb) from the dns core module.
    3. When I visit the shortened URL, it will redirect me to my original link.
    
Example Usage:

[this_project_url]/api/shorturl/3
Will Redirect to: https://forum.freecodecamp.com


## Phoenix Instructions

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
