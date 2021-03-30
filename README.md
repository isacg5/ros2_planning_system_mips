# Mips XXL Plugin for ROS2 Planning System

## Prerequisites

For using this mips plugin, you need to have installed in your workspace [plansys2](https://github.com/IntelligentRoboticsLabs/ros2_planning_system).

Visit this [Web Page](http://intelligentroboticslab.gsyc.urjc.es/ros2_planning_system.github.io/) for more information about instalation.

## Installation

1º Clone this repository into your src workspace directory:

```
git clone https://github.com/isacg5/ros2_planning_system_mips.git
```

2º Move the plansys2_mips_plan_solver directory into the ros2_planning_system one:

```
mv $HOME/myworkspace/src/ros2_planning_system_mips/plansys2_mips_plan_solver $HOME/myworkspace/src/ros2_planning_system
```

3º Add the following lines at the end of the file plansys2_params.yaml located in ros2_planning_system/plansys2_bringup/params/ directory:

```
MIPS:
  plugin: "plansys2/MIPSPlanSolver"
```

And change the default plugin:

```
plan_solver_plugins: ["MIPS"]
```

4º Compile your workspace:

```
cd ~/myworkspace
colcon build
```

5º Download the planner by clicking on [mips-xxl](https://github.com/tvaquero/itsimple/blob/master/myPlanners/mips-xxl).

6º Add to ~/.bashrc the location of the planner executable in MIPS_XXL variable. For example:

```
echo 'export MIPS_XXL=$HOME/bin/mips-xxl' >> ~/.bashrc 
```

and open a new terminal.

7º Grant execution permissions.

```
chmod +x $MIPS_XXL
``` 

## Support

- [x] :strips
- [x] :typing
- [x] :disjunctive-preconditions
- [x] :equality 
- [x] :existential-preconditions 
- [x] :universal-preconditions 
- [x] :quantified-preconditions 
- [x] :conditional-effects 
- [ ] :action-expansions 
- [ ] :foreach-expansions 
- [ ] :dag-expansions 
- [ ] :domain-axioms 
- [ ] :subgoal-through-axioms 
- [ ] :safety-constraints 
- [ ] :expression-evaluation 
- [x] :fluents 
- [ ] :open-world 
- [ ] :true-negation 
- [x] :adl 
- [ ] :ucpop 
- [ ] :numeric-fluents 
- [x] :durative-actions 
- [ ] :continuous-effects 
- [x] :negative-preconditions
- [ ] :derived-predicates
- [x] :timed-initial-literals
- [ ] :constraints
- [x] :preferences
- [ ] :action-costs
- [ ] :goal-utilities

## Contributors

* Juan Carlos Manzanares Serrano - [@Juancams](https://github.com/Juancams/)
* Marina Gil Pensado - [@marinagilpen](https://github.com/marinagilpen/)
* Isabel Cebollada Gracia - [@isacg5](https://github.com/isacg5/)
* Noel Jimenez Garcia - [@noel215](https://github.com/noel215/)
