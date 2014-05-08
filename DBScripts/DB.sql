-- Group [Group]
create table "APP"."GROUP" (
   "OID"  integer  not null,
   "GROUPNAME"  varchar(255),
  primary key ("OID")
);


-- Module [Module]
create table "APP"."MODULE" (
   "OID"  integer  not null,
   "MODULEID"  varchar(255),
   "MODULENAME"  varchar(255),
  primary key ("OID")
);


-- User [User]
create table "APP"."USER" (
   "OID"  integer  not null,
   "EMAIL"  varchar(255),
   "PASSWORD"  varchar(255),
   "MEMBERSHIP"  varchar(255),
   "USERNAME"  varchar(255),
  primary key ("OID")
);


-- Membership [ent1]
create table "APP"."MEMBERSHIP" (
   "OID"  integer  not null,
   "MEMBERSHIPNAME"  varchar(255),
  primary key ("OID")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "APP"."GROUP"  add column  "MODULE_OID"  integer;
alter table "APP"."GROUP"   add constraint FK_GROUP_MODULE foreign key ("MODULE_OID") references "APP"."MODULE" ("OID");
create index "IDX_GROUP_MODULE" on "APP"."GROUP"("MODULE_OID");


-- Group_Module [Group2Module_Module2Group]
create table "APP"."GROUP_MODULE" (
   "GROUP_OID"  integer not null,
   "MODULE_OID"  integer not null,
  primary key ("GROUP_OID", "MODULE_OID")
);
alter table "APP"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
alter table "APP"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_MODULE foreign key ("MODULE_OID") references "APP"."MODULE" ("OID");
create index "IDX_GROUP_MODULE_GROUP" on "APP"."GROUP_MODULE"("GROUP_OID");
create index "IDX_GROUP_MODULE_MODULE" on "APP"."GROUP_MODULE"("MODULE_OID");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "APP"."USER"  add column  "GROUP_OID"  integer;
alter table "APP"."USER"   add constraint FK_USER_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
create index "IDX_USER_GROUP" on "APP"."USER"("GROUP_OID");


-- User_Group [User2Group_Group2User]
create table "APP"."USER_GROUP" (
   "USER_OID"  integer not null,
   "GROUP_OID"  integer not null,
  primary key ("USER_OID", "GROUP_OID")
);
alter table "APP"."USER_GROUP"   add constraint FK_USER_GROUP_USER foreign key ("USER_OID") references "APP"."USER" ("OID");
alter table "APP"."USER_GROUP"   add constraint FK_USER_GROUP_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
create index "IDX_USER_GROUP_USER" on "APP"."USER_GROUP"("USER_OID");
create index "IDX_USER_GROUP_GROUP" on "APP"."USER_GROUP"("GROUP_OID");


-- User_Membership [rel1]
alter table "APP"."USER"   add constraint FK_USER_MEMBERSHIP foreign key () references "APP"."MEMBERSHIP" ();
create index "IDX_USER_MEMBERSHIP" on "APP"."USER"();


