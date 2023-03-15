
#set -ex

dlireba_dir="/mnt/cephfs/hjh/train_record/images/text2image/test_imgs/dlireba_train"

out_dir="/mnt/cephfs/hjh/train_record/images/text2image/lora-scripts/dilireba/dataset/dlireba"



#i=0
#for f in `ls "${dlireba_dir}"|grep -v txt`
#do
#  let i++
#
#  out_d="${out_dir}/3_img${i}"
#  mkdir -p ${out_d}
#  bn=$(basename $f .png)
#
#  cp -rf ${dlireba_dir}/${bn}.png ${out_d}
#  cp -rf ${dlireba_dir}/${bn}.txt ${out_d}
#
#done
#
#
#
