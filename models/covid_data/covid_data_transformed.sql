WITH transformed_data AS (
  SELECT
    date,
    total_confirmed
  FROM "{{ source('bert_similarity', 'covid_data') }}"
)

SELECT *
INTO bert_similarity.covid_data_transformed
FROM transformed_data;
