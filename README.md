# ActsAsCurrency

A plugin to turn any integer field into a currency, great for keeping accuracy on the fields.
## Installation

To use it, add it to your Gemfile:

```ruby
gem 'acts-as-taggable-on', github: 'mesbahmilad/acts_as_currency' 
```

and bundle:

```shell
bundle
```

#### Post Installation

## Usage

Setup

```ruby
class Bill < ActiveRecord::Base
  acts_as_currency :total, :paid
end

@bill = Bill.new({:total=> 200.30, :paid=>102.34})
```

Overwrites the getter and setters for the given attributes to return the integer in the form of a decimal with 2 decimal points

```ruby
@bill.total   # 200.30
@bill.paid    # 102.34
```