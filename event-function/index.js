module.exports.handler = function(event, _, callback) {
  const eventObject = JSON.parse(event.toString('utf8'));
  callback(null, eventObject['foo']);
};
