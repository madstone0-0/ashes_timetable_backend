import dotenv from "dotenv";
dotenv.config();

export const HOST = "0.0.0.0";
export const PORT = 3000;

let PG_USER: string;
let PG_PASS: string;
let PG_HOST: string;
let PG_DB: string;
let PG_PORT: number;

switch (process.env.NODE_ENV) {
    case "dev":
        PG_USER = "mads";
        PG_PASS = "";
        PG_HOST = "0.0.0.0";
        PG_DB = "ashesi";
        PG_PORT = 5432;
        break;
    case "prod":
        PG_USER = process.env.PG_USER!;
        PG_PASS = process.env.PG_PASSWORD!;
        PG_HOST = process.env.PG_HOST!;
        PG_DB = process.env.PG_DATABASE!;
        PG_PORT = parseInt(process.env.PG_PORT!);
        break;
}

export { PG_DB, PG_PASS, PG_USER, PG_HOST, PG_PORT };
