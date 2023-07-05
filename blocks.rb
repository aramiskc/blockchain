blocks = []

height = 0
loop do
  height += 1

  blocks << {
    height: height,
    last_block: height -1,
    transactions: transactions_for_this_block
  }
end
# Code above "height" is the number of the block based on its position in the blockchain. Big downside here is that nothing prevents the edition of a past block.

