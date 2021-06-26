CREATE TYPE financial_category AS ENUM ('Mutual Funds', 'NPS', 'Company', 'Individual');
create table financialProduct
(
    id           int          not null primary key default unique_rowid(),
    name         varchar(100) not null,
    type         financial_category,
    creation_time TIMESTAMPTZ                       DEFAULT now(),
    available    bool default false
);