FROM --platform=linux/amd64 node:18 AS builder
WORKDIR /app

# Copy both package files
COPY package*.json ./

# Use npm ci for more reliable builds
RUN npm ci

# (Optional) Update browserslist DB to avoid warnings
RUN npx browserslist@latest --update-db

COPY . .
RUN npm run build

FROM --platform=linux/amd64 nginx
EXPOSE 80

# Add custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/build /usr/share/nginx/html