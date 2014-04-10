# Faye with Sinatra example

Get started with using [Faye](http://faye.jcoglan.com/) in [Sinatra](http://www.sinatrarb.com/) apps.

## Installation

Prepare environment with
```
git clone git@github.com:shime/faye-with-sinatra-example.git
cd faye-with-sinatra-example
bundle install
```

## Running example

Run the server with
```
rackup
```

Open up your favorite browser on [http://localhost:9292](http://localhost:9292) and
wait for messages...

Issue some messages to the client with

```
curl -d ''  http://localhost:9292/publish
```

You should see greetings from the server.
