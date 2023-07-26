rednet.open('right')

while true do
    local id, msg

    repeat
        id, msg = rednet.receive('INSTRUCT')
    until id

    if msg.op == 'BREAK' then
        break
    end

    rednet.send(id, nil, 'INSTRUCT_RESPONSE')
end

rednet.close('right')
