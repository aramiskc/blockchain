require "digest"

blocks = []

height = 0
loop do
  height += 1

  blocks << {
    height: height,
    # We're now using the last block's hash instead of its height.
    last_block: height -1,
    transactions: transactions_for_this_block,
  }
end