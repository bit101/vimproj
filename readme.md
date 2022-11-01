# vimproj

A vim plugin to create projects from templates.

Very much a work in progress.

Very much a personal project created for my own needs.

But if you find it useful, go for it.

## Usage:

The plugin provides a command called `VpMake`. You can map this to your keys of choice.

Running the command will prompt you for a project type and then a path.

The path must not already exist.

Template files will be copied to that location and you will be `cd`ed into that location ready to code.

## Templates

1. Go. A bare minimum Golang project.
2. BLGG. A graphics animation creation project using https://github.com/bit101/blgg
3. Node. A bare bones node js project.

Templates are hard coded in the `autoload` dir of the plugin for now and are very custom. Long range, they could move into a configurable location and be even more teplatizable.
