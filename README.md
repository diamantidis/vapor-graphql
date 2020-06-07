# Vapor GraphQL Server

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Swift](https://img.shields.io/badge/Swift-5.2-f05038.svg)](https://swift.org)
[![Vapor](https://img.shields.io/badge/Vapor-4.0-e040fb.svg)](https://docs.vapor.codes/4.0/)
[![Twitter: @diamantidis_io](https://img.shields.io/badge/Twitter-@diamantidis_io-blue.svg?logo=twitter&color=1da1f2&style=flat)](https://twitter.com/diamantidis_io)

A simple [GraphQL] server in Swift using [Vapor 4.0]. This server was built as a demonstration demo for the posts ["Swift ❤️ GraphQL: How to create a GraphQL server with Vapor and an iOS app as a client"], ["Custom GraphQL types on Swift projects"] and ["Mutations on a GraphQL server built with Vapor"] that I published on my [personal blog]. You can always refer to those posts if you want to find more information about this project.

## Requirements
* Xcode 11.4 or greater
* Swift 5.2 or greater

## Installation

To clone the repo:

```sh
git clone https://github.com/diamantidis/vapor-graphql.git && cd vapor-graphql
```

## Running the app

### Xcode

To run the server from Xcode:
```sh
vapor-beta xcode
```
And then hit, Command(⌘) + R.


### Terminal

To run the server from Terminal:

```
vapor-beta build && vapor-beta run
```


## Author
I'm [Ioannis Diamantidis] and you can find me on:
* [Twitter]
* [Email]
* [LinkedIn]

## License

This project is licensed under the terms of the MIT license. See the [LICENSE] file.

[GraphQL]: https://graphql.org/
["Swift ❤️ GraphQL: How to create a GraphQL server with Vapor and an iOS app as a client"]: https://diamantidis.github.io/2020/05/24/swift-loves-graphql-server-with-vapor-and-ios-app-client
["Custom GraphQL types on Swift projects"]: https://diamantidis.github.io/2020/05/31/custom-graphql-types-on-swift-projects
["Mutations on a GraphQL server built with Vapor"]: https://diamantidis.github.io/2020/06/07/mutations-on-a-graphql-server-built-with-vapor
[personal blog]: https://diamantidis.github.io
[Vapor 4.0]: https://docs.vapor.codes/4.0/
[Ioannis Diamantidis]: https://diamantidis.github.io
[Twitter]: https://twitter.com/diamantidis_io
[LinkedIn]: http://linkedin.com/in/ioannis-diamantidis
[Email]: mailto:diamantidis@outlook.com
[LICENSE]: LICENSE
