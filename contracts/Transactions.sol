// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// スマートコントラクトを実装
contract Transactions {
    // 仮想通貨の受渡のためのデータ構造
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
    }

    // 型であるTransferStructを配列でtransactions変数の中で使っていこうよねって話
    TransferStruct[] transactions;

    // Transferというイベントを用意
    event Transfer(address from, address reciver, uint amount);

    function addToBlockChain(address payable receiver, uint amount) public {
        transactions.push(TransferStruct(msg.sender, receiver, amount));
        // emitでTransferイベントを実行。引数に値をセット
        emit Transfer(msg.sender, receiver, amount);
    }
}
