export default function SearchBlock() {


  return(
    <>
        {/* <div className="p-3 mb-2 bg-secondary-subtle text-primary-emphasis"> */}
         <div className="p-3 mb-2">
          <div>
          <img src="https://picsum.photos/id/257/1000/150" className="card-img-top" alt="..."/>
          </div>
          <div className="mt-2">
            <button type="button" className="btn btn-primary btn-lg mx-3">Buy</button>
            <button type="button" className="btn btn-primary btn-lg mx-3">Rent</button>
            <button type="button" className="btn btn-primary btn-lg mx-3">Sell</button>
          </div>
          <div>
            <form>
              <fieldset disabled>
                <legend>Disabled fieldset example</legend>
                <div className="mb-3">
                  <label htmlFor="disabledTextInput" className="form-label">Disabled input</label>
                  <input type="text" id="disabledTextInput" className="form-control" placeholder="Disabled input"/>
                </div>
                <div className="mb-3">
                  <label htmlFor="disabledSelect" className="form-label">Disabled select menu</label>
                  <select id="disabledSelect" className="form-select">
                    <option>Disabled select</option>
                  </select>
                </div>
                <div className="mb-3">
                  <div className="form-check">
                    <input className="form-check-input" type="checkbox" id="disabledFieldsetCheck" disabled/>
                    <label className="form-check-label" htmlFor="disabledFieldsetCheck">
                      Can check this
                    </label>
                  </div>
                </div>
                <button type="submit" className="btn btn-primary">Submit</button>
              </fieldset>
            </form>
          </div>

        </div>
    </>
  )
}
