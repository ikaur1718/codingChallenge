import React from "react";
import ReactDom from 'react-dom';
import App from './components/App.jsx';
import axios from 'axios';
import firebase from './components/Firebase/firebase.js';

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
      login: false,
      data: [],
    }
    this.setLogInState = this.setLogInState.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.signUp = this.signUp.bind(this);
    this.logOut = this.logOut.bind(this);
  }

  componentDidMount() {
  }

  handleChange(e) {
    this.setState({
      [e.target.id]: e.target.value
    })
  }

  logOut() {
    this.setState ({
      email:'',
      password: '',
      login: false
    })
  }


  signUp(event) {
    const { email, password } = this.state;
    firebase.auth().createUserWithEmailAndPassword(email, password)
      .then(authUser => {
        firebase.auth().onAuthStateChanged(firebaseUser => {
          if(firebaseUser) {
            this.insertData(email, password);
            this.setLogInState(event);
          } else {
            console.log('Not logged In');
          }
        })
      })
      .catch((err) => {
        console.log(err);
      })
  }

  insertData(email, password) {
    axios.post('/newData', {
      email: email
    })
    .then(function (response) {
      // console.log(response);
    })
    .catch(function (error) {
      console.log(error);
    });

  }
 
  setLogInState(event) {
    const { email, password } = this.state;

    firebase.auth().signInWithEmailAndPassword(email, password)
      .then(authUser => {
        if(authUser) {

          const params = {
            email: this.state.email
          }
          axios.get('/login', {params: params})
            .then((result) => {
              this.setState({
                data: result.data,
                login: true,
              });
            })
            .catch((error) => {
              console.log("Hello: ", error)
            });
        } else {
          alert('Email and Password does not exsits');
        }
      })
      .catch(error => {
        alert('Email and Password does not exsits');
        console.log("This is firebase auth error", error);
        //this.setState({ error });
      });

    event.preventDefault();
  }

  render() {
    if(this.state.login) {
      return (
        <App  data={this.state.data} email={this.state.email} signOut={this.logOut}></App>
      )
    } else {
      return (
        <div className="inner-container">
          <div className="header">
            Login
          </div>
          <div className="box">
  
            <div className="input-group">
              <label htmlFor="username">Username</label>
              <input
                id="email"
                type="text"
                name="username"
                className="login-input"
                placeholder="Username" onChange={this.handleChange}/>
            </div>
  
            <div className="input-group">
              <label htmlFor="password">Password</label>
              <input
                id="password"
                type="password"
                name="password"
                className="login-input"
                placeholder="Password" onChange={this.handleChange}/>
            </div>
  
            <button
              type="button"
              className="login-btn"
              onClick={this.setLogInState}>Login
            </button>

            <button
              type="button"
              className="login-btn"
              onClick={this.signUp}>signUp
            </button>

  
          </div>
        </div>
      );
    }
    
  }
}; 
ReactDom.render( <Login />, document.getElementById('app'));