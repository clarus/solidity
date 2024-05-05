
/// @use-src 0:"test/libsolidity/syntaxTests/types/address/payable_conversion.sol"
object "D_45" {
    code {
        ///--- @srci2 0:269:282  "contract D {}"
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_XX_D_45()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("D_45_deployed"), datasize("D_45_deployed"))

        return(_1, datasize("D_45_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        ///--- @srci2 0:269:282  "contract D {}"
        function constructor_XX_D_45() {

            ///--- @srci2 0:269:282  "contract D {}"

        }
        ///--- @srci2 0:269:282  "contract D {}"

    }
    /// @use-src 0:"test/libsolidity/syntaxTests/types/address/payable_conversion.sol"
    object "D_45_deployed" {
        code {
            ///--- @srci2 0:269:282  "contract D {}"
            mstore(64, memoryguard(128))

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

        }

        data ".metadata" hex"a2646970667358221220ef04048714c00c01c3ab8874eb63d895acbf6c6623d9a5187bdc51873681bd2f64736f6c634300081a0033"
    }

}

