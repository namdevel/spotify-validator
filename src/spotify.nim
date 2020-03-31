import httpClient

proc validateEmail*(email: string): string =
    var apikey = "bff58e9698f40080ec4f9ad97a2f21e0"
    var endpoint = "https://spclient.wg.spotify.com/signup/public/v1/account?key=" & apikey & "&email=" & email & "&validate=1"
    var client = newHttpClient()
    return client.getContent(endpoint)