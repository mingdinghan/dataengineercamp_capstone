## ecommerce streaming ELT Demo

### Introduction
This is a demo project to create a streaming ELT pipeline using Kafka, Confluent Cloud, ClickHouse and Preset.

It simulates an e-commerce store which has products, orders and customers
- data sources
  - `Product` records are seeded from publicly-available data from [Shopify example dataset](https://github.com/shopifypartners/shopify-product-csvs-and-images/tree/master/csv-files), based on a subset of fields in the [Shopify Product schema](https://shopify.dev/docs/api/storefront/2024-10/objects/Product)
  - `Order` records are created using DataGen, based on a subset of fields in the [Shopify Order schema](https://shopify.dev/docs/api/storefront/2024-10/objects/Order)
  - `Customer` records are created using DataGen, based on a subset of fields in the [Shopify Customer schema](https://shopify.dev/docs/api/storefront/2024-10/objects/Customer)
- source data is streamed into Kafka on Confluent Cloud
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
