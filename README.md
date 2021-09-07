# ERC721-OZ

truffle(development)>     const contract = await HelloWorld.deployed()
Uncaught ReferenceError: HelloWorld is not defined
    at evalmachine.<anonymous>:1:9
truffle(development)>     const contract = await VolcanoToken.deployed()
undefined
truffle(development)> const getName= await contract.name()
undefined
truffle(development)> getName
'VolcanoToken'
truffle(development)> const getSymbol= await contract.symbol()
undefined
truffle(development)> getSymbol
'VTC'
truffle(development)> const getBalance= await contract.balanceOf(account[0])
Uncaught ReferenceError: account is not defined
    at evalmachine.<anonymous>:1:28
truffle(development)> const accounts=await contract.getAccount()
Uncaught TypeError: contract.getAccount is not a function
    at evalmachine.<anonymous>:1:18
truffle(development)> const accounts=await contract.getAccounts()
Uncaught TypeError: contract.getAccounts is not a function
    at evalmachine.<anonymous>:1:18
truffle(development)> const getBalance= await contract.balanceOf(accounts[0])
undefined
truffle(development)> getBalance
BN { negative: 0, words: [ 0, <1 empty item> ], length: 1, red: null }
truffle(development)> getBalance.toString()
'0'
