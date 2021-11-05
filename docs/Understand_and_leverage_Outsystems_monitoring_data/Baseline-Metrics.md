# Baseline Metrics

## For Applications

### Metric / Service Level Indicator (SLI)
**Queries duration time per request and/or % of "bad" queries in a defined time period.**

### Goals
- Understand if the total time queries (Aggregates and Advanced Queries) are taking to execute is affecting applications, and eventually OutSystems performance, overall performance

### Outcomes
- Have for each a request the total duration of all the queries executed
  This information can help to identify queries and application that might need to be improve from a performance perspective.

### Other relevant information
Ideally use of this metric would be:
- For a specific time frame (1);
    - Count the number of requests that have violated the defined threshold (2);
    - Count the number of requests that haven't violated the defined threshold (3).
- Do a ratio of both countings;
- Define an acceptable ratio (4);
- If that ratio is violated then a alert should be sent (5) and actions should be taken.

Notes:

(1) Time frame should be defined by the customer. It will depend of application criticallity.
As baseline OutSystems uses a 5 minute time frame.

(2) Threshold should be defined by the customer. It will depend of application criticallity and application behaviour knowledge.

(3) OutSystems as practice when performing the ETL processes to get and enrich the monitoring data to external systems performs a classification of each requests. The logic used is the following:
- If the defined threshold is violated then a new field will be filled with Bad;
- If the defined threshold is not violated then a new field will be filled with Good;
OutSystems called this field - TotalQueryTime_Classification.

(4) The ratio should be defined also based in the application criticallity.
As baseline OutSystems uses a 20% ratio.
This meaning if there is for a specific  time frame more than 20% of request which the Queries Execution Time is taking more than a defined threshold then then a alert should be sent (3) and actions should be taken.

(5) To all relevant stakeholders.
The stakeholders should also be defined by the Customer.

<To be added later: How to see this in Elastic visualization artifacts>

