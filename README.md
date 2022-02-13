# Rose: Stay Redpilled and Based

## Getting Started

### Windows
#### Install Elm
  Run the installer and add to path.  
  [Elm Installer](https://github.com/elm/compiler/releases/download/0.19.1/installer-for-windows.exe)

#### Install Rust
  Install MinGW for Windows. It's required to setup the Rust toolchain.  
  [MinGW Installer](https://osdn.net/projects/mingw/downloads/68260/mingw-get-setup.exe/)

  Install Rust nightly version.  
  [Rust Installer](https://static.rust-lang.org/dist/rust-nightly-x86_64-pc-windows-gnu.msi)


### Mac
#### Install Elm
  Install the .pkg and add to path.  
  [Elm Pkg](https://github.com/elm/compiler/releases/download/0.19.1/installer-for-mac.pkg)

#### Install Rust
  Open iTerm2, Terminal, or whatever other terminal emulator you like using. Run this.  
  `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

  Set Nightly Rust as your default version.
  `rustup default nightly`

  Alternatively, set only this directory's version to nightly.
  `rustup override set nightly`

  Note that if *the project fails to build*, you should be running `rustup update && cargo update` as Rocket   
  requires the latest version of Rust nightly and Rocket to be used.

### Compiling the Project 

  Compile the project using `make` at the top level directory and then run with `cargo run` in the api directory.
