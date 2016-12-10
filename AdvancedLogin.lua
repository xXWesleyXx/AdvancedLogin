--[[ AdvancedLogin ]]--

os.loadAPI('AL/ALAPI')

--[[ Settings ]]--

cfgPath = 'AL/Config'
cfgHandle = fs.open(cfgPath, 'r')
cfg = textutils.unserialise()

--[[ Functions ]]--

function lock()
  uiPath = 'AL/UI'
  uiHandle = fs.open(uiPath, 'r')
  print(uiHandle.readAll())
end
