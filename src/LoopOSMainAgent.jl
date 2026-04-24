module LoopOSMainAgent

# const T = Float64

using TheoryOfGod: 𝕋, ○, T
const Ω = 𝕋()
import TheoryOfGod: t
t() = t(Ω)

using StaticArrays
using TheoryOfGodgod: god
const GOD = god(;
    d = SA[zero(T)],
    t = t(),
    ẑeroμ = SA[○, ○, ○],
    ôneμ = SA[○, ○, ○],
    ρ = (T(0.01),T(0.01),T(0.01)),
    ♯ = (10^3, 10^3),
)

using LoopOSMainAgentTextCommunication
const ROUTERTEXTLOCATION = "ipc://./routertext" # change to tcp if on separate machines
const PUBTEXTLOCATION = "ipc://./pubtext" # change to tcp if on separate machines
const TEXTCOMMUNICATIONTASK = LoopOSMainAgentTextCommunication.init(ROUTERTEXTLOCATION, PUBTEXTLOCATION)

using LoopOSMainAgentgodCommunication
const CREATETOGLOCATION = "ipc://./createtog" # change to tcp if on separate machines
const OBSERVETOGLOCATION = "ipc://./observetog" # change to tcp if on separate machines
const CREATETOGTASK, OBSERVETOGTASK = LoopOSMainAgentgodCommunication.init(CREATETOGLOCATION, OBSERVETOGLOCATION, Ω)

using LoopOSAgentManagement

end
