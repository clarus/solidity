
/// @use-src 0:"test/libsolidity/syntaxTests/types/address/payable_conversion.sol"
object "E_50" {
    code {
        ///--- @srci2 0:321:374  "contract E {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_XX_E_50()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("E_50_deployed"), datasize("E_50_deployed"))

        return(_1, datasize("E_50_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        ///--- @srci2 0:321:374  "contract E {..."
        function constructor_XX_E_50() {

            ///--- @srci2 0:321:374  "contract E {..."

        }
        ///--- @srci2 0:321:374  "contract E {..."

    }
    /// @use-src 0:"test/libsolidity/syntaxTests/types/address/payable_conversion.sol"
    object "E_50_deployed" {
        code {
            ///--- @srci2 0:321:374  "contract E {..."
            mstore(64, memoryguard(128))

            if iszero(calldatasize()) { fun__49() stop() }
            revert_error_d228b4ceac16d8e91d6dc7ca8d4a5394f524b2e550555324088cb23b86b87b98()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_d228b4ceac16d8e91d6dc7ca8d4a5394f524b2e550555324088cb23b86b87b98() {
                revert(0, 0)
            }

            /// @ast-id 49
            ///--- @srci2 0:338:372  "receive() external payable {..."
            function fun__49() {

            }
            ///--- @srci2 0:321:374  "contract E {..."

        }

        data ".metadata" hex"a26469706673582212207d9a9c60a08a1d619bd8aeec3467fd4ab6026e071d487ea0079833ed5054cbbc64736f6c634300081a0033"
    }

}

