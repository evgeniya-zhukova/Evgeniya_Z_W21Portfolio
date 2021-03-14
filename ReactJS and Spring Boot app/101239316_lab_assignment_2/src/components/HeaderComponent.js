import React, { Component } from 'react'

class HeaderComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
                 
        }
    }

    render() {
        return (
            <div>
                <header>
                    <nav className="navbar navbar-expand-md justify-content-center navbar-dark bg-info">
                    <div><a href="https://javaguides.net" className="navbar-brand">Employee Management App</a></div>
                    </nav>
                </header>
            </div>
        )
    }
}

export default HeaderComponent
