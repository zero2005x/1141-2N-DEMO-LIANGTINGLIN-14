import { createBrowserRouter, RouterProvider } from 'react-router';

import {
  HomeLayoutPage_14,
  HomePage_14,
  BlogStaticPage_14,
  BlogLocalJsonPage_14,
  BlogNodePage_14,
  BookListPage_14,
  BlogSupaPage_14,
} from './pages';

import {
  T11_ErrorExamplePage_14,
  T12_UseStateBasicsPage_14,
} from './pages/tutorials';

import {
  Quiz1LayoutPage_14,
  Quiz1Page_14,
  TourStaticPage_14,
  TourStaticPage2_14,
  TourStaticPage3_14,
  TourNodePage_14,
} from './pages/quiz1';

const router = createBrowserRouter([
  {
    path: '/',
    element: <HomeLayoutPage_14 />,
    children: [
      {
        index: true,
        element: <HomePage_14 />,
      },
      {
        path: 'static_14',
        element: <BlogStaticPage_14 />,
      },
      {
        path: 'localjson_14',
        element: <BlogLocalJsonPage_14 />,
      },
      {
        path: 'node_14',
        element: <BlogNodePage_14 />,
      },
      {
        path: 'supa_14',
        element: <BlogSupaPage_14 />,
      },
      {
        path: 'booklist_14',
        element: <BookListPage_14 />,
      },
    ],
  },
  {
    path: '/tutorials',
    element: <HomeLayoutPage_14 />,
    children: [
      {
        index: true,
        element: <HomePage_14 />,
      },
      {
        path: 't11_14',
        element: <T11_ErrorExamplePage_14 />,
      },
      {
        path: 't12_14',
        element: <T12_UseStateBasicsPage_14 />,
      },
    ],
  },
  {
    path: '/quiz1',
    element: <Quiz1LayoutPage_14 />,
    children: [
      {
        index: true,
        element: <Quiz1Page_14 />,
      },
      {
        path: 'static_14',
        element: <TourStaticPage_14 />,
      },
      {
        path: 'static2_14',
        element: <TourStaticPage2_14 />,
      },
      {
        path: 'static3_14',
        element: <TourStaticPage3_14 />,
      },

      {
        path: 'node_14',
        element: <TourNodePage_14 />,
      },
    ],
  },
]);

const App_14 = () => {
  return <RouterProvider router={router} />;
};

export default App_14;
