import React, { useEffect, useState } from 'react';
import './App.css';

function App() {
  const [message, setMessage] = useState('Loading...');

  useEffect(() => {
    fetch('/api/')
      .then((res) => res.text())
      .then((data) => setMessage(data))
      .catch((err) => setMessage('❌ Failed to fetch from backend'));
  }, []);

  return (
    <div className="App">
      <h1>🚀 Frontend is working!</h1>
      <p>{message}</p>
    </div>
  );
}

export default App;
