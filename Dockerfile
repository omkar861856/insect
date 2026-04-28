# Stage 1: Build
FROM node:18-slim AS builder

WORKDIR /app

# Install system dependencies for PureScript/Spago
RUN apt-get update && apt-get install -y \
    curl \
    git \
    libncurses5 \
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

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
