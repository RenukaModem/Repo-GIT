<?xml version="1.0" encoding="UTF-8"?>
<CustomObject xmlns="http://soap.sforce.com/2006/04/metadata">
    <fields>
        <fullName>Track_Formula__c</fullName>
        <externalId>false</externalId>
        <formula>IF (CONTAINS( AdditionalInformation , &quot;Business Financial Review&quot;), IF(ISPICKVAL( Language_Preference__c ,&apos;Spanish&apos;),&quot;evaluación financiera comercial&quot;,&quot;Business Financial Review&quot;),&quot;&quot;)</formula>
        <formulaTreatBlanksAs>BlankAsZero</formulaTreatBlanksAs>
        <label>Track Formula</label>
        <required>false</required>
        <trackHistory>false</trackHistory>
        <trackTrending>false</trackTrending>
        <type>Text</type>
        <unique>false</unique>
    </fields>
</CustomObject>
