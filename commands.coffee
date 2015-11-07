# add any custom commands here
Commands.create
  "jab":
    description: "insert a space"
    findable: " "
    repeatable: true
    misspellings: ["jeff"]
    aliases: ["jabby"]
    tags: ["cursor", "user"]
    continuous: false
    action: ->
      @do "skoosh"
  "dandy":
    tags: ["symbols", "user"]
    continuous: false
    action: ->
      @string " && "
  "sky return":
    description: "press shift + return"
    repeatable: true
    tags: ["combo", "return"]
    action: ->
      @key 'return', 'shift'
  "peg":
    description: "go back 1 word"
    repeatable: true
    tags: ["cursor", "user"]
    action: ->
      @do "shunkrim"
  "fran":
    description: "go forward 1 word"
    repeatable: true
    tags: ["cursor", "user"]
    action: ->
      @do "shunkrish"
  "limp":
    description: "go left 1 character"
    repeatable: true
    tags: ["cursor", "user"]
    action: ->
      @key "left"
  "rimp":
    description: "go right 1 character"
    repeatable: true
    tags: ["cursor", "user"]
    action: ->
      @key "right"
  'nudgle it':
    description: 'remove a space before the adjacent word on the left. and go to next word'
    tags: ['cursor', 'space', 'deleting', 'left', 'combo', 'user']
    repeatable: true
    action: ->
      @key 'left', 'option'
      @key 'delete'
      @do 'shunkrish'
  # helpful commands for the shell
  "find here":
    description: "insert a shell command for finding files from this directory"
    tags: ["shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "find . -name ''"
      @key "Left"
  "trexargs":
    description: "insert 'xargs'"
    repeatable: false
    tags: ["shell", "user"]
    action: ->
      @string "xargs "
  "vert pie three":
  # "virtual python three":
    description: "enable a python 3 virtual environment"
    tags: ["virtualenv", "shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    repeatable: false
    action: ->
      @string "workon py3"
      @key "return"
  # "virtual python two":
  "vert pie two":
    description: "enable a python 2 virtual environment"
    tags: ["virtualenv", "shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    misspellings: ["virtual python to"]
    repeatable: false
    action: ->
      @string "workon py2"
      @key "return"
  # mostly symbols to help with different types of input
  'totchy':
    grammarType: 'individual'
    description: 'close all windows in application'
    tags: ['window', 'navigation', "user"]
    action: ->
      @key 'W', 'command shift'
  'despike':
    description: "inserts a pipe with a space in front of it"
    tags: ['symbol', "user"]
    action: ->
      @string " | "
  'demin':
    description: "inserts a space then a ' -'. useful for arguments at the command line"
    tags: ['symbol', "user"]
    action: ->
      @string " -"
  "mindy":
    tags: ["symbol", "user"]
    continuous: false
    action: ->
      @string "- "
  'longdemin':
    description: "inserts a space then a ' --'. useful for arguments at the command line"
    tags: ['symbol', "user"]
    action: ->
      @string " --"
  # R specific
  "rambo":
    description: "assign operator in R"
    tags: ["symbol", "user"]
    action: ->
      @string " <- "
  'our pipe':
    grammarType: 'individual'
    description: 'pipe operator in R (with new line)'
    tags: ['symbol', "user"]
    action: ->
      @string ' %>%'
      @key 'return'
  'our pipes':
    grammarType: 'individual'
    description: 'pipe operator in R (with spaces)'
    tags: ['symbol', "user"]
    action: ->
      @string ' %>% '
  'our script':
    tags: ["user"]
    action: ->
      @string 'Rscript '
  'deep liar':
    grammarType: 'individual'
    description: 'insert "dplyr"'
    tags: ['symbol', "user"]
    action: ->
      @string 'dplyr'
  'roxie':
    grammarType: 'individual'
    description: 'insert roxygen comment in R'
    tags: ['symbol', "user"]
    action: ->
      @string "#' "
  "shakemake":
    description: "insert 'snakemake'"
    tags: ["words", "user"]
    action: ->
      @string "snakemake "
  "shakefile":
    description: "insert 'Snakefile'"
    tags: ["words", "user"]
    action: ->
      @string "Snakefile"
  # Atom specific
  'pain left':
    description: 'go to the left pane'
    tags: ['atom', 'user']
    triggerScopes: ['Atom']
    action: ->
      @key 'k', 'command'
      @key 'left', 'command'
  'pain right':
      description: 'go to the right pane'
      tags: ['atom', 'user']
      triggerScopes: ['Atom']
      action: ->
        @key 'k', 'command'
        @key 'right', 'command'
# sublime specific
  "callup":
    description: "column selection up in sublime (pronounced 'cal-up')"
    repeatable: true
    tags: ["sublime", "user"]
    triggerScopes: ["Sublime Text"]
    action: ->
      @key "up", "control shift"
  "calldown":
    description: "column selection down in sublime (pronounced 'cal-down')"
    repeatable: true
    tags: ["sublime", "user"]
    triggerScopes: ["Sublime Text"]
    action: ->
      @key "down", "control shift"
  # snippets
  ## markdown blocks
  "teesh":
    tags: ["symbols", "user"]
    action: ->
      @string "``"
      @key "left"
  "mark block":
    description: "insert a markdown block with language decorator"
    tags: ["snippets", "user"]
    action: ->
      @string """```{}

      ```"""
      @key "Up"
      @key "Up"
      @key "Right"
  "mark plane":
    kind: "action"
    description: "insert a plain markdown block"
    tags: ["snippets", "user"]
    action: ->
      @string """```

      ```"""
      @key "Up"
  "jet voice":
    description: "insert a git commit message with a voice code tag"
    tags: ["git", "user", "domain-specific"]
    action: ->
      @do "jet commit"
      @string " #vc"
      @key "left"
      @key "left"
      @key "left"
      @key "left"
  "jet log":
    description: "insert git lg"
    tags: ["git", "user", "domain-specific"]
    action: ->
      @string "git lg"
      @key "return"
  # tmux
  "mux list":
    description: "tmux list"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "tmux ls"
      @key "return"
  "mux new":
    description: "create a new named tmux session"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "tmux new -s "
  "mux attach":
    description: "attach an existing tmux session"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "tmux attach -t "
  "mux kill":
    description: "kill an existing tmux session"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "tmux kill-session -t "
  "mux vertical":
    description: "create a vertical split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key "%"
  "mux horizontal":
    description: "create a horizontal split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key '"'
  "mux left":
    description: "go left on a window split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'left'
  "mux right":
    description: "go right on a window split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'right'
  "mux up":
    description: "go up on a window split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'up'
  "mux down":
    description: "go down on a window split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'down'
  "mux leave":
    description: "leave a tmux session (leaving it open)"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'd'
  "shell secure":
    grammarType: 'textCapture'
    description: "either connect to a machine or simply type 'ssh '"
    tags: ["ssh", "terminal", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: (input) ->
      text = ""
      if input?.length
        text = @fuzzyMatch Settings.remoteHosts, input.join(' ')
      @string "ssh " + text
  "perfect score":
    description: "a perfect score on the homework"
    action: ->
      @string "3"
      @key "right"
      @string "3"
      @key "right"
      @string "3"
      @key "right"
  "hyper left":
    description: "move a window to the left using hyperdock"
    tags: ["window", "user"]
    action: ->
      @key 'left', 'control', 'option'

Commands.addMisspellings 'selrang', ['cell rang', 'cellaring']
Commands.addMisspellings "messy", ["messi"]
Commands.addMisspellings "swipe", ["swype"]
Commands.addMisspellings "page down", ["patient"]

# this is for dealing with the insertion of words that voicecode has trouble with
singleWords = [
  "brew"
  'gamma'
  'head'
  "key"
  "meteor"
  "speech ware"
  "speechware"
  "print"
  "quantile"
]
for word in singleWords
  Commands.create word,
    grammarType: "none"
    description: "insert the word '#{word}'"
    tags: ["user", "words"]

myApplications =
  chromie: "Google Chrome"
  subbit: "Sublime Text"
  skippy: "Skype"
  turmit: "iTerm"
  # maylap: "Mail"
  faindor: "Finder"
  # trinket: "Safari"
  slacker: "Slack"
  roman: "R"
  messy: "Messages"
  madame: "Atom"

_.each myApplications, (value, key) ->
  Commands.create key,
    description: "open #{value}"
    tags: ["user"]
    action: ->
      @openApplication value
