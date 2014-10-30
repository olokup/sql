set cutter_user=%1
set cutter_pass=%2
set const_user=%3
set const_pass=%4
set dba_user=%5
set dba_pass=%6
set servicename=%7
set tablespace=%8
set prefix=%9

rem Wykonaæ na ORacle 9
rem exp %cutter_user%/%cutter_pass% parfile=%prefix%_dmp_parfile.txt file=%const_user%.dmp
rem sqlplus %dba_user%/%dba_pass% @dropuser.sql %const_user%
rem sqlplus %dba_user%/%dba_pass% @createuser.sql %const_user% %const_pass% %tablespace%
rem imp %const_user%/%const_pass% file=%const_user%.dmp fromuser=%cutter_user% touser=%const_user%

rem sqlplus %cutter_user%/%cutter_pass% @%prefix%_drop_constTables.sql %cutter_user%.
rem sqlplus %cutter_user%/%cutter_pass% @%prefix%_create_synonyms.sql %cutter_user%. %const_user%.
sqlplus %const_user%/%const_pass% @%prefix%_grant_privileges_tocutter.sql %const_user%. %cutter_user%
sqlplus %cutter_user%/%cutter_pass% @%prefix%_grant_privileges_toconst.sql %cutter_user%. %const_user%
