ALTER TABLE "account_histories" RENAME TO "oXHFcGcd04oXHFcGcd04_account_histories"
CREATE TABLE "account_histories" ("id" INTEGER PRIMARY KEY  NOT NULL ,"balance_object_type" varchar(255),"balance_object_id" integer,"payment_id" integer,"balance_before" decimal(8,2) DEFAULT (0) ,"amount" decimal(8,2) DEFAULT (0) ,"balance_after" decimal(8,2) DEFAULT (0) ,"created_at" datetime NOT NULL ,"updated_at" datetime NOT NULL )
INSERT INTO "account_histories" SELECT "id","balance_object_type","balance_object_id","payment_id","balance_before","amount","balance_after","created_at","updated_at" FROM "oXHFcGcd04oXHFcGcd04_account_histories"
DROP TABLE "oXHFcGcd04oXHFcGcd04_account_histories"

