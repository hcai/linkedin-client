# Ruby LinkedIn OAuth 2 client


## Usage

    client = LinkedIn::Client.create(
      :access_token => YOUR_OAUTH2_ACCESS_TOKEN
    )
    profile = client.account.get_profile


## License
linkedin-client is released under the [MIT License](http://www.opensource.org/licenses/MIT).
