using app.interactions from '../db/interactions';
using V_INTERACTION from '../db/interactions';

service InteractionsService {
    @requires : 'authenticated-user'
    entity InteractionsHeader as projection on interactions.InteractionsHeader;

    @requires : 'InteractionsAdmin'
    @restrict : [{
        grant : 'READ',
        where : 'LANGU = ''DE'''
    }]
    entity InteractionsItems  as projection on interactions.InteractionsItems;

    function sleep() RETURNS Boolean;
    
    @readonly
    entity V_Interaction as projection on V_INTERACTION;
}
