local  c = {"ctrl"}
hs.window.animationDuration = 0
hs.application.enableSpotlightForNameSearches(true)

hs.hotkey.bind(c, "F", function()
  hs.application.open("terminal")
end)
hs.hotkey.bind(c, "G", function()
  hs.application.open("Oni")
end)
hs.hotkey.bind(c, "C", function()
  hs.application.open("google chrome")
end)
hs.hotkey.bind(c, "S", function()
  hs.application.open("spotify")
end)
hs.hotkey.bind(c, "Q", function()
    hs.window.focusedWindow():close()
end)
hs.hotkey.bind(c, 'M', function() 
    hs.window.focusedWindow():toggleFullScreen()
end)
hs.hotkey.bind(c, 'N', function() 
    hs.window.focusedWindow():minimize()
end)

hs.hotkey.bind(c, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local max = win:screen():frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(c, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local max = win:screen():frame()

  f.x = max.w / 2
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(c, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local max = win:screen():frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

hs.hotkey.bind(c, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local max = win:screen():frame()

  f.x = max.x
  f.y = max.h / 2
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

hs.hotkey.bind(c, ';', function() 
    hs.fnutils.map(hs.window.visibleWindows(), hs.grid.snap) 
end)
