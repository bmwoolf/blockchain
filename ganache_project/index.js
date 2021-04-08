let Web3 = require('web3');
var EthereumTransaction = require("ethereumjs-tx").Transaction;
var web3 = new Web3('HTTP://127.0.0.1:7545')

let sendingAddress = '0x788fC0b48a1df3fe92Ef9245a02da55B3072E485';
let receivingAddress = '0xd6F5CF82D129A63A1FDE19e8f06A97d38f5Cc41E';

web3.eth.getBalance(sendingAddress).then(console.log); // comes back in Wei
web3.eth.getBalance(receivingAddress).then(console.log); // comes back in Wei

let rawTransaction = {
    nonce: web3.utils.toHex(1),
    to: receivingAddress,
    gasPrice: web3.utils.toHex(20000000),
    gasLimit: web3.utils.toHex(30000),
    value: web3.utils.toHex(100),
    data: web3.utils.toHex('')
}

 // transaction is signed by the private key from the sender
 let privateKeySender = '31a90cbbf6a8511fc9a273d4a5c1cf8a3c075315d04d6fc85b78cde80b0a9ff5';
 let privateKeySenderHex = new Buffer.from(privateKeySender, 'hex');
 let transaction = new EthereumTransaction(rawTransaction);
 transaction.sign(privateKeySenderHex);

// then need to serialize it because why not make it more difficult??
let serializedTransaction = transaction.serialize();
// web3.eth.sendSignedTransaction(serializedTransaction); //web3 only really gets involved when sending/receiving data over the network

web3.eth.getGasPrice().then(console.log);
web3.eth.getUncle(500, 0).then(console.log);
web3.eth.getBlockTransactionCount("0x407d73d8a49eeb85d32cf465507dd71d507100c1")
.then(console.log);