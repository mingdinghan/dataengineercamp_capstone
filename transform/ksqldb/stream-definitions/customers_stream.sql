CREATE OR REPLACE STREAM customers_stream(
    id INTEGER,
    name STRING,
    email STRING,
    address STRING,
    city STRING,
    state STRING,
    zipcode STRING
) WITH (
    KAFKA_TOPIC = 'customers',
    VALUE_FORMAT = 'JSON'
);
