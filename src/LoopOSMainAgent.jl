module LoopOSMainAgent

# const T = Float64

using TheoryOfGod: 𝕋, ○, T
const Ω = 𝕋()
import TheoryOfGod: t
t() = t(Ω)

using StaticArrays
using TheoryOfGodgod: god
const invϕ = one(T) / MathConstants.golden
const GOD = god(;
    ω = Ω,
    d = SA[invϕ, invϕ^2, invϕ^3],
    t = t(),
    ẑeroμ = SA[○, ○, ○],
    ôneμ = SA[○, ○, ○],
    ρ = (T(0.01),T(0.01),T(0.01)),
    ♯ = (10^3, 10^3),
)

using LoopOSMainAgentTextCommunication
const ROUTERTEXTLOCATION = "ipc://textrouter.ipc" # change to tcp if on separate machines
const PUBTEXTLOCATION = "ipc://textpub.ipc" # change to tcp if on separate machines
const TEXTCOMMUNICATIONTASK = LoopOSMainAgentTextCommunication.init(ROUTERTEXTLOCATION, PUBTEXTLOCATION)

using LoopOSMainAgentgodCommunication
const CREATETOGLOCATION = "ipc://togcreate.ipc" # change to tcp if on separate machines
const OBSERVETOGLOCATION = "ipc://togobserve.ipc" # change to tcp if on separate machines
const CREATETOGTASK, OBSERVETOGTASK = LoopOSMainAgentgodCommunication.init(CREATETOGLOCATION, OBSERVETOGLOCATION, Ω)

using LoopOSAgentManagement

end
