public class OrgLimitsData {
    
    public OrgLimitsData(String limitName, Integer limitUsage, Integer maxLimit) {
        this.limitName = limitName;
        this.limitUsage = limitUsage;
        this.maxLimit = maxLimit;
        if (maxLimit > 0) {
            this.usagePercentage = ((this.limitUsage / maxLimit) * 100);
        } else {
            this.usagePercentage = 0;
        }

        this.usageMetric = usagePercentage.intValue();
        
    }

    @AuraEnabled
    public String limitName;

    @AuraEnabled
    public double limitUsage;

    @AuraEnabled
    public double maxLimit;

    @AuraEnabled
    public double usagePercentage;

    @AuraEnabled
    public Integer usageMetric;
}