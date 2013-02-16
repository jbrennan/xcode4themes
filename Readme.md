Xcode 4 Themes
==============

This repository contains some themes I've found useful when working with Xcode 4, in addition to a Ruby script I've discovered to help convert Xcode 3 themes into the format required by Xcode 4.

These themes were not created by me. I found them all over the net.

The themes
----------

* Blackboard

  ![Blackboard]

* Coal Graal

  ![CoalGraal]

* Dusk
  
  ![Dusk]

* Dusk v2

  ![Duskv2]

* EGO v2: A theme from Enormego. An Xcode3 version can be found [here][enormego_xcode_3]:

  ![EGOv2]

* EGO v2 (darker): The EGOv2 was too bright for me for some colors, so I toned them down.

  ![EGOv2Darker]

* GlitterBomb

  ![GlitterBomb]

* Humane: This theme was originally made for Xcode 3 by [Damien Guard] [humane]. I've made some modifications to it (including a switch to Menlo 12 pt. instead of Panic Sans 11 pt., though the two typefaces are nearly identical).

  ![Humane]

* Kellys

  ![Kellys]

* Midnight

  ![Midnight]

* Monokai

  ![Monokai]

* Moodnight

  ![Moodnight]

* Morrowind:  Great theme based on the Tango palette. By [Nate Stedman][nate_stedman]

  ![Morrowind]

* Night

  ![Night]

* Objective Sheep: Works especially well if combined with some good Jazz through your headphones… something like Miles Davis’s “Kind of Blue” for example :-). Found [here][objectiveSheepurl]

  ![ObjectiveSheep]

* Obsidian Code: A theme made by Ben Scheirman.  An Xcode 3 version can be found [here][obsidian_xcode_3]

  ![ObsidianCode]

* Pastel - Menlo

  ![PastelMenlo]

* Resesif

  ![Resesif]

* Scratch Art

  ![ScratchArt]

* Sidewalk Chalk

  ![SidewalkChalk]

* Solarized Dark and Light: Both themes are based off the amazing work for the original [Solarized theme] [solar]. Github user [varikin] [] took the Solarized palette and made the [Solarize Dark theme] [varikin] for Xcode 4. I forked his repository and added the Solarize Light theme as well. I'm including both in this repository, but both have been pushed back upstream to his repo.

  ![SolarizedDark]

  ![SolarizedLight]

*   Spacedust: This amazing theme was created by Mikael Hallendal (m5h) and its available on [his webpage][spacedust].

  ![Spacedust]

*  Tomorrow Theme: A Pastel Coloured Editor Theme. Found [here][tomorrowurl]

  ![TomorrowNight]

*  Twilight: Port from Textmate's Twilight theme. Found [here][twilighturl]

  ![Twilight]

