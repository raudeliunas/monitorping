while true; do

  FILE=logs/errorping.log
  input="devices.txt"
  while read -r IP
  do
    DATE=$(date '+%d/%m/%Y %H:%M:%S')
    ping -c 1 $IP > /dev/null 2>&1
    if [[ $? -ne 0 ]]; then
      echo $DATE $IP "ERROR PING" >> $FILE
    else
      echo $DATE $IP "PING OK" >> $FILE
    fi

  done < "$input"

    # Adiciona um atraso entre as iterações (ajuste a duração conforme necessário)
  sleep 10  # Dorme por 10 segundos
done
