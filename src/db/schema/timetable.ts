import { pgTable, varchar, date } from "drizzle-orm/pg-core";
import { InferSelectModel, eq, sql, and } from "drizzle-orm";
import db from "../../db";
import { Day } from "../../types";

export const timetable = pgTable("timetable", {
    day: varchar("day").notNull(),
    periodName: varchar("period_name").notNull(),
    startTime: date("start_time").notNull(),
    endTime: date("end_time").notNull(),
    location: varchar("location").notNull(),
    courseCode: varchar("course_code").notNull(),
    section: varchar("section").notNull(),
});

export type Timetable = InferSelectModel<typeof timetable>;

const locations = db.selectDistinct({ location: timetable.location }).from(timetable).orderBy(timetable.location);

const coursesAndSections = db
    .selectDistinct({ course: timetable.courseCode, section: timetable.section })
    .from(timetable)
    .orderBy(timetable.courseCode);

const coursesByLocation = db
    .select()
    .from(timetable)
    .where(eq(timetable.location, sql.placeholder("location")));

const courseInfoByDayAndSection = db
    .select()
    .from(timetable)
    .where(
        and(
            eq(timetable.courseCode, sql.placeholder("course")),
            eq(timetable.day, sql.placeholder("day")),
            eq(timetable.section, sql.placeholder("section")),
        ),
    );

export const getAllLocations = () => locations.execute();

export const getCoursesByLocation = (location: string) => coursesByLocation.execute({ location });

export const getAllCoursesAndSections = () => coursesAndSections.execute();

export const getCourseInfoByDayAndSection = (course: string, day: Day, section: string) =>
    courseInfoByDayAndSection.execute({ course, day, section });
