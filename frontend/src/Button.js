const Button = ({children, clickHandler}) => {

    return <button data-cy="todo-submit-btn" onClick={clickHandler}>{children}</button>
}

export default Button