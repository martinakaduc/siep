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

    if len(sys.argv) >= 6:
        easy_thres = int(sys.argv[4])
        hard_thres = int(sys.argv[5])
    else:
        easy_thres = 2
        hard_thres = 600

    groundtruth = []
    predicted = []
    list_times = []

    list_sources = os.listdir(datatset_dir)

    for source in tqdm(list_sources):
        source_dir = os.path.join(datatset_dir, source)
        list_subgraphs = os.listdir(source_dir)
        list_subgraphs.remove("source.lg")
        source_file = os.path.join(source_dir, "source.lg")

        for subgraph in list_subgraphs:
            subgraph_file = os.path.join(source_dir, subgraph)
            
            start = time.time()
            process_out = subprocess.run([alg, source_file, subgraph_file], capture_output=True)
            end = time.time()

            if 'noniso' in subgraph:
                groundtruth.append(0)
            else:
                groundtruth.append(1)

            result = process_out.stdout.decode("utf-8").strip().split("\n")[-1]

            if result == "False":
                predicted.append(0)
            else:
                predicted.append(1)

            list_times.append(end-start)
            easy_pct = len(list(filter(lambda x: x < easy_thres, list_times))) / len(list_times)
            medium_pct = len(list(filter(lambda x: x >= easy_thres and x < hard_thres, list_times))) / len(list_times)
            hard_pct = len(list(filter(lambda x: x >= hard_thres, list_times))) / len(list_times)

            print("Average runtime:", sum(list_times) / len(list_times), "\t", \
                  "Easy:", easy_pct, "\t", \
                  "Medium:", medium_pct, "\t", \
                  "Hard:", hard_pct, "\t", \
                  "Total samples:", len(list_times), end="\r", flush=True)

    test_roc = roc_auc_score(groundtruth, predicted)
    test_acc = accuracy_score(groundtruth, predicted)
    test_pre = precision_score(groundtruth, predicted)
    test_rec = recall_score(groundtruth, predicted)
    test_f1s = f1_score(groundtruth, predicted)
    test_prc = average_precision_score(groundtruth, predicted)
    test_time = sum(list_times) / len(list_times)

    with open(os.path.join(result_dir, "%s_result.csv"%os.path.basename(alg)), "w", encoding="utf-8") as f:
        f.write("Confident,Execution Time,ROC AUC,PR AUC,Precision,Recall,F1-Score,Accuracy\n")
        f.write("100")
        f.write(",%f" % test_time)
        f.write(",%f" % test_roc)
        f.write(",%f" % test_prc)
        f.write(",%f" % test_pre)
        f.write(",%f" % test_rec)
        f.write(",%f" % test_f1s)
        f.write(",%f" % test_acc)
