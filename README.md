# JuceAmalgam Template

Source templates for building the [Juce Amalgamation][1].

This contains the templates and scripts used to build the Juce library in
amalgamated form. This is useful if you want to create it yoruself. For example,
if you have applied patches to Juce.

To prepare first you must build the [Amalgamate][2] tool and place it in a
directory where the system will find it (the PATH environment variable
in Windows). Next, put the JUCE repository you wish to amalgamate at the root of
your local copy of this repository. Then create the path JuceAmalgam/include at
the root of your local copy.

Now open the corresponding project for your platform and then build. A script
will run to create the amalgamated files, and then the amalgamated files will
be compiled to detect errors.

The resulting amalgamation is platform independent, but projects for each
platform are provided to make it easy to build and also to detect errors in
specific IDEs.

## Credit

This template was created by Vinnie Falco.

[1]: https://github.com/vinniefalco/JuceAmalgam "JuceAmalgam"

[2]: http://github.com/vinniefalco/Amalgamate "Amalgamate Tool"
