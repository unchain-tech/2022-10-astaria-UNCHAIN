# Astaria contest details

- 50,000 USDC main award pot
- Join [Sherlock Discord](https://discord.gg/MABEWyASkp)
- Submit findings using the issue page in your private contest repo (label issues as med or high)
- [Read for more details](https://docs.sherlock.xyz/audits/watsons)
- Starts October 20, 2022 15:00 UTC
- Ends November 03, 2022 15:00 UTC

# Resources

- [Docs](https://docs.astaria.xyz/docs/intro)
- [Twitter](https://twitter.com/AstariaXYZ)
- [Website](https://astaria.xyz/)

# Audit scope

```
./lib/astaria-gpl/src/ERC4626-Cloned.sol
./lib/astaria-gpl/src/ERC721.sol
./lib/astaria-gpl/src/AuctionHouse.sol
./src/strategies/UniqueValidator.sol
./src/strategies/CollectionValidator.sol
./src/strategies/UNI_V3Validator.sol
./src/PublicVault.sol
./src/LiquidationAccountant.sol
./src/AstariaRouter.sol
./src/TransferProxy.sol
./src/VaultImplementation.sol
./src/LienToken.sol
./src/CollateralToken.sol
./src/security/V3SecurityHook.sol
./src/WithdrawProxy.sol
```

# Astaria Docs
For more details on the Astaria protocol and its contracts, see the [docs](https://docs.astaria.xyz/docs/intro)

# Astaria Contracts Setup

Astaria runs on [Foundry](https://github.com/foundry-rs/foundry).
So make sure you get setup with Foundry first

To install contract dependencies, run:

```sh
yarn
forge install
git submodule install
```


To Deploy on a forked network, update your RPC in docker-compose.yml first and then run:

```
sh scripts/boot-system.sh
```




Tests are located in src/test. To run tests, run:

```sh
forge test --ffi
```

To target integration tests following common use paths, run:

```sh
forge test --ffi --match-contract AstariaTest
```

To target tests following disallowed behavior, run:

```sh
forge test --ffi --match-contract RevertTesting
```
