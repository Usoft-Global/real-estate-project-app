export default function SmallCard() {

  return(
    <>
      <div className="card"
        style={{
          width: "13rem",
          padding: "4px",
          borderRadius: "8px",
          border: "1px solid 5F6F52"
          }}>
        <img src="https://picsum.photos/id/237/200/200" className="card-img-top" alt="..."/>
        <div className="card-body">
          <h5 className="card-title">Card title</h5>
          <p className="card-text">Some quick example</p>
        </div>
        <ul className="list-group list-group-flush">
          <li className="list-group-item">An item</li>
          <li className="list-group-item">A second item</li>
          <li className="list-group-item">A third item</li>
        </ul>
        {/* <div className="card-body">
          <a href="#" className="card-link">Card link</a>
          <a href="#" className="card-link">Another link</a>
        </div> */}
      </div>

    </>
  )
}
