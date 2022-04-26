=================
Half-Life SDK 2.3
=================

Questions about the SDK should be sent to: sdk@valvesoftware.com

Documentation:
==============

"Events.doc" contains documentation on the event system.

"HLTV.doc" contains documentation on how to implement HLTV in a mod.

"HLVoice.doc" contains documentation on how to implement voice in a mod.

"How to make a mod.doc" contains documentation on how to set up the liblist.gam file and how to change the launcher UI for your mod.

"Input.doc" contains documentation on the mouse, keyboard and joystick handling system of the client.dll

"Modeling for Half-Life.doc" is an introduction to modeling and animating characters for the Half-Life engine.

"Netgraph.doc" explains how to read the new netgraph.

"NetworkEntity.doc" explains how to use the new entity filtering/handling functions of the game and client dlls.

"PlayerPhysics.doc" explains how to manipulate shared player physics code so your MOD can have modified physics and still predict correctly.

"Triangle.doc" explains how to use the triangle API from the client.dll

"View.doc" explains how to set up the render origin, etc. from the client .dll


Hammer Editor:
==============

This folder contains the latest version of Valve's Hammer Editor.


Launcher Strings:
=================

This folder contains the resources to allow you to alter launcher text strings by overriding the values in the default string .dll ( hl_res.dll ).


Map Files:
==========

Two of the opening maps from Half-Life, with their lighting radiosity files, are provided as they contain good examples of some of the most complicated entity scripting to be found within the game. They should serve as a good source for learning how to use the more powerful HL entities like multisource, multimanager, scripted_sequence, AIscripted_sequence, and scripted_sentence.  A third map, env_beam, is a demo map of various beam effects that can be achieved with the env_beam entity.

C1a0.rmf and C1a0.rad
C1a0d.rmf and C1a0d.rad
Env_beam.rmf


Models:
=======

The models provided should give a good example of the possibilities for building characters for use with Half-Life.  Examples are provided of characters and weapons that appear in the game, to allow modelers to familiarize themselves with the character building process.

Monster Models: all available resources for all monsters partially or fully developed for Half-Life that were not included in the final game, plus source files for Barney, Human Grunt, and the Tentacle monster that did make it into the game (these were chosen as they best represent the various facets of monster development for Half-Life).

Player Models: animations, textures, and .qc scripts for the Player Models (all shipped versions).

Weapon Models: world model and view model with animations of the Assault Rifle and Gluon Gun.


Multiplayer Source:
===================

The directory containing all the code required to create multiplayer add-ons for Half-Life, or bots.  Also included is the source code to all the compiling utilities for the various elements of Half-Life.


Server Info:
============

"Server protocol.txt" contains all the information folks should need if they wish to write a separate net game launcher.


Single-Player Source:
=====================

The directory containing all the code required to rebuild hl.dll.  Also included is the source code to all the compiling utilities for the various elements of Half-Life.


Sprite Tools:
=============

Tutorial, samples, and support files for creating sprites for Half-Life.


Texture Wad Tools:
==================

Tutorial, samples, and support files for creating texture WADs for Half-Life.
