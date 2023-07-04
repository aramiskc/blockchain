require "digest"

blocks = []

height = 0
loop do
  height += 1

  blocks << {
    height: height,
    # We're now using the last block's hash instead of its height.
    last_block: blocks.last&.hash,
    transactions: transactions_for_this_block,
  }

  block ["hash"] = Digest::SHA256.hexdigest(block.to_json)
  
  blocks << block
end