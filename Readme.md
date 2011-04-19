Xcode 4 Themes
==============

This repository contains some themes I've found useful when working with Xcode 4, in addition to a Ruby script I've discovered to help convert Xcode 3 themes into the format required by Xcode 4.

This repository started as a fork from [jbrennan]'s.

The themes
----------

*	EGOv2: Awesome theme from [enormego developers].

	![EGOv2] [egov2_image] 

*	Spacedust: This amazing theme was created by Mikael Hallendal (m5h) and its available on [his webpage].

	![Spacedust] [spacedust_image]

* 	Solarized Light & Dark: Both themes are based off the amazing work for the original [Solarized theme] [solar]. Github user [varikin] [] took the Solarized palette and made the [Solarize Dark theme] [varikin] for Xcode 4. I forked his repository and added the Solarize Light theme as well. I'm including both in this repository, but both have been pushed back upstream to his repo.
	
	![Solarize Light] [light]
	![Solarize Dark] [dark]

* 	Humane (modified): This theme was originally made for Xcode 3 by [Damien Guard] [humane]. I've made some modifications to it (including a switch to Menlo 12 pt. instead of Panic Sans 11 pt., though the two typefaces are nearly identical).

	![Humane (Modified)] [humane_image]


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


   [script]: http://digitalflapjack.com/blog/2011/jan/24/xcodedpthemes/
   [humane]: http://damieng.com/blog/2008/02/08/humane-theme-for-textmate-and-xcode
   [solar]: http://ethanschoonover.com/solarized
   [varikin]: https://github.com/varikin/solarized/tree/master/xcode4-colors-solarized
   [dark]: http://farm6.static.flickr.com/5062/5592270855_1b26fb726e_o.png  "Solarize Dark"
   [light]: http://farm6.static.flickr.com/5030/5592863390_04967685db_o.png  "Solarize Light"
   [humane_image]: http://farm6.static.flickr.com/5306/5592861916_4db32fe976_o.png  "Humane (Modified)"
   [spacedust_image]: http://simplyhacking.com/images/posts/spacedust-xcode-theme.png "Spacedust"
   [his webpage]: https://gist.github.com/527103
   [jbrennan]: https://github.com/jbrennan/xcode4themes
   [egov2_image]: http://f.cl.ly/items/1p3m2d1B0O3b312E2d3B/Screen%20shot%202011-02-04%20at%2012.36.06%20PM.png "EGOv2"
   [enormego developers]: http://developers.enormego.com/view/ego_xcode_theme_for_xcode_4_egov2
