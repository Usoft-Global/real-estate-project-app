import Footer from "./component/Footer"
import Navbar from "./component/Navbar"
import SearchBlock from "./component/SearchBlock"
import SmallCard from "./component/SmallCard"

function App() {

  return (
    <>
      <Navbar></Navbar>
      <div className="container">
        <div>
          <SearchBlock></SearchBlock>

        </div>
        <div className="container text-center mt-2">
          <div className="row">
            {[...Array(10)].map((item, index) => <SmallCard className="col p-2" key={index} />)}

          </div>
        </div>
        <Footer></Footer>
      </div>



    </>
  )
}

export default App
