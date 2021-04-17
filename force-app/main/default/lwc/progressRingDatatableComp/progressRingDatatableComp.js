import { LightningElement } from 'lwc';
import LightningDataTable from 'lightning/datatable';
import progressRing from './progressRing.html';

export default class ProgressRingDatatableComp extends LightningDataTable {
    static customTypes = {
        proRing : {
            template: progressRing
        }
    };
}