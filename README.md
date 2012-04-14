# JUCE Amalgamation Template

Source templates for building the [JUCE Amalgamation][1].

This contains the templates and script used to build the [JUCE library][2] in
amalgamated form. This is useful if you want to create it yourself. For example,
if you have applied patches to Juce.

To build the amalgamation:

- Build the [Amalgamate][3] tool and place it in a directory where the system
  will find it (the PATH environment variable in Windows).

- Put a JUCE repository in the root of this local repository.

- Open your IDE-specific project file and build it.

- The amalgamated output  will be placed in JuceAmalgam/include
  (which you must create).

The resulting amalgamation is platform independent, but projects for each
platform are provided to make it easy to build and also to detect errors in
specific IDEs.

## Author

This template was created by [Vinnie Falco][3].

[1]: https://github.com/vinniefalco/JuceAmalgam "JuceAmalgam"
[2]: http://rawmaterialsoftware.com/juce.php "JUCE"
[3]: http://github.com/vinniefalco/Amalgamate "Amalgamate Tool"
[4]: http://vinniefalco.com "Vinnie Falco's Home Page"
