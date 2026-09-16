# ===================================================================
# Auto Totem - logic kiểm tra (chạy mỗi tick, @s = người chơi đang bật)
# ===================================================================
#
# Điều kiện 1: Tay trái (offhand) đang trống HOÀN TOÀN
#   -> nếu trong túi đồ (hotbar + inventory chính, KHÔNG tính 2 tay
#      và giáp) còn ít nhất 1 totem thì rút 1 totem và gắn vào tay trái
execute if predicate at:offhand_empty if items entity @s container.* minecraft:totem_of_undying run function at:equip_offhand

# Điều kiện 2: Tay trái đang cầm vật phẩm KHÁC totem VÀ tay chính
#   (mainhand) đang trống hoàn toàn
#   -> nếu trong túi đồ còn ít nhất 1 totem thì rút 1 totem và gắn
#      vào tay chính
execute unless predicate at:offhand_empty unless predicate at:offhand_totem if predicate at:mainhand_empty if items entity @s container.* minecraft:totem_of_undying run function at:equip_mainhand
