import sys
import os
import shutil
from tqdm import tqdm

READY_DATASET_DIR = "./datasets"

if __name__ == "__main__":
    datasdet_folder = sys.argv[1]
    READY_DATASET_DIR += '/' + sys.argv[2]
    split_source = False

    if len(sys.argv) > 3:
        if sys.argv[3] == "synthesis":
            split_source = True

    try:
        os.mkdir(READY_DATASET_DIR)
    except:
        pass

    print("Processing datatset:", datasdet_folder)
    list_sources = os.listdir(datasdet_folder)

    if split_source:
        from sklearn.model_selection import train_test_split
        _, list_sources = train_test_split(list_sources, test_size=0.2, random_state=42)

    for source in tqdm(list_sources):
        source_dir = os.path.join(READY_DATASET_DIR, source)
        try:
            os.mkdir(source_dir)
        except:
            pass

        with open(os.path.join(datasdet_folder, source, "source.lg"), 'r', encoding='utf-8') as f:
            lines = f.read().strip().split('\n')
            with open(os.path.join(source_dir, "source.lg"), 'w', encoding='utf-8') as wf:
                for wline in lines:
                    if not wline:
                        continue
                    if wline[0] == 'e':
                        wline = wline[:wline.rfind(" ")]
                    wf.write("%s\n" % wline)

                wf.write("t # -1")
            

        with open(os.path.join(datasdet_folder, source, "iso_subgraphs.lg"), 'r', encoding="utf-8") as f:
            lines = f.read().strip().split("\n")
            first_line_idxs = [i for i, line in enumerate(lines) if 't #' in line]
            first_line_idxs.append(len(lines))
            sg_count = 0
            for start, end in zip(first_line_idxs[:-1], first_line_idxs[1:]):
                with open(os.path.join(source_dir, "%s_%d_iso.lg"%(source, sg_count)), 'w', encoding="utf-8") as wf:
                    for wline in lines[start:end]:
                        if not wline:
                            continue
                        if wline[0] == 'e':
                            wline = wline[:wline.rfind(" ")]
                        wf.write("%s\n" % wline)

                    wf.write("t # -1")

                sg_count += 1

        with open(os.path.join(datasdet_folder, source, "noniso_subgraphs.lg"), 'r', encoding="utf-8") as f:
            lines = f.read().strip().split("\n")
            first_line_idxs = [i for i, line in enumerate(lines) if 't #' in line]
            first_line_idxs.append(len(lines))
            sg_count = 0
            for start, end in zip(first_line_idxs[:-1], first_line_idxs[1:]):
                with open(os.path.join(source_dir, "%s_%d_noniso.lg"%(source, sg_count)), 'w', encoding="utf-8") as wf:
                    for wline in lines[start:end]:
                        if not wline:
                            continue
                        if wline[0] == 'e':
                            wline = wline[:wline.rfind(" ")]
                        wf.write("%s\n" % wline)

                    wf.write("t # -1")

                sg_count += 1

