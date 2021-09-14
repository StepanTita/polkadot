declare -a arr=("david" "daniel" "jack" "john" "judy" "max")

i=1
for name in "${arr[@]}"
do
  echo "$i:$name"
  http POST http://172.28.1.${i}:9933 < ./keys/${name}/gran.json
  http POST http://172.28.1.${i}:9933 < ./keys/${name}/babe.json
  http POST http://172.28.1.${i}:9933 < ./keys/${name}/imol.json
  http POST http://172.28.1.${i}:9933 < ./keys/${name}/audi.json
  http POST http://172.28.1.${i}:9933 < ./keys/${name}/pava.json
  http POST http://172.28.1.${i}:9933 < ./keys/${name}/paas.json
  i=$((i+1))
done

declare -a arr=("david" "daniel")
i=1
for name in "${arr[@]}"
do
  echo "$i:$name"
  http POST http://172.28.2.${i}:9933 < ./keys/${name}/gran.json
  http POST http://172.28.2.${i}:9933 < ./keys/${name}/babe.json
  http POST http://172.28.2.${i}:9933 < ./keys/${name}/imol.json
  http POST http://172.28.2.${i}:9933 < ./keys/${name}/audi.json
  http POST http://172.28.2.${i}:9933 < ./keys/${name}/pava.json
  http POST http://172.28.2.${i}:9933 < ./keys/${name}/paas.json
  http POST http://172.28.2.${i}:9933 < ./keys/${name}/nimb.json
  i=$((i+1))
done