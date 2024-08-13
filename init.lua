-- Handle loading message
local function onAddonLoaded(self, event, addonName)
    if addonName == "AlsoPetersCore" then
        --Display a message in chat when addon is loaded
        local version = GetAddOnMetadata(addonName, "Version")
        print("|c007EBFF1<AlsoPeters Core v" .. version .. " loaded>")
    end
end

-- Create a frame to listen for the ADDON_LOADED event
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", onAddonLoaded)
