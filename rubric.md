## Requirements and rubric

<table>
    <tr>
        <th>Requirement</th>
        <th>Percentage of marks</th>
    </tr>
    <tr>
        <td>
            [Batch | Streaming] Use either a static or live dataset.
            <li>A static dataset refers to a dataset that is not changing e.g. a CSV file.  </li>
            <li>A live dataset refers to a dataset that has data updating live (e.g. every second, every minute, every hour, every day).</li>
            <li>A live dataset can also refer to a dataset that you are able to generate mock data from, for example, a mock kafka producer or a database table.</li>
        </td>
        <td>
            <li>Static dataset: 5%</li>
            <li>✅ Live dataset: 10%</li>
            <li>TODO: Run in a Docker container in ECS </li>
        </td>
    </tr>
    <tr>
        <td>
            [Batch] Using a data integration tool (e.g. Airbyte, Fivetran), extract data using either full extract or incremental extract.
            <li>A full extract refers to a full read of a file, a full read of a database table, or a full read from an API endpoint. </li>
            <li>An incremental extract refers to reading a database table with a filter condition on a timestamp column e.g. `where event_date > '2020-01-01'`.</li>
        </td>
        <td>
            <li>Full extract: 5%</li>
            <li>Incremental extract: 7.5%</li>
            <li>(Bonus) Change Data Capture (CDC): 10%</li>
        </td>
    </tr>
    <tr>
        <td>
            [Streaming] Streaming data integration. Produce events to a kafka topic.
            <li>Create or use an existing mock Kafka producer to write to a kafka topic. </li>
            <li>Create a custom kafka consumer, or use an existing kafka connector to consume from a kafka topic. </li>
        </td>
        <td>
            <li>✅ Kafka producer and Kafka consumer (you may use Kafka Connect for both): 10%</li>
        </td>
    </tr>
    <tr>
        <td>
            [Batch | Streaming] Transform data in batch or real-time using either a Data Warehouse technology (e.g. Databricks Spark, Snowflake, BigQuery, Redshift, Synapse) or a Streaming technology (e.g. kSQLDB, Clickhouse). Transformations should use the following techniques:
            <li>Aggregation function e.g. `avg`, `sum`, `max`, `min`, `count`, `rank`</li>
            <li>Grouping i.e. `group by`</li>
            <li>Window function e.g. `partition by`</li>
            <li>Calculation e.g. `column_A + column_B`</li>
            <li>Data type casting</li>
            <li>Filtering e.g. `where`, `having`</li>
            <li>Sorting</li>
            <li>Joins/merges</li>
            <li>Unions</li>
            <li>Renaming e.g. `select col_a as my_col_a` </li>
        </td>
        <td>
            <li>3 transformation techniques: 5%</li>
            <li>✅ 5 transformation techniques: 7%</li>
            <li>7 transformation techniques: 10%</li>
        </td>
    </tr>
    <tr>
        <td>
            [Streaming] Perform streaming transformations such as:
            <li>Joins with matching timeframes i.e. `WITHIN`</li>
            <li>Aggregations with time windows i.e. tumbling, hopping, session windows</li>
        </td>
        <td>
            <li>✅ Streaming transformations: 5%</li>
        </td>
    </tr>
    <tr>
        <td>
            [Batch] Data modeling techniques (e.g. dimensional modeling, one big table, etc):
            <li>At least 1 fact table</li>
            <li>At least 3 dimension tables</li>
            <li>(Bonus) Type 2 Slowly changing dimension (SCD)</li>
            <li>(Bonus) Advanced fact tables</li>
        </td>
        <td>
            <li>At least 1 fact table, and 3 dimensional tables: 5%</li>
            <li>+ (Bonus) Type 2 Slowly changing dimension (SCD Type 2): 7.5%</li>
            <li>+ (Bonus) Advanced fact tables (snapshot or accumulating fact table): 10%</li>
        </td>
    </tr>
    <tr>
        <td>
            [Batch | Streaming] Write data quality tests for transformation tasks (e.g. dbt tests, great expectations, soda sql). For streaming (e.g. clickhouse) you may use <a href="https://clickhouse.com/docs/en/integrations/dbt/dbt-intro">dbt</a> to create views and perform data quality tests on the views.
        </td>
        <td>
            <li>2 data quality tests: 5% </li>
            <li>5 data quality tests: 10% </li>
        </td>
    </tr>
    <tr>
        <td>
            [Batch] Create dependencies between data integration and data transformation tasks. Schedule and monitor tasks using a data orchestration tool (e.g. Dagster, Airflow, Databricks Workflow).
        </td>
        <td>
            <li>Dependencies between data integration and data transformation tasks: 10%</li>
        </td>
    </tr>
    <tr>
        <td>
            [Batch | Streaming] Create a data application that generates insights or predictions for end-users (e.g. a Preset dashboard, a real-time ML application):
        </td>
        <td>
            <li>✅ Semantic Layer and Dashboard, or ML model inference, or other data apps (please discuss with an instructor): 10%</li>
        </td>
    </tr>
    <tr>
        <td>
            [Batch | Streaming] Deploy solution to Cloud services. Please provide screenshot evidence of services configured/running where possible. Examples of cloud services:
            <li>Data integration service (e.g. Airbyte, Fivetran) - screenshot of configured tasks</li>
            <li>Data transformation services (e.g. dbt sql, databricks notebook)</li>
            <li>Data Warehouse (e.g. Snowflake) or Data Lakehouse (e.g. Databricks) depending on your choice</li>
            <li>Data orchestration service (e.g. Dagster, Databricks Workflows)</li>
            <li>Kafka producer hosted on a cloud service (e.g. ECS service)</li>
            <li>Kafka broker hosted on a cloud service (e.g. Confluent Cloud)</li>
            <li>kSQLDB transformation hosted on a cloud service (e.g. Confluent Cloud)</li>
            <li>Kafka connect or consumer hosted on a cloud service (e.g. Confluent Cloud)</li>
            <li>Real-time database hosted on a cloud service (e.g. Clickhouse cloud)</li>
        </td>
        <td>
            Entire solution hosted on cloud services: 10%
        </td>
    </tr>
    <tr>
        <td>
            [Batch | Streaming] Using git for collaboration:
            <li>Git commits and git push</li>
            <li>Git branching</li>
            <li>Pull request and review</li>
        </td>
        <td>
            <li>✅ Git commits and push only: 2.5%</li>
            <li>✅ + Git branching: 4%</li>
            <li>✅ + Pull request and review: 5%</li>
        </td>
    </tr>
    <tr>
        <td>
            [Batch | Streaming] Create CI and/or CD pipelines to:
            <li>CI - build and test code when a pull request is triggered</li>
            <li>CD - build and deploy code to a target environment (e.g. preprod, and prod)</li>
        </td>
        <td>
            <li>CI pipeline with build and tests: 5%</li>
            <li>+ CD pipeline with deployment of application code to target environment: 10%</li>
        </td>
    </tr>
    <tr>
        <td>
            [Batch | Streaming] Project structure and documentation
            <li>Clear project structure using a mono-repo approach with folders such as `data transformation`, `data integration`, `data orchestration` for the various components</li>
            <li>Code documentation using <a href="https://realpython.com/documenting-python-code/#documenting-your-python-code-base-using-docstrings">Python docstrings and comments</a> or SQL comments where reasonable</li>
            <li>README file at the root of the repository explaining the project context, architecture and installation/running instructions. See <a href="https://github.com/matiassingers/awesome-readme">here</a> for examples.</li>
        </td>
        <td>
            <li>Clear project structure: 2.5%</li>
            <li>Code documentation using Python or SQL comments where reasonable: 2.5%</li>
            <li>Detailed markdown documentation explaining the project context, architecture and installation/running instructions: 5%</li>
        </td>
    </tr>
</table>
