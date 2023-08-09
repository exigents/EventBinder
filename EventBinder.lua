--> Packages
local Packages = script:WaitForChild('Packages');
local Class = require(Packages:WaitForChild('Class'));
local Signal = require(Packages:WaitForChild('signal'));

--> Define Class
local Binds = Class('Binds');

--> Class Methods
function Binds:__init(event, callBack)
	self.event = event;
	self.callBack = callBack;
	self.Bind = event:Connect(callBack);
end;

function Binds:ChangeBind(callBack)
	self.Bind:Disconnect();
	
	self.Bind = self.event:Connect(callBack);
end;

function Binds:Unbind()
	self.Bind:Disconnect();
	self.Bind = nil;
	self.event = nil;
	self.callBack = nil;
	self = nil;
end;

function Binds:ChangeEvent(event)
	self.Bind:Disconnect();
	self.Bind = nil;
	
	self.event = event;
	self.Bind = self.event:Connect(self.callBack);
end;

--> Return Class
return Binds;
