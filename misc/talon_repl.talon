win.title:/repl/
win.title:/Talon - REPL/
-
tag(): user.talon_python

^test last$:
    phrase = user.history_get(1)
    command = "sim('"
    command = command + phrase
    command = command + "')"
    #to do: shouldn't this work?
    #user.paste("sim({phrase})")
    insert(command)
    key(enter)
^test <phrase>$:
    insert("sim('{phrase}')")
    key(enter)
^test numb <number_small>$:
    phrase = user.history_get(number_small)
    phrase = user.history_get(1)
    command = "sim('"
    command = command + phrase
    command = command + "')"
    #to do: shouldn't this work?
    #user.paste("sim({phrase})")
    insert(command)
    key(enter)
^debug action {user.talon_actions}$: 
    insert("actions.find('{user.talon_actions}')")
    key(enter)
^debug list {user.talon_lists}$:
    insert("registry.lists['{talon_lists}']")
    key(enter)


    

