# Mips XXL Plugin for ROS2 Planning System

## Prerequisites

1º For using the mips plan solver, you need to have the following repository functional in your workspace:

<https://github.com/IntelligentRoboticsLabs/ros2_planning_system>

follow the instructions given in that repository for the instalation.

## Installation

1º Clone this repository into your src workspace directory:

```
git clone https://github.com/isacg5/ros2_planning_system_mips.git
```

2º Move the plansys2_mips_plan_solver directory into the ros2_planning_system one:

```
mv ~/myworkspace/src/ros2_planning_system_mips/plansys2_mips_plan_solver ~/myworkspace/src/ros2_planning_system
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

5º Download the planner by clicking on [mips_xxl](https://github.com/isacg5/ros2_planning_system_mips/raw/main/mips_xxl).

6º Add to ~/.bashrc the location of the planner executable in MIPS_XXL variable. For example:

```
echo 'export MIPS_XXL=/home/myuser/bin/mips_xxl' >> ~/.bashrc 
```

and open a new terminal.

7º Grant execution permissions.

```
chmod +x $MIPS_XXL
```

## Execution example


1º Download this domain: [example](https://github.com/isacg5/ros2_planning_system_mips/raw/main/viajes_domain_durative_actions.pddl).

2º Open terminal and execute:

```
ros2 launch plansys2_bringup plansys2_bringup_launch_distributed.py model_file:=/home/myuser/bin/viajes_domain_durative_actions.pddl
```

Remember to change the model_file path to the location where the domain is.

3º Open a new terminal and execute:

```
ros2 run plansys2_terminal plansys2_terminal 
```

4º You can test the above example by running these [commands](https://github.com/isacg5/ros2_planning_system_mips/raw/main/commands). 

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

**Visit the [Web Page](http://intelligentroboticslab.gsyc.urjc.es/ros2_planning_system.github.io/) for tutorials, videos and more!!**
