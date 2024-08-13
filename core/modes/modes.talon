not mode: sleep
-
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    user.gdb_disable()
    user.set_talon_mode_color("dictation")
^command mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
    user.set_talon_mode_color("command")
^mixed mode$:
    mode.disable("sleep")
    mode.enable("dictation")
    mode.enable("command")
    user.set_talon_mode_color("mixed")

