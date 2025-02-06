FROM node:18-alpine

# ตั้ง working directory
WORKDIR /app

# คัดลอก package files และติดตั้ง dependencies
COPY package*.json ./
RUN npm install --production

# คัดลอก source code ทั้งหมด
COPY . .

# Build แอป Next.js
RUN npm run build

# เปิด port ที่ต้องการ (ตัวอย่างใช้ 3000)
EXPOSE 3000

# รันแอปใน production mode
CMD ["npm", "start"]
