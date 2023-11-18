
# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/engine/reference/builder/

FROM node:20-slim
#FROM node:18


# Use production node environment by default. remove # /usr/src/app
#ENV NODE_ENV production

WORKDIR /quests 

COPY package*.json ./

# Download dependencies as a separate step to take advantage of Docker's caching.
# Leverage a cache mount to /root/.npm to speed up subsequent builds.
# Leverage a bind mounts to package.json and package-lock.json to avoid having to copy them into
# into this layer.
#RUN --mount=type=bind,source=package.json,target=package.json \
#    --mount=type=bind,source=package-lock.json,target=package-lock.json \
#    --mount=type=cache,target=/root/.npm \
#    npm ci --omit=dev
RUN npm install

# Run the application as a non-root user.
#USER node

# Copy the rest of the source files into the image.
COPY . .

# Expose the port that the application listens on.
EXPOSE 3000

# Set the secret word
ENV SECRET_WORD TwelveFactor

# Run the application.
CMD ["node", "src/000.js"]