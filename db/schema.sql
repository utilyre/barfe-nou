create table "public"."transactions" (
    "id" serial primary key,
    "created_at" timestamp not null,
    "amount" numeric(9, 2) not null,
    "legal_name" varchar(128) not null unique
);
