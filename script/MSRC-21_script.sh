# Dataset: MSRC-21
cd workspace/siep
conda activate giso

# Setting: Dense + [0,20]
python process_data.py ../giso/data_real/datasets/MSRC-21_test MSRC-21_dense_0_20 ../giso/data_processed/MSRC-21/test_keys_dense_0_20.pkl

python evaluate.py VF3/vf3.exe datasets/MSRC-21_dense_0_20 results/MSRC-21
python evaluate.py TurboISO/turbo.exe datasets/MSRC-21_dense_0_20 results/MSRC-21
python evaluate.py cfl-match/cfl.exe datasets/MSRC-21_dense_0_20 results/MSRC-21
python evaluate.py CECI/ceci.exe datasets/MSRC-21_dense_0_20 results/MSRC-21
python evaluate.py quicksi/quicksi.exe datasets/MSRC-21_dense_0_20 results/MSRC-21
python evaluate.py DAF/daf.exe datasets/MSRC-21_dense_0_20 results/MSRC-21
python evaluate.py graphql/graphql.exe datasets/MSRC-21_dense_0_20 results/MSRC-21

# Setting: Dense + [20,40]
python process_data.py ../giso/data_real/datasets/MSRC-21_test MSRC-21_dense_20_40 ../giso/data_processed/MSRC-21/test_keys_dense_20_40.pkl

python evaluate.py VF3/vf3.exe datasets/MSRC-21_dense_20_40 results/MSRC-21
python evaluate.py TurboISO/turbo.exe datasets/MSRC-21_dense_20_40 results/MSRC-21
python evaluate.py cfl-match/cfl.exe datasets/MSRC-21_dense_20_40 results/MSRC-21
python evaluate.py CECI/ceci.exe datasets/MSRC-21_dense_20_40 results/MSRC-21
python evaluate.py quicksi/quicksi.exe datasets/MSRC-21_dense_20_40 results/MSRC-21
python evaluate.py DAF/daf.exe datasets/MSRC-21_dense_20_40 results/MSRC-21
python evaluate.py graphql/graphql.exe datasets/MSRC-21_dense_20_40 results/MSRC-21

# Setting: Dense + [40,60]
python process_data.py ../giso/data_real/datasets/MSRC-21_test MSRC-21_dense_40_60 ../giso/data_processed/MSRC-21/test_keys_dense_40_60.pkl

python evaluate.py VF3/vf3.exe datasets/MSRC-21_dense_40_60 results/MSRC-21
python evaluate.py TurboISO/turbo.exe datasets/MSRC-21_dense_40_60 results/MSRC-21
python evaluate.py cfl-match/cfl.exe datasets/MSRC-21_dense_40_60 results/MSRC-21
python evaluate.py CECI/ceci.exe datasets/MSRC-21_dense_40_60 results/MSRC-21
python evaluate.py quicksi/quicksi.exe datasets/MSRC-21_dense_40_60 results/MSRC-21
python evaluate.py DAF/daf.exe datasets/MSRC-21_dense_40_60 results/MSRC-21
python evaluate.py graphql/graphql.exe datasets/MSRC-21_dense_40_60 results/MSRC-21

# Setting: Dense + [60,]
python process_data.py ../giso/data_real/datasets/MSRC-21_test MSRC-21_dense_60_ ../giso/data_processed/MSRC-21/test_keys_dense_60_.pkl

python evaluate.py VF3/vf3.exe datasets/MSRC-21_dense_60_ results/MSRC-21
python evaluate.py TurboISO/turbo.exe datasets/MSRC-21_dense_60_ results/MSRC-21
python evaluate.py cfl-match/cfl.exe datasets/MSRC-21_dense_60_ results/MSRC-21
python evaluate.py CECI/ceci.exe datasets/MSRC-21_dense_60_ results/MSRC-21
python evaluate.py quicksi/quicksi.exe datasets/MSRC-21_dense_60_ results/MSRC-21
python evaluate.py DAF/daf.exe datasets/MSRC-21_dense_60_ results/MSRC-21
python evaluate.py graphql/graphql.exe datasets/MSRC-21_dense_60_ results/MSRC-21

