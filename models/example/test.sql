WITH transformed_data AS (
  SELECT
    date AS observation_date,
    new_recovered AS recovered,
    new_tested AS tested,
    total_deceased AS deceased,
    new_deceased AS new_deaths,
    new_confirmed AS new_cases,
    total_confirmed AS total_cases,
    total_tested AS total_tests,
    total_recovered AS total_recoveries,
    key,
    _airbyte_ab_id AS airbyte_id,
    _airbyte_emitted_at AS emitted_at,
    _airbyte_normalized_at AS normalized_at,
    _airbyte_covid_data_hashid AS data_hashid
  FROM your_project_name.covid_data
)

SELECT * FROM transformed_data;