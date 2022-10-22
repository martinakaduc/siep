# Dataset: DBLP-v1
cd workspace/siep
conda activate giso

# Setting: Dense + [0,20]
python process_data.py ../giso/data_real/datasets/DBLP-v1_test DBLP-v1_dense_0_20 ../giso/data_processed/DBLP-v1/test_keys_dense_0_20.pkl

python evaluate.py VF3/vf3.exe datasets/DBLP-v1_dense_0_20 results/DBLP-v1
python evaluate.py TurboISO/turbo.exe datasets/DBLP-v1_dense_0_20 results/DBLP-v1
python evaluate.py cfl-match/cfl.exe datasets/DBLP-v1_dense_0_20 results/DBLP-v1
python evaluate.py CECI/ceci.exe datasets/DBLP-v1_dense_0_20 results/DBLP-v1
python evaluate.py quicksi/quicksi.exe datasets/DBLP-v1_dense_0_20 results/DBLP-v1
python evaluate.py DAF/daf.exe datasets/DBLP-v1_dense_0_20 results/DBLP-v1
python evaluate.py graphql/graphql.exe datasets/DBLP-v1_dense_0_20 results/DBLP-v1

# Setting: Dense + [20,40]
python process_data.py ../giso/data_real/datasets/DBLP-v1_test DBLP-v1_dense_20_40 ../giso/data_processed/DBLP-v1/test_keys_dense_20_40.pkl

python evaluate.py VF3/vf3.exe datasets/DBLP-v1_dense_20_40 results/DBLP-v1
python evaluate.py TurboISO/turbo.exe datasets/DBLP-v1_dense_20_40 results/DBLP-v1
python evaluate.py cfl-match/cfl.exe datasets/DBLP-v1_dense_20_40 results/DBLP-v1
python evaluate.py CECI/ceci.exe datasets/DBLP-v1_dense_20_40 results/DBLP-v1
python evaluate.py quicksi/quicksi.exe datasets/DBLP-v1_dense_20_40 results/DBLP-v1
python evaluate.py DAF/daf.exe datasets/DBLP-v1_dense_20_40 results/DBLP-v1
python evaluate.py graphql/graphql.exe datasets/DBLP-v1_dense_20_40 results/DBLP-v1

# Setting: Dense + [40,60]
python process_data.py ../giso/data_real/datasets/DBLP-v1_test DBLP-v1_dense_40_60 ../giso/data_processed/DBLP-v1/test_keys_dense_40_60.pkl

python evaluate.py VF3/vf3.exe datasets/DBLP-v1_dense_40_60 results/DBLP-v1
python evaluate.py TurboISO/turbo.exe datasets/DBLP-v1_dense_40_60 results/DBLP-v1
python evaluate.py cfl-match/cfl.exe datasets/DBLP-v1_dense_40_60 results/DBLP-v1
python evaluate.py CECI/ceci.exe datasets/DBLP-v1_dense_40_60 results/DBLP-v1
python evaluate.py quicksi/quicksi.exe datasets/DBLP-v1_dense_40_60 results/DBLP-v1
python evaluate.py DAF/daf.exe datasets/DBLP-v1_dense_40_60 results/DBLP-v1
python evaluate.py graphql/graphql.exe datasets/DBLP-v1_dense_40_60 results/DBLP-v1

# Setting: Dense + [60,]
python process_data.py ../giso/data_real/datasets/DBLP-v1_test DBLP-v1_dense_60_ ../giso/data_processed/DBLP-v1/test_keys_dense_60_.pkl

python evaluate.py VF3/vf3.exe datasets/DBLP-v1_dense_60_ results/DBLP-v1
python evaluate.py TurboISO/turbo.exe datasets/DBLP-v1_dense_60_ results/DBLP-v1
python evaluate.py cfl-match/cfl.exe datasets/DBLP-v1_dense_60_ results/DBLP-v1
python evaluate.py CECI/ceci.exe datasets/DBLP-v1_dense_60_ results/DBLP-v1
python evaluate.py quicksi/quicksi.exe datasets/DBLP-v1_dense_60_ results/DBLP-v1
python evaluate.py DAF/daf.exe datasets/DBLP-v1_dense_60_ results/DBLP-v1
python evaluate.py graphql/graphql.exe datasets/DBLP-v1_dense_60_ results/DBLP-v1

