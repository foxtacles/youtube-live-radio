# YouTube live radio sample

Have you ever come across a YouTube video that endlessly loops a playlist of music? This post outlines a way to launch such a live radio using `ffmpeg`, the swiss army knife when it comes to any kind of media streaming or transformation, and a simple Docker image. You can even host the entire setup for free on services like Heroku (using "free" dyno hours). More information can be found in [this blog post](https://blaubart.com/en/blog/how-to-set-up-a-24-7-live-stream-radio-on-youtube-for-free).

# Deploy

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

# Setup

* Make sure you are allowed to create live streams on YouTube. 
* Fork this repository, swap out the background image to your liking, and put all MP3 files to be played in the `mp3` folder. They will be shuffled and looped infinitely.
* Create and configure a broadcast with [`enableAutoStop = false`](https://developers.google.com/youtube/v3/live/docs/liveBroadcasts#contentDetails.enableAutoStop). At the time of writing, using the UI, this is only possible by scheduling a stream in the future (otherwise the flag is set to `true`). Alternatively, you can also use the Live Streaming API to do this.
* Deploy this app (for instance, using the Heroku deploy button above) to a host of your choice. Set the `YOUTUBE_KEY` environment variable to the stream key given to you in the previous step.

# Attributions

The MP3 in this repository ("The Elevator Bossa Nova") is being used under the Free License of: https://www.bensound.com/royalty-free-music/track/the-elevator-bossa-nova
