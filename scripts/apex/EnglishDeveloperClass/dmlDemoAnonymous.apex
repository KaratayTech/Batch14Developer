DML_Demo.dmlDemoInstert_stndObj1();
DML_Demo.dmlDemoInsert_cstmObj();
DML_Demo.dmlUpdateDemo_stndObj1();
DML_Demo.dmlUpdateDemo_stndObj2();
DML_Demo.dmlInsertDemo_stndObjc2();
DML_Demo.dmlDemoInsert_cstmObj2();
DML_Demo.dmlMultipleInsert_right1();
DML_Demo.dmlMultipleInsert_right2();
DML_Demo.dml_DemoMultipleUpdate_right1();
DML_Demo.dml_DemoMultipleUpdate_right2();


// this is how we delete the records, of course it can be with different scenerios
list<account>delAccounts = [select id from account where createddate= TODAY limit 70];
delete delAccounts;