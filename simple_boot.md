This is initialized before the system can start counting time:

 SCHED
  - PID hash table
  - RCUs

 MM
  - Normal zone: 243 pages
  - Dentry cache
  - Inode cache

 IO elevator
  - Deadline|snoop|cfq

      gcc 4.9.3
 CPU0    4.17.2

The first messages happens at 0 seconds, that's because only after the
kernel in raspberri pi 3 finds sched_clock resolution, time can be counted:

    [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
    [    0.000000] arch_timer: cp15 timer(s) running at 19.20MHz (phys).
    [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x46d987e47, max_idle_ns: 440795202767 ns
    [    0.000007] sched_clock: 56 bits at 19MHz, resolution 52ns, wraps every 4398046511078ns
    [    0.000023] Switching to timer-based delay loop, resolution 52ns
    [    0.000276] Console: colour dummy device 80x30
    [    0.000819] console [tty1] enabled

Make what is perfect more human

In the beggining of the boot process, many interesting and important stuffs
happen. They execute very quickly, that's why we see quick scrolling at the
beginning of the boot. This information is lost, and what will persist are the
slow deamons which finish up in the end of the init process.

To make this more human and deterministic, every boot will compose a different
sound, and will unfold in a more humane way. By adding a transition time at the
beginning, we emphasize important components

There will be a boot goal time. The raspberry pi can boot in up to 10 seconds.
