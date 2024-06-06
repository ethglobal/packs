## ETHGlobal Packs

[https://ethglobal.com/packs](https://ethglobal.com/packs)

Repo for smart contracts for ETHGlobal Packs

A pack has an ID, and its metadata is at `https://ethglobal.com/packs/{id}`.

An example metadata is as follows:

```json
{
  "name": "ETHGlobal Free Pack",
  "description": "This is a free pack for all ETHGlobal hackers. It contains a few items to help you get started.",
  "image": "https://ethglobal.com/packs/0x0000000000000000000000000000000000000001.png",
  "properties": {
    "author_twitter": "@ethglobal",
    "perks": {
      "name": "Perks",
      "value": [1]
    }
  }
}
```

### 721 Contract

This is an ERC-721 implementation of **a single** ETHGlobal pack.

This pack contains tokens with unique increment IDs, one per instance of a pack.

This pack has hard-coded token URI for all tokens at `https://ethglobal.com/api/packs/hacker?id={id}`.

## Deployments

| Contract                      | Address                                      | Purpose        | OP Sepolia                                                                                              |
| ----------------------------- | -------------------------------------------- | -------------- | ------------------------------------------------------------------------------------------------------- |
| `HackerPack`                  | `0x32382a82d9faDc55f971f33DaEeE5841cfbADbE0` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0xeCF21b536882cA35Ab20B59D349E554256c28897#code) |
| `DenverPack`                  | `0x166d4400E49535eA8Ab61d4A5800791d766c7603` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0x166d4400e49535ea8ab61d4a5800791d766c7603#code)   |
| `LondonPack`                  | `0x3fA473c3295D74E8c1499C031AA33121f581a3fE` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0x3fA473c3295D74E8c1499C031AA33121f581a3fE#code)   |
| `SydneyPack`                  | `0x0F872B07EB9c73DDE8eef38a624F68B03B99e88C` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0x0f872b07eb9c73dde8eef38a624f68b03b99e88c#code) |
| `ETHGlobalFinalist`           | `0x44Ebc0A6fA6700931F7a817126aa7BDce41831C4` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0x44Ebc0A6fA6700931F7a817126aa7BDce41831C4#code) |
| `SydneyFinalistPack`          | `0x85052Af96Ce5D90469A13bc69A618dC9a2d49aD6` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0x85052Af96Ce5D90469A13bc69A618dC9a2d49aD6#code) |
| `ScalingEthereumFinalistPack` | `0x6f2942E1fb7737ec3d3b29BED92Ff3e73601DcD3` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0x6f2942E1fb7737ec3d3b29BED92Ff3e73601DcD3#code) |
| `LFGHOFinalistPack`           | `0x3c63848388ca9f98403aa5c5c0bb579bdff039bf` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0x3c63848388ca9f98403aa5c5c0bb579bdff039bf#code) |
| `CircuitBreakerFinalistPack`  | `0xe2fb6b612a90d38e6183ff8a9323b2a13d9afa5d` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0xe2fb6b612a90d38e6183ff8a9323b2a13d9afa5d#code) |
| `LondonFinalistPack`          | `0xa94b0a0ad9485946a771acb89a7927923ddd389f` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0xa94b0a0ad9485946a771acb89a7927923ddd389f#code) |
| `FrameworksFinalistPack`      | `0xe8bb0abd672d977acd06b68889bba46643d114a1` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0xe8bb0abd672d977acd06b68889bba46643d114a1#code) |
| `BrusselsPack`                | `0xeE6e32665f19214d103a40582c6ea525c0225507` | Proxy to 721.  | [Link](https://sepolia-optimistic.etherscan.io/address/0xeE6e32665f19214d103a40582c6ea525c0225507#code) |

## License

MIT
