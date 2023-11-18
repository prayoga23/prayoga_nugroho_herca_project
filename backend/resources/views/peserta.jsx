import React, { useState, useEffect } from 'react';
import axios from 'axios';

const Peserta = () => {
 const [peserta, setPeserta] = useState([]);

 useEffect(() => {
    const fetchData = async () => {
      const result = await axios.get('https://your-api-url/peserta');
      setPeserta(result.data);
    };

    fetchData();
 }, []);

 return (
    <div>
      {peserta.map(peserta => (
        <div key={peserta.id}>
          <h3>{peserta.nama}</h3>
          <p>Umur: {peserta.umur}</p>
          <p>Email: {peserta.email}</p>
          <p>No. Telp: {peserta.no_telp}</p>
        </div>
      ))}
    </div>
 );
};

export default Peserta;