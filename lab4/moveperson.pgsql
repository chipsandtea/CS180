CREATE or REPLACE FUNCTION movePerson (in_ssn INTEGER, in_address VARCHAR(40),
	in_apt_num INTEGER)
RETURNS INTEGER
language plpgsql
AS $$
DECLARE
	result INTEGER;
    person_ssn INTEGER;
    house_id INTEGER;
    house_apt_count INTEGER;
    house_address VARCHAR(40);
BEGIN
    SELECT SSN
    FROM Persons 
    WHERE SSN = in_ssn 
    INTO person_ssn;
    
    SELECT HouseID, ApartmentCount, HouseAddress
    FROM Houses
    WHERE HouseAddress = in_address
    INTO house_id, house_apt_count, house_address;
    -- If there is no person with that SSN, then movePerson should do nothing.
    -- If there is no house with that address, then movePerson should do nothing.
    -- If the ApartmentNumber is impossible, then movePerson should do nothing. 
    -- 	(An ApartmentNumber is impossible if it's less than 1, or if it's more than the
	-- 	ApartmentCount for its house.)
    IF person_ssn IS NULL OR
	house_address IS NULL OR
	house_id is NULL OR
	in_apt_num < 1 OR
	in_apt_num > house_apt_count THEN
    	result = -1;
    ELSE
    	result = house_id;
    	
    	UPDATE Persons
    	SET ApartmentNumber = in_apt_num,
    	HouseID = house_id
    	WHERE in_ssn = SSN;
    	
    	UPDATE Houses
    	SET HouseAddress = in_address
    	WHERE house_id = HouseID;
    END IF;
    RETURN result;
END $$;
