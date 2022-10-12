declare -a IPS_Mahasiswa

echo " Masukkan Banyaknya IPS Mahasiswa :"
read banyak_data

j=0;
while [ $j -lt $banyak_data ];
do
    read IPS_Mahasiswa[$j];
    let j=j+1;
done

k=0;
while [ $k -le $j ];
do
    let jumlah_IPS=jumlah_IPS+IPS_Mahasiswa[$k];
    let k=k+1;
done

let IPK=jumlah_IPS/banyak_data

echo "IPS Mahasiwa = $jumlah_IPS / $banyak_data"
echo "IPK Mahasiwa = $IPK"
