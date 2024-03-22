FROM node:21-alpine as builder

WORKDIR /backend
COPY package.json .
COPY yarn.lock .
COPY . .
RUN yarn install && yarn build && yarn cache clean

FROM builder as production
ENV NODE_ENV=prod
COPY --from=builder /backend/dist ./dist
COPY --from=builder /backend/package.json .
COPY --from=builder /backend/yarn.lock .
RUN yarn install --production && yarn cache clean

EXPOSE 3000
CMD ["node", "./dist/index.js"]
