# Oracle XML 

## Introduction

This lab walks you through the steps of setting up the environment for XML lab . You can connect Oracle Database instance using any client you wish. In this lab, you'll connect using Oracle SQLDeveloper.

## Before You Begin

This lab assumes you have completed the following labs:
- Lab 1:  Login to Oracle Cloud
- Lab 2:  Generate SSH Key
- Lab 3:  Create Compute instance 
- Lab 4:  Environment setup
- Note :  All scripts for this lab are stored in the /u01/workshop/xml folder and are run as the oracle user. 
  

## Step 1: Navigate to the path.

As oracle user navigate to below path- 

````
    <copy>
    sudo su - oracle
    cd /u01/workshop/xml
   </copy>
   ````
    
## Step 2: Set your oracle environment and connect to PDB
       
  ````
    <copy>
     . oraenv
     </copy>
````

````
    <copy>
    ConvergedCDB
    </copy>
````

````
    <copy>
     sqlplus appxml/Oracle_4U@JXLPDB
    </copy>
````

## Step 3: Make a connection to sqldeveloper.Provide the details as below and click on connect.
   
````
    <copy>
    Name: XML
    Username: appxml
    Password: Oracle_4U
    Hostname: localhost
    Port: 1521
    Service name: JXLPDB

    </copy>
   ````
 
  ![](./images/env_xml.PNG " ") 

## Acknowledgements

- **Authors** - Balasubramanian Ramamoorthy, Arvind Bhope
- **Contributors** - Laxmi Amarappanavar, Kanika Sharma, Venkata Bandaru, Ashish Kumar, Priya Dhuriya, Maniselvan K.
- **Team** - North America Database Specialists.
- **Last Updated By** - Kay Malcolm, Director, Database Product Management, June 2020
- **Expiration Date** - June 2021   

**Issues-**
Please submit an issue on our [issues](https://github.com/oracle/learning-library/issues) page. We review it regularly.
      
 
