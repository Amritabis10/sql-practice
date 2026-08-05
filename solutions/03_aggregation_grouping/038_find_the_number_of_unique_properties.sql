SELECT DISTINCT id_user, TRIM(value) AS property_type
FROM airbnb_searches as a
CROSS APPLY STRING_SPLIT(filter_room_types, ',') 
WHERE TRIM(value) <> '';