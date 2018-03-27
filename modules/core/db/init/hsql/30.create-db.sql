
-- Users Role
insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE)
values ('cef29ba5-b3de-2bb5-62cf-b14cc459bfb3', 1, '2018-03-27 08:26:35', 'admin', '2018-03-27 08:26:35', null, null, null, 'Users', null, null, 0, null);

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('ec518cfb-d278-b7ad-8723-f1d34da8222d', 1, '2018-03-27 08:26:35', 'admin', '2018-03-27 08:26:35', null, null, null, 10, 'administration', 0, 'cef29ba5-b3de-2bb5-62cf-b14cc459bfb3');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE, ROLE_ID)
values ('8a4ed345-6c4e-4989-8006-3ff66baf9f5c', 1, '2018-03-27 08:26:35', 'admin', '2018-03-27 08:26:35', null, null, null, 10, 'cecm$Member.browse', 0, 'cef29ba5-b3de-2bb5-62cf-b14cc459bfb3');


-- User mario
insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('aaecfbb1-12de-7650-d2e3-f493c20b8dfc', 3, '2018-03-27 08:25:51', 'admin', '2018-03-27 08:27:18', 'admin', null, null, 'mario', 'mario', 'ccc6f2edabc4c4751dd8115be2ffc710d6f9ace5', 'Mario ', 'Mario', null, null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);
insert into SEC_USER_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('d2793bb5-7f9f-8cf0-e1f3-9643e5f30cad', 1, '2018-03-27 08:26:46', 'admin', '2018-03-27 08:26:46', null, null, null, 'aaecfbb1-12de-7650-d2e3-f493c20b8dfc', 'cef29ba5-b3de-2bb5-62cf-b14cc459bfb3');

-- User claudio
insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('aa98f36f-92d4-9592-2ed6-ba4cb56e9b03', 3, '2018-03-27 08:26:05', 'admin', '2018-03-27 08:27:22', 'admin', null, null, 'claudio', 'claudio', 'd9caab8db28e182f895a1e485940f95890b4cceb', 'Claudio ', 'Claudio', null, null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);
insert into SEC_USER_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, USER_ID, ROLE_ID)
values ('392f3d57-aabd-4370-624d-457cfe8e1fef', 1, '2018-03-27 08:26:42', 'admin', '2018-03-27 08:26:42', null, null, null, 'aa98f36f-92d4-9592-2ed6-ba4cb56e9b03', 'cef29ba5-b3de-2bb5-62cf-b14cc459bfb3');

-- Member mario
insert into CECM_MEMBER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, USER_ID)
values ('ae780bf4-e20b-66de-e08f-7111be39d063', 1, '2018-03-27 08:27:32', 'admin', '2018-03-27 08:27:32', null, null, null, 'Mario', 'aaecfbb1-12de-7650-d2e3-f493c20b8dfc');

-- Member claudio
insert into CECM_MEMBER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, USER_ID)
values ('6023bccc-dd62-f597-e2f6-8b70457f3a6a', 1, '2018-03-27 08:27:36', 'admin', '2018-03-27 08:27:36', null, null, null, 'Claudio', 'aa98f36f-92d4-9592-2ed6-ba4cb56e9b03');