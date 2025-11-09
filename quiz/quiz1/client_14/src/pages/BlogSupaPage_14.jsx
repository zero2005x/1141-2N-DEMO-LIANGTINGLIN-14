import { useState, useEffect } from 'react';

// import blogData_14 from '../assets/data/blogData.json';
import Blog_14 from '../components/Blog_14';

// const api_url = 'http://localhost:5000/api/blog_14';

import { supabase } from '../db/clientSupabase';

const BlogSupaPage_14 = () => {
  const [name, setName] = useState('liangtinglin');
  const [id, setId] = useState(9134100149);
  const [blogs_14, setBlogs_14] = useState([]);

  const fetchBlogFromSupaServer = async () => {
    try {
      let { data, error } = await supabase.from('blog_14').select('*');
      // const response = await fetch(api_url);
      // const data = await response.json();
      console.log('blogs', data);
      setBlogs_14(data);
    } catch (error) {
      console.log(error);
    }
  };

  useEffect(() => {
    fetchBlogFromSupaServer();
  }, []);

  return (
    <>
      <section className='blogs'>
        <div className='section-title'>
          <h2>
            blogs from Supabase -- {name}, {id}{' '}
          </h2>
        </div>
        <div className='blogs-center'>
          {blogs_14.map((item) => {
            const { id, title, descrip, category, img } = item;
            return (
              <Blog_14
                key={id}
                id={id}
                title={title}
                descrip={descrip}
                category={category}
                img={img}
              />
            );
          })}
        </div>
      </section>
    </>
  );
};

export default BlogSupaPage_14;
