# Unity ML-Agents-Golf
![Fig3(a)](https://user-images.githubusercontent.com/47571946/58380053-0fc12580-7fe7-11e9-9e0c-5c8f5f868059.jpg)


## Introduction
The goal of this project is to make a golf ball that can control its own trajectory through reinforcement learning
This project was developed as ml-agents v0.3.0 version, and Unity's version was compiled from 2019.1.0f2 version

The continuous space has 12 space size and vector action has 3 continueous space.

### Object explaination
  1. Golf balls fly through virtual space to provide Brain with Observation and define the agent's action
  2. The ring (shaped rectangular box) was placed in a trajectory where the golf ball was intended to be moved to receive proper rewards.
  3. Target is the point for a golf ball to go
  4. The wall is a square ring that surrounds the target.
  5. The obstacle is a square ring wrapped around the ring.

### Reward List
  1. Agent arrives at goal area: +1(and reset)
  2. Agent failed to arrive at goal area and fall: -1(and reset)
  3. Time penalty: -0.05
  4. Agent hit the ring: +0.25
  5. Agent hit the wall: -1(and reset)
  6. Agent hit the obstacle: -0.25

### Actions
- **`w`** - move forward.
- **`s`** - move backward.
- **`a`** - turn left.
- **`d`** - turn right.

## Installation
  1. Create Anaconda Environment
  ```python
  $conda create -n navigation python=3.6 (ml-agents requires only python 3.6)
  ```
  2. Clone this github and follow the  * [Installation & Set-up](Installation.md) guide
  3. Follow the * [TensorFlowSharp in Unity (Experimental)](Using-TensorFlow-Sharp-in-Unity.md) to install tensorflowsharp  
  
## Getting Started
  1. Open Unity project follow: Run Unity -> File -> Open Project... -> Add -> Select '\unity-environment'
  2. Open scene: File -> Open Scene -> \ML-Agents\Examples\Golf -> Select scene
  - locus1: Default scenario consisting of fall ball, rings, target
  - locus2: Windzone(wind direction and intensity varies randomly every second) in default scenario 
  - locus3: In the basic scenario, the middle trajectory was transformed parallel
  - locus4: wall has been added to the basic scenario
  - locus5: ostacles are added to locus3
  
  3.1. To use a trained model: Academy -> Brain -> Brain Type: Internal -> Graph Model: locus1_locus1(numbers are depends on scene  you selected) -> Play
  
  3.2. Train your own model: Academy -> Brain -> Brain Type: External -> File -> Build Settings... -> Scenes In Build: Select your scene -> Platform: select your platform -> Build -> go to your command line, enter the ml-agents-golf directory and type: 
  ```python
python3 python/learn.py <env_file_path> --run-id=<run-identifier> --train 
```
  * See this [Getting Started with the 3D Balance Ball Environment](Getting-Started-with-Balance-Ball.md)
  4. Observing training progress: From the command line run:
  ```python
tensorboard --logdir=summaries
```
  Extra. Windows users can run programs that have finished training in the '\ml-agents-golf\trained'
