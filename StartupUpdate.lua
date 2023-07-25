local periphs = {}
local source = 'drive_129'

for _, v in pairs(peripheral.getNames()) do
    periphs[v] = peripheral.wrap(v)
end

local function pulse_signal(side, value)
    if
        side == 'top' or side == 'bottom' or
        side == 'left' or side == 'right' or
        side == 'front' or side == 'back'
    then
        rs.setAnalogOutput(side, value)
        sleep()
        rs.setAnalogOutput(side, 0)
    else
        error(string.format('Invalid side: \'%s\'', side))
    end
end

if periphs[source] ~= nil then
    print('Success!')
else
    print('Could not find source drive.')
end
