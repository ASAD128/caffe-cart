import logo from './logo.svg';
import React from 'react';
import ReactDOM from 'react-dom/client';
import './App.css';

//function App() {
class App extends React.Component {
/*  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );*/

/*  return (
       <div className="App">
          Hello World !
       </div>
       <h1> Hello World! </h1>
  );*/

    constructor(props){
        super(props)
        this.state = {
            items: []
        }
    }

    componentDidMount(){
        fetch('https://swapi.dev/api/people')
            .then(function(response){
                return response.json()
            }).then(responseData => {
            this.setState({
                items: responseData.results
            })
        }).catch(error => {
            alert("Error");
        })
    }


    render(){
        let items = this.state.items
        return (
            <div className="App">
              <h1> Star War Movie Characters Name </h1>
              {items.map(function(item){
                  return <h4>{item.name}</h4>
              })}

            </div>
        );
    }

}

export default App;
