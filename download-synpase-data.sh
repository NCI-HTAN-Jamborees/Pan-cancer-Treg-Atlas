cd /sbgenomics/output-files

pip install synapseclient

# path to synpase
synapsepath=/sbgenomics/workspace/.local/bin

$synpasepath/synapse config

# Enter authorization token from Synapse
# find your token from Synapse
# eyJ0eXAiOiJKV1QiLCJraWQiOiJXN05OOldMSlQ6SjVSSzpMN1RMOlQ3TDc6M1ZYNjpKRU9VOjY0NFI6VTNJWDo1S1oyOjdaQ0s6RlBUSCIsImFsZyI6IlJTMjU2In0.eyJhY2Nlc3MiOnsic2NvcGUiOlsidmlldyIsImRvd25sb2FkIl0sIm9pZGNfY2xhaW1zIjp7fX0sInRva2VuX3R5cGUiOiJQRVJTT05BTF9BQ0NFU1NfVE9LRU4iLCJpc3MiOiJodHRwczovL3JlcG8tcHJvZC5wcm9kLnNhZ2ViYXNlLm9yZy9hdXRoL3YxIiwiYXVkIjoiMCIsIm5iZiI6MTczMDk5MzQyNCwiaWF0IjoxNzMwOTkzNDI0LCJqdGkiOiIxMzU2MCIsInN1YiI6IjM0Mzk3NDkifQ.RiZ6w-W1m-fNx3x97ahU4xVYEr37N5u7-9Hk4cpymJvco7nNVU2gmSbOZUsT4o0cwkVbpdfEK8z9JSEEPeSUZnrsnHg7XEFNmE0AkisraMst56-DSb6ioML5CNkmFrMsfDEjsmNe8fiVP-b_FC4xOA-iSVyYrpB2WwemTA743SEw3Ec_xifC6OYXdfOtz7gX_lrHsdjihWkJ_ouO4Sk_nDbtngVHGVL0GD6ZDA83bcmquMF6VnfJQHd_z_p_mhIGAozT5V7Jets4HHOCUHPhrBHWy6Qs3AsF7L2e6YnIEjw12vu2FwL5zVDcYJi8H0kdeUf7HEMdKsE-FtwD4EbkCw

# For the synpaseID selection,
# see blue highlight in https://docs.google.com/spreadsheets/d/1H3Sp_hNKhhBfO5H5UYCWcpp7raK-GGqsFJ6ZIp2ePJA/edit

$synapsepath/synapse get syn53215073
$synapsepath/synapse get syn53214611

outdir=/sbgenomics/output-files
cd $outdir
ls # saved to directory
