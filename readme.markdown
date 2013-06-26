# Guard::CocoaPods

A shameless ripoff of [Guard::Bundler](https://github.com/guard/guard-bundler), but adapted for [CocoaPods](http://cocoapods.org).

## Install

Make sure you've got [Guard](https://github.com/guard/guard) installed beforehand. Then do one of these.

Command line version!

    $ gem install guard-bundler

Gemfile version! (inside development group):

    gem 'guard'
    gem 'guard-cocoapods'

Then, run this command to add the guard definitions to your Guardfile.

    $ guard init cocoapods

## Usage

You'll want to consult the [Guard readme](https://github.com/guard/guard#usage) for this.

## Guardfile

    guard 'cocoapods' do
      watch('Podfile')
    end

If you want to read up more on Guard's DSL, check out the [Guardfile DSL section](https://github.com/guard/guard#guardfile-dsl) of their readme.

## Development

Want to add something! Open a pull request! I prefer feature-named branches if you're wanting to make any changes.

I haven't added any testing to this repo since I was in a blitz to make it, but
if you want to go through and add test *for* me (apologies for my sloth and
apathy), I would love you forever.

## Authors

- [Ben Kreeger](https://github.com/kreeger)
- Many thanks to [Yann Lugrin](https://github.com/yannlugrin) for `guard-bundler`
- Many thanks to [Soroush Khanlou](https://github.com/skhanlou) for the
  inspiration
