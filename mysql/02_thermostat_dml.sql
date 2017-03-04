--
-- To be executed as a privileged user.
-- Make sure you are using the correct database before executing this script ('use databasename;' command).
-- Alternatively, the database can be specified from the command line:
--     mysql -u USERNAME -p -h HOSTIPADDRESS --database=DBNAME < 02_thermostat_dml.sql
--

-- Contains the MEASURED temperature. Measurements are done every minute.
CREATE TABLE IF NOT EXISTS temp_hum (
    th_timestamp DATETIME DEFAULT NOW() NOT NULL,
    th_temperature FLOAT(4,2) NOT NULL,
    th_humidity FLOAT(4,2) NOT NULL,
    PRIMARY KEY (th_timestamp)
);

CREATE TABLE IF NOT EXISTS temp_schedule (
    ts_id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    ts_from DATE NOT NULL, /* This field actually represents a DAY and a MONTH only! So the year will always be 0004, because it's a leap year. */
    ts_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (ts_id),
    UNIQUE (ts_from),
    UNIQUE (ts_name)
);

CREATE TABLE IF NOT EXISTS temp_schedule_detail (
    tsd_id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    tsd_ts_id BIGINT(20) UNSIGNED NOT NULL,
    tsd_day_of_week TINYINT NOT NULL,
    tsd_time TIME NOT NULL,
    tsd_temperature FLOAT(3,1) NOT NULL,
    PRIMARY KEY (tsd_id),
    FOREIGN KEY (tsd_ts_id) REFERENCES temp_schedule(ts_id),
    UNIQUE (tsd_ts_id, tsd_day_of_week, tsd_time),
    CONSTRAINT chk_tsd_day_of_week CHECK (tsd_day_of_week >= 0 /*Monday*/ AND tsd_day_of_week <= 6 /*Sunday*/)
);

CREATE TABLE IF NOT EXISTS one_time_schedule (
    ots_id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    ots_from_timestamp DATETIME NOT NULL,
    ots_until_timestamp DATETIME NOT NULL,
    ots_temperature FLOAT(3,1) NOT NULL,
    PRIMARY KEY (ots_id)
);

-- Contains temperature REQUESTS as they are actually TAKEN INTO account
-- by the thermostat.
-- Example 1: when a new SCHEDULE kicks in a record is added.
-- Example 2: when a user uses buttons to request a temperature a record is added.
-- Actual temperature requests MAY OR MAY NOT result in a boiler change.
CREATE TABLE IF NOT EXISTS temp_request (
    tr_id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    tr_timestamp DATETIME DEFAULT NOW() NOT NULL,
    tr_temperature FLOAT(3,1) NOT NULL,
    tr_source ENUM('buttons', 'schedule', 'android', 'web') DEFAULT 'buttons' NOT NULL,
    PRIMARY KEY (tr_id),
    INDEX i_tr_timestamp (tr_timestamp)
);

-- Contains actual switching ON or OFF of the boiler.
CREATE TABLE IF NOT EXISTS boiler_activated (
    ba_id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    ba_timestamp DATETIME DEFAULT NOW() NOT NULL,
    ba_set_to_on BIT DEFAULT 0 NOT NULL,
    PRIMARY KEY (ba_id)
);
