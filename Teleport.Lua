--By zamsongod.
--Unlike Clockwork's teleporter, this one teleports ANYTHING not just people!
--Make sure the Part to teleport to is in the same group as this Part.
--Feel FREE to Copy, Abuse and Covet!
local Teleport = "Kekw" --Put the name of the Part between the ""s.
function Touch(hit) --Indicates that the Part has been Touched.
	if script.Parent.Locked == false and script.Parent.Parent:findFirstChild(Teleport).Locked == false then script.Parent.Locked = true script.Parent.Parent:findFirstChild(Teleport).Locked = true --Checks Debounce.
		local Pos = script.Parent.Parent:findFirstChild(Teleport) --Gets the Part to teleport to.
		hit.Parent:moveTo(Pos.Position) wait(1) script.Parent.Locked = false script.Parent.Parent:findFirstChild(Teleport).Locked = false end end --Takes you there and Ends the Function.
script.Parent.Touched:connect(Touch) --Listens out for Touchers.
