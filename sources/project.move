module DAO::DeFiFund {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct representing a DeFi fund managed by the DAO.
    struct Fund has store, key {
        total_funds: u64,  // Total funds raised in the DeFi fund
        goal: u64,         // Fund's target goal
    }

    /// Function to create a new DeFi fund with a target goal.
    public fun create_fund(owner: &signer, goal: u64) {
        let fund = Fund {
            total_funds: 0,
            goal,
        };
        move_to(owner, fund);
    }

    /// Function for users to contribute funds to the DeFi fund.
    public fun contribute_to_fund(contributor: &signer, fund_owner: address, amount: u64) acquires Fund {
        let fund = borrow_global_mut<Fund>(fund_owner);

        // Withdraw the contribution from the contributor
        let contribution = coin::withdraw<AptosCoin>(contributor, amount);
        
        // Deposit the contribution into the fund
        coin::deposit<AptosCoin>(fund_owner, contribution);

        // Update the total funds raised
        fund.total_funds = fund.total_funds + amount;
    }
}
