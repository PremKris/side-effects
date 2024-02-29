using {pk} from '../db/schema';


service odataservice {
    
         @Common.SideEffects : 
            {
                SourceProperties :
                [
                    'firstnum' , 'secondnum'
                ],
                TargetProperties : [
                     'result'
                ],
            }
            @odata.draft.enabled
    entity patient_det2 as projection on pk.patient_det2;    
}
