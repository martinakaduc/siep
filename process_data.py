import sys
import os
import shutil
from tqdm import tqdm

READY_DATASET_DIR = "./datasets"

if __name__ == "__main__":
    datasdet_folder = sys.argv[1]
    READY_DATASET_DIR += '/' + sys.argv[2]
    try:
        os.mkdir(READY_DATASET_DIR)
    except:
        pass

    print("Processing datatset:", datasdet_folder)
    list_sources = os.listdir(datasdet_folder)

    for source in tqdm(list_sources):
        source_dir = os.path.join(READY_DATASET_DIR, source)
        try:
            os.mkdir(source_dir)
        except:
            pass

        shutil.copy(os.path.join(datasdet_folder, source, "source.lg"), os.path.join(source_dir, "source.lg"))

        with open(os.path.join(datasdet_folder, source, "iso_subgraphs.lg"), 'r', encoding="utf-8") as f:
            lines = f.read().split("\n")
            first_line_idxs = [i for i, line in enumerate(lines) if 't #' in line]
            first_line_idxs.append(len(lines))
            sg_count = 0
            for start, end in zip(first_line_idxs[:-1], first_line_idxs[1:]):
                with open(os.path.join(source_dir, "%s_%d_iso.lg"%(source, sg_count)), 'w', encoding="utf-8") as wf:
                    for wline in lines[start:end]:
                        if wline[0] == 'e':
                            wline = wline[:wline.rfind(" ")]
                        wf.write("%s\n" % wline)

                    wf.write("t # -1")

                sg_count += 1

        with open(os.path.join(datasdet_folder, source, "noniso_subgraphs.lg"), 'r', encoding="utf-8") as f:
            lines = f.read().split("\n")
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

