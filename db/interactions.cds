namespace app.interactions;

using {Country} from '@sap/cds/common';

type BusinessKey : String(10);
type SDate       : DateTime;
type LText       : String(1024);


entity InteractionsHeader {
    key ID        : Integer;
        ITEMS     : Composition of many InteractionsItems
                        on ITEMS.INTHeader = $self;
        PARTNER   : BusinessKey;
        LOG_DATE  : SDate;
        BPCOUNTRY : Country;

};

entity InteractionsItems {

    key INTHeader : Association to InteractionsHeader;
    key TEXT_ID   : BusinessKey;
        LANGU     : String(2);
        LOGTEXT   : LText;
};
