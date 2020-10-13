# The BlightMUD Experience for StickMUD

Hello and welcome to the BlightMUD project to enhance the gameplay of StickMUD! In this file, the following goals are achieved:

* Explain the steps to install Rust.
* Explain how to install BlightMUD.
* Instructions n how to install git.
* How to get access to this package.
* And most importantly, how to hit the ground running!

## Getting Rust

First and foremost, one needs to install Rust in order to compile BlightMUD. The procedure for this is pretty straightforward when using the rustup tool. For Macintosh or other UNIX-like systems, one needs to run `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`, thereafter following the on-screen instructions. For other installation methods, or if you are running a Windows system, you may with to refer to the [following link](https://forge.rust-lang.org/infra/other-installation-methods.html).

## Installing Git

Git is a tool for managing the code of this repository, in addition to a whole host of other open source projects. There is good documentation on how to obtain git, which you can read [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

## Installing BlightMUD

Now it is time to install BlightMUD, the client itself.

* Clone the repository: `git clone https://github.com/liquidityc/BlightMUD`
* cd BlightMUD
* Checkout to a release, i.e. `git checkout v2.0.0`
* cargo install --path .
* Add .cargo/bin to your PATH.
* Run `blightmud -h` to verify that things went as planned.

## Installing Sox

Sox is a command line suite of utilities for audio manipulation, and will be used extensively in this project to implement health gauges as well as play sounds supplied by the MUD. In order to install Sox, it is recommended that you read [this documentation](https://at.projects.genivi.org/wiki/display/PROJ/Installation+of+SoX+on+different+Platforms).

## Getting This Package

If you are reading this in a web browser, getting this package is pretty straightforward. All you need to do is run `git clone --recursive https://github.com/hjozwiak/blight-stickmud` to get the code and the sounds from StickMUD.

## Getting Started

To start the package, first you will need to launch BlightMUD. Once this is done, run `/load start.lua`.

## Further Reading

In order to learn about the package's featureset, it is recommended that you consult the wiki for the project.
