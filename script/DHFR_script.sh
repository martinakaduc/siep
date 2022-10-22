# Dataset: DHFR
cd workspace/siep
conda activate giso

# Setting: Dense + [0,20]
python process_data.py ../giso/data_real/datasets/DHFR_test DHFR_dense_0_20 ../giso/data_processed/DHFR/test_keys_dense_0_20.pkl

python evaluate.py VF3/vf3.exe datasets/DHFR_dense_0_20 results/DHFR
python evaluate.py TurboISO/turbo.exe datasets/DHFR_dense_0_20 results/DHFR
python evaluate.py cfl-match/cfl.exe datasets/DHFR_dense_0_20 results/DHFR
python evaluate.py CECI/ceci.exe datasets/DHFR_dense_0_20 results/DHFR
python evaluate.py quicksi/quicksi.exe datasets/DHFR_dense_0_20 results/DHFR
python evaluate.py DAF/daf.exe datasets/DHFR_dense_0_20 results/DHFR
python evaluate.py graphql/graphql.exe datasets/DHFR_dense_0_20 results/DHFR

# Setting: Dense + [20,40]
python process_data.py ../giso/data_real/datasets/DHFR_test DHFR_dense_20_40 ../giso/data_processed/DHFR/test_keys_dense_20_40.pkl

python evaluate.py VF3/vf3.exe datasets/DHFR_dense_20_40 results/DHFR
python evaluate.py TurboISO/turbo.exe datasets/DHFR_dense_20_40 results/DHFR
python evaluate.py cfl-match/cfl.exe datasets/DHFR_dense_20_40 results/DHFR
python evaluate.py CECI/ceci.exe datasets/DHFR_dense_20_40 results/DHFR
python evaluate.py quicksi/quicksi.exe datasets/DHFR_dense_20_40 results/DHFR
python evaluate.py DAF/daf.exe datasets/DHFR_dense_20_40 results/DHFR
python evaluate.py graphql/graphql.exe datasets/DHFR_dense_20_40 results/DHFR

# Setting: Dense + [40,60]
python process_data.py ../giso/data_real/datasets/DHFR_test DHFR_dense_40_60 ../giso/data_processed/DHFR/test_keys_dense_40_60.pkl

python evaluate.py VF3/vf3.exe datasets/DHFR_dense_40_60 results/DHFR
python evaluate.py TurboISO/turbo.exe datasets/DHFR_dense_40_60 results/DHFR
python evaluate.py cfl-match/cfl.exe datasets/DHFR_dense_40_60 results/DHFR
python evaluate.py CECI/ceci.exe datasets/DHFR_dense_40_60 results/DHFR
python evaluate.py quicksi/quicksi.exe datasets/DHFR_dense_40_60 results/DHFR
python evaluate.py DAF/daf.exe datasets/DHFR_dense_40_60 results/DHFR
python evaluate.py graphql/graphql.exe datasets/DHFR_dense_40_60 results/DHFR

# Setting: Dense + [60,]
python process_data.py ../giso/data_real/datasets/DHFR_test DHFR_dense_60_ ../giso/data_processed/DHFR/test_keys_dense_60_.pkl

python evaluate.py VF3/vf3.exe datasets/DHFR_dense_60_ results/DHFR
python evaluate.py TurboISO/turbo.exe datasets/DHFR_dense_60_ results/DHFR
python evaluate.py cfl-match/cfl.exe datasets/DHFR_dense_60_ results/DHFR
python evaluate.py CECI/ceci.exe datasets/DHFR_dense_60_ results/DHFR
python evaluate.py quicksi/quicksi.exe datasets/DHFR_dense_60_ results/DHFR
python evaluate.py DAF/daf.exe datasets/DHFR_dense_60_ results/DHFR
python evaluate.py graphql/graphql.exe datasets/DHFR_dense_60_ results/DHFR

# Setting: Non-Dense + [0,20]
python process_data.py ../giso/data_real/datasets/DHFR_test DHFR_nondense_0_20 ../giso/data_processed/DHFR/test_keys_nondense_0_20.pkl

python evaluate.py VF3/vf3.exe datasets/DHFR_nondense_0_20 results/DHFR
python evaluate.py TurboISO/turbo.exe datasets/DHFR_nondense_0_20 results/DHFR
python evaluate.py cfl-match/cfl.exe datasets/DHFR_nondense_0_20 results/DHFR
python evaluate.py CECI/ceci.exe datasets/DHFR_nondense_0_20 results/DHFR
python evaluate.py quicksi/quicksi.exe datasets/DHFR_nondense_0_20 results/DHFR
python evaluate.py DAF/daf.exe datasets/DHFR_nondense_0_20 results/DHFR
python evaluate.py graphql/graphql.exe datasets/DHFR_nondense_0_20 results/DHFR

# Setting: Non-Dense + [20,40]
python process_data.py ../giso/data_real/datasets/DHFR_test DHFR_nondense_20_40 ../giso/data_processed/DHFR/test_keys_nondense_20_40.pkl

python evaluate.py VF3/vf3.exe datasets/DHFR_nondense_20_40 results/DHFR
python evaluate.py TurboISO/turbo.exe datasets/DHFR_nondense_20_40 results/DHFR
python evaluate.py cfl-match/cfl.exe datasets/DHFR_nondense_20_40 results/DHFR
python evaluate.py CECI/ceci.exe datasets/DHFR_nondense_20_40 results/DHFR
python evaluate.py quicksi/quicksi.exe datasets/DHFR_nondense_20_40 results/DHFR
python evaluate.py DAF/daf.exe datasets/DHFR_nondense_20_40 results/DHFR
python evaluate.py graphql/graphql.exe datasets/DHFR_nondense_20_40 results/DHFR

# Setting: Non-Dense + [40,60]
python process_data.py ../giso/data_real/datasets/DHFR_test DHFR_nondense_40_60 ../giso/data_processed/DHFR/test_keys_nondense_40_60.pkl

python evaluate.py VF3/vf3.exe datasets/DHFR_nondense_40_60 results/DHFR
python evaluate.py TurboISO/turbo.exe datasets/DHFR_nondense_40_60 results/DHFR
python evaluate.py cfl-match/cfl.exe datasets/DHFR_nondense_40_60 results/DHFR
python evaluate.py CECI/ceci.exe datasets/DHFR_nondense_40_60 results/DHFR
python evaluate.py quicksi/quicksi.exe datasets/DHFR_nondense_40_60 results/DHFR
python evaluate.py DAF/daf.exe datasets/DHFR_nondense_40_60 results/DHFR
python evaluate.py graphql/graphql.exe datasets/DHFR_nondense_40_60 results/DHFR

# Setting: Non-Dense + [60,]
python process_data.py ../giso/data_real/datasets/DHFR_test DHFR_nondense_60_ ../giso/data_processed/DHFR/test_keys_nondense_60_.pkl

python evaluate.py VF3/vf3.exe datasets/DHFR_nondense_60_ results/DHFR
python evaluate.py TurboISO/turbo.exe datasets/DHFR_nondense_60_ results/DHFR
python evaluate.py cfl-match/cfl.exe datasets/DHFR_nondense_60_ results/DHFR
python evaluate.py CECI/ceci.exe datasets/DHFR_nondense_60_ results/DHFR
python evaluate.py quicksi/quicksi.exe datasets/DHFR_nondense_60_ results/DHFR
python evaluate.py DAF/daf.exe datasets/DHFR_nondense_60_ results/DHFR
python evaluate.py graphql/graphql.exe datasets/DHFR_nondense_60_ results/DHFR