create table if not exists current.fot_wh_direction
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
    dt_load              MATERIALIZED now()
)
engine = ReplacingMergeTree()
order by (calcdate, wh_id)
SETTINGS index_granularity = 8192
COMMENT 'Current слой';

CREATE MATERIALIZED VIEW default.mv_fot_wh_direction_to_current
TO current.fot_wh_direction
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
    dt_load              MATERIALIZED now()
)
AS
SELECT log_id
    ,calcdate
    ,wh_id
    ,prodtype_id
    ,currency_id
    ,debit
    ,credit
    ,operation_debit_qty
    ,operation_credit_qty
FROM stg.fot_wh_direction;
