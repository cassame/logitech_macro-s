function OnEvent(event, arg)
    if event == "PROFILE_ACTIVATED" then
        EnablePrimaryMouseButtonEvents(true)
    elseif event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsKeyLockOn("scrolllock") then
        PressKey('lalt')  -- MMB
        Sleep(20)
        ReleaseKey('lalt')  -- MMB
        if IsMouseButtonPressed(3) then  -- RMB
            repeat
                MoveMouseRelative(0,2)
                Sleep(6)
            until not IsMouseButtonPressed(1)  -- LMB
        end
    end
end
