# Unity ML-Agents-Golf

## Introduction

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
