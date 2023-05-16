const Button = ({children, clickHandler}) => {

    return <button onClick={clickHandler}>{children}</button>
}

export default Button