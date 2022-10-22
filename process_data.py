import sys
import os
import shutil
import pickle
from tqdm import tqdm
from collections import defaultdict

READY_DATASET_DIR = "./datasets"

if __name__ == "__main__":
    datasdet_folder = sys.argv[1]
    READY_DATASET_DIR += '/' + sys.argv[2]
    test_keys = None

    if len(sys.argv) > 3:
        test_keys = sys.argv[3]

    try:
        os.mkdir(READY_DATASET_DIR)
    except:
        pass

    print("Processing datatset:", datasdet_folder)
    list_sources = os.listdir(datasdet_folder)

    if test_keys is not None:
        test_keys_list = pickle.load(open(test_keys, "rb"))
        list_sources = defaultdict(lambda: [])
        for key in test_keys_list:
            source, sg, _, _ = key.split("_")
            list_sources[source].append(sg)

    for source in tqdm(list_sources):
        source_dir = os.path.join(READY_DATASET_DIR, source)
        try:
            os.mkdir(source_dir)
        except:
            pass

        with open(os.path.join(datasdet_folder, source, "source.lg"), 'r', encoding='utf-8') as f:
            lines = f.read().strip().split('\n')
            with open(os.path.join(source_dir, "source.lg"), 'w', encoding='utf-8') as wf:
                # Count num_vertices, num_edges, num_distinct_labels
                num_vertices = sum([1 if "v " in l else 0 for l in lines])
                num_edges = sum([1 if "e " in l else 0 for l in lines])
                num_labels = len(set([l.split(" ")[-1] for l in lines if "v " in l]))
                for wline in lines:
                    if not wline:
                        continue
                    if wline[0] == 'e':
                        wline = wline[:wline.rfind(" ")]
                    wf.write("%s\n" % wline)
                    if ("t # " in wline):
                        wf.write("%d %d %d\n" % (num_vertices, num_edges, num_labels))

                wf.write("t # -1")
            

        with open(os.path.join(datasdet_folder, source, "iso_subgraphs.lg"), 'r', encoding="utf-8") as f:
            lines = f.read().strip().split("\n")
            first_line_idxs = [i for i, line in enumerate(lines) if 't #' in line]
            first_line_idxs.append(len(lines))
            sg_count = 0
            for start, end in zip(first_line_idxs[:-1], first_line_idxs[1:]):
                graph_cnt = lines[start].split(' ')[2]
                if graph_cnt not in list_sources[source]:
                    continue

                with open(os.path.join(source_dir, "%s_%d_iso.lg"%(source, sg_count)), 'w', encoding="utf-8") as wf:
                    num_vertices = sum([1 if "v " in l else 0 for l in lines[start:end]])
                    num_edges = sum([1 if "e " in l else 0 for l in lines[start:end]])
                    num_labels = len(set([l.split(" ")[-1] for l in lines[start:end] if "v " in l]))
                    for wline in lines[start:end]:
                        if not wline:
                            continue
                        if wline[0] == 'e':
                            wline = wline[:wline.rfind(" ")]
                        wf.write("%s\n" % wline)
                        if ("t # " in wline):
                            wf.write("%d %d %d\n" % (num_vertices, num_edges, num_labels))

                    wf.write("t # -1")

                sg_count += 1

        with open(os.path.join(datasdet_folder, source, "noniso_subgraphs.lg"), 'r', encoding="utf-8") as f:
            lines = f.read().strip().split("\n")
            first_line_idxs = [i for i, line in enumerate(lines) if 't #' in line]
            first_line_idxs.append(len(lines))
            sg_count = 0
            for start, end in zip(first_line_idxs[:-1], first_line_idxs[1:]):
                graph_cnt = lines[start].split(' ')[2]
                if graph_cnt not in list_sources[source]:
                    continue

                with open(os.path.join(source_dir, "%s_%d_noniso.lg"%(source, sg_count)), 'w', encoding="utf-8") as wf:
                    num_vertices = sum([1 if "v " in l else 0 for l in lines[start:end]])
                    num_edges = sum([1 if "e " in l else 0 for l in lines[start:end]])
                    num_labels = len(set([l.split(" ")[-1] for l in lines[start:end] if "v " in l]))
                    for wline in lines[start:end]:
                        if not wline:
                            continue
                        if wline[0] == 'e':
                            wline = wline[:wline.rfind(" ")]
                        wf.write("%s\n" % wline)
                        if ("t # " in wline):
                            wf.write("%d %d %d\n" % (num_vertices, num_edges, num_labels))

                    wf.write("t # -1")

                sg_count += 1

