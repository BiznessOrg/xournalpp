-- Register all Toolbar actions and initialize all UI stuff
function initUi()
    -- Register the quit menu item with Ctrl+Alt+Q accelerator
    app.registerUi({
        ["menu"] = "Quit",
        ["callback"] = "quitApplication",
        ["accelerator"] = "<Control><Alt>q",
        ["toolbarId"] = "QUIT_BUTTON",
        ["iconName"] = "window-close"
    });
end

-- Callback function when the quit menu item is executed
function quitApplication()
    app.saveAndQuit()
end
