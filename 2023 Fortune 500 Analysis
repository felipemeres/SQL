-- SOURCES
-- The data was scraped from fortune.com and uploaded to kaggle.com by Garreth Lee on June 15, 2023 in a .csv file.
-- Source code: https://github.com/rajarshi-mandal/market-value-of-fortune-500-companies
-- The following is a sample of the dataset.
-- COLLECTION METHODOLOGY
-- Web scraped from fortune.com

create table fortune_500_companies
(
    name                    text,
    rank                    integer,
    year                    integer,
    industry                text,
    sector                  text,
    headquarters_state      text,
    headquarters_city       text,
    market_value_mil        double precision,
    revenue_mil             double precision,
    profit_mil              double precision,
    asset_mil               double precision,
    employees               text,
    founder_is_ceo          bit,
    female_ceo              text,
    newcomer_to_fortune_500 text,
    global_500              text
);

INSERT INTO fortune_500_companies (name, rank, year, industry, sector, headquarters_state, headquarters_city, market_value_mil, revenue_mil, profit_mil, asset_mil, employees, founder_is_ceo, female_ceo, newcomer_to_fortune_500, global_500)
VALUES
    ('Walmart', 1, 2023, 'General Merchandisers', 'Retailing', 'AR', 'Bentonville', '397475', 611289, '11680', '243197', '2100000', 'no', 'no', 'no', 'yes'),
    ('Amazon', 2, 2023, 'Internet Services and Retailing', 'Retailing', 'WA', 'Seattle', '1058440', 513983, '2722', '462675', '1541000', 'no', 'no', 'no', 'yes'),
    ('Exxon Mobil', 3, 2023, 'Petroleum Refining', 'Energy', 'TX', 'Irving', '446424', 413680, '55740', '369067', '62000', 'no', 'no', 'no', 'yes'),
    ('Apple', 4, 2023, 'Computers, Office Equipment', 'Technology', 'CA', 'Cupertino', '2609039', 394328, '99803', '352755', '164000', 'no', 'no', 'no', 'yes'),
    ('UnitedHealth Group', 5, 2023, 'Health Care: Insurance and Managed Care', 'Health Care', 'MN', 'Minnetonka', '440854', 324162, '20120', '245705', '4e+05', 'no', 'no', 'no', 'yes'),
    ('CVS Health', 6, 2023, 'Health Care: Pharmacy and Other Services', 'Health Care', 'RI', 'Woonsocket', '95422', 322467, '4149', '228275', '259500', 'no', 'yes', 'no', 'yes'),
    ('Berkshire Hathaway', 7, 2023, 'Insurance: Property and Casualty (Stock)', 'Financials', 'NE', 'Omaha', '675657', 302089, '22819', '948452', '383000', 'no', 'no', 'no', 'yes'),
    ('Alphabet', 8, 2023, 'Internet Services and Retailing', 'Technology', 'CA', 'Mountain View', '1330201', 282836, '59972', '365264', '190234', 'no', 'no', 'no', 'yes'),
    ('McKesson', 9, 2023, 'Wholesalers: Health Care', 'Health Care', 'TX', 'Irving', '48757', 263966, '1114', '63298', '66500', 'no', 'no', 'no', 'yes'),
    ('Chevron', 10, 2023, 'Petroleum Refining', 'Energy', 'CA', 'San Ramon', '311093', 246252, '35465', '257709', '43846', 'no', 'no', 'no', 'yes'),
    ('AmerisourceBergen', 11, 2023, 'Wholesalers: Health Care', 'Health Care', 'PA', 'Conshohocken', '32384', 238587, '1699', '56561', '41500', 'no', 'no', 'no', 'yes'),
    ('Costco Wholesale', 12, 2023, 'General Merchandisers', 'Retailing', 'WA', 'Issaquah', '220354', 226954, '5844', '64166', '304000', 'no', 'no', 'no', 'yes'),
    ('Microsoft', 13, 2023, 'Computer Software', 'Technology', 'WA', 'Redmond', '2146049', 198270, '72738', '364840', '221000', 'no', 'no', 'no', 'yes'),
    ('Cardinal Health', 14, 2023, 'Wholesalers: Health Care', 'Health Care', 'OH', 'Dublin', '19452', 181364, '933', '43878', '46035', 'no', 'no', 'no', 'yes'),
    ('Cigna', 15, 2023, 'Health Care: Pharmacy and Other Services', 'Health Care', 'CT', 'Bloomfield', '75901', 180516, '6668', '143932', '70231', 'no', 'no', 'no', 'yes'),
    ('Marathon Petroleum', 16, 2023, 'Petroleum Refining', 'Energy', 'OH', 'Findlay', '59544', 180012, '14516', '89904', '17800', 'no', 'no', 'no', 'yes'),
    ('Phillips 66', 17, 2023, 'Petroleum Refining', 'Energy', 'TX', 'Houston', '46727', 175702, '11024', '76442', '13000', 'no', 'no', 'no', 'yes'),
    ('Valero Energy', 18, 2023, 'Petroleum Refining', 'Energy', 'TX', 'San Antonio', '51351', 171189, '11528', '60982', '9743', 'no', 'no', 'no', 'yes'),
    ('Ford Motor', 19, 2023, 'Motor Vehicles & Parts', 'Motor Vehicles & Parts', 'MI', 'Dearborn', '50400', 158057, '1981', '255884', '173000', 'no', 'no', 'no', 'yes'),
    ('Home Depot', 20, 2023, 'Specialty Retailers: Other', 'Retailing', 'GA', 'Atlanta', '299534', 157403, '17105', '76445', '471600', 'no', 'no', 'no', 'yes'),
    ('General Motors', 21, 2023, 'Motor Vehicles & Parts', 'Motor Vehicles & Parts', 'MI', 'Detroit', '51155', 156735, '9934', '264037', '167000', 'no', 'yes', 'no', 'yes'),
    ('Elevance Health', 22, 2023, 'Health Care: Insurance and Managed Care', 'Health Care', 'IN', 'Indianapolis', '109098', 156595, '6025', '102772', '102300', 'no', 'yes', 'no', 'yes'),
    ('JPMorgan Chase', 23, 2023, 'Commercial Banks', 'Financials', 'NY', 'New York', '383549', 154792, '37676', '3665743', '293723', 'no', 'no', 'no', 'yes'),
    ('Kroger', 24, 2023, 'Food & Drug Stores', 'Food & Drug Stores', 'OH', 'Cincinnati', '35421', 148258, '2244', '49623', '430000', 'no', 'no', 'no', 'yes'),
    ('Centene', 25, 2023, 'Health Care: Insurance and Managed Care', 'Health Care', 'MO', 'St. Louis', '34810', 144547, '1202', '76870', '74300', 'no', 'yes', 'no', 'yes'),
    ('Verizon Communications', 26, 2023, 'Telecommunications', 'Telecommunications', 'NY', 'New York', '163333', 136835, '21256', '379680', '117100', 'no', 'no', 'no', 'yes'),
    ('Walgreens Boots Alliance', 27, 2023, 'Food & Drug Stores', 'Food & Drug Stores', 'IL', 'Deerfield', '29836', 132703, '4337', '90124', '262500', 'no', 'yes', 'no', 'yes'),
    ('Fannie Mae', 28, 2023, 'Diversified Financials', 'Financials', 'DC', 'Washington', '475', 121596, '12923', '4305288', '8000', 'no', 'yes', 'no', 'yes'),
    ('Comcast', 29, 2023, 'Telecommunications', 'Telecommunications', 'PA', 'Philadelphia', '159831', 121427, '5370', '257275', '186000', 'no', 'no', 'no', 'yes'),
    ('AT&T', 30, 2023, 'Telecommunications', 'Telecommunications', 'TX', 'Dallas', '137250', 120741, '8524', '402853', '160700', 'no', 'no', 'no', 'yes'),
    ('Meta Platforms', 31, 2023, 'Internet Services and Retailing', 'Technology', 'CA', 'Menlo Park', '549484', 116609, '23200', '185727', '86482', 'yes', 'no', 'no', 'yes'),
    ('Bank of America', 32, 2023, 'Commercial Banks', 'Financials', 'NC', 'Charlotte', '228780', 115053, '27528', '3051375', '216823', 'no', 'no', 'no', 'yes'),
    ('Target', 33, 2023, 'General Merchandisers', 'Retailing', 'MN', 'Minneapolis', '76250', 109120, '2780', '53335', '440000', 'no', 'no', 'no', 'yes'),
    ('Dell Technologies', 34, 2023, 'Computers, Office Equipment', 'Technology', 'TX', 'Round Rock', '29402', 102301, '2442', '89611', '133000', 'yes', 'no', 'no', 'yes'),
    ('Archer Daniels Midland', 35, 2023, 'Food Production', 'Food, Beverages & Tobacco', 'IL', 'Chicago', '43530', 101556, '4340', '59774', '41181', 'no', 'no', 'no', 'yes'),
    ('Citigroup', 36, 2023, 'Commercial Banks', 'Financials', 'NY', 'New York', '91270', 101078, '14845', '2416676', '238104', 'no', 'yes', 'no', 'yes'),
    ('UPS', 37, 2023, 'Mail, Package, and Freight Delivery', 'Transportation', 'GA', 'Atlanta', '166189', 100338, '11548', '71124', '404700', 'no', 'yes', 'no', 'yes'),
    ('Pfizer', 38, 2023, 'Pharmaceuticals', 'Health Care', 'NY', 'New York', '230292', 100330, '31372', '197205', '83000', 'no', 'no', 'no', 'yes'),
    ('Lowe''s', 39, 2023, 'Specialty Retailers: Other', 'Retailing', 'NC', 'Mooresville', '119253', 97059, '6437', '43708', '244500', 'no', 'no', 'no', 'yes'),
    ('Johnson & Johnson', 40, 2023, 'Pharmaceuticals', 'Health Care', 'NJ', 'New Brunswick', '483576', 94943, '17941', '187378', '152700', 'no', 'no', 'no', 'yes');

