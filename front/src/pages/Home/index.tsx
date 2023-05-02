/* eslint-disable @typescript-eslint/no-unsafe-assignment */
import { FunctionComponent } from 'react';

const Home: FunctionComponent = () => (
  <div className="home-container">
    <h1>Bienvenue sur le site de LorenzO&apos;tickets</h1>

    <p className="home-text">
      Il était flic et il faisait du bon travail. Mais il avait commis le crime le plus grave, en témoignant contre
      d&apos;autres flics qui avaient mal tourné. Ces flics avaient tenté de l&apos;éliminer, mais c&apos;est la femme
      qu&apos;il aimait qui avait été touchée. Accusé à tort de meurtre, il rôdait maintenant du côté du Dakota. Un
      hors-la-loi poursuivant les hors-la-loi, un chasseur de prime, un renégat.
    </p>

    <div className="bubble-1"></div>
    <div className="bubble-2"></div>
    <div className="bubble-3"></div>
  </div>
);

export default Home;
