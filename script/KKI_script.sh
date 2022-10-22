# Dataset: KKI
cd workspace/siep
conda activate giso

# Setting: Dense + [0,20]
python process_data.py ../giso/data_real/datasets/KKI_test KKI_dense_0_20 ../giso/data_processed/KKI/test_keys_dense_0_20.pkl

python evaluate.py VF3/vf3.exe datasets/KKI_dense_0_20 results/KKI
python evaluate.py TurboISO/turbo.exe datasets/KKI_dense_0_20 results/KKI
python evaluate.py cfl-match/cfl.exe datasets/KKI_dense_0_20 results/KKI
python evaluate.py CECI/ceci.exe datasets/KKI_dense_0_20 results/KKI
python evaluate.py quicksi/quicksi.exe datasets/KKI_dense_0_20 results/KKI
python evaluate.py DAF/daf.exe datasets/KKI_dense_0_20 results/KKI
python evaluate.py graphql/graphql.exe datasets/KKI_dense_0_20 results/KKI

# Setting: Dense + [20,40]
python process_data.py ../giso/data_real/datasets/KKI_test KKI_dense_20_40 ../giso/data_processed/KKI/test_keys_dense_20_40.pkl

python evaluate.py VF3/vf3.exe datasets/KKI_dense_20_40 results/KKI
python evaluate.py TurboISO/turbo.exe datasets/KKI_dense_20_40 results/KKI
python evaluate.py cfl-match/cfl.exe datasets/KKI_dense_20_40 results/KKI
python evaluate.py CECI/ceci.exe datasets/KKI_dense_20_40 results/KKI
python evaluate.py quicksi/quicksi.exe datasets/KKI_dense_20_40 results/KKI
python evaluate.py DAF/daf.exe datasets/KKI_dense_20_40 results/KKI
python evaluate.py graphql/graphql.exe datasets/KKI_dense_20_40 results/KKI

# Setting: Dense + [40,60]
python process_data.py ../giso/data_real/datasets/KKI_test KKI_dense_40_60 ../giso/data_processed/KKI/test_keys_dense_40_60.pkl

python evaluate.py VF3/vf3.exe datasets/KKI_dense_40_60 results/KKI
python evaluate.py TurboISO/turbo.exe datasets/KKI_dense_40_60 results/KKI
python evaluate.py cfl-match/cfl.exe datasets/KKI_dense_40_60 results/KKI
python evaluate.py CECI/ceci.exe datasets/KKI_dense_40_60 results/KKI
python evaluate.py quicksi/quicksi.exe datasets/KKI_dense_40_60 results/KKI
python evaluate.py DAF/daf.exe datasets/KKI_dense_40_60 results/KKI
python evaluate.py graphql/graphql.exe datasets/KKI_dense_40_60 results/KKI

# Setting: Dense + [60,]
python process_data.py ../giso/data_real/datasets/KKI_test KKI_dense_60_ ../giso/data_processed/KKI/test_keys_dense_60_.pkl

python evaluate.py VF3/vf3.exe datasets/KKI_dense_60_ results/KKI
python evaluate.py TurboISO/turbo.exe datasets/KKI_dense_60_ results/KKI
python evaluate.py cfl-match/cfl.exe datasets/KKI_dense_60_ results/KKI
python evaluate.py CECI/ceci.exe datasets/KKI_dense_60_ results/KKI
python evaluate.py quicksi/quicksi.exe datasets/KKI_dense_60_ results/KKI
python evaluate.py DAF/daf.exe datasets/KKI_dense_60_ results/KKI
python evaluate.py graphql/graphql.exe datasets/KKI_dense_60_ results/KKI

# Setting: Non-Dense + [0,20]
python process_data.py ../giso/data_real/datasets/KKI_test KKI_nondense_0_20 ../giso/data_processed/KKI/test_keys_nondense_0_20.pkl

python evaluate.py VF3/vf3.exe datasets/KKI_nondense_0_20 results/KKI
python evaluate.py TurboISO/turbo.exe datasets/KKI_nondense_0_20 results/KKI
python evaluate.py cfl-match/cfl.exe datasets/KKI_nondense_0_20 results/KKI
python evaluate.py CECI/ceci.exe datasets/KKI_nondense_0_20 results/KKI
python evaluate.py quicksi/quicksi.exe datasets/KKI_nondense_0_20 results/KKI
python evaluate.py DAF/daf.exe datasets/KKI_nondense_0_20 results/KKI
python evaluate.py graphql/graphql.exe datasets/KKI_nondense_0_20 results/KKI

# Setting: Non-Dense + [20,40]
python process_data.py ../giso/data_real/datasets/KKI_test KKI_nondense_20_40 ../giso/data_processed/KKI/test_keys_nondense_20_40.pkl

python evaluate.py VF3/vf3.exe datasets/KKI_nondense_20_40 results/KKI
python evaluate.py TurboISO/turbo.exe datasets/KKI_nondense_20_40 results/KKI
python evaluate.py cfl-match/cfl.exe datasets/KKI_nondense_20_40 results/KKI
python evaluate.py CECI/ceci.exe datasets/KKI_nondense_20_40 results/KKI
python evaluate.py quicksi/quicksi.exe datasets/KKI_nondense_20_40 results/KKI
python evaluate.py DAF/daf.exe datasets/KKI_nondense_20_40 results/KKI
python evaluate.py graphql/graphql.exe datasets/KKI_nondense_20_40 results/KKI

# Setting: Non-Dense + [40,60]
python process_data.py ../giso/data_real/datasets/KKI_test KKI_nondense_40_60 ../giso/data_processed/KKI/test_keys_nondense_40_60.pkl

python evaluate.py VF3/vf3.exe datasets/KKI_nondense_40_60 results/KKI
python evaluate.py TurboISO/turbo.exe datasets/KKI_nondense_40_60 results/KKI
python evaluate.py cfl-match/cfl.exe datasets/KKI_nondense_40_60 results/KKI
python evaluate.py CECI/ceci.exe datasets/KKI_nondense_40_60 results/KKI
python evaluate.py quicksi/quicksi.exe datasets/KKI_nondense_40_60 results/KKI
python evaluate.py DAF/daf.exe datasets/KKI_nondense_40_60 results/KKI
python evaluate.py graphql/graphql.exe datasets/KKI_nondense_40_60 results/KKI

# Setting: Non-Dense + [60,]
python process_data.py ../giso/data_real/datasets/KKI_test KKI_nondense_60_ ../giso/data_processed/KKI/test_keys_nondense_60_.pkl

python evaluate.py VF3/vf3.exe datasets/KKI_nondense_60_ results/KKI
python evaluate.py TurboISO/turbo.exe datasets/KKI_nondense_60_ results/KKI
python evaluate.py cfl-match/cfl.exe datasets/KKI_nondense_60_ results/KKI
python evaluate.py CECI/ceci.exe datasets/KKI_nondense_60_ results/KKI
python evaluate.py quicksi/quicksi.exe datasets/KKI_nondense_60_ results/KKI
python evaluate.py DAF/daf.exe datasets/KKI_nondense_60_ results/KKI
python evaluate.py graphql/graphql.exe datasets/KKI_nondense_60_ results/KKI