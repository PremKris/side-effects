using odataservice as service from '../../srv/service';

annotate service.patient_det2 with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'p_id',
            Value : p_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'firstnum',
            Value : firstnum,
        },
        {
            $Type : 'UI.DataField',
            Label : 'secondnum',
            Value : secondnum,
        },
        {
            $Type : 'UI.DataField',
            Label : 'result',
            Value : result,
        },
    ]
);
annotate service.patient_det2 with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'p_id',
                Value : p_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'firstnum',
                Value : firstnum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'secondnum',
                Value : secondnum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'result',
                Value : result,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
