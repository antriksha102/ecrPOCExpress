# Use the official Node.js 18 Alpine image as the base image
FROM public.ecr.aws/lambda/nodejs:16

# Set the working directory inside the container
WORKDIR ${LAMBDA_TASK_ROOT}

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy all project files to the working directory
COPY index.js ./
COPY lambda.js ./

# Command to start the application
CMD ["lambda.handler"]
