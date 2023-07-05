require "digest"

blocks = []

height = 0
loop do
  height += 1

  blocks << {
    height: height,
    #Going to switch to using the last blocks hash instead of its height.
    last_block: blocks.last&.hash,
    transactions: transactions_for_this_block,
  }

  block ["hash"] = Digest::SHA256.hexdigest(block.to_json)

  blocks << block

end

# Code above "height" is the number of the block based on its position in the blockchain. Big downside here is that nothing prevents the edition of a past block.

