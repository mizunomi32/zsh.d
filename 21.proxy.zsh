# =================================
# 21.proxy.zsh
#
# (c) 2016-2017 Mitsuhiro Mizuno
# ================================

# ↓ SE your proxy server host and port!!
PROXY_SERVER="http://proxy.ksc.kwansei.ac.jp:8080"

function proxyset () {
	export http_proxy=${PROXY_SERVER}
	export https_proxy=${PROXY_SERVER}
	export ftp_proxy=${PROXY_SERVER}
	export all_proxy=${PROXY_SERVER}

}
function proxyunset() {
	unset http_proxy
	unset https_proxy
	unset ftp_proxy
	unset all_proxy
}
 
