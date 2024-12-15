## DataEngineerCamp Capstone Project - An e-commerce streaming ELT Demo

### Introduction
This is a demo project to create a streaming ELT pipeline using Kafka, Confluent Cloud, ClickHouse and Preset.

It simulates an e-commerce store which has products, orders and customers
- data sources: `Product`, `Order` and `Customer`. These correspond to simulated records from operational databases from an e-commerce store
- source data is generated using [datagen](https://github.com/MaterializeInc/datagen) (which leverages on the [faker.js](https://fakerjs.dev/) library) and streamed into a Kafka cluster on Confluent Cloud
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
