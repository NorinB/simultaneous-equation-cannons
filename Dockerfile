# Build Stage
FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3040
CMD ["npm", "start"]
# RUN npm run build

# # Production Stage
# FROM nginx:stable-alpine AS production
# COPY --from=build /app/build /usr/share/nginx/html
# COPY nginx.conf /etc/nginx/
# EXPOSE 3040
# CMD ["nginx", "-g", "daemon off;"]
