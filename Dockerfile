FROM node:20-slim
RUN npm install -g conkurrence@1.0.1
ENTRYPOINT ["conkurrence", "mcp"]
