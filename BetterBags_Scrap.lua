-- BetterBagsScrapOverlay.lua
-- Externes Addon: Münz-Icon für Scrap-Items in BetterBags
-- Dependencies: BetterBags, Scrap

local addonName = ...
local C_Timer = _G.C_Timer
local frame = CreateFrame("Frame")

-- Debug-Helper
local function debugPrint(...)
  if DEFAULT_CHAT_FRAME then
    DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00[BBScrapOverlay]|r " .. strjoin(" ", tostringall(...)))
  end
end

-- Aktualisiert das Icon eines Einzel-Items
local function updateItem(item)
  local btn = item.button
  if not btn then return end
  local data = item:GetItemData()
  if not data or not data.itemInfo or not data.itemInfo.itemLink then
    if btn.ScrapIcon then btn.ScrapIcon:Hide() end
    return
  end
  local link = data.itemInfo.itemLink
  local id = tonumber(link:match("item:(%d+):"))
  if not id then return end
  if not btn.ScrapIcon then
    local tex = btn:CreateTexture(nil, "OVERLAY")
    tex:SetTexture("Interface\\MoneyFrame\\UI-GoldIcon")
    tex:SetSize(16, 16)
    tex:SetDrawLayer("OVERLAY", 7)
    tex:SetPoint("TOPRIGHT", -2, -2)
    tex:Hide()
    btn.ScrapIcon = tex
  end
  local isJunk = Scrap and type(Scrap.IsJunk) == "function" and Scrap:IsJunk(id)
  btn.ScrapIcon:SetShown(isJunk)
end

-- Aktualisiert alle Items eines BetterBags Bag-Objekts
local function updateBag(bag)
  if not bag or not bag.currentView then return end
  for _, item in pairs(bag.currentView:GetItemsByBagAndSlot()) do
    updateItem(item)
  end
end

-- Aktualisiert Backpack und Bank
local function updateAllBags()
  local BB = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
  if not BB or not BB.Bags then return end
  updateBag(BB.Bags.Backpack)
  updateBag(BB.Bags.Bank)
end

-- Einrichtung: Hook-Verknüpfungen
local function setupIntegration()
  local BB = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
  if not BB or not Scrap or type(Scrap.IsJunk) ~= "function" then return end
  debugPrint("Integration eingerichtet")
  local events = BB:GetModule("Events")
  events:RegisterMessage("bags/Draw/Backpack/Done", updateAllBags)
  events:RegisterMessage("bags/Draw/Bank/Done",    updateAllBags)
  hooksecurefunc(Scrap, "ToggleJunk", function()
    C_Timer.After(0, updateAllBags)
  end)
  -- Initiales Update kurz verzögert
  C_Timer.After(1, updateAllBags)
end

-- Bei Login Setup nach kurzer Verzögerung aufrufen
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
  if event == "PLAYER_LOGIN" then
    debugPrint("PLAYER_LOGIN: Setup Integration nach 2s")
    C_Timer.After(2, setupIntegration)
    frame:UnregisterEvent("PLAYER_LOGIN")
  end
end)
