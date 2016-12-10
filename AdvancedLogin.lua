--[[ AdvancedLogin ]]--

os.loadAPI('AL/ALAPI')

--[[ Settings ]]--

cfgPath = 'AL/Config'
cfgHandle = fs.open(cfgPath, 'r')
cfg = textutils.unserialise()
success = false
--[[ Functions ]]--

function lock()
  uiPath = 'AL/UI'
  uiHandle = fs.open(uiPath, 'r')
  print(uiHandle.readAll())
  term.setCursorPos(13, 6)
  UN = read()
  if UN ~= cfg.UN then
    term.setCursorPos(7, 14)
    print(cfg.Log.error.UN.invalid)
    sleep(3)
    os.reboot()
  else
    term.setCursorPos(13, 10)
    PW = read()
    if PW ~= cfg.PW then
      term.setCursorPos(7, 14)
      print(cfg.Log.error.PW.invalid)
      sleep(3)
      os.reboot()
    else
      success = true
end

while success do 
      success = false
      term.clear()
end      
