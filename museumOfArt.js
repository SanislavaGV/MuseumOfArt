const axios = require("axios");
const mysql = require("mysql2/promise"); // Use mysql2 for async queries

async function fetchDataAndStore() {
  try {
    const objectIds = [...Array(100).keys()].map(i => i + 1); // Example: Generate 100 IDs

    // Create MySQL Connection
    const connection = await mysql.createConnection({
      host: "localhost",
      port: 3306, // MySQL default port
      database: "museumofart",
      user: "stanislava",
      password: "stanislava905*2002",
    });

    const sql = `
      INSERT INTO museumofart.artworks
      (objectId, title, culture, period, objectDate, artistBeginDate, artistEndDate, medium, dimensions, creditLine, classification, repository, objectURL, artistWikidata_URL, publicDomain, accessionNumber, accessionYear, departmentId, artistRole, artistPrefix, artistDisplayName, artistDisplayBio, artistSuffix, artistAlphaSort, artistNationality, artistGender, artistULAN_URL)
      VALUES(?, ?, ?, ?, ?,?,?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?);`

    for (const id of objectIds) {
      try {
        const apiUrl = `https://collectionapi.metmuseum.org/public/collection/v1/objects/${id}`;
        const response = await axios.get(apiUrl);
        const data = response.data;

        if (!data || !data.objectID) {
          console.warn(`Skipping invalid object ID: ${id}`);
          continue;
        }

        const values = [
          data.objectID || null,
          data.title || null,
          data.culture || null,
          data.period || null,
          data.objectDate || null,
          data.artistBeginDate || null,
          data.artistEndDate || null,
          data.medium || null,
          data.dimensions || null,
          data.creditLine || null,
          data.classification || null,
          data.repository || null,
          data.objectURL || null,
          data.artistWikidata_URL || null,
          data.publicDomain || null,
          data.accessionNumber || null,
          data.accessionYear || null,
          data.departmentId || null,
          data.artistRole || null,
          data.artistPrefix || null,
          data.artistDisplayName || null,
          data.artistDisplayBio || null,
          data.artistSuffix || null,
          data.artistAlphaSort || null,
          data.artistNationality || null,
          data.artistGender || null,
          data.artistULAN_URL || null,
        ];

        await connection.execute(sql, values);
        console.log(`Inserted data for object ID: ${id}`);
      } catch (err) {
        console.error(`Error processing ID ${id}:`, err.message);
      }
    }

    /**DEPARTMENTS */
    // const sql = `
    //   INSERT INTO departments
    //   (departmentId, displayName)
    //   VALUES (?, ?);
    // `;

    // try {
    //   const apiUrl = `https://collectionapi.metmuseum.org/public/collection/v1/departments`;
    //   const response = await axios.get(apiUrl);
    //   const { departments } = response.data;

    //   for (const data of departments) {
    //     try {
    //       const values = [data.departmentId || null, data.displayName || null];

    //       await connection.execute(sql, values);
    //     } catch (error) {
    //       console.error(
    //         `Error processing ID ${data.departmentId}:`,
    //         error.message
    //       );
    //     }
    //   }
    // } catch (err) {
    //   console.error(`Error processing: `, err);
    // }

    await connection.end();
    console.log("Data successfully inserted into the MySQL database.");
  } catch (error) {
    console.error("Database connection error:", error.message);
  }
}

fetchDataAndStore();
