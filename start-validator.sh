#!/bin/sh
exec solana-validator \
    --identity ~/validator-keypair.json \
    --vote-account ~/vote-account-keypair.json \
    --no-voting \
    --ledger /mt/ledger/validator-ledger \
    --accounts /mt/solana-accounts \
    --log ~/log/solana-validator.log \
    --rpc-port 8899 \
    --gossip-port 8001 \
    --dynamic-port-range 8000-8020 \
    --known-validator 7Np41oeYqPefeNQEHSv1UDhYrehxin3NStELsSKCT4K2 \
    --known-validator GdnSyH3YtwcxFvQrVVJMm1JhTS4QVX7MFsX56uJLUfiZ \
    --known-validator DE1bawNcRJB9rVm3buyMVfr8mBEoyyu73NBovf2oXJsJ \
    --known-validator CakcnaRDHka2gXyfbEd2d3xsvkJkqsLw2akB3zsN1D2S \
    --entrypoint entrypoint.mainnet-beta.solana.com:8001 \
    --entrypoint entrypoint2.mainnet-beta.solana.com:8001 \
    --entrypoint entrypoint3.mainnet-beta.solana.com:8001 \
    --entrypoint entrypoint4.mainnet-beta.solana.com:8001 \
    --entrypoint entrypoint5.mainnet-beta.solana.com:8001 \
    --expected-genesis-hash 5eykt4UsFv8P8NJdTREpY1vzqKqZKvdpKuc  \
    --wal-recovery-mode skip_any_corrupted_record \
    --limit-ledger-size 200000000 \
    --account-index program-id spl-token-owner spl-token-mint \
    --account-index-exclude-key kinXdEcpDQeHPEuQnqmUgtYykqKGVFq6CeVX5iAHJq6 \
    --account-index-exclude-key metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s \
    --account-index-exclude-key TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA \
    --only-known-rpc \
    --enable-rpc-transaction-history \
    --enable-cpi-and-log-storage \
    --enable-rpc-bigtable-ledger-storage \
    --full-rpc-api \
    --rpc-bind-address 0.0.0.0 \
    --private-rpc \
    --use-snapshot-archives-at-startup when-newest \
    --no-snapshot-fetch
