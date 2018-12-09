yum install -y gcc libaio-devel libattr-devel libbsd-devel libcap-devel libgcrypt-devel keyutils-libs libsctp-devel zlib-devel
git clone https://github.com/ColinIanKing/stress-ng.git
make clean
make
