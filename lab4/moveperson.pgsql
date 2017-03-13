CREATE or REPLACE FUNCTION movePerson (in_ssn INTEGER, in_address VARCHAR(40), in_appartment_num INTEGER)
RETURNS INTEGER
language plpgsql
AS $$
DECLARE
	result INTEGER;
    person_ssn INTEGER;
    house_address VARCHAR(40);
    house_apt_count INTEGER;
    house_id INTEGER:
BEGIN
    SELECT SSN
    FROM Persons 
    WHERE SSN = in_ssn 
    INTO person_ssn;
    
    SELECT HouseID 
    FROM Houses 
    WHERE HouseAddress = in_address
    INTO house_address, house_apt_count;
    -- If there is no person with that SSN, then movePerson should do nothing.
    -- If there is no house with that address, then movePerson should do nothing.
    IF person_ssn IS NULL OR house_address IS NULL THEN
    	result = -1;
    -- If the ApartmentNumber is impossible, then movePerson should do nothing. 
    -- 	(An ApartmentNumber is impossible if it's less than 1, or if it's more than the
	-- 	ApartmentCount for its house.)
    ELSEIF person_apt_num < 1 OR house_apt_count < in_appartment_num THEN
    	result = -1;
    END IF;
    RETURN result;
END $$;