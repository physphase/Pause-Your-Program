# GreenGaming
Tool to decrease PC power usage when afk by suspending a single program with a keybind.

## Usage
For example, you're playing a game and want to AFK for a while, but do not want to exit the game as this will erase your progress or take a while to restart. Usually, you would leave the game running which uses your PC's resources and a lot of energy.
This tool solves that problem! Simply "pause" your game by using your own set keybind. The game will no longer use any resources and thus save power.
If you want to continue playing the game, use the keybind again to resume the game.

## Install
in the command prompt:
- Clone the git:  
  ````git clone https://github.com/physphase/GreenGaming````
- move inside the directory  
  ````cd GreenGaming````
- Give privileges to the PauseGame.sh file:  
  ````sudo chmod +x PauseGame.sh````
- Add a keybind to this file.  
  In Ubuntu 20.04: Settings > Keyboard shortcuts.  
  Scroll all the way down to click the "+" to add a keybind. 
  Command: enter the location to the PauseGame.sh file: ````./your/location/GreenGaming/PauseGame.sh````

## Uninstall 
- Remove keybind from Settings > Keyboard shortcuts
- Remove privileges (when in correct directory)  
  ````sudo chmod -x PauseGame.sh````
- Simply delete the GreenGaming folder

## Check GPU usage 
for Nvidia: check gpu usage by using the command "nvidia-smi". This shows GPU power usage and the load percentage.
for AMD: Try checking the GPU utilization by using the commands "amdconfig --odgc" and "amdconfig --odgt". I do not have an AMD graphics card, so I could not test these commands.
