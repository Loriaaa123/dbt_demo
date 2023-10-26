{{config(alias='covid_data_transformed_2',  materialized='table')}}

SELECT date, total_confirmed FROM `bert_similarity.covid_data`
