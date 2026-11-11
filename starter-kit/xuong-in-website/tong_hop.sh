# Script: tong_hop.sh 
# Tac gia: Nguyen-The-Huy
# Ngay tao: 11-11
echo "Dang tao bao cao..."
echo "=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
cat logs/order.log | grep "404" >> logs/tong_hop.txt
cat logs/order.log|grep "500"|wc -l >> logs/tong_hop.txt
echo "Hoan thanh!"