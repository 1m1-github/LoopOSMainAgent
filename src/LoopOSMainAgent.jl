module LoopOSMainAgent

using TheoryOfGod: 𝕋, ○, T
using LoopOSAgentManagement
using StaticArrays
using TheoryOfGodgod: god
using LoopOSMainAgentTextCommunication
using LoopOSMainAgentgodCommunication

const Ω = 𝕋()
import TheoryOfGod: t
t() = t(Ω)

const invϕ = one(T) / MathConstants.golden
const GOD = god
    ω = Ω,
    d = SA[invϕ, invϕ^2, invϕ^3],
    t = t(),
    ẑeroμ = SA[○, ○, ○],
    ôneμ = SA[○, ○, ○],
    ρ = (T(0.01),T(0.01),T(0.01)),
    ♯ = (10^3, 10^3),
)

const ROUTERTEXTLOCATION = "ipc://textrouter.ipc" # change to tcp if on separate machines
const PUBTEXTLOCATION = "ipc://textpub.ipc" # change to tcp if on separate machines
const CREATETOGLOCATION = "ipc://togcreate.ipc" # change to tcp if on separate machines
const OBSERVETOGLOCATION = "ipc://togobserve.ipc" # change to tcp if on separate machines

function start(name)
    LoopOSMainAgentTextCommunication.start(ROUTERTEXTLOCATION, PUBTEXTLOCATION)
    LoopOSMainAgentgodCommunication.start(CREATETOGLOCATION, OBSERVETOGLOCATION, Ω)
    LoopOS.awaken(name)
end

end
