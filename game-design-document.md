# Game Design Document (Credits: [gamedevpl/game-design-document](https://github.com/gamedevpl/game-design-document))

## Title Page

Currently, the game will be called _MacCliché_.
Sub-title and/or catchy quote might be following.

## Overview of the Game

### a) Game Concept

The game will be a single player experience where you have to control the main character called "MacCliché" on his new mission. He must enter the secret hideout of bad guy named Dr. Raine C. Adamson, secure a stolen virus and arrest the boss and his accomplices.

During that mission, the player will encounter a lot of old hollywood movie/game clichés. They might want to count them and compare them to a list of the clichés I put in the game. Are they able to find all of them?

### b) Genre

The genre is going to be a 2d pixel-art side-scroller.

### c) Target Audience

MacGyver fans, pixel-art fans, other participants of the game jam.

### d) Game Experiencing

The game is going to be a linear one. You have to knock out the guards by solving small puzzles (-> for example cutting a rope so a heavy object will fall on the guard's head.)

## Gameplay

While the player is proceding, the small puzzles need to get harder and harder. More enemies, more steps to be taken to knock a guard out. Right at the end, where MacCliché should get the bad guy, he'll find out that he already left. But unfortunately he left a small surprise for the player, a ticking time bomb he has to defuse. Luckily, it's always the blue wire!

## Mechanics

### a) Physics and Movement

Simple 2d physics; self written 2d player controller with support for jumping, walking, running and crouching (using the arrow keys and space bar)

### b) Actions, Interaction and Communication

Actions can be run by pressing 'x'. This also involves speaking with someone (like MacCliché's boss Pete).

### c) Combat

The player should really avoid getting into hand-to-hand combat, but rather use other objects to knock the guards out. Maybe I'll add one or two levels where you need to use close combat.

### d) Camera and Screen Flow

I'm currently going for a static camera showing the entire room of the level at once. Between levels, there's a transition.

## Game Options

Volume of music/sound effetcs can be chosen in the main menu.

## Story, Setting and Characters

### a) Story and Narrative

The FBI found out that a bad guy named Dr. Raine C. Adamson stole a test tube of anthrax from a laboratory. As if that wasn't bad enough, a particularly fast-spreading and very deadly variant was being bred in this research facility in order to invent a vaccine against it. It is precisely this variant that has gone missing; according to the FBI, the doctor and his henchmen want to use it to build a dirty bomb. That's why the Phoenix Foundation has been tasked with sending an agent to Mr. Adamson's secret hideout, securing the virus and arresting the boss and his accomplices.

The backstory is to be told as cutscenes. After that, there are more cutscenes as MacCliché jumps into his jeep and drives to the secret hideout. The game itself starts at the point where MacCliché stands in front of the factory that serves as a hideout.

### b) Game World

1. General look and feel of world

   Very dark (it's night, raining and lightning!), almost like a horror movie.

2. Areas

   The mission is splitted into levels, each taking place in one room of the building. Each door functions as a check point.

### c) Characters

- Pete, head of the Phoenix Foundation
- MacCliché, agent
- Dr. Raine C. Adamson, the bad guy
- Some other bad guys, mainly guards securing the secret hideout

### d) Weapons & Items

As the original MacGyver does not use any handguns, MacCliché will only take a swiss army knife, some gaffer tape and some paper clips on his mission. If he needs use close combat (which should be really rare), he will use his hands.

## Levels

The will be no extra tutorial level, if I need to introduce a new mechanic, I'll do it in that level.

### a) Levels

1. Outside of the hideout, night. MacCliché is standing next to his jeep, on the right you can see an entrance being secured by a guard
2. Many inside levels will follow, seperated by a door (functioning as checkpoints), varying in size and difficulty
3. Last level, Mac is finally in Dr. Raine C. Adamson's office. Unfortunately, he is already gone. To make it even worse, he left a ticking bomb behind, which the player must defuse.

## Interface

### a) Help System

To make it clear for the user where they can interact with something, an 'x' will be drawn (to mark the key 'x' which should then be pressed).

### b) GUI (Graphic User Interface)

Menu, but no interaction with the mouse needed (only keyboard)

### c) Audio

Free sound effects and music planned.

## Technicals

### a) Target Hardware

Mostly computers, you should be able to play it in your webbrowser

### b) Development hardware and software

Godot game engine, Affinity Designer for art, PureRef for mood board

## Game Art

Pixel art, dark, (maybe even horror movie inspired) color scheme

### a) Possible color schemes

- [Punolite Palette](https://lospec.com/palette-list/punolite)
- [URBEX 16 Palette](https://lospec.com/palette-list/urbex-16)
- [DarkVania Palette](https://lospec.com/palette-list/darkvania)
