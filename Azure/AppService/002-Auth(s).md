# Authentication and Authorisation

* provides built-in authentication and authorisation support
* can use also use web framework's auth & auth or use custom ones
* using built-in ones saves you lot of time
* built-in auth supports integrting multiple login providers liek AD, Facebook, Google, etc..

App Service uses federated identity, in which a third-party identity providers manages the user identities and authentication flow

## Default Supported Providers

| Provider                    | Sign-in endpoint        |
| :--:                        | :--:                    |
| Microsoft Identity Platform | /.auth/login/aad        |
| Facebook                    | /.auth/login/facebook   |
| Google                      | /.auth/login/google     |
| Twiter                      | /.auth/login/twitter    |