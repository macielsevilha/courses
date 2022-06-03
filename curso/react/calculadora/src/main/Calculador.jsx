import React, { Component} from "react";

import './Calculador.css'

import Button from "../components/Button";
import Display from "../components/Display";

export default class Calculator extends Component {
constructor(props) {
    super(props)
    this.clearMenory = this.clearMenory.bind(this)
    this.setOperation = this.setOperation.bind(this)
    this.addDigit = this.addDigit.bind(this)
}
    clearMenory() {
        console.log('limpar')
    }
    setOperation(operation) {
        console.log(operation)
    }
    addDigit(n) {
        console.log(n)
    }
    render() {
       
        return (
            <div className="calculador">
                <Display value={10}/>
                <Button label="AC" click={this.clearMenory} />
                <Button label="/" click={this.setOperation} />
                <Button label="7" click={this.addDigit} />
                <Button label="8" click={this.addDigit} />
                <Button label="9" click={this.addDigit} />
                <Button label="*" click={this.setOperation} />
                <Button label="4" click={this.addDigit} />
                <Button label="5" click={this.addDigit} />
                <Button label="6" click={this.addDigit} />
                <Button label="-" click={this.setOperation} />
                <Button label="1" click={this.addDigit} />
                <Button label="2" click={this.addDigit} />
                <Button label="3" click={this.addDigit} />
                <Button label="+" click={this.setOperation} />
                <Button label="0" click={this.addDigit} />
                <Button label="." click={this.addDigit} />
                <Button label="=" click={this.setOperation} />
            </div>
        )
    }
}