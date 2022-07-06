python process_data.py ../giso/data_real/datasets/COX2_test COX2
python process_data.py ../giso/data_real/datasets/DBLP-v1_test DBLP-v1
python process_data.py ../giso/data_real/datasets/KKI_test KKI
python process_data.py ../giso/data_real/datasets/MSRC-21_test MSRC-21
python process_data.py ../giso/data_synthesis/datasets/large large

bash build.sh

python evaluate.py VF3/vf3.exe datasets/COX2 results/COX2
python evaluate.py VF3/vf3.exe datasets/DBLP-v1 results/DBLP-v1
python evaluate.py VF3/vf3.exe datasets/KKI results/KKI
python evaluate.py VF3/vf3.exe datasets/MSRC-21 results/MSRC-21
python evaluate.py VF3/vf3.exe datasets/large results/large

python evaluate.py TurboISO/turbo.exe datasets/COX2 results/COX2
python evaluate.py TurboISO/turbo.exe datasets/DBLP-v1 results/DBLP-v1
python evaluate.py TurboISO/turbo.exe datasets/KKI results/KKI
python evaluate.py TurboISO/turbo.exe datasets/MSRC-21 results/MSRC-21

# CFL is bugging
python evaluate.py cfl-match/cfl.exe datasets/COX2 results/COX2
python evaluate.py cfl-match/cfl.exe datasets/DBLP-v1 results/DBLP-v1
python evaluate.py cfl-match/cfl.exe datasets/KKI results/KKI
python evaluate.py cfl-match/cfl.exe datasets/MSRC-21 results/MSRC-21

python evaluate.py CECI/ceci.exe datasets/COX2 results/COX2
python evaluate.py CECI/ceci.exe datasets/DBLP-v1 results/DBLP-v1
python evaluate.py CECI/ceci.exe datasets/KKI results/KKI
python evaluate.py CECI/ceci.exe datasets/MSRC-21 results/MSRC-21

python evaluate.py quicksi/quicksi.exe datasets/COX2 results/COX2
python evaluate.py quicksi/quicksi.exe datasets/DBLP-v1 results/DBLP-v1
python evaluate.py quicksi/quicksi.exe datasets/KKI results/KKI
python evaluate.py quicksi/quicksi.exe datasets/MSRC-21 results/MSRC-21


python evaluate.py DAF/daf.exe datasets/COX2 results/COX2
python evaluate.py DAF/daf.exe datasets/DBLP-v1 results/DBLP-v1
python evaluate.py DAF/daf.exe datasets/KKI results/KKI
python evaluate.py DAF/daf.exe datasets/MSRC-21 results/MSRC-21

python evaluate.py graphql/graphql.exe datasets/COX2 results/COX2
python evaluate.py graphql/graphql.exe datasets/DBLP-v1 results/DBLP-v1
python evaluate.py graphql/graphql.exe datasets/KKI results/KKI
python evaluate.py graphql/graphql.exe datasets/MSRC-21 results/MSRC-21