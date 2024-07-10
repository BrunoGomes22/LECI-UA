# BD: Guião 8


## ​8.1. Complete a seguinte tabela.
Complete the following table.

| #    | Query                                                                                                      | Rows  | Cost  | Pag. Reads | Time (ms) | Index used | Index Op.            | Discussion |
| :--- | :--------------------------------------------------------------------------------------------------------- | :---- | :---- | :--------- | :-------- | :--------- | :------------------- | :--------- |
| 1    | SELECT * from Production.WorkOrder                                                                         | 72591 | 0.484 | 531        | 1171      | WorkOrderID(PK)         | Clustered Index Scan |            |
| 2    | SELECT * from Production.WorkOrder where WorkOrderID=1234                                                  |   1    |   .003    |     216       |  :----         |      WorkOrderID(PK)      |      Clustered Index Seek                |            |
| 3.1  | SELECT * FROM Production.WorkOrder WHERE WorkOrderID between 10000 and 10010                               |   11.9979    |    .003   |      216      |    :----       |      WorkOrderID(PK)      |         Clustered Index Seek             |            |
| 3.2  | SELECT * FROM Production.WorkOrder WHERE WorkOrderID between 1 and 72591                                   |  72591     |   .488    |     744       |    :----       |    WorkOrderID(PK)        |        Clustered Index Seek              |            |
| 4    | SELECT * FROM Production.WorkOrder WHERE StartDate = '2007-06-25'                                          |   1    |   .522    |     1342       |     :----      |    WorkOrderID(PK)        |         Clustered Index Scan             |            |
| 5    | SELECT * FROM Production.WorkOrder WHERE ProductID = 757                                                   |  11.4     |  .037     |      238      |     :----      |     ProductID       |          Index Seek            |            |
| 6.1  | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 757                              |  11.4     |   .037    |    238        |     :----      |    ProductID Covered (StartDate)        |        Index Seek              |            |
| 6.2  | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945                              |  1105     |   .473    |     748       |    :----       |    ProductID Covered (StartDate)        |         Clustered Index Scan             |            |
| 6.3  | SELECT WorkOrderID FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04'            |   1    |    .473   |    750        |     :----      |   ProductID Covered (StartDate)         |         Clustered Index Scan             |            |
| 7    | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04' |   1    |  .473     |     750       |   :----        |     ProductID and StartDate       |    Clustered Index Scan                  |            |
| 8    | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04' |  1     |   .003    |     1554       |    :----       |   Composite (ProductID, StartDate)         |    Index Seek                  |            |

## ​8.2.

### a)

```
CREATE UNIQUE CLUSTURED INDEX rid_index ON dbo.mytemp(rid)
```

### b)

```
Milliseconds used: 64866
Fragmentacao: 96%
Espaço usado: 72%
```

### c)

```
CREATE UNIQUE CLUSTERED INDEX rid_index ON dbo.mytemp(rid) with (FILLFACTOR = x);

Fillfactor 65: 62660

Fillfactor 80: 71596

Fillfactor 90: 64343
```

### d)

```
CREATE TABLE mytemp (
rid BIGINT IDENTITY (1, 1) NOT NULL,
at1 INT NULL,
at2 INT NULL,
at3 INT NULL,
lixo varchar(100) NULL
);
CREATE UNIQUE CLUSTERED INDEX rid_index ON dbo.mytemp(rid);
SET IDENTITY_INSERT mytemp ON

Milliseconds used: 73230
```

### e)

```
CREATE NONCLUSTERED INDEX at1_non_index ON mytemp(at1);
CREATE NONCLUSTERED INDEX at2_non_index ON mytemp(at2);
CREATE NONCLUSTERED INDEX at3_non_index ON mytemp(at3);
CREATE NONCLUSTERED INDEX lixo_non_index ON mytemp(lixo);

1 Nonclustured indexes: 65526
2 Nonclustured indexes: 79400
3 Nonclustured indexes: 117946
4 Nonclustured indexes: 141506

A inserção de mais indíces piora a performance substancialmente.

```

## ​8.3.


### a)
```
i. CREATE UNIQUE CLUSTERED INDEX idxEssn ON Employee(Ssn);

ii. CREATE COMPOSITE CLUSTERED INDEX idxEname ON Employee(Fname, Lname);

iii. CREATE CLUSTERED INDEX idxEdep ON Employee(Dno);

iv. CREATE COMPOSITE CLUSTERED INDEX idxSsnPno ON Works_On(Essn, Pno);

v. CREATE CLUSTERED INDEX idx_essn_dname ON DEPENDENT(Essn, Dependent_name);

vi. CREATE CLUSTERED INDEX idx_pnum_dno ON PROJECT(Pnumber, Dnum);
```