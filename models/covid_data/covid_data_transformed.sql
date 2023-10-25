WITH transformed_data AS (
  SELECT
    date,
    total_confirmed
  FROM "{{ source('bert_similarity', 'covid_data') }}"
)

INSERT *
INTO bert_similarity.covid_data_transformed
FROM transformed_data;
