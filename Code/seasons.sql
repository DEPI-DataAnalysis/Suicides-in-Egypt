select index,
        case 
            WHEN (extract(month from history_of_the_incident) = 12 AND extract(day from history_of_the_incident) >= 21)
                OR extract(month from history_of_the_incident) in (1, 2)
                OR (extract(month from history_of_the_incident) = 3 AND extract(day from history_of_the_incident) <= 20)
            THEN 'Winter'
            
            WHEN (extract(month from history_of_the_incident) = 3 AND extract(day from history_of_the_incident) >= 21)
                OR extract(month from history_of_the_incident) in (4, 5)
                OR (extract(month from history_of_the_incident) = 6 AND extract(day from history_of_the_incident) <= 20)
            THEN 'Spring'
            
            WHEN (extract(month from history_of_the_incident) = 6 AND extract(day from history_of_the_incident) >= 21)
                OR extract(month from history_of_the_incident) in (7, 8)
                OR (extract(month from history_of_the_incident) = 9 AND extract(day from history_of_the_incident) <= 22)
            THEN 'Summer'
            
            WHEN (extract(month from history_of_the_incident) = 9 AND extract(day from history_of_the_incident) >= 23)
                OR extract(month from history_of_the_incident) in (10, 11)
                OR (extract(month from history_of_the_incident) = 12 AND extract(day from history_of_the_incident) <= 20)
            THEN 'Autumn'
    end as season
from suicides_in_egypt;