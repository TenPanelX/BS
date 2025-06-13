getgenv().Configs = {
    ["Auto ATM"] = true,
    ["Black Screen"] = false,
    ["Rejoin When Bug"] = true,
    ["Fps Cap"] = 15,

    ["Disable Key"] = "G",
    ["Bank Deposit"] = 200,
    ["Max Swiper"] = 5,

    ["Hop when die"] = true,
    ["Hop when die max"] = 2,

    ["Auto Hop"] = {
        ["Enabled"] = false,
        ["Cooldown Check"] =  1, -- Minute
        ["Players Limit"] = 18,
        ["Car Limit"] = 4,
    },

    ["Auto Rejoin"] = false,
    ["Rejoin time [min]"] = 40,
    ["Car Speed"] = 55
}

task.spawn(function()
    succ, err = pcall(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2b69f230c8d1f815559658d461e5a99f.lua"))()
    end)
    if not succ then
        warn("error: {tostring(p)}")
    end
end)
