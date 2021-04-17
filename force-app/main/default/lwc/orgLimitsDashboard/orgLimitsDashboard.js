import { LightningElement, wire } from 'lwc';
import listOfOrgLimits from '@salesforce/apex/OrgLimitsController.getOrgLimits';

const COLS = [
    { label: 'Limit Name', fieldName: 'limitName' },
    { label: 'Limit Usage', fieldName: 'limitUsage' },
    { label: 'Max Limit', fieldName: 'maxLimit' },
    { label: 'Usage Percentage', fieldName: 'usagePercentage' },
    { label: 'Usage Metric', fieldName: 'usageMetric', type: 'proRing' },
];

export default class OrgLimitsDashboard extends LightningElement {
    columns = COLS;

    @wire(listOfOrgLimits) orglimits;
    
}