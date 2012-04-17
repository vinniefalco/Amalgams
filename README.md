# Amalgamation templates

These templates allow you to build the following amalgamations:

- [FreeType Amalgamation][1] based on the [FreeType Library][2]
- [JUCE Amalgamation][2] based on the [JUCE Library][4]
- [TagLib Amalgamation][5] based on [TagLib][6]

To build an amalgamation:

- Build the [Amalgamate][7] tool and place it in a directory where the system
  will find it, or modify your environment variable ("PATH" on Windows).

- Clone the source code repository of the project you want to amalgamate into
  the amalgamation-specific directory.

- Open the IDE-specific project file and build it.

The resulting amalgamation is platform independent, but projects for each
platform are provided to make it easy to build and also to detect errors in
specific IDEs.

## License

Copyright (C) 2012 [Vinnie Falco][8] <br>
The templates are provided under the terms of the [MIT license][9].<br>
Amalgamations of existing works are still covered by their respective licenses,
see the corresponding source files for details.

[1]: https://github.com/vinniefalco/FreeTypeAmalgam "FreeTypeAmalgam"
[2]: http://www.freetype.org "The FreeType Project"
[3]: https://github.com/vinniefalco/JUCEAmalgam "JUCEAmalgam"
[4]: http://rawmaterialsoftware.com/juce.php "JUCE"
[5]: https://github.com/vinniefalco/TagLibAmalgam "TagLibAmalgam"
[6]: http://developer.kde.org/~wheeler/taglib.html "TagLib"
[7]: https://github.com/vinniefalco/Amalgamate "Amalgamate Tool"
[8]: http://vinniefalco.com "Vinnie Falco's Home Page"
[9]: http://www.opensource.org/licenses/MIT "MIT License"
