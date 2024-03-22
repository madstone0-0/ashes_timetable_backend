import { logger } from "../logging";
import { ServiceReturn } from "../types";

export const resolveError = (error: unknown) => {
    if (error instanceof Error) {
        return error;
    }

    logger.error(`Unknown error: ${error as string}`);
    return new Error("Unknown error");
};

export const handleServerError = (
    error: unknown,
    message: string,
): ServiceReturn => {
    const err = resolveError(error);
    logger.error(`${message} error: ${err.stack}`);
    return { status: 500, data: { message: err.message } };
};
