import { useState, FunctionComponent } from 'react';

import Table from '../../components/Table';
import { messagesTableHeaders, messagesData } from './constants';
// import Loader from '../../components/Loader';
import { ItemType } from '../../types';

const Messages: FunctionComponent = () => {
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const [loading, setLoading] = useState(true);

  // TODO: setLoading au onCompleted et onError de la requête

  return (
    <div className="messages-container">
      <h1>Page des messages</h1>
      {/* {loading ? (
        <Loader />
      ) : ( */}
      <Table
        thHeaders={messagesTableHeaders}
        items={messagesData}
        styleName="table messages-table"
        itemType={ItemType.MESSAGE}
      />
      {/*  )} */}
    </div>
  );
};

export default Messages;
