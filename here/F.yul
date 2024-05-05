
/// @use-src 0:"test/libsolidity/syntaxTests/types/address/payable_conversion.sol"
object "F_55" {
    code {
        ///--- @srci2 0:432:487  "contract F {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_XX_F_55()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("F_55_deployed"), datasize("F_55_deployed"))

        return(_1, datasize("F_55_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        ///--- @srci2 0:432:487  "contract F {..."
        function constructor_XX_F_55() {

            ///--- @srci2 0:432:487  "contract F {..."

        }
        ///--- @srci2 0:432:487  "contract F {..."

    }
    /// @use-src 0:"test/libsolidity/syntaxTests/types/address/payable_conversion.sol"
    object "F_55_deployed" {
        code {
            ///--- @srci2 0:432:487  "contract F {..."
            mstore(64, memoryguard(128))

            fun__54() stop()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            /// @ast-id 54
            ///--- @srci2 0:449:485  "fallback() external payable {..."
            function fun__54() {

            }
            ///--- @srci2 0:432:487  "contract F {..."

        }

        data ".metadata" hex"a26469706673582212202f29c0d77d77be28984fa4187d35928486e37075507bca52ea5a947a278b584b64736f6c634300081a0033"
    }

}

