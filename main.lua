local playerPed = PlayerPedId()
local weapHash = GetHashKey('WEAPON_FIREEXTINGUISHER')

Citizen.CreateThread(function()
      while true do
            Citizen.Wait(0)
            
            if HasPedGotWeapon(playerPed, weapHash, false) then
                  SetPedInfiniteAmmoClip(playerPed, true)
            end
            
      end

end)