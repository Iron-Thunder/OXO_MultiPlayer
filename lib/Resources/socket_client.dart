
import 'package:socket_io_client/socket_io_client.dart' as IO;

// this is singleton class of SocketClient which will ensure that when we call SocketClient there is only one instance of this class
class SocketClient{
  IO.Socket ? socket;
  static SocketClient ? _instance;

  SocketClient._internal(){
    socket = IO.io("http://192.168.29.97:3000", <String, dynamic> {
      'transports' : ['Websocket'],
      'autoConnect' : false,
    });
    socket!.connect();

    
  }

  // Creating a getter for getting back the data
  static SocketClient get instance{
    _instance ??= SocketClient._internal();
    return _instance!;
  }
  
}