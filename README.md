# MATLAB Fall 2014 – Research Plan (Template)

> * Group Name: Be creative!
> * Group participants names: Mattmann Michael, Schira Riccardo
> * Project Title: Trail formation

## General Introduction

We want to simulate the trajectories chosen from the peoples while walking on a grass meadow. 
it's quite an important topic, because it helps planning streets, so that the road network is more efficient. We think it's very interesting because it has a lot in common whit all day life since we can find this trails on every park of a city.
it's interesting also because it's not evident to solve since it depends on many factors that can not be controlled. 


## The Model

The most important variable it the ground structure, which includes the topology depending on the position and the presence of tracks depending on time and position. 
In addition there is the durability of tracks (regeneration ratio of nature), attractiveness and visibility of a determined place. 
We plan to measure the presence of tracks by adding all contributions of the people walking on that specific place and subtracting the regeneration ratio. Attractiveness depends on the presence of tracks, the visibility and the direction of the destination. 
This model won't consider the social influence and the "force" acting between two peoples walking at the same time, but we think it's a good model because it involves most of the criteria needed to decide the trajectory.


## Fundamental Questions

How trajectories form?
What is the final network of the most common sets of entrance / exit ?
How does topology influence the final network?
How would change over time the system of trails of a real park if the now existing "trails" will be no longer asphalted?


## Expected Results

We expect that at the beginning the direct trajectories are chosen, but as time passes this will change. At the moment we don't know how. 


## References 

Modelling Evolution of Human Trail Systems      Dirk Helbing 1997
We plan to use the model proposed in this reference, but adding the ground topology. It's also possible to add social behaviour and "forces" between peoples, but we are not going to do this.


## Research Methods

This model is based on two dynamic differential equations. 


