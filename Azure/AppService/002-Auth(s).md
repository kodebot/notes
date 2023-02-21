# Authentication and Authorisation

* provides built-in authentication and authorisation support
* can use also use web framework's auth & auth or use custom ones
* using built-in ones saves you lot of time
* built-in auth supports integrating multiple login providers like AD, Facebook, Google, etc..

App Service uses federated identity, in which a third-party identity providers manages the user identities and authentication flow

* built-in auth(s) module run in the same sandbox as your application code
* it takes care of auths for your app's requests
* configured in appsettings - no code changes or SDKs are needed
* in the portal you can set what to do with unauthenticated requests
    * allow unauthenticated request
    * reject requests by sending 401 (unauthorised) or 403 (forbidden)

## Default Supported Providers

| Provider                    | Sign-in endpoint        |
| :--                        | :--                    |
| Microsoft Identity Platform | /.auth/login/aad        |
| Facebook                    | /.auth/login/facebook   |
| Google                      | /.auth/login/google     |
| Twitter                      | /.auth/login/twitter    |