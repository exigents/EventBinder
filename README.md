# EventBinder
A simple, and pretty useless event binder. (I was bored out of my mind and wanted to code something)

# How-To

# Creating Binds:
```lua
local EventBinder = require(game.ReplicatedStorage.EventBinder);

local function playerAdded(player: Player)
  local message = string.format("%s has joined the server!", player.Name);
  print(message);
end;

local Event = EventBinder.new(game.Players.PlayerAdded, playerAdded);
```

Output:
```Player1 has joined the server!```

Creates a bind to a event.

# Unbinding
```lua
Event:Unbind();
```
Unbinds the event, completely removing it from the event binder.
You will not be able to run any other methods after this is called on a bind.

# Change Bind
```lua
local function playerAdded_2(player: Player)
  local message = string.format("%s has just landed!", player.Name);
  print(message);
end;

Event:ChangeBind(playerAdded_2);
```

Output:
```Player1 has just landed!```

Changes the bind to the current event that is binded.

# Change Event
```lua
Event:ChangeEvent(game.Players.PlayerRemoving);
```

Output:
```Player1 has just landed!```

Changes the event that the callback is connected to.
