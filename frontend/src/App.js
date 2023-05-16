import { useState } from 'react'
import './App.css'
import Button from './Button'

function App() {

  const [showMessage, setShowMessage] = useState(false)

  const buttonHandler = () => {
    setShowMessage(!showMessage);
  }

  return (
    <div className="App">
      <Button clickHandler={buttonHandler}>Click me!</Button>
      {showMessage ? <p data-cy="test-message">Show message</p> : null}
    </div>
  );
}

export default App;
