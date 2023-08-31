class FastaMotifSlidingGenerator
=begin
 a fasta class to make genomic sliding window for the 
  if you have a binding site and you want to prepare 
  the motifs for the binding site as a sliding window
  you can also use the same. You can also search the 
  sliding window motifs starting with the particular tag
  to see how many of them are generated. 
=end
  def initialize(fasta_sequence, takeiter, motif)
  @fasta = fasta_sequence
  @take = takeiter.to_i
  @motif = motif.to_s
  end
  def sequencechunk
    fasta_block = @fasta.split(//)
    fasta_chunk_sequences = []
    for i in 0..fasta_block.length-@take
      fasta_chunk_sequences.push(fasta_block.slice(i,i-i+@take).join)
    end
  return fasta_chunk_sequences
  end
  def returnmotif
    fasta_block = @fasta.split(//)
    fasta_chunk_sequences = []
    for i in 0..fasta_block.length-@take
        fasta_chunk_sequences.push(fasta_block.slice(i,i-i+@take).join)
    fasta_motifs = []
    fasta_chunk_sequences.each{|fasta| puts fasta_motifs.push(fasta) if fasta.start_with?(@motif)}
    end
    return fasta_motifs
  end
end
