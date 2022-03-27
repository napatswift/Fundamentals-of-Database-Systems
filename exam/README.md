# Database Lab Examination

Q: Which `supplier` lives in Sumrong and supplies red color part? List `Sname` and `Pname`.

A:
```sql
SELECT
    SUPPLIER.SNAME,
    PART.PNAME
FROM
    SUPPLY
JOIN SUPPLIER ON SUPPLY.SNO = SUPPLIER.SNO
JOIN PART ON PART.PNO = SUPPLY.PNO
WHERE
    SUPPLIER.CITY = 'sumrong' AND PART.COLOR = 'red';
```

Q: Which `part` is supplied by all suppliers? List `Pname`.

A:
```sql
SELECT
    pname
FROM
    SUPPLY
JOIN PART USING(pno)
GROUP BY
    pno
HAVING
    COUNT(sno) =(
  SELECT
      COUNT(*)
  FROM
      SUPPLIER
  )
```

Q: Which supplier has the second maximum status? List `Sname` and `status`.

A:
```sql
SELECT
    SUPPLIER.SNAME,
    SUPPLIER.STATUS
FROM
    SUPPLIER
WHERE
STATUS = (
    SELECT
        MAX(SUPPLIER.STATUS)
    FROM
        SUPPLIER
    WHERE
        SUPPLIER.STATUS NOT IN(
        SELECT
            MAX(SUPPLIER.STATUS)
        FROM
            SUPPLIER
    )
);
```

Q: List `Sname` for the `supplier` who supplies the third maximum `QTY`.

A: 
```sql
SELECT
    SNAME
FROM
    SUPPLY SUP1
JOIN SUPPLIER USING(SNO)
GROUP BY SNO
HAVING
    3 =(
    SELECT
        COUNT(DISTSUM)
    FROM
        (
        SELECT DISTINCT
            SUM(QTY) AS DISTSUM
        FROM
            SUPPLY
        GROUP BY
            SUPPLY.SNO
        ) AS A
    WHERE
        DISTSUM >= SUM(QTY)
);
```

หาเอนทิตีที่มีค่าที่มากกว่าค่าที่ต้องการจำนวน $n-1$ เมื่อ $n$ คือจำนวนลำดับที่ต้องการ นั่นคือหากว่าต้องการหาจำนวนลำดับที่ 3 ก็จะต้องมีค่าที่มากกว่าค่าลำดับที่ 3 จำนวน 2 จำนวน

| sno | sum(qty) Descending 1 |
| --- | --- |
| S3 | 1500 |
| S1 | 1000 |
| *S5* | 900 |
| S7 | 800 |
| S4 | 800 |
| S2 | 600 |
| S6 | 400 |
| S8 | 100 |