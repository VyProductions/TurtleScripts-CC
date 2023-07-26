rednet.open('right')

while true do
    local id, msg

    repeat
        id, msg = rednet.receive('INSTRUCT')
    until id

    rednet.send(id, nil, 'INSTRUCT_RESPONSE')

    if msg.op == 'BREAK' then
        break
    end
end

rednet.close('right')
