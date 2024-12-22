## DataEngineerCamp Capstone Project - An e-commerce streaming ELT Demo

### Introduction
This is a demo project to create a streaming ELT pipeline using Kafka, Confluent Cloud, ClickHouse and Preset.

It simulates an e-commerce store which has products, orders and customers
- data sources: `Product`, `Order` and `Customer`. These correspond to simulated records from operational databases from an e-commerce store
- source data is generated using [datagen](https://github.com/MaterializeInc/datagen) (which leverages on the [faker.js](https://fakerjs.dev/) library) and streamed into a Kafka cluster on Confluent Cloud
  - bonus: automated producing of data to Kafka cluster from an ECS task running `datagen`
- stream processing using ksqldb / FlinkSQL
  - bonus: state-ful stream processing of live inventory using FlinkSQL
- output data is streamed into Clickhouse
- visualization using Preset

### Business Objectives
What users would find your dataset useful?
- Enables operational managers to view real-time inventory data
- Enables business owners to explore historical orders data and determine what are the most popular products
- Enables marketing teams to find the most valuable customers to offer and refine loyalty programmes

### System Architecture

t.b.d

### Build

- Create a Kafka cluster in Confluent Cloud and generate an API key
- Clone `.env.example` into `.env` and fill in the Kafka cluster credentials
```bash
source .env
```

Build and Run dbt models
```bash
dbt run --project-dir transform/dbt/ecommerce_etl --profiles-dir transform/dbt/ecommerce_etl

dbt test --project-dir transform/dbt/ecommerce_etl --profiles-dir transform/dbt/ecommerce_etl

sqlfluff lint  .
```

### Selected Screenshots
(more details in [CHANGELOG.md](CHANGELOG.md))

Stream Ingestion and Processing
- Stream ingestion of `orders` into Kafka cluster in Confluent Cloud
![images/ccloud_orders.png](images/ccloud_orders.png)

- Stream-to-stream join queries using ksqldb with a 24-hour window
![images/ksqldb_streaming_joins.png](images/ksqldb_streaming_joins.png)

- Preset visualization of ClickHouse data automatically updated with new streaming data
![images/preset_visualization_02.png](images/preset_visualization_02.png)

CI/CD:
- On creating/updating a pull request to `main`, run `sqlfluff` linter and `dbt test` pointing to `dev` ClickHouse tables
![images/cicd_gh_actions_dbt_test.png](images/cicd_gh_actions_dbt_test.png)

- On merge to `main`, run `dbt run --target prod` to update `prod` ClickHouse tables
![images/cicd_gh_actions_dbt-run-on-merge.png](images/cicd_gh_actions_dbt-run-on-merge.png)
