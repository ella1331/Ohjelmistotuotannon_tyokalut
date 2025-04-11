# Käytetään Node.js -pohjaista virallista kuvaa
FROM node:18

# Määritellään työkansio kontissa
WORKDIR /app

# Kopioidaan kaikki tiedostot paikallisesta kansiosta konttiin
COPY . .

# Asennetaan sovelluksen riippuvuudet
RUN npm install

# Avaa portti, jota sovellus kuuntelee
EXPOSE 3000

# Suorita sovellus, kun kontti käynnistyy
CMD ["npm", "start"]
