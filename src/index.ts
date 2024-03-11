import express, { NextFunction, Request, Response } from "express";
import { httpLogger, logger } from "./logging";
import { HOST, PORT } from "./constants";
import timeT from "./routes/timetable";
import helmet from "helmet";

const app = express();
app.use(httpLogger);
app.use(express.json());
app.use(helmet());

export const prettyPrint = <T>(log: T) => {
    return JSON.stringify(log, undefined, 4);
};

app.use((err: Error, _req: Request, res: Response, _next: NextFunction) => {
    console.error(err.stack);
    res.status(500).send({ msg: "Server error!" });
});

app.get("/health", (req, res) => {
    res.status(200).send("Up");
});

app.get("/info", (req, res) => {
    res.status(200).send("Ashesi Timetable API");
});

app.use("/timetable", timeT);

app.listen(PORT, HOST, () => {
    console.log(`Server is running on port ${PORT}`);
});
