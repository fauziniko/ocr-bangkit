# Gunakan Node.js sebagai base image
FROM node:18-alpine

# Tentukan working directory di dalam container
WORKDIR /app

# Salin package.json dan package-lock.json ke working directory
COPY package*.json ./

# Install dependensi
RUN npm install

# Salin seluruh kode aplikasi ke working directory
COPY . .

# Build aplikasi (opsional, jika menggunakan TypeScript)
RUN npm run build

# Ekspose port yang digunakan aplikasi
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "run", "start:prod"]
