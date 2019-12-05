# IPScrubber
This plugin is for scrubbing out IPs from being sent to clients from the server.

How it works is that it takes the response sent by a client to the server, filters out the IP information, and returns nothing in its place. This prevents douchebags from using the things like net_showevents (or other potential Source engine commands) to grab people's IP info. Bots do not get calculated.

This does not have a specific game in mind and it can be used for any game. Feel free to make changes/redistribute this plugin as per the GPL3.0 license permits and please share with others. Sharing is caring :)

# Changelog
1.1.0 Update (12-04-2019)
------------------------------------
- Updated plugin code to use the new syntax.
- Compiled plugins for SM 1.10


1.0 Update (06-11-2018)
------------------------------------
- Compiled codebase for SM 1.8 (no changes, it still works!)


1.0 (09-03-2016)
------------------------------------
- Intitial version. Code based on posts from user shavit from the SM forums.