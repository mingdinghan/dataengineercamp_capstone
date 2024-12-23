CREATE OR REPLACE STREAM products_stream(
    id INTEGER,
    title STRING,
    category STRING,
    vendor STRING,
    price STRING,
    description STRING,
    color STRING,
    `SIZE` STRING,
    material STRING
) WITH (
    KAFKA_TOPIC = 'products',
    VALUE_FORMAT = 'JSON'
);
