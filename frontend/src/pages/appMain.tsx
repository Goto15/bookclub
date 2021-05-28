/* ----- COMPONENTS ----- */
import Sidebar from '../components/sidebar'
import MainContent from '../components/mainContent'

export default function AppMain(){
  return (
    <div className="flex flex-wrap w-full h-screen sm:flex-row sm:justify-around">
      <Sidebar></Sidebar>
      <MainContent></MainContent>
    </div>
  )
}