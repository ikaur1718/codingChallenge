import React from "react";
import axios from 'axios';
import firebase from './Firebase/firebase.js';


class App extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      wordCount: 499,
      changedText: {text:'', index: 0}
    }
    this.countWords = this.countWords.bind(this);
    this.saveText = this.saveText.bind(this);
  }

  componentDidMount() {
    this.setState ({
      wordCount: this.countWords(this.props.data)
    });
  }

  saveText(event, index) {
    
    axios.post('/data', {
      editData: event.target.value,
      id: index,
      email: this.props.email
    })
    .then(function (response) {
      alert('Your data is saved!');
      // console.log(response);
    })
    .catch(function (error) {
      console.log(error);
    });
  }

  showChangePassword() {
    const { email, password } = this.state;
    firebase.auth().sendPasswordResetEmail(email);
  }

  logOut() {
    firebase.auth().signOut();
    this.props.signOut();
  }

  passwordUpdate() {
    const { email, password } = this.state;
    firebase.auth().currentUser.updatePassword(password);
  }


  countWords(words) {
    let length = 0
    words.forEach((word) => {
      if(word.data1) {
        length += word.data1.split(' ').length;

      }
      if(word.editableText) {
        length += word.editableText.split(' ').length;
      }
    })
    return length;
  }



  
  render() {
    return (
      <div className="root-container">
        <div className="box-controller">
          <div
            className={"controller " }
            onClick={this
            .showChangePassword
            .bind(this)}>
            Update Password
          </div>
          <div
            className={"controller "}
            onClick={this
            .logOut
            .bind(this)}>
            Logout
          </div>
        </div>
          <div>
            {this.props.data.map((data, index) => {
              return (<div>{data.data1} <input placeholder={data.editabletext} className={"edit-input-box"} id={index} onBlur={() => this.saveText(event, index)}></input></div> )
            })}
          </div>
        
      </div>
    );
  }
}

export default App