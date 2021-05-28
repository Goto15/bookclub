function Sidebar(){
  // https://www.tailwind-kit.com/components/sidebar
  /*
    This also needs to collapose to a thin version at certain
    widths with a away to expand out on an expansion click
  */
  return (
    <div className="w-3/12 h-screen">
      <div className="flex items-center justify-start mx-6 mt-10">
        <img className="h-10" src="/icons/rocket.svg"/>
        <span className="text-gray-600 dark:text-gray-300 ml-4 text-2xl font-bold">
          Lastname, Firstname
        </span>
      </div>
      <nav className="mt-10 px-6 ">
        <a className="hover:text-gray-800 hover:bg-gray-100 flex items-center p-2 my-6 transition-colors dark:hover:text-white dark:hover:bg-gray-600 duration-200  text-gray-600 dark:text-gray-400 rounded-lg " href="#">
          <span className="mx-4 text-lg font-normal">
            Clubs
          </span>
        </a>
        <a className="hover:text-gray-800 hover:bg-gray-100 flex items-center p-2 my-6 transition-colors dark:hover:text-white dark:hover:bg-gray-600 duration-200  text-gray-800 dark:text-gray-100 rounded-lg bg-gray-100 dark:bg-gray-600" href="#">
          <span className="mx-4 text-lg font-normal">
            Meetings
          </span>
        </a>
        <a className="hover:text-gray-800 hover:bg-gray-100 flex items-center p-2 my-6 transition-colors dark:hover:text-white dark:hover:bg-gray-600 duration-200  text-gray-600 dark:text-gray-400 rounded-lg " href="#">
          <span className="mx-4 text-lg font-normal">
            Books
          </span>
        </a>
        <a className="hover:text-gray-800 hover:bg-gray-100 flex items-center p-2 my-6 transition-colors dark:hover:text-white dark:hover:bg-gray-600 duration-200  text-gray-600 dark:text-gray-400 rounded-lg " href="#">
          <span className="mx-4 text-lg font-normal">
            Something Else
          </span>
        </a>
      </nav>
      <div className="absolute bottom-0 my-10">
        <a className="text-gray-600 dark:text-gray-300 hover:text-gray-800 dark:hover:text-gray-100 transition-colors duration-200 flex items-center py-2 px-8" href="#">
          <span className="mx-4 font-medium">
            Settings
          </span>
        </a>
      </div>
    </div>
  )
}

export default Sidebar