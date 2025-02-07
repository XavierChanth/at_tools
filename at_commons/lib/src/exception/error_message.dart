// ignore: constant_identifier_names
const Map error_codes = {
  'AtServerException': 'AT0001',
  'DataStoreException': 'AT0002',
  'InvalidSyntaxException': 'AT0003',
  'SocketException': 'AT0004',
  'BufferOverFlowException': 'AT0005',
  'OutboundConnectionLimitException': 'AT0006',
  'SecondaryNotFoundException': 'AT0007',
  'HandShakeException': 'AT0008',
  'UnAuthorizedException': 'AT0009',
  'InternalServerError': 'AT0010',
  'InternalServerException': 'AT0011',
  'InboundConnectionLimitException': 'AT0012',
  'UnAuthenticatedException': 'AT0401',
  'BlockedConnectionException': 'AT0013',
  'AtClientException': 'AT0014',
  'KeyNotFoundException': 'AT0015',
  'SecondaryConnectException': 'AT0021',
  'IllegalArgumentException': 'AT0022',
  'AtTimeoutException': 'AT0023'
};

// ignore: constant_identifier_names
const Map error_description = {
  'AT0001': 'Server exception',
  'AT0002': 'DataStore exception',
  'AT0003': 'Invalid syntax',
  'AT0004': 'Socket error',
  'AT0005': 'Buffer limit exceeded',
  'AT0006': 'Outbound connection limit exceeded',
  'AT0007': 'Secondary server not found',
  'AT0008': 'Handshake failure',
  'AT0009': 'UnAuthorized client in request',
  'AT0010': 'Internal server error',
  'AT0011': 'Internal server exception',
  'AT0012': 'Inbound connection limit exceeded',
  'AT0401': 'Client authentication failed',
  'AT0013': 'Connection Exception',
  'AT0014': 'Unknown AtClient exception',
  'AT0015': 'key not found',
  'AT0021': 'Unable to connect to secondary',
  'AT0022': 'Illegal arguments',
  'AT0023': 'Timeout waiting for response'
};
