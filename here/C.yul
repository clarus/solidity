
/// @use-src 0:"test/libsolidity/syntaxTests/types/address/payable_conversion.sol"
object "C_44" {
    code {
        ///--- @srci2 0:0:227  "contract C {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_XX_C_44()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("C_44_deployed"), datasize("C_44_deployed"))

        return(_1, datasize("C_44_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        ///--- @srci2 0:0:227  "contract C {..."
        function constructor_XX_C_44() {

            ///--- @srci2 0:0:227  "contract C {..."

        }
        ///--- @srci2 0:0:227  "contract C {..."

    }
    /// @use-src 0:"test/libsolidity/syntaxTests/types/address/payable_conversion.sol"
    object "C_44_deployed" {
        code {
            ///--- @srci2 0:0:227  "contract C {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x26121ff0
                {
                    // f()

                    external_fun_f_43()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_f_43() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_f_43()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_D_$45_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_uint160_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_address_payable(value)
            }

            function convert_t_contract$_E_$50_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_address_payable(value)
            }

            function convert_t_contract$_F_$55_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_address_payable(value)
            }

            /// @ast-id 43
            ///--- @srci2 0:17:225  "function f() public {..."
            function fun_f_43() {

                ///--- @srci2 0:83:90  "new D()"
                let _1 := allocate_unbounded()
                let _2 := add(_1, datasize("D_45"))
                if or(gt(_2, 0xffffffffffffffff), lt(_2, _1)) { panic_error_0x41() }
                datacopy(_1, dataoffset("D_45"), datasize("D_45"))
                _2 := abi_encode_tuple__to__fromStack(_2)

                let expr_12_address := create(0, _1, sub(_2, _1))

                if iszero(expr_12_address) { revert_forward_1() }

                ///--- @srci2 0:75:91  "address(new D())"
                let expr_13 := convert_t_contract$_D_$45_to_t_address(expr_12_address)
                ///--- @srci2 0:67:92  "payable(address(new D()))"
                let expr_14 := convert_t_address_to_t_address_payable(expr_13)
                ///--- @srci2 0:47:92  "address payable a = payable(address(new D()))"
                let var_a_4 := expr_14
                ///--- @srci2 0:130:137  "new E()"
                let _3 := allocate_unbounded()
                let _4 := add(_3, datasize("E_50"))
                if or(gt(_4, 0xffffffffffffffff), lt(_4, _3)) { panic_error_0x41() }
                datacopy(_3, dataoffset("E_50"), datasize("E_50"))
                _4 := abi_encode_tuple__to__fromStack(_4)

                let expr_23_address := create(0, _3, sub(_4, _3))

                if iszero(expr_23_address) { revert_forward_1() }

                ///--- @srci2 0:122:138  "payable(new E())"
                let expr_24 := convert_t_contract$_E_$50_to_t_address_payable(expr_23_address)
                ///--- @srci2 0:102:138  "address payable b = payable(new E())"
                let var_b_17 := expr_24
                ///--- @srci2 0:176:183  "new F()"
                let _5 := allocate_unbounded()
                let _6 := add(_5, datasize("F_55"))
                if or(gt(_6, 0xffffffffffffffff), lt(_6, _5)) { panic_error_0x41() }
                datacopy(_5, dataoffset("F_55"), datasize("F_55"))
                _6 := abi_encode_tuple__to__fromStack(_6)

                let expr_33_address := create(0, _5, sub(_6, _5))

                if iszero(expr_33_address) { revert_forward_1() }

                ///--- @srci2 0:168:184  "payable(new F())"
                let expr_34 := convert_t_contract$_F_$55_to_t_address_payable(expr_33_address)
                ///--- @srci2 0:148:184  "address payable c = payable(new F())"
                let var_c_27 := expr_34
                ///--- @srci2 0:195:196  "a"
                let _7 := var_a_4
                let expr_36 := _7
                ///--- @srci2 0:206:207  "b"
                let _8 := var_b_17
                let expr_38 := _8
                ///--- @srci2 0:217:218  "c"
                let _9 := var_c_27
                let expr_40 := _9

            }
            ///--- @srci2 0:0:227  "contract C {..."

        }

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

        data ".metadata" hex"a26469706673582212202c28b7818a9876c9414097da9f38ce75ff3ec5f438a3fa4136c657c5026617ea64736f6c634300081a0033"
    }

}

