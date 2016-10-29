# IPScrubber
This plugin is for scrubbing out IPs from being sent to clients from the server.

How it works is that it takes the response sent by a client to the server, filters out the IP information, and returns nothing in its place. This prevents douchebags from using the things like net_showevents (or other potential Source engine commands) to grab people's IP info. Bots do not get calculated.

This does not have a specific game in mind and it can be used for any game. SM 1.7.3 and up are recommended for the plugin, though you can compile it yourself. Feel free to make changes/redistribute this plugin as per the GPL3.0 license permits and please share with others. Sharing is caring :)

==== Version 1.0 (09-03-2016) ====
- Intitial version. Code based on posts from user shavit from the SM forums.