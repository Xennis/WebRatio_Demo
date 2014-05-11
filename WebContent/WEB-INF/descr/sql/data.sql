-- ---------- POPUPLATE TABLE `MODULE` ----------
INSERT INTO "APP"."MODULE" ("OID", "MODULEID", "MODULENAME") VALUES (1, 'sv3', 'Administrator');
INSERT INTO "APP"."MODULE" ("OID", "MODULEID", "MODULENAME") VALUES (2, 'sv1', 'Site');

-- ---------- POPUPLATE TABLE "GROUP" ----------
INSERT INTO "APP"."GROUP" ("OID", "GROUPNAME", "MODULE_OID") VALUES (1, 'Administrators', 1);
INSERT INTO "APP"."GROUP" ("OID", "GROUPNAME", "MODULE_OID") VALUES (2, 'Customers', 2);

-- ---------- POPUPLATE TABLE "USER" ----------
-- INSERT INTO "APP"."USER" ("OID", "USERNAME", "PASSWORD", "EMAIL", "GROUP_OID") VALUES (1, 'manager', 'manager', 'manager@acme.com', 1);
INSERT INTO "APP"."USER" ("OID", "USERNAME", "PASSWORD", "EMAIL", "GROUP_OID") VALUES (2, 'tony', 'tony', 'tony@gmail.com', 2);