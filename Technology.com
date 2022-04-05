# A block is stored as a tuple of
# (parent_hash, transactions, hash_itself)

def get_parent_hash(block):
    return block[0]


def get_transactions(block):
    return block[1]


def get_hash_itself(block):
    return block[2]

# function to create a block in a blockchain
def create_block(transactions, parent_hash):
    hash_itself = hash((transactions, parent_hash))
    return (parent_hash, transactions, hash_itself)
