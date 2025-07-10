-- /usr/lib/lua/luci/controller/admin/network.lua

module("luci.controller.admin.network", package.seeall)

function index()
    -- "ネットワーク"の基本エントリ。通常はfirewallページにリンクする
    entry({"admin", "network"}, alias("admin", "network", "firewall"), _("Network"), 40).dependent=false

    -- ここに我々のカスタムページを追加する
    entry({"admin", "network", "nat_switcher"}, template("nat_switcher"), _("NATタイプ切替"), 90).dependent=false
end
