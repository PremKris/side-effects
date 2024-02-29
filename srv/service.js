const cds = require('@sap/cds');//The frist 3 lines are compulsory. 
const { select } = require('@sap/cds/libx/_runtime/hana/execute');
const { parseArgs } = require('util');
module.exports = cds.service.impl(async function () {
    let {
        patient_det2
    } = this.entities;
    this.on('READ', patient_det2.drafts, async (req,next) => {
        // debugger
        if(req.data.firstnum){
            
        const sum = req.data.firstnum + req.data.secondnum;
        console.log(req);
        await cds.update(patient_det2.drafts)//updating with the new data
        .set({result:sum }) 
        .where({ p_id : req.data.p_id});
        var data = await SELECT.from(patient_det2.drafts)
    }
        return next();
    });
    });