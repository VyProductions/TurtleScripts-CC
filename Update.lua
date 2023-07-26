rednet.open('right')

while true do
    local id, msg

    repeat
        id, msg = rednet.receive('INSTRUCT')
    until id

    if msg.op == 'BREAK' then
        break
    else
        shell.run(msg.data)
    end
end

rednet.close('right')