# Setting: Non-Dense + [0,20]
python process_data.py ../giso/data_real/datasets/DBLP-v1_test DBLP-v1_nondense_0_20 ../giso/data_processed/DBLP-v1/test_keys_nondense_0_20.pkl

python evaluate.py VF3/vf3.exe datasets/DBLP-v1_nondense_0_20 results/DBLP-v1
python evaluate.py TurboISO/turbo.exe datasets/DBLP-v1_nondense_0_20 results/DBLP-v1
python evaluate.py cfl-match/cfl.exe datasets/DBLP-v1_nondense_0_20 results/DBLP-v1
python evaluate.py CECI/ceci.exe datasets/DBLP-v1_nondense_0_20 results/DBLP-v1
python evaluate.py quicksi/quicksi.exe datasets/DBLP-v1_nondense_0_20 results/DBLP-v1
python evaluate.py DAF/daf.exe datasets/DBLP-v1_nondense_0_20 results/DBLP-v1
python evaluate.py graphql/graphql.exe datasets/DBLP-v1_nondense_0_20 results/DBLP-v1

# Setting: Non-Dense + [20,40]
python process_data.py ../giso/data_real/datasets/DBLP-v1_test DBLP-v1_nondense_20_40 ../giso/data_processed/DBLP-v1/test_keys_nondense_20_40.pkl

python evaluate.py VF3/vf3.exe datasets/DBLP-v1_nondense_20_40 results/DBLP-v1
python evaluate.py TurboISO/turbo.exe datasets/DBLP-v1_nondense_20_40 results/DBLP-v1
python evaluate.py cfl-match/cfl.exe datasets/DBLP-v1_nondense_20_40 results/DBLP-v1
python evaluate.py CECI/ceci.exe datasets/DBLP-v1_nondense_20_40 results/DBLP-v1
python evaluate.py quicksi/quicksi.exe datasets/DBLP-v1_nondense_20_40 results/DBLP-v1
python evaluate.py DAF/daf.exe datasets/DBLP-v1_nondense_20_40 results/DBLP-v1
python evaluate.py graphql/graphql.exe datasets/DBLP-v1_nondense_20_40 results/DBLP-v1

# Setting: Non-Dense + [40,60]
python process_data.py ../giso/data_real/datasets/DBLP-v1_test DBLP-v1_nondense_40_60 ../giso/data_processed/DBLP-v1/test_keys_nondense_40_60.pkl

python evaluate.py VF3/vf3.exe datasets/DBLP-v1_nondense_40_60 results/DBLP-v1
python evaluate.py TurboISO/turbo.exe datasets/DBLP-v1_nondense_40_60 results/DBLP-v1
python evaluate.py cfl-match/cfl.exe datasets/DBLP-v1_nondense_40_60 results/DBLP-v1
python evaluate.py CECI/ceci.exe datasets/DBLP-v1_nondense_40_60 results/DBLP-v1
python evaluate.py quicksi/quicksi.exe datasets/DBLP-v1_nondense_40_60 results/DBLP-v1
python evaluate.py DAF/daf.exe datasets/DBLP-v1_nondense_40_60 results/DBLP-v1
python evaluate.py graphql/graphql.exe datasets/DBLP-v1_nondense_40_60 results/DBLP-v1

# Setting: Non-Dense + [60,]
python process_data.py ../giso/data_real/datasets/DBLP-v1_test DBLP-v1_nondense_60_ ../giso/data_processed/DBLP-v1/test_keys_nondense_60_.pkl

python evaluate.py VF3/vf3.exe datasets/DBLP-v1_nondense_60_ results/DBLP-v1
python evaluate.py TurboISO/turbo.exe datasets/DBLP-v1_nondense_60_ results/DBLP-v1
python evaluate.py cfl-match/cfl.exe datasets/DBLP-v1_nondense_60_ results/DBLP-v1
python evaluate.py CECI/ceci.exe datasets/DBLP-v1_nondense_60_ results/DBLP-v1
python evaluate.py quicksi/quicksi.exe datasets/DBLP-v1_nondense_60_ results/DBLP-v1
python evaluate.py DAF/daf.exe datasets/DBLP-v1_nondense_60_ results/DBLP-v1
python evaluate.py graphql/graphql.exe datasets/DBLP-v1_nondense_60_ results/DBLP-v1