'use strict';

/**
 *  To vote a candidate
 * @param {test.vote} vote
 * @transaction
 */

 function voting(vote) {

    if(!(vote.Id.candidateId) == 0){
        throw 'Transaction already submitted';
    } else {
        var a = vote.candidateId; 
        vote.Id.candidateId = a;
        var b = vote.iD;
        if(a == 1) {
            (b.A)++;
        } else if(a == 2) {
            (b.B)++;
        } else if(a == 3) {
            (b.C)++;
        } else {
            (b.D)++;
        }
        return getAssetRegistry('test.Account').then(function(assetRegistry) {
            assetRegistry.update(vote.Id);
            return getAssetRegistry('test.candidateList').then(function(asstregistry) {
                asstregistry.update(vote.iD);
            });
        });
    }
 }