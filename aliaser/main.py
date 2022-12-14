import readline

commands = ["test"]


def completer(text, state):
    options = [i for i in commands if i.startswith(text)]
    if state < len(options):
        return options[state]
    else:
        return None


def aliaser():
    print("aliaser")
    readline.parse_and_bind("tab: complete")
    readline.set_completer(completer)
