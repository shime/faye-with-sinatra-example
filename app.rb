require "sinatra"
require "faye"
require "httparty"
require "json"

use Faye::RackAdapter, :mount => '/faye', :timeout => 25

get "/" do
  <<-HTML
    <script type="text/javascript" src="http://localhost:9292/faye/client.js"> </script>
    <script type="text/javascript">
      var client = new Faye.Client('http://localhost:9292/faye');
      var subscription = client.subscribe('/browser', function(message) {
        console.log(message);
        var d1 = document.getElementById('main');
        d1.insertAdjacentHTML('beforeend', '<div>' + message + '</div>');
      });
    </script>
    <body id="main"></body>
  HTML
end

post '/publish' do
  client = Faye::Client.new("http://localhost:9292/faye")
  client.publish("/browser", "hello from server")
end
