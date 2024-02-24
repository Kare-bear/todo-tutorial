import { useEffect, useState } from 'react';
import ListHeader from './components/ListHeader';




const App = () => {

  const userEmail = 'Kara@test.com'
  const [ tasks, setTasks ] = useState(null)

const getData = async () => {
  try{
    const response = await fetch(`http://localhost:8000/todos/${userEmail}`)
    const json = await response.json()
    setTasks(json)
  }catch(err){
    console.error(err)
  }
}

useEffect(() => getData, [])

console.log(tasks)

//Sort by Date


  return (
    <div className='app'>
      <ListHeader listName={'🌴 Holiday tick list '}/>
    </div>
  );
}

export default App;