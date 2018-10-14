-- vim = hs.loadSpoon('VimMode')

-- vim:enableKeySequence('j', 'k')

-- vim:disableForApp('iTerm2')
-- vim:disableForApp('MacVim')
-- vim:disableForApp('Terminal')
-- vim:disableForApp('Oni')
-- -- Basic key binding to ctrl+;
-- -- You can choose any key binding you want here, see:
-- --   https://www.hammerspoon.org/docs/hs.hotkey.html#bind

-- hs.hotkey.bind({'ctrl'}, ';', function()
--   vim:enter()
-- end)
--
--
hs.application.enableSpotlightForNameSearches(true)

hs.hotkey.bind({"shift", "ctrl"}, "F", function()
  hs.application.open("terminal")
end)
hs.hotkey.bind({"shift", "ctrl"}, "J", function()
  hs.application.open("Oni")
end)
hs.hotkey.bind({"shift", "ctrl"}, "C", function()
  hs.application.open("google chrome")
end)
hs.hotkey.bind({"shift", "ctrl"}, "Q", function()
    hs.application.kill()
end)
