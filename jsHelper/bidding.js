var bidToTrans = function makeNewBidTrans(conn) {
  var getNewBidsQuery =   "SELECT itemid, currentbid, buyer " +
                          "FROM Items, Bid " +
                          "WHERE biddable = 1 AND bidendtime < ? AND sold = 0 AND currentbid != 0 AND Items.itemid = Bid.item AND Items.currentbid = Bid.bidprice";

  var query = conn.query(getNewBidsQuery, new Date(), function(err, rows, fields) {
		if (err) throw err;
    if (rows.length > 0) {
      console.log("Endded Bids for Transactions:");
      console.log(rows);
    }
    for (var i = 0; i < rows.length; i ++) {
      var VehicleTransaction  = {item: rows[i].itemid, buyer: rows[i].buyer, transtype: 1, price: rows[i].currentbid, transtime: new Date()};
      console.log(VehicleTransaction);
      makeTransaction(conn, VehicleTransaction);
    }
	});
}


function makeTransaction (conn, VehicleTransaction) {
  var transquery = conn.query('INSERT INTO VehicleTransaction SET ?', VehicleTransaction, function(err, result) {
    if(err) throw err;
    console.log(transquery.sql);
    var updateQuery = conn.query('UPDATE items SET SOLD = 1 WHERE itemid = ' + VehicleTransaction.item, function(err, result) {
      console.log(updateQuery.sql);
      if (err) throw err;
    });
  });
}


var expireBids = function endExpiredBids(conn) {
  var getExpiredBidsQuery =   "SELECT itemid " +
                              "FROM Items " +
                              "WHERE biddable = 1 AND bidendtime < ? AND sold = 0 AND currentbid = 0";
  var query = conn.query(getExpiredBidsQuery, new Date(), function(err, rows, fields) {
    if (err) throw err;
    if (rows.length > 0) {
      console.log("Endded bad Bids:");
      console.log(rows);
    }
    for (var i = 0; i < rows.length; i ++) {
      markUnbiddable(conn, rows[i].itemid);
    }
  });
}

function markUnbiddable(conn, item) {
  var updateQuery = conn.query('UPDATE items SET biddable = 0 WHERE itemid = ' + item, function(err, result) {
    console.log(updateQuery.sql);
    if (err) throw err;
  });
}


module.exports.bidToTrans = bidToTrans;
module.exports.expireBids = expireBids;
