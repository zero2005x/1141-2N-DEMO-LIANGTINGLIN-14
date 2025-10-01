import './App_14.scss';
import books_data from './booklist_data';

const App_14 = () => <Booklist_14 />;

const Booklist_14 = () => {
  return (
    <section className='booklist'>
      {books_data.map((book) => {
        const { id, img, title, author } = book;
        return <Book_14 key={id} img={img} title={title} author={author} />;
      })}
    </section>
  );
};

const Book_14 = ({ img, title, author }) => {
  return (
    <article className='book'>
      <img src={img} alt={title} />
      <div className='bookinfo'>
        <h1>{title}</h1>
        <h4>{author}</h4>
      </div>
    </article>
  );
};

export default App_14;