# ROS2 Planning System Mips XXL

![PlanSys2 Logo](/plansys2_docs/plansys2_logo.png)

## How to use it?

1º Download the planner by clicking on [mips_xxl](https://github.com/isacg5/ros2_planning_system_mips/raw/main/mips_xxl).

2º Add to ~/.bashrc the location of the planner executable in MIPS_XXL variable. For example:

```
echo 'export MIPS_XXL=/home/myuser/mips_xxl' >> ~/.bashrc 
```

3º Grant execution permissions.

```
chmod +x /home/myuser/mips_xxl
```

4º Move the domain to your /tmp/. Try this [example](https://github.com/isacg5/ros2_planning_system_mips/raw/main/viajes_domain_durative_actions.pddl).

```
mv ~/Downloads/viajes_domain_durative_actions.pddl /tmp/viajes_domain_durative_actions.pddl
```

5º Open terminal and execute:

```
ros2 launch plansys2_bringup plansys2_bringup_launch_distributed.py model_file:=/tmp/viajes_domain_durative_actions.pddl
```

6º Open a new terminal and execute:

```
ros2 run plansys2_terminal plansys2_terminal 
```

7º You can test the above example by running these [commands](https://github.com/isacg5/ros2_planning_system_mips/raw/main/commands). 

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


<img src="plansys2_docs/plansys2_logo.png" alt="drawing" width="200"/>

