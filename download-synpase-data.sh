cd /sbgenomics/output-files

pip install synapseclient

# path to synpase
synapsepath=/sbgenomics/workspace/.local/bin

$synpasepath/synapse config

# Enter authorization token from Synapse
# find your token from Synapse

# For the synpaseID selection,
# see blue highlight in https://docs.google.com/spreadsheets/d/1H3Sp_hNKhhBfO5H5UYCWcpp7raK-GGqsFJ6ZIp2ePJA/edit

$synapsepath/synapse get syn53215073
$synapsepath/synapse get syn53214611

outdir=/sbgenomics/output-files
cd $outdir
ls # saved to directory

