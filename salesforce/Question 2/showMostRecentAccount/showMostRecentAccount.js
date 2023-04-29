import { LightningElement } from 'lwc';
import getAccount from '@salesforce/apex/MostRecentAccount.mostRecentData';

export default class ShowMostRecentAccount extends LightningElement {

   data;

   connectedCallback(){
    this.mostRecentAccount();
   }
    mostRecentAccount(){
        getAccount()
        .then(result => {
            console.log('checkData---->' , result);
            this.data = result;
           
        })
        .catch(error =>{
           this.error = error;
        });
    }
}