# Setting: Non-Dense + [0,20]
python process_data.py ../giso/data_real/datasets/MSRC-21_test MSRC-21_nondense_0_20 ../giso/data_processed/MSRC-21/test_keys_nondense_0_20.pkl

python evaluate.py VF3/vf3.exe datasets/MSRC-21_nondense_0_20 results/MSRC-21
python evaluate.py TurboISO/turbo.exe datasets/MSRC-21_nondense_0_20 results/MSRC-21
python evaluate.py cfl-match/cfl.exe datasets/MSRC-21_nondense_0_20 results/MSRC-21
python evaluate.py CECI/ceci.exe datasets/MSRC-21_nondense_0_20 results/MSRC-21
python evaluate.py quicksi/quicksi.exe datasets/MSRC-21_nondense_0_20 results/MSRC-21
python evaluate.py DAF/daf.exe datasets/MSRC-21_nondense_0_20 results/MSRC-21
python evaluate.py graphql/graphql.exe datasets/MSRC-21_nondense_0_20 results/MSRC-21

# Setting: Non-Dense + [20,40]
python process_data.py ../giso/data_real/datasets/MSRC-21_test MSRC-21_nondense_20_40 ../giso/data_processed/MSRC-21/test_keys_nondense_20_40.pkl

python evaluate.py VF3/vf3.exe datasets/MSRC-21_nondense_20_40 results/MSRC-21
python evaluate.py TurboISO/turbo.exe datasets/MSRC-21_nondense_20_40 results/MSRC-21
python evaluate.py cfl-match/cfl.exe datasets/MSRC-21_nondense_20_40 results/MSRC-21
python evaluate.py CECI/ceci.exe datasets/MSRC-21_nondense_20_40 results/MSRC-21
python evaluate.py quicksi/quicksi.exe datasets/MSRC-21_nondense_20_40 results/MSRC-21
python evaluate.py DAF/daf.exe datasets/MSRC-21_nondense_20_40 results/MSRC-21
python evaluate.py graphql/graphql.exe datasets/MSRC-21_nondense_20_40 results/MSRC-21

# Setting: Non-Dense + [40,60]
python process_data.py ../giso/data_real/datasets/MSRC-21_test MSRC-21_nondense_40_60 ../giso/data_processed/MSRC-21/test_keys_nondense_40_60.pkl

python evaluate.py VF3/vf3.exe datasets/MSRC-21_nondense_40_60 results/MSRC-21
python evaluate.py TurboISO/turbo.exe datasets/MSRC-21_nondense_40_60 results/MSRC-21
python evaluate.py cfl-match/cfl.exe datasets/MSRC-21_nondense_40_60 results/MSRC-21
python evaluate.py CECI/ceci.exe datasets/MSRC-21_nondense_40_60 results/MSRC-21
python evaluate.py quicksi/quicksi.exe datasets/MSRC-21_nondense_40_60 results/MSRC-21
python evaluate.py DAF/daf.exe datasets/MSRC-21_nondense_40_60 results/MSRC-21
python evaluate.py graphql/graphql.exe datasets/MSRC-21_nondense_40_60 results/MSRC-21

# Setting: Non-Dense + [60,]
python process_data.py ../giso/data_real/datasets/MSRC-21_test MSRC-21_nondense_60_ ../giso/data_processed/MSRC-21/test_keys_nondense_60_.pkl

python evaluate.py VF3/vf3.exe datasets/MSRC-21_nondense_60_ results/MSRC-21
python evaluate.py TurboISO/turbo.exe datasets/MSRC-21_nondense_60_ results/MSRC-21
python evaluate.py cfl-match/cfl.exe datasets/MSRC-21_nondense_60_ results/MSRC-21
python evaluate.py CECI/ceci.exe datasets/MSRC-21_nondense_60_ results/MSRC-21
python evaluate.py quicksi/quicksi.exe datasets/MSRC-21_nondense_60_ results/MSRC-21
python evaluate.py DAF/daf.exe datasets/MSRC-21_nondense_60_ results/MSRC-21
python evaluate.py graphql/graphql.exe datasets/MSRC-21_nondense_60_ results/MSRC-21