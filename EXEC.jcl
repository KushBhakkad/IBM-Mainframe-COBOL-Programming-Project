//EXECJOB    JOB (ACCT),'EXEC MERGE SORT',
//            CLASS=A,MSGCLASS=A,NOTIFY=&SYSUID
//*
//MERGESTEP  EXEC PGM=MERGESRT
//STEPLIB    DD DSN=Z54915.COBOL.SOURCE,DISP=SHR
//INPUT1     DD DSN=Z54915.SOURCE(INPUT1),DISP=SHR
//INPUT2     DD DSN=Z54915.SOURCE(INPUT2),DISP=SHR
//INPUT3     DD DSN=Z54915.SOURCE(INPUT3),DISP=SHR
//OUTPUT     DD DSN=Z54915.OUTPUT(PRJOUT),
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(5,5)),
//             UNIT=SYSDA
//SYSOUT     DD SYSOUT=*
