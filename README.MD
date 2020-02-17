Wolfenstein 3D For the Sony PSP by Zack (me) and Chilly Willy. Special thanks to Ben McLean for reviving my interest in the project and such.

# Where are the binaries/releases?

You can find those in the release tab.

# How do I build this myself?

Building this game requires you to have the PSP Toolchain installed. Google is your friend.

As for building the game itself, you have two options:

1) Run the makerelease.sh shell script. 
2) Manually build.

For option 1, it will build each version of Wolf3D and package them in tar.gz files (in the root directory), ready to extract and run on your PSP.
For option 2, you need to specify which version of Wolf3D you intend to build:

```
WOLF3D Shareware = 0
WOLF3D Full retail = 1
WOLF3D Spear of Destiny Shareware = 2
WOLF3D Spear of Destiny Full = 3
```

For instance to build the shareware version of Spear of Destiny run:

```
make VERSION=2
```

# I built the full version of the game and it doesn't run?

You need the data files from the full Wolfenstein 3D game (either Wolf3D or Spear of Destiny) in order to run the game. 
You place these files in the same directory as the EBOOT.PBP.

The repository only includes the shareware versions of Wolf3D and Wolf3D Spear of Destiny.

# Ok, so where can I find the files?

Google is your friend.

# What are your plans for the future?

I might make some improvements to the code, port to more systems (Desktop/Mobile are possibilities, maybe Nintendo DS too).
