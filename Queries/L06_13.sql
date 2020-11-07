Seq Scan on phonebook_1000000  (cost=0.00..18284.00 rows=1000000 width=34)


 Seq Scan on phonebook_1000000  (cost=0.00..20784.00 rows=324 width=34) 
 (actual time=0.169..112.646 rows=343 loops=1)
   Filter: ((first_name)::text = 'John'::text)
   Rows Removed by Filter: 999657
 Planning time: 0.213 ms
 Execution time: 117.582 ms


 Bitmap Heap Scan on phonebook  (cost=44.64..4863.00 rows=2092 width=34)
   Recheck Cond: ((last_name)::text = 'Smith'::text)
   ->  Bitmap Index Scan on phonebook_last_name_idx  
   (cost=0.00..44.11 rows=2092 width=0)
         Index Cond: ((last_name)::text = 'Smith'::text)


 Bitmap Heap Scan on phonebook  (cost=44.12..4867.70 rows=1 width=34)
   Recheck Cond: ((last_name)::text = 'Smith'::text)
   Filter: ((first_name)::text = 'John'::text)
   ->  Bitmap Index Scan on phonebook_last_name_idx  
   (cost=0.00..44.11 rows=2092 width=0)
         Index Cond: ((last_name)::text = 'Smith'::text)