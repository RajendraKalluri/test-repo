<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Rajendra_High_priority_case_alert</fullName>
        <ccEmails>talk2rajendrakalluri@gmail.com</ccEmails>
        <description>Rajendra High priority case alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>rajendra.kvsr@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/RajendraCaseEmailTemplate</template>
    </alerts>
    <fieldUpdates>
        <fullName>RajendraCaseFieldUpdate</fullName>
        <description>RajendraCaseFieldUpdate</description>
        <field>Subject</field>
        <formula>Subject  &amp;  &apos;   High priority Raj&apos;</formula>
        <name>RajendraCaseFieldUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>RajendraCaseRule</fullName>
        <actions>
            <name>Rajendra_High_priority_case_alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>RajendraCaseFieldUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>High_Priority_Task_Created</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Priority</field>
            <operation>equals</operation>
            <value>High</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>High_Priority_Task_Created</fullName>
        <assignedTo>chintukalluri@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Hi Chintu , High priority task created</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>High Priority Task Created</subject>
    </tasks>
</Workflow>
