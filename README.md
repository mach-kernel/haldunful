# haldunful
RESTful Haldun Markov Bot. Powered by [Grape](https://github.com/zolrath/marky_markov) and [marky_markov](https://github.com/zolrath/marky_markov) disgracefully uses disk for persistence because it's a 15 minute joke/

## Getting Started
```bash
git clone https://github.com/mach-kernel/haldunful.github
cd haldunful 
bundle install
rails
```

## Routes

All `POST` requests expect a JSON object, all `GET` requests expect querystring parameters. 

### POST `/learn`
Add to Haldun's dictionary. The more, the better! 

**NOTE**: You must set `Content-Type: application/json`

| Parameter  | Description                          | Type   |
|------------|--------------------------------------|--------|
| learn_data | What would you like Haldun to learn? | String |

### GET `/wwhs`
What would Haldun say?

| Parameter  | Description                          | Type   |
|------------|--------------------------------------|--------|
| word_count | How many words? | Integer |

### Errors

There's a catchall in `Haldunful::V1` that returns a `500` with some info from the thrown exception, in a JSON object.

## How it works

Request is sent to `lib/markov.rb` and every 10 requests, the dictionary gets persisted to.

## Message to Haldun
Your phrases and sayings have generated discussion and legend around the Poly CSE crowd. It is only natural to expect us to do something like this at some point. We are happy.

## Credits
This is basically all possible because of [marky-markov](https://github.com/zolrath/marky_markov) and [Grape](https://github.com/zolrath/marky_markov). I just tied it all together.

## License
[CC-BY-NC 4](http://creativecommons.org/licenses/by-nc/4.0/)
