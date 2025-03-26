# DAO DeFi Fund

## Overview
The `DAO::DeFiFund` module is a smart contract designed to manage decentralized finance (DeFi) funds on the Aptos blockchain. It allows users to create funds with a specific goal and contribute Aptos Coins (APT) to support these funds.

## Features
- **Fund Creation**: Users can create a new DeFi fund with a specified fundraising goal.
- **Contribution Mechanism**: Users can contribute Aptos Coins to an existing fund.
- **Fund Tracking**: The contract maintains a record of the total funds raised.

## Module Functions
### `create_fund(owner: &signer, goal: u64)`
Creates a new fund with a specified goal amount.

**Parameters:**
- `owner`: The signer who creates the fund.
- `goal`: The target fundraising goal.

**Behavior:**
- Initializes a `Fund` struct with `total_funds` set to 0 and the given `goal`.
- Moves the `Fund` resource to the owner's account.

### `contribute_to_fund(contributor: &signer, fund_owner: address, amount: u64)`
Allows users to contribute Aptos Coins to an existing fund.

**Parameters:**
- `contributor`: The signer making the contribution.
- `fund_owner`: The address of the fund owner.
- `amount`: The amount of Aptos Coins to contribute.

**Behavior:**
- Withdraws `amount` from the contributor's balance.
- Deposits the contribution into the fund owner's account.
- Updates the `total_funds` of the respective fund.

## Prerequisites
To deploy and interact with this module, ensure you have:
- An Aptos blockchain environment set up.
- The Aptos CLI installed.
- A funded Aptos account.

## Installation & Deployment
1. Clone the repository:
   ```sh
   git clone <repo_url>
   cd <repo_name>
   ```
2. Compile the module:
   ```sh
   aptos move compile
   ```
3. Deploy to the Aptos network:
   ```sh
   aptos move publish --profile default
   ```

## Contribution
Contributions are welcome! Feel free to open issues or submit pull requests for improvements.

## License
This project is licensed under the MIT License.

## Contract addresss
0x098df7e8f541714412a6dffd2b0d071d89913c91c1d1475f825b2321d24da75e
![image](https://github.com/user-attachments/assets/3b50f2e0-2ae9-4c33-b414-7c028e2e2810)
