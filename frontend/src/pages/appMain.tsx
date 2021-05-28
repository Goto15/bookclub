/* ----- COMPONENTS ----- */
import Sidebar from '../components/sidebar'

export default function AppMain(){
  return (
    <div className="flex flex-wrap w-full h-screen sm:flex-row sm:justify-around">
      <Sidebar></Sidebar>
      <div className="w-9/12">Hello World!</div>
    </div>
  )
}