*  XCasts: a dark theme loosely based on [Ryan Bates](http://railscasts.com/)' excellent [Railscasts theme for Textmate](http://railscasts.com/about). Found [here][xCastsurl]
   
  ![XCasts]

Installation
------------

    mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
    cp *.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/

Converting Xcode 3 themes
-----------------
The Ruby script (which is public domain) was found [here] [script] and is being included for convenience. To use it, do the following:

1. Install the plist gem with `sudo gem install plist`
2. Run the script with `./dvtcolorconvert.rb ~/Library/Application Support/Xcode/Color Themes/yourXcode3Theme.xccolortheme` (this directory won't exist unless you've made custom themes for Xcode 3, which could be as simple as duplicating an existing theme).
3. The converted theme will be in the same directory as the original.
4. As with installing the other themes, simply copy the converted theme to `~/Library/Developer/Xcode/UserData/FontAndColorThemes/`.
5. Restart Xcode 4.

  [Blackboard]: http://s11.postimage.org/n1htzhccj/Blackboard.png
  [CoalGraal]: http://s11.postimage.org/m0hlacvcz/Coal_Graal.png
  [Dusk]: http://s11.postimage.org/cihuab9oj/Dusk.png
  [Duskv2]: http://s11.postimage.org/53sihxnsz/Duskv2.png
  [EGOv2]: http://s11.postimage.org/oa5pl44ar/EGOv2.png
  [EGOv2Darker]: http://s11.postimage.org/mwe2pt51f/EGOv2_Darker.png
  [GlitterBomb]: http://s11.postimage.org/dpvs2izsz/Glitter_Bomb.png
  [Humane]: http://s11.postimage.org/vh7egzf7n/Humane.png
  [Kellys]: http://s11.postimage.org/vihcaeh1f/Kellys.png
  [Midnight]: http://s11.postimage.org/bcifp9arn/Midnight.png
  [Monokai]: http://s11.postimage.org/sfl7krrgj/Monokai.png
  [Moodnight]: http://s11.postimage.org/hu1c8rl4z/Moodnight.png
  [Morrowind]: http://s11.postimage.org/7y0994fcz/Morrowind.png
  [Night]: http://s11.postimage.org/mihc3yabn/Night.png
  [ObjectiveSheep]: http://s11.postimage.org/45gqtdzur/Objective_Sheep.png
  [ObsidianCode]: http://s11.postimage.org/jgqjtzx6r/Obsidian_Code.png
  [PastelMenlo]: http://s11.postimage.org/gbajhj3yb/Pastel_Menlo.png
  [Resesif]: http://s11.postimage.org/y3w3pel6r/Resesif.png
  [ScratcArt]: http://s11.postimage.org/6htc4q1tv/Scratch_Art.png
  [SidewalkChalk]: http://s11.postimage.org/i879m3umb/Sidewalk_Chalk.png
  [SolarizedDark]: http://s11.postimage.org/bj0q639ab/Solarized_Dark.png
  [SolarizedLight]: http://s11.postimage.org/bkanzib43/Solarized_Light.png
  [Spacedust]: http://s11.postimage.org/7p79wxryb/Spacedust.png
  [TomorrowNight]: http://s11.postimage.org/8sre8wclf/Tomorrow_Night.png
  [Twilight]: http://s11.postimage.org/ei7mt7irn/Twilight.png

   [script]: http://digitalflapjack.com/blog/2011/jan/24/xcodedpthemes/
   [humane]: http://damieng.com/blog/2008/02/08/humane-theme-for-textmate-and-xcode
   [solar]: http://ethanschoonover.com/solarized
   [varikin]: https://github.com/varikin/solarized/tree/master/xcode4-colors-solarized
   [dark]: http://farm6.static.flickr.com/5062/5592270855_1b26fb726e_o.png  "Solarize Dark"
   [light]: http://farm6.static.flickr.com/5030/5592863390_04967685db_o.png  "Solarize Light"
   [humane_image]: http://farm6.static.flickr.com/5306/5592861916_4db32fe976_o.png  "Humane (Modified)"
   [spacedust_image]: http://simplyhacking.com/images/posts/spacedust-xcode-theme.png "Spacedust"
   [spacedust]: https://gist.github.com/527103
   [jbrennan]: https://github.com/jbrennan/xcode4themes
   [egov2_image]: https://lh4.googleusercontent.com/_Sv4FIWD7bb0/Ta2S0MPGvdI/AAAAAAAABjg/AGzN0U8UBjI/s576/evog2.jpg "EGOv2"
   [enormego developers]: http://developers.enormego.com/view/ego_xcode_theme_for_xcode_4_egov2
   [obsidian_xcode_3]: https://gist.github.com/837656
   [ob]: https://img.skitch.com/20110220-qhusp5yejyp6t3k9kkajddi14x.jpg
   [enormego_xcode_3]: http://developers.enormego.com/view/ego_xcode_theme_for_xcode_4_egov2
   [egov2]: http://f.cl.ly/items/1p3m2d1B0O3b312E2d3B/Screen%20shot%202011-02-04%20at%2012.36.06%20PM.png
   [egov2dark]: http://dl.dropbox.com/u/17239712/egov2dark.png
   [nate_stedman]: http://www.natestedman.com/post/morrowind-for-textmate-xcode/
   [morrowind]: http://s3.amazonaws.com/ns_pixels/blag/morrowind.png
   [twilighturl]: http://blog.cylence.com/2011/01/27/textmates-twilight-theme-for-xcode/
   [twilight]: http://f.cl.ly/items/010t080U2y1D1j1O3S1G/Screen%20shot%202011-01-27%20at%201.47.28%20PM.png
   [tomorrowurl]: https://github.com/ChrisKempson/Tomorrow-Theme
   [tomorrow]: https://github.com/ChrisKempson/Tomorrow-Theme/raw/master/Images/Tomorrow-Night.png
   [xCastsurl]: https://github.com/bmeurer/XCasts-color-theme-for-Xcode-4
   [xCasts]: http://github.com/bmeurer/XCasts-color-theme-for-Xcode-4/raw/master/XCasts-screenshot.png
   [objectiveSheepurl]: http://objectivesheep.com/blog/xcode4_color_theme
   [objectiveSheep]: https://objectivesheep.s3.amazonaws.com/blog/xcode_color_theme/objectivesheepColorTheme.png
