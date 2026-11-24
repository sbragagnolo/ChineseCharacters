documentation
tasks

	^ 'Delayed/periodic work: schedule with anElement enqueueTask: or space enqueueTask: (BlTask subclasses in the space taskQueue, executed on each pulse). Useful classes: BlTaskAction (action: aBlock), BlDelayedTaskAction and BlRepeatedTaskAction for periodic game loops, BlDelayedTask. Tasks and animations are one-shot: create new instances for each scheduling. Avoid long-running loops inside a task action: use BlRepeatedTaskAction or short actions so the pulse is not blocked.'