-- Query to find the number of companies in the 2023 Fortune 500 list, aggregated by sector,
-- where the CEO is female. This provides insights into female leadership distribution across sectors.
SELECT sector, COUNT(*) AS num_companies
FROM fortune_500_companies
WHERE female_ceo = 'yes'
GROUP BY sector
ORDER BY num_companies DESC

-- Query to identify companies in the Fortune 500 list founded by women,
-- and whether the founder currently holds the CEO position. This showcases the role of women
-- in both founding and leading major companies.
SELECT name, rank, industry, sector,
CASE
    WHEN founder_is_ceo = 'yes' AND female_ceo = 'yes' THEN 'yes'
    ELSE 'no'
END AS founder_is_ceo_and_female
FROM fortune_500_companies
ORDER BY founder_is_ceo_and_female desc

-- Query to calculate the total market value (in millions) of companies in the Fortune 500 list
-- based in New York (NY), grouped by industry. This helps understand the economic impact
-- of different sectors within the state.
SELECT industry, sum(market_value_mil) as total_value_mil
FROM fortune_500_companies
WHERE headquarters_state = 'NY'
GROUP BY industry
HAVING sum(market_value_mil) >= 5000000
ORDER BY total_value_mil DESC

-- Query to identify newcomers to the Fortune 500 list with fewer than 5,000 employees.
-- This highlights small but rapidly growing companies that have made it to the list.
SELECT name, employees
FROM fortune_500_companies
WHERE employees <= 1000
AND newcomer_to_fortune_500 = 'yes'
ORDER BY employees DESC