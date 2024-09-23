import './Dropdown.css';

const Dropdown = (props) => {
    return (
        <div className="cont">
            <label className="container__title">{props.label}</label>

            <select className="container__drop-down" required={props.required}>
                {props.items.map(item => <option key={item}>{item}</option>)}
            </select>
        </div>
    );
}

export default Dropdown;