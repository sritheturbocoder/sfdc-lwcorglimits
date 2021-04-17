public class OrgLimitsData {
    
    public OrgLimitsData(String limitName, Integer limitUsage, Integer maxLimit) {
        
        this.limitName = limitName;
        this.limitUsage = limitUsage;
        this.maxLimit = maxLimit;
        if (maxLimit > 0) {
            this.usage = ((this.limitUsage / maxLimit) * 100).round().intValue();
        } else {
            this.usage = 0;
        }

        this.usagePercentage = this.usage + ' %';
    }

    @AuraEnabled
    public String limitName;

    @AuraEnabled
    public double limitUsage;

    @AuraEnabled
    public double maxLimit;

    @AuraEnabled
    public Integer usage;

    @AuraEnabled
    public String usagePercentage;
    
}