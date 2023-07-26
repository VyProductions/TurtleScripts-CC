rednet.open('right')

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
        shell.run(msg)
    end
end

rednet.close('right')
