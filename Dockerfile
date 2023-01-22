FROM node:12

# Copiar código fuente
COPY [".", "/usr/src/"]  

# Like cd project_dir
WORKDIR /usr/src 

# Install
RUN npm install  

# Expose a port
EXPOSE 3000  

# Run app
CMD ["node", "index.js"]  
