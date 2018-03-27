-- begin CECM_MEMBER
alter table CECM_MEMBER add constraint FK_CECM_MEMBER_USER foreign key (USER_ID) references SEC_USER(ID)^
create index IDX_CECM_MEMBER_USER on CECM_MEMBER (USER_ID)^
-- end CECM_MEMBER
