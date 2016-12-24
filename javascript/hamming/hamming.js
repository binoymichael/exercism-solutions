var Hamming = function() {
  this.compute = function(firstStrand, secondStrand) {
    if (firstStrand.length != secondStrand.length) {
      throw new Error('DNA strands must be of equal length.');
    }

    var hammingDistance = 0;
    for (let i = 0; i < firstStrand.length; i++) {
      if (firstStrand[i] != secondStrand[i]) {
        hammingDistance++;
      }
    }

    return hammingDistance;
  };
};

module.exports = Hamming;


