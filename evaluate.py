import os
import sys
import time
import subprocess
from tqdm import tqdm
from sklearn.metrics import roc_auc_score, accuracy_score, precision_score, recall_score, average_precision_score,f1_score

if __name__ == "__main__":
    alg = sys.argv[1]
    datatset_dir = sys.argv[2]
    result_dir = sys.argv[3]

    try:
        os.mkdir(result_dir)
    except:
        pass

    groundtruth = []
    predicted = []

    list_subgraphs = os.listdir(datatset_dir)
    list_subgraphs.remove("source.lg")
    source_dir = os.path.join(datatset_dir, "source.lg")

    for subgraph in tqdm(list_subgraphs):
        subgraph_dir = os.path.join(datatset_dir, subgraph)

        start = time.time()
        process_out = subprocess.Popen([alg, source_dir, subgraph_dir], capture_output=True)
        end = time.time()

        if 'noniso' in subgraph:
            groundtruth.append(0)
        else:
            groundtruth.append(1)

        result = process_out.stdout.strip().split("\n")[-1]

        if result == "False":
            predicted.append(0)
        else:
            predicted.append(1)

    test_roc = roc_auc_score(groundtruth, predicted)
    test_acc = accuracy_score(groundtruth, predicted)
    test_pre = precision_score(groundtruth, predicted)
    test_rec = recall_score(groundtruth, predicted)
    test_f1s = f1_score(groundtruth, predicted)
    test_prc = average_precision_score(groundtruth, predicted)
    test_time = (end - start) / len(list_subgraphs)

    with open(os.path.join(result_dir, "%s_result.csv"%os.basename(datatset_dir)), "w", encoding="utf-8") as f:
        f.write("Confident,Execution Time,ROC AUC,PR AUC,Precision,Recall,F1-Score,Accuracy\n")
        f.write("100")
        f.write(",%f" % test_time)
        f.write(",%f" % test_roc)
        f.write(",%f" % test_prc)
        f.write(",%f" % test_pre)
        f.write(",%f" % test_rec)
        f.write(",%f" % test_f1s)
        f.write(",%f" % test_acc)
