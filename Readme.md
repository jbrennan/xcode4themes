Xcode 4 Themes
==============

This repository contains and handful themes I've found useful when working with Xcode 4, in addition to a Ruby script I've discovered to help convert Xcode 3 themes into the format required by Xcode 4.

The themes
----------

* 	Solarized Light & Dark: Both themes are based off the amazing work for the original [Solarized theme] [solar]. Github user [varikin] [] took the Solarized palette and made the [Solarize Dark theme] [varikin] for Xcode 4. I forked his repository and added the Solarize Light theme as well. I'm including both in this repository, but both have been pushed back upstream to his repo.
	
	![Solarize Light] [light]
	![Solarize Dark] [dark]

* 	Humane (modified): This theme was originally made for Xcode 3 by [Damien Guard] [humane]. I've made some modifications to it (including a switch to Menlo 12 pt. instead of Panic Sans 11 pt., though the two typefaces are nearly identical).

	![Humane (Modified)] [humane_image]
	
*   ObsidianCode:  A theme made by Ben Scheirman.  An Xcode 3 version can be found [here][obsidian_xcode_3]:

    ![Obsidian] [ob]


Installation
------------

    git clone git@github.com:jbrennan/xcode4themes.git
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


   [script]: http://digitalflapjack.com/blog/2011/jan/24/xcodedpthemes/
   [humane]: http://damieng.com/blog/2008/02/08/humane-theme-for-textmate-and-xcode
   [solar]: http://ethanschoonover.com/solarized
   [varikin]: https://github.com/varikin/solarized/tree/master/xcode4-colors-solarized
   [dark]: http://farm6.static.flickr.com/5062/5592270855_1b26fb726e_o.png  "Solarize Dark"
   [light]: http://farm6.static.flickr.com/5030/5592863390_04967685db_o.png  "Solarize Light"
   [humane_image]: http://farm6.static.flickr.com/5306/5592861916_4db32fe976_o.png  "Humane (Modified)"
   [obsidian_xcode_3]: https://gist.github.com/837656
   [ob]: https://img.skitch.com/20110220-qhusp5yejyp6t3k9kkajddi14x.jpg