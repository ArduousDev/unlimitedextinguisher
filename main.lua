local playerPed = PlayerPedId()
local maxAmmo = 100
local weapHash = GetHashKey('WEAPON_FIREEXTINGUISHER')

Citizen.CreateThread(function()
      while true do
            Citizen.Wait(0)
            
            if HasPedGotWeapon(playerPed, weapHash, false) then
                  maxClipAmmo = GetMaxAmmoInClip(playerPed, weapHash, false)
                  SetAmmoInClip(playerPed, weapHash, maxClipAmmo)
                  SetPedAmmo(playerPed, weapHash, maxAmmo)
            end
            
      end

end)