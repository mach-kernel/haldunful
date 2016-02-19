# haldunful
RESTful Haldun Markov Bot. Powered by [Grape](https://github.com/zolrath/marky_markov) and [marky_markov](https://github.com/zolrath/marky_markov) disgracefully uses disk for persistence because it's a 15 minute joke. Any/all contributions accepted - just make a pull request!

Make requests against the live version at: http://haldunful.herokuapp.com/v1

#### Message to Haldun
Your phrases and sayings have generated discussion and legend around the Poly CSE crowd. It is only natural to expect us to do something like this at some point. We are happy.

## Getting Started
```bash
git clone https://github.com/mach-kernel/haldunful.github
cd haldunful 
bundle install
rails
```

## Routes

All `POST` requests expect a JSON object, all `GET` requests expect querystring parameters. All the magic happens in `lib/markov.rb`.

#### POST `/learn`
Add to Haldun's dictionary. The more, the better! 

**NOTE**: You must set `Content-Type: application/json`

| Parameter  | Description                          | Type   |
|------------|--------------------------------------|--------|
| learn_data | What would you like Haldun to learn? | String |

#### GET `/words`
What would Haldun say?

| Parameter  | Description                          | Type   |
|------------|--------------------------------------|--------|
| word_count | How many words? | Integer |

#### GET `/sentences`
What would Haldun say?

| Parameter  | Description                          | Type   |
|------------|--------------------------------------|--------|
| word_count | How many sentences? | Integer |

#### Errors

There's a catchall in `Haldunful::V1` that returns a `500` with some info from the thrown exception, in a JSON object.

## Changelog

- 1.0.1
Rename `wwhs` to `words` and `sentences`. Add support for complete sentence returns.

- 1.0.0
Initial Release

## Credits
This is basically all possible because of [marky-markov](https://github.com/zolrath/marky_markov) and [Grape](https://github.com/zolrath/marky_markov). I just tied it all together.

## License
[CC-BY-NC 4](http://creativecommons.org/licenses/by-nc/4.0/)
