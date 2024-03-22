--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: timetable; Type: TABLE; Schema: public; Owner: mads
--

CREATE TABLE public.timetable (
    day character varying NOT NULL,
    period_name character varying NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL,
    location character varying,
    course_code character varying NOT NULL,
    section character varying NOT NULL
);


ALTER TABLE public.timetable OWNER TO postgres;

--
-- Data for Name: timetable; Type: TABLE DATA; Schema: public; Owner: mads
--

COPY public.timetable (day, period_name, start_time, end_time, location, course_code, section) FROM stdin;
Monday	Lecture	08:00:00	09:30:00	Apt Hall 216	BUSA350 - International Trade and Policy	Section A
Monday	Lecture	08:00:00	09:30:00	Norton-Motulsky 207B	BUSA210 - Financial Accounting	Section A
Monday	Lecture	08:00:00	09:30:00	Norton-Motulsky 207A	BUSA402 - Business Law	Section A
Monday	Lecture	08:00:00	09:30:00	Apt Hall 217	ECON101 - Microeconomics	Section A
Monday	Lecture	08:00:00	09:30:00	Nutor Hall 100	ECON100 - Principles of Economics	Section A
Monday	Lecture	09:45:00	11:15:00	Norton-Motulsky 207B	BUSA321 - Investments	Section A
Monday	Discussion	11:30:00	13:00:00	Nutor Hall 115	BUSA401_A - Entrepreneurship I	Section A
Monday	Lecture	11:30:00	13:00:00	Apt Hall 217	ECON231 - Mathematics for Economists	Section A
Monday	Seminar	13:15:00	14:45:00	Nutor Hall 115	BUSA491 - Undergraduate Thesis I (BA)	Section A
Monday	Discussion	15:00:00	16:00:00	Nutor Hall 115	BUSA304 - Operations Management	Section A
Tuesday	Lecture	08:00:00	09:30:00	Radichel MPR	BUSA304 - Operations Management	Section A
Tuesday	Lecture	08:00:00	09:30:00	Norton-Motulsky 207B	BUSA224 - Finance for Non-finance Managers	Section A
Tuesday	Lecture	08:00:00	09:30:00	Apt Hall 216	BUSA 432 - Organisational Development	Section A
Tuesday	Lecture	09:45:00	11:15:00	Apt Hall 216	BUSA431 - Real Estate Development	Section A
Tuesday	Lecture	09:45:00	11:15:00	Norton-Motulsky 207B	BUSA422 - Corporate Finance	Section A
Tuesday	Lecture	09:45:00	11:15:00	Norton-Motulsky 207A	BUSA457 - Anti-Money Laundering	Section A
Tuesday	Lecture	11:30:00	13:00:00	Nutor Hall 115	BUSA161 - Foundations of Design and Entrepreneurship I	Section A
Tuesday	Lecture	11:30:00	13:00:00	Nutor Hall 100	BUSA444 - Supply Chain Management	Section A
Tuesday	Period	11:30:00	13:00:00	Nutor Hall 216	BUSA456 - Managerial Economics	Section A
Tuesday	Discussion	12:00:00	13:00:00	Norton-Motulsky 207A	ECON231 - Mathematics for Economists	Section A
Tuesday	Lecture	13:15:00	14:45:00	Radichel MPR	BUSA442 - Strategic Brand Management	Section A
Tuesday	Lecture	13:15:00	14:45:00	Norton-Motulsky 207A	BUSA423 - International Finance	Section A
Tuesday	Seminar	15:00:00	16:30:00	Norton-Motulsky 207A	BUSA411 - Applied Project I (BA)	Section A
Wednesday	Lecture	08:00:00	09:30:00	Apt Hall 216	BUSA350 - International Trade and Policy	Section A
Wednesday	Lecture	08:00:00	09:30:00	Norton-Motulsky 207B	BUSA210 - Financial Accounting	Section A
Wednesday	Lecture	08:00:00	09:30:00	Norton-Motulsky 207A	BUSA402 - Business Law	Section A
Wednesday	Lecture	08:00:00	09:30:00	Apt Hall 217	ECON101 - Microeconomics	Section A
Wednesday	Lecture	08:00:00	09:30:00	Nutor Hall 100	ECON100 - Principles of Economics	Section A
Wednesday	Lecture	09:45:00	13:00:00	Nutor Hall 115	BUSA401_A - Entrepreneurship I	Section A
Wednesday	Lecture	09:45:00	11:15:00	Norton-Motulsky 207B	BUSA321 - Investments	Section A
Wednesday	Lecture	11:30:00	13:00:00	Apt Hall 217	ECON231 - Mathematics for Economists	Section A
Wednesday	Seminar	13:15:00	14:45:00	Nutor Hall 115	BUSA491 - Undergraduate Thesis I (BA)	Section A
Thursday	Lecture	08:00:00	09:30:00	Radichel MPR	BUSA304 - Operations Management	Section A
Thursday	Lecture	08:00:00	09:30:00	Norton-Motulsky 207B	BUSA224 - Finance for Non-finance Managers	Section A
Thursday	Lecture	08:00:00	09:30:00	Apt Hall 216	BUSA 432 - Organisational Development	Section A
Thursday	Lecture	09:45:00	11:15:00	Apt Hall 216	BUSA431 - Real Estate Development	Section A
Thursday	Lecture	09:45:00	11:15:00	Norton-Motulsky 207B	BUSA422 - Corporate Finance	Section A
Thursday	Lecture	09:45:00	11:15:00	Norton-Motulsky 207A	BUSA457 - Anti-Money Laundering	Section A
Thursday	Lecture	11:30:00	13:00:00	Nutor Hall 115	BUSA161 - Foundations of Design and Entrepreneurship I	Section A
Thursday	Lecture	11:30:00	13:00:00	Nutor Hall 100	BUSA444 - Supply Chain Management	Section A
Thursday	Period	11:30:00	13:00:00	Nutor Hall 216	BUSA456 - Managerial Economics	Section A
Thursday	Lecture	13:15:00	14:45:00	Radichel MPR	BUSA442 - Strategic Brand Management	Section A
Thursday	Lecture	13:15:00	14:45:00	Norton-Motulsky 207A	BUSA423 - International Finance	Section A
Thursday	Seminar	15:00:00	16:30:00	Norton-Motulsky 207A	BUSA411 - Applied Project I (BA)	Section A
Thursday	Discussion	15:30:00	16:30:00	Jackson Hall 116	BUSA321 - Investments	Section A
Friday	Discussion	08:00:00	09:00:00	Nutor Hall 115	BUSA161 - Foundations of Design and Entrepreneurship I	Section A
Friday	Discussion	08:00:00	09:00:00	Jackson Lab 222	BUSA442 - Strategic Brand Management	Section A
Friday	Discussion	08:00:00	09:00:00	Jackson Hall 116	BUSA423 - International Finance	Section A
Friday	Discussion	08:00:00	09:00:00	Apt Hall 216	BUSA224 - Finance for Non-finance Managers	Section A
Friday	Discussion	08:00:00	09:00:00	Nutor Hall 100	ECON100 - Principles of Economics	Section A
Friday	Discussion	08:00:00	09:00:00	Jackson Lab 221	BUSA456 - Managerial Economics	Section A
Friday	Discussion	09:10:00	10:10:00	Jackson Lab 222	BUSA444 - Supply Chain Management	Section A
Friday	Discussion	09:10:00	10:10:00	Norton-Motulsky 207A	BUSA431 - Real Estate Development	Section A
Friday	Discussion	09:10:00	10:10:00	Jackson Hall 115	BUSA 432 - Organisational Development	Section A
Friday	Discussion	10:20:00	11:20:00	Nutor Hall 216	BUSA350 - International Trade and Policy	Section A
Friday	Discussion	10:20:00	11:20:00	Radichel MPR	BUSA210 - Financial Accounting	Section A
Friday	Discussion	10:20:00	11:20:00	Norton-Motulsky 207B	BUSA422 - Corporate Finance	Section A
Friday	Discussion	10:20:00	11:20:00	Norton-Motulsky 207A	BUSA402 - Business Law	Section A
Friday	Discussion	10:20:00	11:20:00	Apt Hall 217	ECON101 - Microeconomics	Section A
Friday	Discussion	13:55:00	14:55:00	Norton-Motulsky 207A	BUSA457 - Anti-Money Laundering	Section A
Monday	Lecture	08:00:00	09:30:00	Radichel MPR	BUSA402 - Business Law	Section C
Monday	Lecture	11:30:00	13:00:00	Apt Hall 216	BUSA350 - International Trade and Policy	Section C
Monday	Lecture	11:30:00	13:00:00	Jackson Hall 116	BUSA210 - Financial Accounting	Section C
Monday	Lecture	11:30:00	13:00:00	Jackson Hall 115	ECON101 - Microeconomics	Section C
Monday	Lecture	11:30:00	13:00:00	Nutor Hall 100	ECON100 - Principles of Economics	Section C
Tuesday	Lecture	11:30:00	13:00:00	Radichel MPR	BUSA304 - Operations Management	Section C
Tuesday	Lecture	13:15:00	14:45:00	Norton-Motulsky 207B	BUSA161 - Foundations of Design and Entrepreneurship I	Section C
Wednesday	Lecture	08:00:00	09:30:00	Radichel MPR	BUSA402 - Business Law	Section C
Wednesday	Lecture	11:30:00	13:00:00	Apt Hall 216	BUSA350 - International Trade and Policy	Section C
Wednesday	Lecture	11:30:00	13:00:00	Jackson Hall 116	BUSA210 - Financial Accounting	Section C
Wednesday	Lecture	11:30:00	13:00:00	Jackson Hall 115	ECON101 - Microeconomics	Section C
Wednesday	Lecture	11:30:00	13:00:00	Nutor Hall 100	ECON100 - Principles of Economics	Section C
Thursday	Lecture	11:30:00	13:00:00	Radichel MPR	BUSA304 - Operations Management	Section C
Thursday	Lecture	13:15:00	14:45:00	Norton-Motulsky 207B	BUSA161 - Foundations of Design and Entrepreneurship I	Section C
Friday	Discussion	08:00:00	09:00:00	Norton-Motulsky 207B	BUSA161 - Foundations of Design and Entrepreneurship I	Section C
Friday	Discussion	09:10:00	10:10:00	Radichel MPR	BUSA304 - Operations Management	Section C
Friday	Discussion	09:10:00	10:10:00	Apt Hall 216	ECON100 - Principles of Economics	Section C
Friday	Discussion	13:55:00	14:55:00	Nutor Hall 216	BUSA350 - International Trade and Policy	Section C
Friday	Discussion	13:55:00	14:55:00	Radichel MPR	BUSA210 - Financial Accounting	Section C
Friday	Discussion	13:55:00	14:55:00	Norton-Motulsky 207B	BUSA402 - Business Law	Section C
Friday	Discussion	13:55:00	14:55:00	Apt Hall 217	ECON101 - Microeconomics	Section C
Monday	Lecture	09:45:00	11:15:00	Apt Hall 216	BUSA350 - International Trade and Policy	Section B
Monday	Lecture	09:45:00	11:15:00	Radichel MPR	BUSA210 - Financial Accounting	Section B
Monday	Lecture	09:45:00	11:15:00	Norton-Motulsky 207A	BUSA402 - Business Law	Section B
Monday	Lecture	09:45:00	11:15:00	Apt Hall 217	ECON101 - Microeconomics	Section B
Monday	Lecture	09:45:00	11:15:00	Nutor Hall 100	ECON100 - Principles of Economics	Section B
Monday	Lecture	11:30:00	13:00:00	Norton-Motulsky 207B	BUSA321 - Investments	Section B
Tuesday	Lecture	09:45:00	11:15:00	Radichel MPR	BUSA304 - Operations Management	Section B
Tuesday	Lecture	11:30:00	13:00:00	Norton-Motulsky 207B	BUSA422 - Corporate Finance	Section B
Tuesday	Lecture	13:15:00	14:45:00	Nutor Hall 115	BUSA161 - Foundations of Design and Entrepreneurship I	Section B
Wednesday	Lecture	09:45:00	11:15:00	Apt Hall 216	BUSA350 - International Trade and Policy	Section B
Wednesday	Lecture	09:45:00	11:15:00	Radichel MPR	BUSA210 - Financial Accounting	Section B
Wednesday	Lecture	09:45:00	11:15:00	Norton-Motulsky 207A	BUSA402 - Business Law	Section B
Wednesday	Lecture	09:45:00	11:15:00	Apt Hall 217	ECON101 - Microeconomics	Section B
Wednesday	Lecture	09:45:00	11:15:00	Nutor Hall 100	ECON100 - Principles of Economics	Section B
Wednesday	Lecture	11:30:00	13:00:00	Norton-Motulsky 207B	BUSA321 - Investments	Section B
Thursday	Lecture	09:45:00	11:15:00	Radichel MPR	BUSA304 - Operations Management	Section B
Thursday	Lecture	11:30:00	13:00:00	Norton-Motulsky 207B	BUSA422 - Corporate Finance	Section B
Thursday	Lecture	13:15:00	14:45:00	Nutor Hall 115	BUSA161 - Foundations of Design and Entrepreneurship I	Section B
Thursday	Discussion	16:40:00	17:40:00	Jackson Hall 116	BUSA321 - Investments	Section B
Friday	Discussion	08:00:00	09:00:00	Radichel MPR	BUSA304 - Operations Management	Section B
Friday	Discussion	09:10:00	10:10:00	Nutor Hall 115	BUSA161 - Foundations of Design and Entrepreneurship I	Section B
Friday	Discussion	09:10:00	10:10:00	Nutor Hall 100	ECON100 - Principles of Economics	Section B
Friday	Discussion	12:15:00	13:15:00	Nutor Hall 216	BUSA350 - International Trade and Policy	Section B
Friday	Discussion	12:15:00	13:15:00	Radichel MPR	BUSA210 - Financial Accounting	Section B
Friday	Discussion	12:15:00	13:15:00	Norton-Motulsky 207B	BUSA422 - Corporate Finance	Section B
Friday	Discussion	12:15:00	13:15:00	Norton-Motulsky 207A	BUSA402 - Business Law	Section B
Friday	Discussion	12:15:00	13:15:00	Apt Hall 217	ECON101 - Microeconomics	Section B
Tuesday	Period	13:15:00	14:45:00	Nutor Hall 100	ECON100 - Principles of Economics	Section D
Tuesday	Lecture	15:00:00	16:30:00	Norton-Motulsky 207B	BUSA161 - Foundations of Design and Entrepreneurship I	Section D
Thursday	Period	13:15:00	14:45:00	Nutor Hall 100	ECON100 - Principles of Economics	Section D
Thursday	Lecture	15:00:00	16:30:00	Norton-Motulsky 207B	BUSA161 - Foundations of Design and Entrepreneurship I	Section D
Friday	Period	08:00:00	09:00:00	Apt Hall 217	ECON100 - Principles of Economics	Section D
Friday	Discussion	09:10:00	10:10:00	Norton-Motulsky 207B	BUSA161 - Foundations of Design and Entrepreneurship I	Section D
Tuesday	Lecture	11:30:00	13:00:00	Fab Lab 303	BUSA161 - Foundations of Design and Entrepreneurship I	Section E
Tuesday	Lecture	15:00:00	16:30:00	Nutor Hall 100	ECON100 - Principles of Economics	Section E
Thursday	Lecture	11:30:00	13:00:00	Fab Lab 303	BUSA161 - Foundations of Design and Entrepreneurship I	Section E
Thursday	Period	15:00:00	16:30:00	Nutor Hall 100	ECON100 - Principles of Economics	Section E
Friday	Discussion	09:10:00	10:10:00	Nutor Hall 216	BUSA161 - Foundations of Design and Entrepreneurship I	Section E
Friday	Period	09:10:00	10:10:00	Apt Hall 217	ECON100 - Principles of Economics	Section E
Tuesday	Lecture	13:15:00	14:45:00	Fab Lab 203	BUSA161 - Foundations of Design and Entrepreneurship I	Section F
Thursday	Lecture	13:15:00	14:45:00	Fab Lab 203	BUSA161 - Foundations of Design and Entrepreneurship I	Section F
Friday	Discussion	09:10:00	10:10:00	Fab Lab 203	BUSA161 - Foundations of Design and Entrepreneurship I	Section F
Tuesday	Lecture	13:15:00	14:45:00	Nutor Hall 216	BUSA161 - Foundations of Design and Entrepreneurship I	Section G
Thursday	Lecture	13:15:00	14:45:00	Nutor Hall 216	BUSA161 - Foundations of Design and Entrepreneurship I	Section G
Friday	Discussion	08:00:00	09:00:00	Nutor Hall 216	BUSA161 - Foundations of Design and Entrepreneurship I	Section G
Tuesday	Lecture	15:00:00	16:30:00	Nutor Hall 216	BUSA161 - Foundations of Design and Entrepreneurship I	Section H
Thursday	Lecture	15:00:00	16:30:00	Nutor Hall 216	BUSA161 - Foundations of Design and Entrepreneurship I	Section H
Friday	Discussion	08:00:00	09:00:00	Fab Lab 203	BUSA161 - Foundations of Design and Entrepreneurship I	Section H
Monday	Lecture	08:00:00	09:30:00	Jackson Lab 222	CS111 - Introduction to Computing and Information Systems	Section A
Monday	Lab	08:00:00	09:30:00	Nutor Hall 216	CS456 - Algorithm Design and Analysis	Section A
Monday	Lecture	08:00:00	09:30:00	Databank Foundation Hall 218	CS221 - Discrete Structures and Theory	Section A
Monday	Lecture	08:00:00	09:30:00	D-Lab 102	CS433 - Operating Systems / Operating Systems and Systems Administration	Section A
Monday	Lab	11:30:00	13:00:00	Bio Lab	CS331 - Computer Organization and Architecture	Section A
Monday	Period	11:30:00	13:00:00	Nutor Hall 216	IS351 - Systems Analysis and Design	Section A
Monday	Lab	11:30:00	13:00:00	Fab Lab 303	CS458 - Internet of Things	Section A
Monday	Lecture	13:15:00	14:45:00	Jackson Hall 115	CS341 - Web Technologies	Section A
Monday	Lecture	13:15:00	14:45:00	Jackson Hall 116	CS313 - Intermediate Computer Programming	Section A
Monday	Seminar	13:15:00	14:45:00	Nutor Hall 100	CS410-SEM - CSIS Capstone Seminar	Section A
Monday	Lecture	15:00:00	16:30:00	Jackson Lab 221	CS442 - E-Commerce	Section A
Tuesday	Lecture	08:00:00	09:30:00	Apt Hall 217	CS213 - Object-Oriented Programming	Section A
Tuesday	Lecture	08:00:00	09:30:00	Nutor Hall 216	CS330 - Hardware and Systems Fundamentals	Section A
Tuesday	Lecture	09:45:00	11:15:00	Nutor Hall 100	IS451 - Information and Systems Security	Section A
Tuesday	Lecture	11:30:00	13:00:00	Science Lab	CS458 - Internet of Things	Section A
Tuesday	Period	11:30:00	13:00:00	D-Lab 102	CS462 - Cloud Computing	Section A
Tuesday	Lecture	13:15:00	14:45:00	Jackson Hall 115	CS456 - Algorithm Design and Analysis	Section A
Tuesday	Lecture	13:15:00	14:45:00	Bio Lab	CS331 - Computer Organization and Architecture	Section A
Tuesday	Lecture	13:15:00	14:45:00	D-Lab 102	CS 452 - Machine Learning	Section A
Tuesday	For Grading	16:45:00	18:15:00	OT	CS410 - Applied Project (CS)	Section A
Wednesday	Lecture	08:00:00	09:30:00	Jackson Lab 222	CS111 - Introduction to Computing and Information Systems	Section A
Wednesday	Lecture	08:00:00	09:30:00	Databank Foundation Hall 218	CS221 - Discrete Structures and Theory	Section A
Wednesday	Lecture	08:00:00	09:30:00	D-Lab 102	CS433 - Operating Systems / Operating Systems and Systems Administration	Section A
Wednesday	Period	11:30:00	13:00:00	Nutor Hall 216	IS351 - Systems Analysis and Design	Section A
Wednesday	Lab	11:30:00	13:00:00	D-Lab 102	CS 452 - Machine Learning	Section A
Wednesday	Lecture	13:15:00	14:45:00	Jackson Hall 115	CS341 - Web Technologies	Section A
Wednesday	Lecture	13:15:00	14:45:00	Jackson Hall 116	CS313 - Intermediate Computer Programming	Section A
Wednesday	Lecture	15:00:00	16:30:00	Jackson Lab 221	CS442 - E-Commerce	Section A
Thursday	Lab	08:00:00	09:30:00	Jackson Hall 116	CS313 - Intermediate Computer Programming	Section A
Thursday	Lecture	08:00:00	09:30:00	Apt Hall 217	CS213 - Object-Oriented Programming	Section A
Thursday	Lab	08:00:00	09:30:00	Nutor Hall 216	CS330 - Hardware and Systems Fundamentals	Section A
Thursday	Lecture	09:45:00	11:15:00	Nutor Hall 100	IS451 - Information and Systems Security	Section A
Thursday	Lecture	11:30:00	13:00:00	Science Lab	CS458 - Internet of Things	Section A
Thursday	Lecture	11:30:00	13:00:00	D-Lab 102	CS462 - Cloud Computing	Section A
Thursday	Lecture	13:15:00	14:45:00	Jackson Hall 115	CS456 - Algorithm Design and Analysis	Section A
Thursday	Lecture	13:15:00	14:45:00	Bio Lab	CS331 - Computer Organization and Architecture	Section A
Thursday	Lecture	13:15:00	14:45:00	D-Lab 102	CS 452 - Machine Learning	Section A
Thursday	For grading only	16:45:00	18:15:00	 - 	CS491 - Undergraduate Thesis I (CS)	Section A
Friday	Lab	10:20:00	11:50:00	Jackson Lab 222	CS111 - Introduction to Computing and Information Systems	Section A
Friday	Lab	10:20:00	11:50:00	Databank Foundation Hall 218	CS221 - Discrete Structures and Theory	Section A
Friday	Lab	10:20:00	11:50:00	Fab Lab 303	CS442 - E-Commerce	Section A
Friday	Lab	10:20:00	11:50:00	D-Lab 102	CS433 - Operating Systems / Operating Systems and Systems Administration	Section A
Friday	Lab	10:20:00	11:50:00	Apt Hall 216	CS341-LAB - Web Technologies-LAB	Section A
Friday	Lab	10:20:00	11:50:00	Science Lab	CS462 - Cloud Computing	Section A
Friday	Lab	12:15:00	13:45:00	Nutor Hall 100	CS213 - Object-Oriented Programming	Section A
Friday	Lab	13:55:00	15:25:00	Jackson Hall 115	IS451 - Information and Systems Security	Section A
Friday	Lab	13:55:00	15:25:00	Jackson Hall 116	IS351 - Systems Analysis and Design	Section A
Monday	Lecture	09:45:00	11:15:00	Jackson Lab 222	CS111 - Introduction to Computing and Information Systems	Section B
Monday	Lab	09:45:00	11:15:00	Nutor Hall 216	CS456 - Algorithm Design and Analysis	Section B
Monday	Lecture	09:45:00	11:15:00	Databank Foundation Hall 218	CS221 - Discrete Structures and Theory	Section B
Monday	Lecture	09:45:00	11:15:00	D-Lab 102	CS433 - Operating Systems / Operating Systems and Systems Administration	Section B
Monday	Lecture	15:00:00	16:30:00	Jackson Hall 115	CS341 - Web Technologies	Section B
Monday	Lecture	15:00:00	16:30:00	Jackson Hall 116	CS313 - Intermediate Computer Programming	Section B
Tuesday	Lecture	09:45:00	11:15:00	Apt Hall 217	CS213 - Object-Oriented Programming	Section B
Tuesday	Lecture	09:45:00	11:15:00	Nutor Hall 216	CS330 - Hardware and Systems Fundamentals	Section B
Tuesday	Lecture	15:00:00	16:30:00	Jackson Hall 115	CS456 - Algorithm Design and Analysis	Section B
Wednesday	Lecture	09:45:00	11:15:00	Jackson Lab 222	CS111 - Introduction to Computing and Information Systems	Section B
Wednesday	Lecture	09:45:00	11:15:00	Databank Foundation Hall 218	CS221 - Discrete Structures and Theory	Section B
Wednesday	Lecture	09:45:00	11:15:00	D-Lab 102	CS433 - Operating Systems / Operating Systems and Systems Administration	Section B
Wednesday	Lecture	15:00:00	16:30:00	Jackson Hall 115	CS341 - Web Technologies	Section B
Wednesday	Lecture	15:00:00	16:30:00	Jackson Hall 116	CS313 - Intermediate Computer Programming	Section B
Thursday	Lab	09:45:00	11:15:00	Jackson Hall 116	CS313 - Intermediate Computer Programming	Section B
Thursday	Lecture	09:45:00	11:15:00	Apt Hall 217	CS213 - Object-Oriented Programming	Section B
Thursday	Lab	09:45:00	11:15:00	Nutor Hall 216	CS330 - Hardware and Systems Fundamentals	Section B
Thursday	Lecture	15:00:00	16:30:00	Jackson Hall 115	CS456 - Algorithm Design and Analysis	Section B
Friday	Lab	12:15:00	13:45:00	Jackson Lab 222	CS111 - Introduction to Computing and Information Systems	Section B
Friday	Lab	12:15:00	13:45:00	Databank Foundation Hall 218	CS221 - Discrete Structures and Theory	Section B
Friday	Lab	12:15:00	13:45:00	D-Lab 102	CS433 - Operating Systems / Operating Systems and Systems Administration	Section B
Friday	Lab	12:15:00	13:45:00	Apt Hall 216	CS341-LAB - Web Technologies-LAB	Section B
Friday	Lab	13:55:00	15:25:00	Nutor Hall 100	CS213 - Object-Oriented Programming	Section B
Monday	Lecture	11:30:00	13:00:00	Jackson Lab 222	CS111 - Introduction to Computing and Information Systems	Section C
Monday	Lecture	11:30:00	13:00:00	Databank Foundation Hall 218	CS221 - Discrete Structures and Theory	Section C
Tuesday	Lecture	11:30:00	13:00:00	Apt Hall 217	CS213 - Object-Oriented Programming	Section C
Wednesday	Lecture	11:30:00	13:00:00	Jackson Lab 222	CS111 - Introduction to Computing and Information Systems	Section C
Wednesday	Lecture	11:30:00	13:00:00	Databank Foundation Hall 218	CS221 - Discrete Structures and Theory	Section C
Thursday	Lecture	11:30:00	13:00:00	Apt Hall 217	CS213 - Object-Oriented Programming	Section C
Friday	Lab	10:20:00	11:50:00	Nutor Hall 100	CS213 - Object-Oriented Programming	Section C
Friday	Lab	13:55:00	15:25:00	Jackson Lab 222	CS111 - Introduction to Computing and Information Systems	Section C
Friday	Lab	13:55:00	15:25:00	Databank Foundation Hall 218	CS221 - Discrete Structures and Theory	Section C
Monday	Lecture	08:00:00	09:30:00	Jackson Lab 221	CS111 - Introduction to Computing and Information Systems	Section D
Wednesday	Lecture	08:00:00	09:30:00	Jackson Lab 221	CS111 - Introduction to Computing and Information Systems	Section D
Friday	Lab	10:20:00	11:50:00	Jackson Lab 221	CS111 - Introduction to Computing and Information Systems	Section D
Monday	Lecture	09:45:00	11:15:00	Jackson Lab 221	CS111 - Introduction to Computing and Information Systems	Section E
Wednesday	Lecture	09:45:00	11:15:00	Jackson Lab 221	CS111 - Introduction to Computing and Information Systems	Section E
Friday	Lab	12:15:00	13:45:00	Jackson Lab 221	CS111 - Introduction to Computing and Information Systems	Section E
Monday	Lecture	11:30:00	13:00:00	Jackson Lab 221	CS111 - Introduction to Computing and Information Systems	Section F
Wednesday	Lecture	11:30:00	13:00:00	Jackson Lab 221	CS111 - Introduction to Computing and Information Systems	Section F
Friday	Lab	13:55:00	15:25:00	Jackson Lab 221	CS111 - Introduction to Computing and Information Systems	Section F
Monday	Lab	08:00:00	10:00:00	EE lab	EE451 - Power Engineering	Section A
Monday	Lecture	08:00:00	10:00:00	Science Lab	EE320 - Signals & Systems	Section A
Monday	Lab	10:10:00	12:10:00	EE lab	EE341 - AC Electrical Machines	Section A
Monday	Lab	15:30:00	17:30:00	EE lab	EE421 - Digital and Analog Signal Processing in Telecommunications	Section A
Monday	Lab	15:30:00	17:30:00	Bio Lab	EE454 - Renewable Energy and Smart Grid	Section A
Wednesday	Lecture	08:00:00	09:30:00	Fab Lab 103	EE421 - Digital and Analog Signal Processing in Telecommunications	Section A
Wednesday	Lecture	08:00:00	09:30:00	Bio Lab	EE454 - Renewable Energy and Smart Grid	Section A
Wednesday	Lecture	08:00:00	09:30:00	EE lab	EE341 - AC Electrical Machines	Section A
Wednesday	Lecture	09:45:00	11:15:00	EE lab	EE451 - Power Engineering	Section A
Wednesday	Lecture	11:30:00	13:00:00	EE lab	EE320 - Signals & Systems	Section A
Friday	Lecture	10:20:00	11:50:00	Fab Lab 103	EE421 - Digital and Analog Signal Processing in Telecommunications	Section A
Friday	Lecture	10:20:00	11:50:00	Bio Lab	EE454 - Renewable Energy and Smart Grid	Section A
Friday	Lecture	10:20:00	11:50:00	EE lab	EE341 - AC Electrical Machines	Section A
Friday	Lecture	12:15:00	13:45:00	EE lab	EE451 - Power Engineering	Section A
Friday	Lecture	13:55:00	15:25:00	Fab Lab 203	EE320 - Signals & Systems	Section A
Monday	Lab	08:00:00	10:00:00	Fab Lab 103	ME311 - Mechanics of Materials	Section A
Monday	Lab	08:00:00	11:00:00	Fab Lab 303	ME212 - Thermodynamics	Section A
Monday	Lab	08:00:00	10:00:00	Bio Lab	ME422 - Heat Transfer	Section A
Monday	Discussion	11:30:00	13:30:00	Fab Lab 103	ME401 - Mechanics of Machines & Engineering Vibration	Section A
Monday	Lab	15:30:00	17:30:00	Fab Lab 103	ME434 - Hydraulic & Fluid Machinery	Section A
Monday	Lab	15:30:00	17:30:00	D-Lab 102	ME444 - Advanced Mechanical Machine Design	Section A
Tuesday	Lecture	09:45:00	11:15:00	Fab Lab 303	ME442 - Computer Aided Design and Manufacturing	Section A
Tuesday	Lecture	15:00:00	16:30:00	Fab Lab 103	ME401 - Mechanics of Machines & Engineering Vibration	Section A
Wednesday	Lecture	08:00:00	09:30:00	Fab Lab 303	ME212 - Thermodynamics	Section A
Wednesday	Lecture	09:45:00	11:15:00	Fab Lab 103	ME311 - Mechanics of Materials	Section A
Wednesday	Lecture	09:45:00	11:15:00	Bio Lab	ME422 - Heat Transfer	Section A
Wednesday	Lecture	11:30:00	13:00:00	Fab Lab 103	ME434 - Hydraulic & Fluid Machinery	Section A
Wednesday	Lecture	11:30:00	13:00:00	Science Lab	ME444 - Advanced Mechanical Machine Design	Section A
Thursday	Lecture	09:45:00	11:15:00	Fab Lab 303	ME442 - Computer Aided Design and Manufacturing	Section A
Thursday	Lecture	15:00:00	16:30:00	Fab Lab 103	ME401 - Mechanics of Machines & Engineering Vibration	Section A
Friday	Lecture	08:00:00	09:30:00	Databank Foundation Hall 218	ME212 - Thermodynamics	Section A
Friday	Lecture	12:15:00	13:45:00	Bio Lab	ME422 - Heat Transfer	Section A
Friday	Lab	12:15:00	15:15:00	Fab Lab 303	ME442 - Computer Aided Design and Manufacturing	Section A
Friday	Lecture	13:55:00	15:25:00	Fab Lab 103	ME311 - Mechanics of Materials	Section A
Friday	Lecture	13:55:00	15:25:00	EE lab	ME434 - Hydraulic & Fluid Machinery	Section A
Friday	Lecture	13:55:00	15:25:00	Bio Lab	ME444 - Advanced Mechanical Machine Design	Section A
Monday	Lecture	08:00:00	09:30:00	Jackson Hall 116	MATH141 - Calculus I	Section A
Monday	Lecture	08:00:00	09:30:00	Jackson Hall 115	MATH121 - Pre-Calculus I	Section A
Monday	Lecture	08:00:00	09:30:00	Fab Lab 203	MATH161 - Engineering Calculus	Section A
Monday	Lecture	11:30:00	13:00:00	Radichel MPR	MATH122 - Pre-Calculus II	Section A
Monday	Lab	11:30:00	14:30:00	Fab Lab 203	ENGR112 - Introduction to Engineering	Section A
Monday	Lab	11:30:00	14:30:00	Science Lab	SC113 - Physics: Electromagnetism	Section A
Monday	Seminar	13:15:00	14:45:00	Norton-Motulsky 207B	SOAN411 - Leadership Seminar IV: Leadership as Service	Section A
Monday	Lab	13:15:00	15:15:00	Fab Lab 303	CE451 - Embedded Systems	Section A
Monday	Seminar	13:15:00	14:45:00	Jackson Lab 221	AS111 - Ashesi Success	Section A
Monday	Lecture	13:15:00	14:45:00	Nutor Hall 216	MATH145 - Applied Calculus I	Section A
Monday	Discussioin	15:00:00	16:30:00	Databank Foundation Hall 218	MATH221 - Statistics	Section A
Tuesday	Seminar	08:00:00	09:30:00	Norton-Motulsky 207A	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section A
Tuesday	Lecture	08:00:00	09:30:00	Databank Foundation Hall 218	MATH221 - Statistics	Section A
Tuesday	Lecture	08:00:00	09:30:00	Jackson Hall 116	MATH141 - Calculus I	Section A
Tuesday	Lecture	08:00:00	09:30:00	Jackson Hall 115	MATH121 - Pre-Calculus I	Section A
Tuesday	Lecture	08:00:00	09:30:00	Fab Lab 303	ENGR311 - System Dynamics	Section A
Tuesday	Lecture	08:00:00	09:30:00	Fab Lab 203	CE451 - Embedded Systems	Section A
Tuesday	Lecture	09:45:00	11:15:00	Jackson Lab 221	SOAN225 - Ghanaian Popular Culture	Section A
Tuesday	Lecture	09:45:00	11:15:00	Fab Lab 203	ENGR212 - Instrumentation for Engineering	Section A
Tuesday	Lecture	09:45:00	11:15:00	Bio Lab	ENGR412 - Synthetic Biological Engineering	Section A
Tuesday	Lecture	09:45:00	11:15:00	D-Lab 102	SOAN251 - Africa in the International Setting	Section A
Tuesday	Lecture	09:45:00	11:15:00	EE lab	ENGR461 - Financial Engineering	Section A
Tuesday	Lecture	11:30:00	13:00:00	Jackson Lab 221	MATH122 - Pre-Calculus II	Section A
Tuesday	Seminar	11:30:00	13:00:00	EE lab	ENGR301 - Year III Group Project and Seminar	Section A
Tuesday	Lecture	11:30:00	13:00:00	Bio Lab	SOAN320 - World Hunger, Population and Food Supplies	Section A
Tuesday	Lecture	13:15:00	14:45:00	Jackson Hall 116	ENGL112 - Written and Oral Communication	Section A
Tuesday	Lecture	13:15:00	14:45:00	Science Lab	SC113 - Physics: Electromagnetism	Section A
Tuesday	Lecture	13:15:00	14:45:00	Fab Lab 303	MATH152 - Statistics for Engineering and Economics	Section A
Tuesday	Period	13:15:00	14:45:00	Jackson Lab 222	FRENC111 - Introductory French I	Section A
Tuesday	Lecture	13:15:00	14:45:00	Apt Hall 217	SOAN 322 - African Cultural Institutions	Section A
Tuesday	Lecture	13:15:00	14:45:00	Jackson Lab 221	POLS 322 - China-Africa Relations	Section A
Tuesday	Lecture	15:00:00	16:30:00	Apt Hall 217	SOAN301 - Introduction to Africana Studies: The Global Black Experience	Section A
Tuesday	Lecture	15:00:00	16:30:00	Bio Lab	SOAN331 - Climate Change and Innovation	Section A
Tuesday	Lecture	16:45:00	18:15:00	Apt Hall 217	SOAN328 - Creative and Research Internship	Section A
Tuesday	Discussion	16:45:00	18:15:00	Nutor Hall 100	MATH145 - Applied Calculus I	Section A
Wednesday	Lecture	08:00:00	09:30:00	Jackson Hall 116	MATH141 - Calculus I	Section A
Wednesday	Lecture	08:00:00	09:30:00	Jackson Hall 115	MATH121 - Pre-Calculus I	Section A
Wednesday	Lecture	08:00:00	09:30:00	Science Lab	MATH161 - Engineering Calculus	Section A
Wednesday	Lecture	09:45:00	11:15:00	Fab Lab 203	ENGR112 - Introduction to Engineering	Section A
Wednesday	Discussion	09:45:00	11:15:00	Fab Lab 303	MATH152 - Statistics for Engineering and Economics	Section A
Wednesday	Lecture	11:30:00	13:00:00	Radichel MPR	MATH122 - Pre-Calculus II	Section A
Wednesday	Seminar	13:15:00	14:45:00	Norton-Motulsky 207B	SOAN411 - Leadership Seminar IV: Leadership as Service	Section A
Wednesday	Seminar	13:15:00	14:45:00	Nutor Hall 216	ENGR401-SEM - Engineering Capstone Seminar	Section A
Wednesday	Lab	13:15:00	14:45:00	EE lab	ENGR301 - Year III Group Project and Seminar	Section A
Wednesday	Lecture	13:15:00	14:45:00	Nutor Hall 100	MATH145 - Applied Calculus I	Section A
Wednesday	Discussion	13:45:00	14:45:00	Apt Hall 217	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section A
Wednesday	Lab	15:00:00	17:00:00	Bio Lab	ENGR412 - Synthetic Biological Engineering	Section A
Wednesday	Discussion	15:00:00	16:30:00	Nutor Hall 100	ENGR461 - Financial Engineering	Section A
Wednesday	Discussion	16:45:00	17:45:00	Jackson Lab 221	ENGL112 - Written and Oral Communication	Section A
Thursday	Lecture	08:00:00	09:30:00	Databank Foundation Hall 218	MATH221 - Statistics	Section A
Thursday	Lecture	08:00:00	09:30:00	Fab Lab 303	ENGR311 - System Dynamics	Section A
Thursday	Lecture	08:00:00	09:30:00	Fab Lab 203	CE451 - Embedded Systems	Section A
Thursday	Lecture	09:45:00	11:15:00	Jackson Lab 221	SOAN225 - Ghanaian Popular Culture	Section A
Thursday	Lecture	09:45:00	11:15:00	Science Lab	ENGR112 - Introduction to Engineering	Section A
Thursday	Lecture	09:45:00	11:15:00	Bio Lab	ENGR412 - Synthetic Biological Engineering	Section A
Thursday	Lab	09:45:00	11:45:00	Fab Lab 203	ENGR212-LAB - Instrumentation for Engineering - LAB	Section A
Thursday	Lecture	09:45:00	11:15:00	D-Lab 102	SOAN251 - Africa in the International Setting	Section A
Thursday	Lecture	09:45:00	11:15:00	EE lab	ENGR461 - Financial Engineering	Section A
Thursday	Lecture	11:30:00	13:00:00	Bio Lab	SOAN320 - World Hunger, Population and Food Supplies	Section A
Thursday	Lecture	13:15:00	14:45:00	Jackson Hall 116	ENGL112 - Written and Oral Communication	Section A
Thursday	Lecture	13:15:00	14:45:00	Science Lab	SC113 - Physics: Electromagnetism	Section A
Thursday	Lecture	13:15:00	14:45:00	Fab Lab 303	MATH152 - Statistics for Engineering and Economics	Section A
Thursday	Period	13:15:00	14:45:00	Jackson Lab 222	FRENC111 - Introductory French I	Section A
Thursday	Lecture	13:15:00	14:45:00	Apt Hall 217	SOAN 322 - African Cultural Institutions	Section A
Thursday	Lecture	13:15:00	14:45:00	Jackson Lab 221	POLS 322 - China-Africa Relations	Section A
Thursday	Lecture	15:00:00	16:30:00	Apt Hall 217	SOAN301 - Introduction to Africana Studies: The Global Black Experience	Section A
Thursday	Lecture	15:00:00	16:30:00	Bio Lab	SOAN331 - Climate Change and Innovation	Section A
Friday	Lab	08:00:00	10:00:00	Fab Lab 303	ENGR311 - System Dynamics	Section A
Friday	Discussion	08:00:00	09:00:00	Science Lab	FRENC111 - Introductory French I	Section A
Friday	Discussion	08:00:00	09:00:00	Jackson Hall 115	SOAN 322 - African Cultural Institutions	Section A
Friday	Discussion	08:00:00	09:00:00	Norton-Motulsky 207A	POLS 322 - China-Africa Relations	Section A
Friday	Discussion	09:10:00	10:10:00	Jackson Hall 116	SOAN225 - Ghanaian Popular Culture	Section A
Friday	Discussion	09:10:00	10:10:00	D-Lab 102	SOAN251 - Africa in the International Setting	Section A
Friday	Discussion	09:10:00	10:10:00	Jackson Lab 221	SOAN301 - Introduction to Africana Studies: The Global Black Experience	Section A
Friday	Discussion	09:10:00	10:10:00	EE lab	SOAN331 - Climate Change and Innovation	Section A
Friday	Discussion	10:20:00	11:50:00	Jackson Hall 116	MATH141 - Calculus I	Section A
Friday	Discussion	10:20:00	11:50:00	Jackson Hall 115	MATH121 - Pre-Calculus I	Section A
Friday	Lecture	10:20:00	11:50:00	Fab Lab 203	MATH161 - Engineering Calculus	Section A
Friday	Discussion	13:55:00	15:25:00	Nutor Hall 115	MATH122 - Pre-Calculus II	Section A
Friday	Discussion	13:55:00	14:55:00	Science Lab	SOAN320 - World Hunger, Population and Food Supplies	Section A
Monday	Lecture	09:45:00	11:15:00	Nutor Hall 115	MATH101 - College Algebra	Section B
Monday	Lecture	09:45:00	11:15:00	Jackson Hall 116	MATH141 - Calculus I	Section B
Monday	Lecture	09:45:00	11:15:00	Jackson Hall 115	MATH121 - Pre-Calculus I	Section B
Monday	Lecture	09:45:00	11:15:00	Fab Lab 203	MATH161 - Engineering Calculus	Section B
Monday	Discussion	13:15:00	14:45:00	Databank Foundation Hall 218	MATH221 - Statistics	Section B
Monday	Lab	14:40:00	17:40:00	Fab Lab 203	ENGR112 - Introduction to Engineering	Section B
Monday	Lab	14:45:00	17:45:00	Science Lab	SC113 - Physics: Electromagnetism	Section B
Monday	Seminar	15:00:00	16:30:00	Norton-Motulsky 207A	SOAN411 - Leadership Seminar IV: Leadership as Service	Section B
Monday	Seminar	15:00:00	16:30:00	Jackson Lab 222	AS111 - Ashesi Success	Section B
Monday	Lecture	15:00:00	16:30:00	Nutor Hall 100	MATH145 - Applied Calculus I	Section B
Tuesday	Seminar	09:45:00	11:15:00	Science Lab	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section B
Tuesday	Lecture	09:45:00	11:15:00	Databank Foundation Hall 218	MATH221 - Statistics	Section B
Tuesday	Lecture	09:45:00	11:15:00	Nutor Hall 115	MATH101 - College Algebra	Section B
Tuesday	Lecture	09:45:00	11:15:00	Jackson Hall 116	MATH141 - Calculus I	Section B
Tuesday	Period	09:45:00	11:15:00	Jackson Hall 115	MATH121 - Pre-Calculus I	Section B
Tuesday	Lecture	11:30:00	13:00:00	Jackson Lab 222	ENGL112 - Written and Oral Communication	Section B
Tuesday	Lecture	15:00:00	16:30:00	Science Lab	SC113 - Physics: Electromagnetism	Section B
Tuesday	Lecture	15:00:00	16:30:00	Fab Lab 303	MATH152 - Statistics for Engineering and Economics	Section B
Tuesday	Lecture	15:00:00	16:30:00	Jackson Lab 222	FRENC111 - Introductory French I	Section B
Tuesday	Lecture	15:00:00	16:30:00	EE lab	ENGR301 - Year III Group Project and Seminar	Section B
Wednesday	Lecture	08:00:00	09:30:00	Fab Lab 203	ENGR112 - Introduction to Engineering	Section B
Wednesday	Lecture	09:45:00	11:15:00	Nutor Hall 216	MATH101 - College Algebra	Section B
Wednesday	Lecture	09:45:00	11:15:00	Jackson Hall 116	MATH141 - Calculus I	Section B
Wednesday	Lecture	09:45:00	11:15:00	Jackson Hall 115	MATH121 - Pre-Calculus I	Section B
Wednesday	Lecture	09:45:00	11:15:00	Science Lab	MATH161 - Engineering Calculus	Section B
Wednesday	Discussion	11:30:00	13:00:00	Fab Lab 303	MATH152 - Statistics for Engineering and Economics	Section B
Wednesday	Seminar	15:00:00	16:30:00	Norton-Motulsky 207A	SOAN411 - Leadership Seminar IV: Leadership as Service	Section B
Wednesday	Discussion	15:00:00	16:00:00	Apt Hall 217	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section B
Wednesday	Discussion	15:00:00	16:00:00	Jackson Lab 222	ENGL112 - Written and Oral Communication	Section B
Wednesday	Lab	15:00:00	16:30:00	EE lab	ENGR301 - Year III Group Project and Seminar	Section B
Wednesday	Lecture	15:00:00	16:30:00	Nutor Hall 216	MATH145 - Applied Calculus I	Section B
Thursday	Lecture	08:00:00	09:30:00	Science Lab	ENGR112 - Introduction to Engineering	Section B
Thursday	Period	09:45:00	11:15:00	Databank Foundation Hall 218	MATH221 - Statistics	Section B
Thursday	Lecture	11:30:00	13:00:00	Jackson Lab 222	ENGL112 - Written and Oral Communication	Section B
Thursday	Lecture	15:00:00	16:30:00	Science Lab	SC113 - Physics: Electromagnetism	Section B
Thursday	Lecture	15:00:00	16:30:00	Fab Lab 303	MATH152 - Statistics for Engineering and Economics	Section B
Thursday	Lecture	15:00:00	16:30:00	Jackson Lab 222	FRENC111 - Introductory French I	Section B
Thursday	Discussion	16:45:00	18:15:00	Nutor Hall 100	MATH145 - Applied Calculus I	Section B
Friday	Discussion	09:10:00	10:10:00	Science Lab	FRENC111 - Introductory French I	Section B
Friday	Lab	12:00:00	13:45:00	Fab Lab 103	ENGR212-LAB - Instrumentation for Engineering - LAB	Section B
Friday	Discussion	12:15:00	13:45:00	Nutor Hall 115	MATH101 - College Algebra	Section B
Friday	Discussion	12:15:00	13:45:00	Jackson Hall 116	MATH141 - Calculus I	Section B
Friday	Discussion	12:15:00	13:45:00	Jackson Hall 115	MATH121 - Pre-Calculus I	Section B
Friday	Lecture	12:15:00	13:45:00	Fab Lab 203	MATH161 - Engineering Calculus	Section B
Monday	Seminar	13:15:00	14:45:00	Apt Hall 216	AS111 - Ashesi Success	Section C
Monday	Discussion	15:00:00	16:30:00	Apt Hall 217	MATH221 - Statistics	Section C
Tuesday	Seminar	11:30:00	13:00:00	Jackson Hall 116	SOAN411 - Leadership Seminar IV: Leadership as Service	Section C
Tuesday	Seminar	11:30:00	13:00:00	Fab Lab 203	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section C
Tuesday	Lecture	11:30:00	13:00:00	Databank Foundation Hall 218	MATH221 - Statistics	Section C
Tuesday	Lecture	15:00:00	16:30:00	Apt Hall 216	ENGL112 - Written and Oral Communication	Section C
Wednesday	Discussion	13:45:00	14:45:00	Databank Foundation Hall 218	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section C
Wednesday	Discussion	13:45:00	14:45:00	Apt Hall 216	ENGL112 - Written and Oral Communication	Section C
Thursday	Seminar	11:30:00	13:00:00	Jackson Hall 116	SOAN411 - Leadership Seminar IV: Leadership as Service	Section C
Thursday	Lecture	11:30:00	13:00:00	Databank Foundation Hall 218	MATH221 - Statistics	Section C
Thursday	Lecture	15:00:00	16:30:00	Apt Hall 216	ENGL112 - Written and Oral Communication	Section C
Monday	Seminar	13:15:00	14:45:00	Jackson Lab 222	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section D
Monday	Discussion	13:15:00	14:45:00	Apt Hall 217	MATH221 - Statistics	Section D
Monday	Seminar	15:00:00	16:30:00	Nutor Hall 216	AS111 - Ashesi Success	Section D
Tuesday	Lecture	13:15:00	14:45:00	Databank Foundation Hall 218	MATH221 - Statistics	Section D
Tuesday	Lecture	13:15:00	14:45:00	Apt Hall 216	ENGL112 - Written and Oral Communication	Section D
Tuesday	Seminar	15:00:00	16:30:00	Fab Lab 203	SOAN411 - Leadership Seminar IV: Leadership as Service	Section D
Wednesday	Discussion	15:00:00	16:00:00	Databank Foundation Hall 218	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section D
Wednesday	Discussion	16:45:00	17:45:00	Apt Hall 217	ENGL112 - Written and Oral Communication	Section D
Thursday	Lecture	13:15:00	14:45:00	Databank Foundation Hall 218	MATH221 - Statistics	Section D
Thursday	Lecture	13:15:00	14:45:00	Apt Hall 216	ENGL112 - Written and Oral Communication	Section D
Thursday	Seminar	15:00:00	16:30:00	Fab Lab 203	SOAN411 - Leadership Seminar IV: Leadership as Service	Section D
Monday	Seminar	13:15:00	14:45:00	Bio Lab	AS111 - Ashesi Success	Section E
Monday	Discussion	15:00:00	16:30:00	Apt Hall 216	MATH221 - Statistics	Section E
Tuesday	Seminar	08:00:00	09:30:00	Nutor Hall 100	SOAN411 - Leadership Seminar IV: Leadership as Service	Section E
Tuesday	Lecture	15:00:00	16:30:00	Databank Foundation Hall 218	MATH221 - Statistics	Section E
Tuesday	Lecture	15:00:00	16:30:00	Nutor Hall 115	ENGL112 - Written and Oral Communication	Section E
Wednesday	Discussion	13:45:00	14:45:00	D-Lab 102	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section E
Wednesday	Discussion	16:45:00	17:45:00	Norton-Motulsky 207A	ENGL112 - Written and Oral Communication	Section E
Thursday	Seminar	08:00:00	09:30:00	Nutor Hall 100	SOAN411 - Leadership Seminar IV: Leadership as Service	Section E
Thursday	Seminar	08:00:00	09:30:00	Norton-Motulsky 207A	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section E
Thursday	Lecture	15:00:00	16:30:00	Databank Foundation Hall 218	MATH221 - Statistics	Section E
Thursday	Lecture	15:00:00	16:30:00	Nutor Hall 115	ENGL112 - Written and Oral Communication	Section E
Monday	Seminar	15:00:00	16:30:00	Norton-Motulsky 207B	SOAN411 - Leadership Seminar IV: Leadership as Service	Section F
Tuesday	Lecture	15:00:00	16:30:00	Radichel MPR	ENGL112 - Written and Oral Communication	Section F
Wednesday	Seminar	13:15:00	14:45:00	Jackson Lab 221	AS111 - Ashesi Success	Section F
Wednesday	Discussion	13:45:00	14:45:00	Radichel MPR	ENGL112 - Written and Oral Communication	Section F
Wednesday	Seminar	15:00:00	16:30:00	Norton-Motulsky 207B	SOAN411 - Leadership Seminar IV: Leadership as Service	Section F
Wednesday	Discussion	16:45:00	17:45:00	Nutor Hall 115	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section F
Thursday	Seminar	08:00:00	09:30:00	Jackson Hall 115	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section F
Thursday	Lecture	15:00:00	16:30:00	Radichel MPR	ENGL112 - Written and Oral Communication	Section F
Tuesday	Lecture	11:30:00	13:00:00	Jackson Hall 115	ENGL112 - Written and Oral Communication	Section G
Wednesday	Seminar	13:15:00	14:45:00	Jackson Lab 222	AS111 - Ashesi Success	Section G
Wednesday	Discussion	15:00:00	16:00:00	D-Lab 102	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section G
Wednesday	Discussion	15:00:00	16:00:00	Apt Hall 216	ENGL112 - Written and Oral Communication	Section G
Thursday	Seminar	09:45:00	11:15:00	Jackson Hall 115	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section G
Thursday	Lecture	11:30:00	13:00:00	Jackson Hall 115	ENGL112 - Written and Oral Communication	Section G
Tuesday	Lecture	08:00:00	09:30:00	Jackson Lab 221	ENGL112 - Written and Oral Communication	Section H
Wednesday	Seminar	13:15:00	14:45:00	Science Lab	AS111 - Ashesi Success	Section H
Wednesday	Discussion	15:00:00	16:00:00	Nutor Hall 115	ENGL112 - Written and Oral Communication	Section H
Wednesday	Discussion	16:45:00	17:45:00	Nutor Hall 216	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section H
Thursday	Lecture	08:00:00	09:30:00	Jackson Lab 221	ENGL112 - Written and Oral Communication	Section H
Thursday	Seminar	11:30:00	13:00:00	Jackson Lab 221	SOAN211 - Leadership Seminar II: Rights, Ethics and Rule of Law	Section H
Wednesday	Seminar	13:15:00	14:45:00	Norton-Motulsky 207A	AS111 - Ashesi Success	Section J
Wednesday	Seminar	13:15:00	14:45:00	Fab Lab 103	AS111 - Ashesi Success	Section K
Wednesday	Seminar	15:00:00	16:30:00	Fab Lab 103	AS111 - Ashesi Success	Section L
Wednesday	Seminar	13:15:00	14:45:00	Fab Lab 203	AS111 - Ashesi Success	Section M
Wednesday	Seminar	15:00:00	16:30:00	Fab Lab 203	AS111 - Ashesi Success	Section N
Wednesday	Seminar	13:15:00	14:45:00	Fab Lab 303	AS111 - Ashesi Success	Section O
Wednesday	Seminar	15:00:00	16:30:00	Fab Lab 303	AS111 - Ashesi Success	Section P
Wednesday	Seminar	13:15:00	14:45:00	Bio Lab	AS111 - Ashesi Success	Section Q
Thursday	Seminar	09:45:00	11:15:00	Nutor Hall 115	AS111 - Ashesi Success	Section R
Thursday	Seminar	09:45:00	11:15:00	Fab Lab 103	AS111 - Ashesi Success	Section S
Thursday	Seminar	08:00:00	09:30:00	Bio Lab	AS111 - Ashesi Success	Section T
Tuesday	Lecture	15:00:00	16:30:00	D-Lab 102	ENGL112 - Written and Oral Communication	Section I
Wednesday	Seminar	15:00:00	16:30:00	Science Lab	AS111 - Ashesi Success	Section I
Wednesday	Discussion	16:45:00	17:45:00	Jackson Hall 115	ENGL112 - Written and Oral Communication	Section I
Thursday	Lecture	15:00:00	16:30:00	D-Lab 102	ENGL112 - Written and Oral Communication	Section I
\.


--
-- PostgreSQL database dump complete
--

