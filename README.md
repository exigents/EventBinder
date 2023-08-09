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

# Unbinding
```lua
Event:Unbind();
```

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

# Change Event
```lua
Event:ChangeEvent(game.Players.PlayerRemoving);
```

Output:
```Player1 has just landed!```
