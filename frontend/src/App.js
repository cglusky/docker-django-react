import { useState, useEffect } from 'react'
import './App.css'
import Button from './Button'

function App() {

  const [toDos, setTodos] = useState([])
  const [formInput, setFormInput] = useState('')

  const getTodos = async () => {
    const res = await fetch('/api/todos/').then(res => res.json()).catch(e => console.log(e))              
    setTodos(res)
  };

  const addTodo = async () => {
    const options = {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({todo: formInput}),
    }

    await fetch('/api/todos/', options).catch(e => console.log(e))
    getTodos();
    setFormInput('');
  }

  useEffect(() => {
    getTodos();
  }, [])

  const buttonHandler = () => {
    addTodo();
  }

  const formHandler = (e) => {
    setFormInput(e.target.value);
  }

  
  return (
    <div className="App">
    <input data-cy="todo-input" type="text" value={formInput} onChange={formHandler}></input>
      <Button clickHandler={buttonHandler}>Add To Do</Button>
      <p>{origin}</p>
      {toDos?.length && toDos.length > 0 ? <ul data-cy="todo-list">{toDos.map(el => (
        <li key={el.pk} >{el.fields.todo}</li>
      ))}</ul> : null}
    </div>
  );
}

export default App;
