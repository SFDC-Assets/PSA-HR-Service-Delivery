![Public Sector Accelerators logo](/docs/Logo_GPSAccelerators_v01.png)

# HR Service Delivery

[TODO. Show overview of the Accelerator. This should match the approved content used on the Accelerator listing.]

Accelerator Listing: [TBD](https://gpsaccelerators.developer.salesforce.com/hr-service-delivery) (tbd once published)


## Description

Salesforce HR Service Delivery Accelerators provide prebuilt samples to streamline complex processes, such as onboarding, offboarding or promotions.  It uses digital guided processes and proactive prompts to provide self service via web and agentic channels.



## Key Assets

This Accelerator includes the following assets:

* **Action Plan Templates** located in the /main/default/actionPlanTemplates/ folder
  * Pre-Onboarding Checklist
  * Onboarding Checklist
  * Off-Boarding Checklist
  * Cross Boarding Checklist
  * Involuntary Termination Checklist
* **Apex Classes**
  * AgentForceOmniscriptHandler
  * AgentForceOmniscriptHandlerTest
  * AgentForceSaveDiscoveryFramework
  * AgentForceSaveDiscoveryFrameworkTest
* **Assessment Questions** located in the /main/default/AssessmentQuestions/ folder
  * Over 400 Assessment Questions used in HR processes
* **OmniScripts** (x2) located in the /main/default/omniscripts/ folder
  * Beneficiary Designation
  * Benefits Payroll Deduction
  * Canada Pension Retirement
  * Confidentiality Agreement
  * Direct Deposit Enrollment
  * Employee Emergency Contact
  * Employee Handbook Receipt
  * Employment Equity Self Identify
  * Extended Health Care Claim
  * Group Benefits Enrollment
  * Group Benefit Beneficiary
  * Performance Appraisal
  * Short Term Disability Claim
  * Solemn Affirmation
* **AgentForce Topics** located in /main/default/genAiPlugins/ folder 
  * Beneficiary Designation
  * Benefits Payroll Deduction
  * Canada Pension Retirement
  * Confidentiality Agreement
  * Direct Deposit Enrollment
  * Employee Emergency Contact
  * Employee Handbook Receipt
  * Employment Equity Self Identify
  * Extended Health Care Claim
  * Group Benefits Enrollment
  * Group Benefit Beneficiary
  * Performance Appraisal
  * Short Term Disability Claim
  * Solemn Affirmation
* **Permission Sets and Permission Set Groups** to assign to users
* **Service Processes** located in /main/default/serviceprocess
  * HRAccelerator_Beneficiary_Designation
  * HRAccelerator_Benefits_Payroll_Deduction
  * HRAccelerator_Canada_Pension_Retirement
  * HRAccelerator_Confidentiality_Agreement
  * HRAccelerator_Direct_Deposit_Enrollment
  * HRAccelerator_Employee_Emergency_Contact
  * HRAccelerator_Employee_Handbook_Receipt
  * HRAccelerator_Employment_Equity_Self_Identify
  * HRAccelerator_Extended_Health_Care_Claim
  * HRAccelerator_Group_Benefits_Enrollment
  * HRAccelerator_Groups_RRSP_Enrollment
  * HRAccelerator_Performance_Appraisal_Self
  * HRAccelerator_Short_Term_Disability_Claim
  * HRAccelerator_Solemn_Affirmation
* **Documentation**, including:
    * This readme file

## Before You Install
In general, users of this solution are recommended to have Public Sector Solution licenses, but technically this package only requires that the users have Permission Set Licenses available for Omnistudio, Product Catalog Management Viewer, Action Plans, Industry Service Excellence, and Document Checklist.  In order to use the included Agents, users will also need Agentforce licenses.

- Ensure Omnistudio Metadata is enabled 
- Ensure Omnistudio Managed Package installed 
- Enable Einstein 
- Enable Agentforce 
- Ensure that Org Wide Detaults have been set to at least Public Read only for Internal and External Access for the following objects:
  - Assessment Question
  - Assessment Question Assignment
  - Assessment Question Response
  - Assessment Question Set
  - Omni Data Transformation
  - Omni Process
  - Omni Process Assessment Question Version
  - Omni Process Transient Data
  - Omni UI Card
- Go to Setup -> Service Process Definition Settings and ensure that the New Service Process Definition Sync and Existing Service Processes Definition Sync are both Disabled before installing the unlocked packages


## Installation
- Using the Salesforce CLI, deploy the objects under the force-app/main/default in the following order:
  - documentTypes	
  - actionPlanTemplates		
  - AssessmentQuestions
  - classes				
  - genAiFunctions	
  - genAiPlugins		
  - genAiPlannerBundles		
  - bots
  - objects
  - omniDataTransforms
  - omniIntegrationProcedures
  - omniScripts
  - permissionsets
  - permissionsetgroups
  - serviceprocess


## Post-Install Setup & Configuration

- Grant access to the Service Process Record Type to the Administrator
- Go to Setup -> Service Process Definition Settings and set both the New Service Process Definition Sync and Existing Service Processes Definition Sync to Enabled
- Create Einstein Agent user and assign HR Accelerator Agent Permission Set Group to the user
  - When creating the user make sure to set the Company field, do not set a role, set the User license to Einstein Agent, and set the Profile to Einstein Agent User
  - Add the HR Accelerator Agent Access Permission Set Group to this user
- Update HR Agentforce Service Agent to set user to user created above
  - Note that you may have to make a slight change to the Company field after setting the Agent User for the Save button to show up
- In the Action Launcher, go to Action Plan Templates
  - Clone the Pre-onboarding Checklist Action Plan Template
    - On the Cloned Action Plan Template set Document Type the following Document Checklist items
      - Resume - Resume
      - Police Check - Background_Check
      - Identity Document - Personal_Document
    - Publish the Template
    - Deactivate the original Action Plan Template
  - Clone the Onboarding Checklist Action Plan Template
    - On the Cloned Action Plan Template set Document Type the following Document Checklist items
      - Void Cheque / Direct Deposit Information - Personal_Document
      - Work Authorization / Visa	- Work_Authorization_Visa
    - Publish the Template
    - Deactivate the original Action Plan Template
- Go to Setup -> Service Process Studio
  - Activate all the Service Processes that start with the name HRAccelerator
- Setup Service Catalog
  - Use the Action Launcher to go to Unified Catalog
  - Goto Catalogs and click New Catalog
    - Enter the following and save:
      - Name: HR Processes
      - Description: Catalog of HR processes
      - Catalog Type: Service Process
      - Effective Start Date: Any date prior than the current date
    - After saving click the New Category button
      - Enter the following and save:
        - Name: Onboarding
        - Catalog: Default
        - Show in Menu: Checked
        - Description: New employee tasks for various enrollments
        - Sort Order: 1
    - Add the HRAccelerator Products to the Category
    - Add images to products
    - Add the Catalog to an Experience Cloud site


## FAQs

**_Q: Do these process save data in Salesforce or to an HR system?_**

A: These examples are meant to be used to provide HR self service, but they do not save information to Salesforce or to a HR system.  Depending on your needs, you could map the collected data to Salesforce objects like Cases, etc. or to external services to interact with a HR system such as Workday, PeopleSoft, SuccessFactors, etc.




## Revision History

<strong>1.0 Initial release (08 Aug 2025)</strong> - Initial version of fourteen HR processes that can be executed via web or agentic layer.  Additional document templates, action plan templates are also included.


## Acknowledgements


## Terms of Use

[Required. Cleared terms of use.  This must match the approved content used on the Accelerator listing.]

Thank you for using Global Public Sector (GPS) Accelerators.  Accelerators are provided by Salesforce.com, Inc., located at 1 Market Street, San Francisco, CA 94105, United States.

By using this site and these accelerators, you are agreeing to these terms. Please read them carefully.

Accelerators are not supported by Salesforce, they are supplied as-is, and are meant to be a starting point for your organization. Salesforce is not liable for the use of accelerators.

For more about the Accelerator program, visit: [https://gpsaccelerators.developer.salesforce.com/](https://gpsaccelerators.developer.salesforce.com/)








