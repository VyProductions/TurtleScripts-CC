rednet.open('right')

local function execute(msg)
    if msg == 'turn left' then
        turtle.turnLeft()
    elseif msg == 'turn right' then
        turtle.turnRight()
    elseif msg == 'id' then
        print(os.getComputerID())
    end
end

while true do
    local id, msg

    repeat
        print('Waiting for instruction.')
        id, msg = rednet.receive('INSTRUCT')
    until id

    if msg == 'BREAK' then
        break
    else
        print(msg)
        execute(msg)
    end

    sleep()
end

rednet.close('right')
