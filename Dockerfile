# Stage 1: Build
FROM node:18 AS builder

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy package files
COPY package*.json ./
COPY spago.dhall ./
COPY packages.dhall ./

# Install npm dependencies
RUN npm install

# Copy source code
COPY . .

# Build the project
RUN npm run build

# Stage 2: Serve
FROM nginx:alpine

# Copy built web files
COPY --from=builder /app/web /usr/share/nginx/html

# Update Nginx to listen on port 8080
RUN sed -i 's/80;/8080;/g' /etc/nginx/conf.d/default.conf

# Expose port 8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
