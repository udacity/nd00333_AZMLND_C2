"""
This script creates an HTTP server to expose the current working directory. It
is meant to be an easy way to expose a local swagger.json file so that
a swagger-ui service can pick it up from localhost.

Run it with Python3:

    $ python3 serve.py 8000

The port number is optional, defaulting to 8000. Once the server is up and
running with a swagger.json file in the same directory, then the url (assuming
port 8000) to be used in swagger-ui would be:

    http://localhost:8000/swagger.json

"""


from http.server import HTTPServer, SimpleHTTPRequestHandler, test
import sys


class CORSRequestHandler(SimpleHTTPRequestHandler):
    """
    Allows a simple HTTP server to have CORS enabled by default
    """

    def end_headers(self):
        self.send_header("Access-Control-Allow-Origin", "*")
        SimpleHTTPRequestHandler.end_headers(self)


if __name__ == "__main__":
    if len(sys.argv) > 1:
        # Allows the port to be passed in as an argument
        port = sys.argv[-1]
    else:
        port = 8000

    test(CORSRequestHandler, HTTPServer, port=port)
