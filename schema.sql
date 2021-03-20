CREATE TABLE IF NOT EXISTS shoe_beans
(
	index INTEGER,
    country VARCHAR(255) NOT NULL,
    data_year VARCHAR(255) NOT NULL,
    carbon_consumed FLOAT(3),
    carbon_produced FLOAT(3),
    QScore VARCHAR(2),
	hdi FLOAT(3),
    PRIMARY KEY(country, data_year)
);

CREATE TABLE IF NOT EXISTS QScore
(
    QScore VARCHAR(2) NOT NULL,
    definition CHAR(500),
    PRIMARY KEY(QScore)
);


-- Create FKs
ALTER TABLE shoe_beans
    ADD    FOREIGN KEY (QScore)
    REFERENCES QScore(QScore)
    MATCH SIMPLE
;

ALTER TABLE shoe_beans DROP COLUMN index;