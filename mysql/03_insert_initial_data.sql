INSERT INTO temp_schedule (ts_from, ts_name)
    VALUES ('0004-10-01', 'Winter');

INSERT INTO temp_schedule (ts_from, ts_name)
    VALUES ('0004-04-01', 'Zomer');

-- Monday
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            0, '07:00', 22.5);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            0, '08:00', 18.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            0, '16:30', 22.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            0, '22:00', 18.0);

-- Tuesday
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            1, '07:00', 22.5);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            1, '08:00', 18.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            1, '16:30', 22.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            1, '22:00', 18.0);

-- Wednesday
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            2, '07:00', 22.5);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            2, '08:00', 18.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            2, '16:30', 22.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            2, '22:00', 18.0);

-- Thursday
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            3, '07:00', 22.5);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            3, '08:00', 18.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            3, '16:30', 22.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            3, '22:00', 18.0);

-- Friday
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            4, '07:00', 22.5);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            4, '08:00', 18.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            4, '16:30', 22.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            4, '22:00', 18.0);

-- Saturday
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            5, '09:00', 22.5);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            5, '10:00', 22.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            5, '18:00', 22.5);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            5, '22:00', 18.0);

-- Sunday
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            6, '09:00', 22.5);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            6, '10:00', 22.0);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            6, '18:00', 22.5);
INSERT INTO temp_schedule_detail (tsd_ts_id, tsd_day_of_week, tsd_time, tsd_temperature)
    VALUES ((SELECT ts_id FROM temp_schedule WHERE ts_name = 'Winter'),
            6, '22:00', 18.0);

INSERT INTO one_time_schedule (ots_from_timestamp, ots_until_timestamp, ots_temperature)
    VALUES ('2016-10-29 10:00', '2016-10-29 13:00', 13.0);
