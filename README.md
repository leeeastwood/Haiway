# Welcome to the Haiway wiki!
Haiway：an RTOS for Edge Computing

Microkernel RTOS with Virtualization and SMP support for ARMv8-A, ARMv7, RISC-V

## What is Haiway 
Haiway is a real-time priority-based microkernel RTOS with virtualization support for ARMv8-A that provides the trusted reliability and performance for edge computing while also allowing multiple operating systems to safely co-exist on the same System on Chip (SoC).

Haiway defines a hypervisor reference stack and an architecture for running multiple software subsystems, managed securely, on a consolidated system by means of a virtual machine manager. Haiway can be used as a Type 1 reference hypervisor stack, running directly on the bare-metal hardware, and is suitable for a variety of AIoT and edge device solutions. Haiway addresses the gap that currently exists between embedded operating system and heterogeneous hardware devices. The hypervisor architecture partitions the system into different functional domains, with carefully selected guest OS sharing optimizations for AIoT and embedded devices.

Haiway is also designed as a real-time priority-based microkernel RTOS that support SMP, currently support ARMv8-A, But can be easily ported to other platforms and architectures like Cortex-M MCU.

## Supported hardware：
- [x] ESP32
- [x] STM32
- [x] Raspberry 3B/4 
- [x] Huawei Hi 3516/3519/3559
- [x] Intel NUC

Haiway can be easily ported to other arm and risc-v based platform.

## Documentation 

We will have various README files in the Documents subdirectory. Please refer Documents for a list of what is contained in each file or sub-directory.

### MicroServices Documents: 

1.1 [Basic services](http://39.105.15.119:8072/dist/microservice.html)

1.2 [Alogrithms services](http://39.105.15.119:8072/dist/alogrithms.html) 

1.3 [Industry services](http://39.105.15.119:8072/dist/industry.html)

Blockly Components Documents:

2. [Low-Code Development Platform Fucnction List](http://39.105.15.119:8072/dist/block.html)
