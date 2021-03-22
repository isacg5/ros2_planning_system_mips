# ROS2 Planning System Mips XXL

![PlanSys2 Logo](/plansys2_docs/plansys2_logo.png)

## How to use it?

1º Download the planner by clicking on [mips_xxl](https://github.com/isacg5/ros2_planning_system_mips/raw/main/mips_xxl).

2º Move the planner to your home.

```
mv Downloads/mips_xxl ~/mips_xxl
```

3º Grant execution permissions.

```
chmod +x ~/mips_xxl
```

4º Move the domain to your /tmp/. Try this [example](https://github.com/isacg5/ros2_planning_system_mips/raw/main/viajes_domain_durative_actions.pddl).

```
mv Downloads/viajes_domain_durative_actions.pddl /tmp/viajes_domain_durative_actions.pddl
```

5º Open terminal and execute.

```
ros2 launch plansys2_bringup plansys2_bringup_launch_distributed.py model_file:=/tmp/viajes_domain_durative_actions.pddl

ros2 run plansys2_terminal plansys2_terminal 
```

You can test the above example by running these [commands](https://github.com/isacg5/ros2_planning_system_mips/raw/main/commands).


**Visit the [Web Page](http://intelligentroboticslab.gsyc.urjc.es/ros2_planning_system.github.io/) for tutorials, videos and more!!**


<img src="plansys2_docs/plansys2_logo.png" alt="drawing" width="200"/>

