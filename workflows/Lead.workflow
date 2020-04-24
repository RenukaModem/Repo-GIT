<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Sample_Email_Alert</fullName>
        <description>Sample Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>suryakusampudi@self.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Act_On_Lead_Score</template>
    </alerts>
    <fieldUpdates>
        <fullName>Domestic_Ultimate_DunsNumber</fullName>
        <field>Description</field>
        <name>Domestic_Ultimate_DunsNumber</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Test_Update_1</fullName>
        <field>Email</field>
        <name>Test Update 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Test_Update_2</fullName>
        <field>Fax</field>
        <name>Test Update 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Test_Update_3</fullName>
        <field>Street</field>
        <name>Test Update 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Standard_No_of_employees</fullName>
        <field>CompanyDunsNumber</field>
        <name>Update_Standard_No_of_employees</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>true</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_company_duns</fullName>
        <field>FirstName</field>
        <name>Update_company_duns</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Act-On Lead Score Email Alert</fullName>
        <actions>
            <name>Sample_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send an email alert when a lead’s Act-On score exceeds 50.</description>
        <formula>NumberOfEmployees &gt; 50</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update_Standard_No_of_employees</fullName>
        <actions>
            <name>Domestic_Ultimate_DunsNumber</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Test_Update_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Test_Update_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Test_Update_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Standard_No_of_employees</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_company_duns</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.CompanyDunsNumber</field>
            <operation>startsWith</operation>
            <value>500</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
