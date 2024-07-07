create table if not exists stg.fot_wh_direction
(
    log_id               UInt64,
    calcdate             Date,
    wh_id                UInt16,
    prodtype_id          UInt32,
    currency_id          UInt16,
    debit                Decimal(12, 2),
    credit               Decimal(12, 2),
    operation_debit_qty  UInt32,
    operation_credit_qty UInt32,
	  dt_load MATERIALIZED now()
)
engine = MergeTree()
order by (log_id, calcdate, wh_id)
partition by toYYYYMM(calcdate)
TTL calcdate + interval 1 year
SETTINGS ttl_only_drop_parts = 1, index_granularity = 8192, merge_with_ttl_timeout = 36000
COMMENT 'Stg слой';

create table if not exists direct_log.fot_wh_direction
(
    log_id               UInt64,
    calcdate             Date,
    wh_id                UInt16,
    prodtype_id          UInt32,
    currency_id          UInt16,
    debit                Decimal(12, 2),
    credit               Decimal(12, 2),
    operation_debit_qty  UInt32,
    operation_credit_qty UInt32,
    dt_load MATERIALIZED now()
)
engine = Buffer('stg', 'fot_wh_direction', 16, 10, 100, 10000, 1000000, 10000000, 100000000);
