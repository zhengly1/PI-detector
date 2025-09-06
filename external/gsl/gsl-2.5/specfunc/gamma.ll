; ModuleID = 'gamma.c'
source_filename = "gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, double, i64 }
%struct.anon.0 = type { i32, double, i64 }
%struct.cheb_series_struct = type { ptr, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"gamma.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [37 x i8] c"x too large to extract fraction part\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !27
@fact_table = internal unnamed_addr constant [171 x %struct.anon] [%struct.anon { i32 0, double 1.000000e+00, i64 1 }, %struct.anon { i32 1, double 1.000000e+00, i64 1 }, %struct.anon { i32 2, double 2.000000e+00, i64 2 }, %struct.anon { i32 3, double 6.000000e+00, i64 6 }, %struct.anon { i32 4, double 2.400000e+01, i64 24 }, %struct.anon { i32 5, double 1.200000e+02, i64 120 }, %struct.anon { i32 6, double 7.200000e+02, i64 720 }, %struct.anon { i32 7, double 5.040000e+03, i64 5040 }, %struct.anon { i32 8, double 4.032000e+04, i64 40320 }, %struct.anon { i32 9, double 3.628800e+05, i64 362880 }, %struct.anon { i32 10, double 3.628800e+06, i64 3628800 }, %struct.anon { i32 11, double 3.991680e+07, i64 39916800 }, %struct.anon { i32 12, double 0x41BC8CFC00000000, i64 479001600 }, %struct.anon { i32 13, double 0x41F7328CC0000000, i64 0 }, %struct.anon { i32 14, double 0x42344C3B28000000, i64 0 }, %struct.anon { i32 15, double 0x4273077775800000, i64 0 }, %struct.anon { i32 16, double 0x42B3077775800000, i64 0 }, %struct.anon { i32 17, double 0x42F437EEECD80000, i64 0 }, %struct.anon { i32 18, double 0x4336BEECCA730000, i64 0 }, %struct.anon { i32 19, double 0x437B02B930689000, i64 0 }, %struct.anon { i32 20, double 0x43C0E1B3BE415A00, i64 0 }, %struct.anon { i32 21, double 0x4406283BE9B5C620, i64 0 }, %struct.anon { i32 22, double 0x444E77526159F06C, i64 0 }, %struct.anon { i32 23, double 0x4495E5C335F8A4CE, i64 0 }, %struct.anon { i32 24, double 0x44E06C52687A7B9A, i64 0 }, %struct.anon { i32 25, double 0x4529A940C33F6121, i64 0 }, %struct.anon { i32 26, double 0x4574D9849EA37EEB, i64 0 }, %struct.anon { i32 27, double 0x45C19787E5D9F316, i64 0 }, %struct.anon { i32 28, double 0x460EC92DD23D6967, i64 0 }, %struct.anon { i32 29, double 0x465BE6518687A785, i64 0 }, %struct.anon { i32 30, double 0x46AA27EC6E1F2D0D, i64 0 }, %struct.anon { i32 31, double 0x46F956AD0AAE33A4, i64 0 }, %struct.anon { i32 32, double 0x474956AD0AAE33A4, i64 0 }, %struct.anon { i32 33, double 0x479A21627303A541, i64 0 }, %struct.anon { i32 34, double 0x47EBC3789A33DF96, i64 0 }, %struct.anon { i32 35, double 0x483E5DCBE8A8BC8C, i64 0 }, %struct.anon { i32 36, double 0x489114C2B2DEEA0F, i64 0 }, %struct.anon { i32 37, double 0x48E3C0011ED1BEA1, i64 0 }, %struct.anon { i32 38, double 0x493774015499125F, i64 0 }, %struct.anon { i32 39, double 0x498C95619F1A8E64, i64 0 }, %struct.anon { i32 40, double 0x49E1DD5D037098FE, i64 0 }, %struct.anon { i32 41, double 0x4A36E39F2C684406, i64 0 }, %struct.anon { i32 42, double 0x4A8E0AC0EA48D948, i64 0 }, %struct.anon { i32 43, double 0x4AE42F399D68F1FC, i64 0 }, %struct.anon { i32 44, double 0x4B3BC0EF38704CBB, i64 0 }, %struct.anon { i32 45, double 0x4B9383A833AEF5F3, i64 0 }, %struct.anon { i32 46, double 0x4BEC0D41CA4B818E, i64 0 }, %struct.anon { i32 47, double 0x4C4499BC508F7324, i64 0 }, %struct.anon { i32 48, double 0x4C9EE69A78D72CB6, i64 0 }, %struct.anon { i32 49, double 0x4CF7A88E4484BE3B, i64 0 }, %struct.anon { i32 50, double 0x4D527BAF2587B49E, i64 0 }, %struct.anon { i32 51, double 0x4DAD751F23D047DC, i64 0 }, %struct.anon { i32 52, double 0x4E07EF294D193A63, i64 0 }, %struct.anon { i32 53, double 0x4E63D20E33D8E45A, i64 0 }, %struct.anon { i32 54, double 0x4EC0B93BFBBF00AC, i64 0 }, %struct.anon { i32 55, double 0x4F1CBE5F18B04928, i64 0 }, %struct.anon { i32 56, double 0x4F792693359A4003, i64 0 }, %struct.anon { i32 57, double 0x4FD6665B1BBD6102, i64 0 }, %struct.anon { i32 58, double 0x50344CC291239FEA, i64 0 }, %struct.anon { i32 59, double 0x5092B6C35DCCD76C, i64 0 }, %struct.anon { i32 60, double 0x50F18B5727F009F5, i64 0 }, %struct.anon { i32 61, double 0x5150B8CF1210C97E, i64 0 }, %struct.anon { i32 62, double 0x51B0330899804332, i64 0 }, %struct.anon { i32 63, double 0x520FE478EE34844A, i64 0 }, %struct.anon { i32 64, double 0x526FE478EE34844A, i64 0 }, %struct.anon { i32 65, double 0x52D0320568F6AB2E, i64 0 }, %struct.anon { i32 66, double 0x5330B395943E6087, i64 0 }, %struct.anon { i32 67, double 0x53917C0097314D0D, i64 0 }, %struct.anon { i32 68, double 0x53F293C0A0A461DE, i64 0 }, %struct.anon { i32 69, double 0x5454074BAD313983, i64 0 }, %struct.anon { i32 70, double 0x54B5E7FAC56DD6E8, i64 0 }, %struct.anon { i32 71, double 0x55184D5A3305DA69, i64 0 }, %struct.anon { i32 72, double 0x557B5705796695B6, i64 0 }, %struct.anon { i32 73, double 0x55DF2F423E7902C4, i64 0 }, %struct.anon { i32 74, double 0x564207524C1DF599, i64 0 }, %struct.anon { i32 75, double 0x56A5209471331BD0, i64 0 }, %struct.anon { i32 76, double 0x570916B0466CB107, i64 0 }, %struct.anon { i32 77, double 0x576E2F4C14BAC4FC, i64 0 }, %struct.anon { i32 78, double 0x57D264D25CA1D009, i64 0 }, %struct.anon { i32 79, double 0x5836B473AA57BCCC, i64 0 }, %struct.anon { i32 80, double 0x589C619094EDABFF, i64 0 }, %struct.anon { i32 81, double 0x5901F5BD7E3E66D7, i64 0 }, %struct.anon { i32 82, double 0x596702DAC9BFF3C4, i64 0 }, %struct.anon { i32 83, double 0x59CDD7B3BDA4F022, i64 0 }, %struct.anon { i32 84, double 0x5A33958DF4743D96, i64 0 }, %struct.anon { i32 85, double 0x5A9A02A088AA61CB, i64 0 }, %struct.anon { i32 86, double 0x5B0179C3DBD279B5, i64 0 }, %struct.anon { i32 87, double 0x5B67C1863ED21D72, i64 0 }, %struct.anon { i32 88, double 0x5BD0550C4B30743E, i64 0 }, %struct.anon { i32 89, double 0x5C36B645188F61A6, i64 0 }, %struct.anon { i32 90, double 0x5C9FF0512A89A152, i64 0 }, %struct.anon { i32 91, double 0x5D06B4D9B43DD8B0, i64 0 }, %struct.anon { i32 92, double 0x5D7051FC798C73BF, i64 0 }, %struct.anon { i32 93, double 0x5DD7B722E0A01831, i64 0 }, %struct.anon { i32 94, double 0x5E416A7D9CF591C4, i64 0 }, %struct.anon { i32 95, double 0x5EA9DA1274FC845F, i64 0 }, %struct.anon { i32 96, double 0x5F13638DD7BD6347, i64 0 }, %struct.anon { i32 97, double 0x5F7D62E2FAFB0A78, i64 0 }, %struct.anon { i32 98, double 0x5FE67FB5C8283404, i64 0 }, %struct.anon { i32 99, double 0x605166C698CF183B, i64 0 }, %struct.anon { i32 100, double 0x60BB30964EC395DC, i64 0 }, %struct.anon { i32 101, double 0x612574569A265440, i64 0 }, %struct.anon { i32 102, double 0x619118B502D68B23, i64 0 }, %struct.anon { i32 103, double 0x61FB83C3509147EC, i64 0 }, %struct.anon { i32 104, double 0x62665B0EB1760A70, i64 0 }, %struct.anon { i32 105, double 0x62D256B20D92D490, i64 0 }, %struct.anon { i32 106, double 0x633E5F96E67B300E, i64 0 }, %struct.anon { i32 107, double 0x63A963E824AAFA2C, i64 0 }, %struct.anon { i32 108, double 0x64156C4BDEF04315, i64 0 }, %struct.anon { i32 109, double 0x64823E389BD89920, i64 0 }, %struct.anon { i32 110, double 0x64EF5AF14BDC472F, i64 0 }, %struct.anon { i32 111, double 0x655B30DD3FC905BA, i64 0 }, %struct.anon { i32 112, double 0x65C7CAC197CFE503, i64 0 }, %struct.anon { i32 113, double 0x663500FEE805882D, i64 0 }, %struct.anon { i32 114, double 0x66A2B4E306A4ED48, i64 0 }, %struct.anon { i32 115, double 0x6710CE83F7F82D2F, i64 0 }, %struct.anon { i32 116, double 0x677E764F3171D1E4, i64 0 }, %struct.anon { i32 117, double 0x67EBD824633209DB, i64 0 }, %struct.anon { i32 118, double 0x6859AB418B722116, i64 0 }, %struct.anon { i32 119, double 0x68C7DD36EFA41AC2, i64 0 }, %struct.anon { i32 120, double 0x69365F6380A9D916, i64 0 }, %struct.anon { i32 121, double 0x69A5262C0FA08F37, i64 0 }, %struct.anon { i32 122, double 0x6A142861FEE50880, i64 0 }, %struct.anon { i32 123, double 0x6A835ECE2AF0162B, i64 0 }, %struct.anon { i32 124, double 0x6AF2C3D7B998957A, i64 0 }, %struct.anon { i32 125, double 0x6B625340AB3F01F9, i64 0 }, %struct.anon { i32 126, double 0x6BD209F3A89205F1, i64 0 }, %struct.anon { i32 127, double 0x6C41E5DFC140E1E5, i64 0 }, %struct.anon { i32 128, double 0x6CB1E5DFC140E1E5, i64 0 }, %struct.anon { i32 129, double 0x6D2209AB80C363A9, i64 0 }, %struct.anon { i32 130, double 0x6D9251D22EC67138, i64 0 }, %struct.anon { i32 131, double 0x6E02BFBD1BDF17DF, i64 0 }, %struct.anon { i32 132, double 0x6E7355BB04BE109E, i64 0 }, %struct.anon { i32 133, double 0x6EE4171452ED7D44, i64 0 }, %struct.anon { i32 134, double 0x6F55082946D09F23, i64 0 }, %struct.anon { i32 135, double 0x6FC62E9B88B007D7, i64 0 }, %struct.anon { i32 136, double 0x70379185413B0855, i64 0 }, %struct.anon { i32 137, double 0x70A939C09FD12EEB, i64 0 }, %struct.anon { i32 138, double 0x711B3243AC4D8695, i64 0 }, %struct.anon { i32 139, double 0x718D88957D1C3026, i64 0 }, %struct.anon { i32 140, double 0x720026B1C06B6A55, i64 0 }, %struct.anon { i32 141, double 0x7271CA9FCDF65321, i64 0 }, %struct.anon { i32 142, double 0x72E3BCC9487D4439, i64 0 }, %struct.anon { i32 143, double 0x73560CE8DEFBF238, i64 0 }, %struct.anon { i32 144, double 0x73C8CE85FADB707E, i64 0 }, %struct.anon { i32 145, double 0x743C19F3C62C956F, i64 0 }, %struct.anon { i32 146, double 0x74B006CD07056D39, i64 0 }, %struct.anon { i32 147, double 0x752267CF76103B70, i64 0 }, %struct.anon { i32 148, double 0x75954807E082C4B9, i64 0 }, %struct.anon { i32 149, double 0x7608C5D92B583900, i64 0 }, %struct.anon { i32 150, double 0x767D07DA7ECB62CC, i64 0 }, %struct.anon { i32 151, double 0x76F11FA1E0C9F746, i64 0 }, %struct.anon { i32 152, double 0x776455903AEFD5A3, i64 0 }, %struct.anon { i32 153, double 0x77D84E466672AD5D, i64 0 }, %struct.anon { i32 154, double 0x784D3E2CB341F894, i64 0 }, %struct.anon { i32 155, double 0x78C1B4A51088F182, i64 0 }, %struct.anon { i32 156, double 0x793594292C26E656, i64 0 }, %struct.anon { i32 157, double 0x79AA77BA8027B686, i64 0 }, %struct.anon { i32 158, double 0x7A2055E51B1882A7, i64 0 }, %struct.anon { i32 159, double 0x7A944AB297A8724B, i64 0 }, %struct.anon { i32 160, double 0x7B095D5F3D928EDE, i64 0 }, %struct.anon { i32 161, double 0x7B7FE771CB7257B3, i64 0 }, %struct.anon { i32 162, double 0x7BF4307602BE5B7F, i64 0 }, %struct.anon { i32 163, double 0x7C69B5B6477E6884, i64 0 }, %struct.anon { i32 164, double 0x7CE07868C5CCFAF4, i64 0 }, %struct.anon { i32 165, double 0x7D553B370EFA3B7F, i64 0 }, %struct.anon { i32 166, double 0x7DCB88CB676C8529, i64 0 }, %struct.anon { i32 167, double 0x7E41F63CB077CADE, i64 0 }, %struct.anon { i32 168, double 0x7EB7932FA79D3A43, i64 0 }, %struct.anon { i32 169, double 0x7F2F2054EB4D96EC, i64 0 }, %struct.anon { i32 170, double 0x7FA4AB7864418639, i64 0 }], align 16, !dbg !32
@doub_fact_table = internal unnamed_addr constant [298 x %struct.anon.0] [%struct.anon.0 { i32 0, double 1.000000e+00, i64 1 }, %struct.anon.0 { i32 1, double 1.000000e+00, i64 1 }, %struct.anon.0 { i32 2, double 2.000000e+00, i64 2 }, %struct.anon.0 { i32 3, double 3.000000e+00, i64 3 }, %struct.anon.0 { i32 4, double 8.000000e+00, i64 8 }, %struct.anon.0 { i32 5, double 1.500000e+01, i64 15 }, %struct.anon.0 { i32 6, double 4.800000e+01, i64 48 }, %struct.anon.0 { i32 7, double 1.050000e+02, i64 105 }, %struct.anon.0 { i32 8, double 3.840000e+02, i64 384 }, %struct.anon.0 { i32 9, double 9.450000e+02, i64 945 }, %struct.anon.0 { i32 10, double 3.840000e+03, i64 3840 }, %struct.anon.0 { i32 11, double 1.039500e+04, i64 10395 }, %struct.anon.0 { i32 12, double 4.608000e+04, i64 46080 }, %struct.anon.0 { i32 13, double 1.351350e+05, i64 135135 }, %struct.anon.0 { i32 14, double 6.451200e+05, i64 645120 }, %struct.anon.0 { i32 15, double 0x413EEE1100000000, i64 2027025 }, %struct.anon.0 { i32 16, double 0x4163B00000000000, i64 10321920 }, %struct.anon.0 { i32 17, double 0x41806E7908000000, i64 34459425 }, %struct.anon.0 { i32 18, double 0x41A6260000000000, i64 185794560 }, %struct.anon.0 { i32 19, double 0x41C3832FB9800000, i64 0 }, %struct.anon.0 { i32 20, double 0x41EBAF8000000000, i64 0 }, %struct.anon.0 { i32 21, double 0x42099C2EA3780000, i64 0 }, %struct.anon.0 { i32 22, double 0x423308A800000000, i64 0 }, %struct.anon.0 { i32 23, double 0x42526841857E4000, i64 0 }, %struct.anon.0 { i32 24, double 0x427C8CFC00000000, i64 0 }, %struct.anon.0 { i32 25, double 0x429CC2E660954400, i64 0 }, %struct.anon.0 { i32 26, double 0x42C7328CC0000000, i64 0 }, %struct.anon.0 { i32 27, double 0x42E84472617DF160, i64 0 }, %struct.anon.0 { i32 28, double 0x43144C3B28000000, i64 0 }, %struct.anon.0 { i32 29, double 0x4335FE07A85A22BF, i64 0 }, %struct.anon.0 { i32 30, double 0x4363077775800000, i64 0 }, %struct.anon.0 { i32 31, double 0x43854E176B1751A9, i64 0 }, %struct.anon.0 { i32 32, double 0x43B3077775800000, i64 0 }, %struct.anon.0 { i32 33, double 0x43D5F88826700C36, i64 0 }, %struct.anon.0 { i32 34, double 0x440437EEECD80000, i64 0 }, %struct.anon.0 { i32 35, double 0x442807D4EA0A8D5B, i64 0 }, %struct.anon.0 { i32 36, double 0x4456BEECCA730000, i64 0 }, %struct.anon.0 { i32 37, double 0x447BC90E2E9C3372, i64 0 }, %struct.anon.0 { i32 38, double 0x44AB02B930689000, i64 0 }, %struct.anon.0 { i32 39, double 0x44D0EE84A4672F59, i64 0 }, %struct.anon.0 { i32 40, double 0x4500E1B3BE415A00, i64 0 }, %struct.anon.0 { i32 41, double 0x4525B199F2A434AA, i64 0 }, %struct.anon.0 { i32 42, double 0x4556283BE9B5C620, i64 0 }, %struct.anon.0 { i32 43, double 0x457D26A6DE0CA6C5, i64 0 }, %struct.anon.0 { i32 44, double 0x45AE77526159F06C, i64 0 }, %struct.anon.0 { i32 45, double 0x45D47F2D5420E542, i64 0 }, %struct.anon.0 { i32 46, double 0x4605E5C335F8A4CE, i64 0 }, %struct.anon.0 { i32 47, double 0x462E1ACA939050BA, i64 0 }, %struct.anon.0 { i32 48, double 0x46606C52687A7B9A, i64 0 }, %struct.anon.0 { i32 49, double 0x46870C8318FA7DCE, i64 0 }, %struct.anon.0 { i32 50, double 0x46B9A940C33F6121, i64 0 }, %struct.anon.0 { i32 51, double 0x46E25DF877E79C40, i64 0 }, %struct.anon.0 { i32 52, double 0x4714D9849EA37EEB, i64 0 }, %struct.anon.0 { i32 53, double 0x473E6BA386979ACA, i64 0 }, %struct.anon.0 { i32 54, double 0x47719787E5D9F316, i64 0 }, %struct.anon.0 { i32 55, double 0x479A248087AA4906, i64 0 }, %struct.anon.0 { i32 56, double 0x47CEC92DD23D6967, i64 0 }, %struct.anon.0 { i32 57, double 0x47F7488278D3A909, i64 0 }, %struct.anon.0 { i32 58, double 0x482BE6518687A785, i64 0 }, %struct.anon.0 { i32 59, double 0x485576D847631FD5, i64 0 }, %struct.anon.0 { i32 60, double 0x488A27EC6E1F2D0D, i64 0 }, %struct.anon.0 { i32 61, double 0x48B47546240A7A57, i64 0 }, %struct.anon.0 { i32 62, double 0x48E956AD0AAE33A4, i64 0 }, %struct.anon.0 { i32 63, double 0x491423710B7A506D, i64 0 }, %struct.anon.0 { i32 64, double 0x494956AD0AAE33A4, i64 0 }, %struct.anon.0 { i32 65, double 0x497473FECFA839AF, i64 0 }, %struct.anon.0 { i32 66, double 0x49AA21627303A541, i64 0 }, %struct.anon.0 { i32 67, double 0x49D5696EC1641C63, i64 0 }, %struct.anon.0 { i32 68, double 0x4A0BC3789A33DF96, i64 0 }, %struct.anon.0 { i32 69, double 0x4A3715AB687FEE9B, i64 0 }, %struct.anon.0 { i32 70, double 0x4A6E5DCBE8A8BC8C, i64 0 }, %struct.anon.0 { i32 71, double 0x4A999C0A27EDECB4, i64 0 }, %struct.anon.0 { i32 72, double 0x4AD114C2B2DEEA0F, i64 0 }, %struct.anon.0 { i32 73, double 0x4AFD35FB958B61FD, i64 0 }, %struct.anon.0 { i32 74, double 0x4B33C0011ED1BEA1, i64 0 }, %struct.anon.0 { i32 75, double 0x4B611DA1699FAB6A, i64 0 }, %struct.anon.0 { i32 76, double 0x4B9774015499125F, i64 0 }, %struct.anon.0 { i32 77, double 0x4BC497A633141A3C, i64 0 }, %struct.anon.0 { i32 78, double 0x4BFC95619F1A8E64, i64 0 }, %struct.anon.0 { i32 79, double 0x4C296B31270CD062, i64 0 }, %struct.anon.0 { i32 80, double 0x4C61DD5D037098FE, i64 0 }, %struct.anon.0 { i32 81, double 0x4C9015D51AB61BDE, i64 0 }, %struct.anon.0 { i32 82, double 0x4CC6E39F2C684406, i64 0 }, %struct.anon.0 { i32 83, double 0x4CF4DC505EA42C24, i64 0 }, %struct.anon.0 { i32 84, double 0x4D2E0AC0EA48D948, i64 0 }, %struct.anon.0 { i32 85, double 0x4D5BB49ABDB20AA0, i64 0 }, %struct.anon.0 { i32 86, double 0x4D942F399D68F1FC, i64 0 }, %struct.anon.0 { i32 87, double 0x4DC2D4C12CEF0339, i64 0 }, %struct.anon.0 { i32 88, double 0x4DFBC0EF38704CBB, i64 0 }, %struct.anon.0 { i32 89, double 0x4E2A2FDCA27C607B, i64 0 }, %struct.anon.0 { i32 90, double 0x4E6383A833AEF5F3, i64 0 }, %struct.anon.0 { i32 91, double 0x4E929E06DB846C97, i64 0 }, %struct.anon.0 { i32 92, double 0x4ECC0D41CA4B818E, i64 0 }, %struct.anon.0 { i32 93, double 0x4EFB0DA1F6FC6DCC, i64 0 }, %struct.anon.0 { i32 94, double 0x4F3499BC508F7324, i64 0 }, %struct.anon.0 { i32 95, double 0x4F64141E354F597D, i64 0 }, %struct.anon.0 { i32 96, double 0x4F9EE69A78D72CB6, i64 0 }, %struct.anon.0 { i32 97, double 0x4FCE6E7DC8CC43A2, i64 0 }, %struct.anon.0 { i32 98, double 0x5007A88E4484BE3B, i64 0 }, %struct.anon.0 { i32 99, double 0x50378975494DFC4F, i64 0 }, %struct.anon.0 { i32 100, double 0x50727BAF2587B49E, i64 0 }, %struct.anon.0 { i32 101, double 0x50A292768BD78916, i64 0 }, %struct.anon.0 { i32 102, double 0x50DD751F23D047DC, i64 0 }, %struct.anon.0 { i32 103, double 0x510DE3B6C90EE0A0, i64 0 }, %struct.anon.0 { i32 104, double 0x5147EF294D193A63, i64 0 }, %struct.anon.0 { i32 105, double 0x517884CBF0EE3443, i64 0 }, %struct.anon.0 { i32 106, double 0x51B3D20E33D8E45A, i64 0 }, %struct.anon.0 { i32 107, double 0x51E47F027B671FB0, i64 0 }, %struct.anon.0 { i32 108, double 0x5220B93BFBBF00AC, i64 0 }, %struct.anon.0 { i32 109, double 0x525174281D15D0FC, i64 0 }, %struct.anon.0 { i32 110, double 0x528CBE5F18B04928, i64 0 }, %struct.anon.0 { i32 111, double 0x52BE45759271D675, i64 0 }, %struct.anon.0 { i32 112, double 0x52F92693359A4003, i64 0 }, %struct.anon.0 { i32 113, double 0x532AB951CB487F53, i64 0 }, %struct.anon.0 { i32 114, double 0x5366665B1BBD6102, i64 0 }, %struct.anon.0 { i32 115, double 0x5398027F7CA32265, i64 0 }, %struct.anon.0 { i32 116, double 0x53D44CC291239FEA, i64 0 }, %struct.anon.0 { i32 117, double 0x5405F24887ED1D70, i64 0 }, %struct.anon.0 { i32 118, double 0x5442B6C35DCCD76C, i64 0 }, %struct.anon.0 { i32 119, double 0x5474673F6E5E715E, i64 0 }, %struct.anon.0 { i32 120, double 0x54B18B5727F009F5, i64 0 }, %struct.anon.0 { i32 121, double 0x54E34999F655472B, i64 0 }, %struct.anon.0 { i32 122, double 0x5520B8CF1210C97E, i64 0 }, %struct.anon.0 { i32 123, double 0x555288B9F2B5F264, i64 0 }, %struct.anon.0 { i32 124, double 0x5590330899804332, i64 0 }, %struct.anon.0 { i32 125, double 0x55C219859705AEB5, i64 0 }, %struct.anon.0 { i32 126, double 0x55FFE478EE34844A, i64 0 }, %struct.anon.0 { i32 127, double 0x5631F5528BD7A358, i64 0 }, %struct.anon.0 { i32 128, double 0x566FE478EE34844A, i64 0 }, %struct.anon.0 { i32 129, double 0x56A2193D30EF529F, i64 0 }, %struct.anon.0 { i32 130, double 0x56E0320568F6AB2E, i64 0 }, %struct.anon.0 { i32 131, double 0x571285D4A014EE8E, i64 0 }, %struct.anon.0 { i32 132, double 0x5750B395943E6087, i64 0 }, %struct.anon.0 { i32 133, double 0x57833F0EEE55BFE0, i64 0 }, %struct.anon.0 { i32 134, double 0x57C17C0097314D0D, i64 0 }, %struct.anon.0 { i32 135, double 0x57F44C81BF5E705E, i64 0 }, %struct.anon.0 { i32 136, double 0x583293C0A0A461DE, i64 0 }, %struct.anon.0 { i32 137, double 0x5865B9E2DED31445, i64 0 }, %struct.anon.0 { i32 138, double 0x58A4074BAD313983, i64 0 }, %struct.anon.0 { i32 139, double 0x58D797DC5DF93803, i64 0 }, %struct.anon.0 { i32 140, double 0x5915E7FAC56DD6E8, i64 0 }, %struct.anon.0 { i32 141, double 0x5949FD48BF8487B3, i64 0 }, %struct.anon.0 { i32 142, double 0x59884D5A3305DA69, i64 0 }, %struct.anon.0 { i32 143, double 0x59BD08F745F60F9A, i64 0 }, %struct.anon.0 { i32 144, double 0x59FB5705796695B6, i64 0 }, %struct.anon.0 { i32 145, double 0x5A3072140EA05ED6, i64 0 }, %struct.anon.0 { i32 146, double 0x5A6F2F423E7902C4, i64 0 }, %struct.anon.0 { i32 147, double 0x5AA2E30308CC2CEA, i64 0 }, %struct.anon.0 { i32 148, double 0x5AE207524C1DF599, i64 0 }, %struct.anon.0 { i32 149, double 0x5B15FC41883DAC48, i64 0 }, %struct.anon.0 { i32 150, double 0x5B55209471331BD0, i64 0 }, %struct.anon.0 { i32 151, double 0x5B89EF954EB8C13D, i64 0 }, %struct.anon.0 { i32 152, double 0x5BC916B0466CB107, i64 0 }, %struct.anon.0 { i32 153, double 0x5BFF00607818D6FB, i64 0 }, %struct.anon.0 { i32 154, double 0x5C3E2F4C14BAC4FC, i64 0 }, %struct.anon.0 { i32 155, double 0x5C72C53A68B70A2A, i64 0 }, %struct.anon.0 { i32 156, double 0x5CB264D25CA1D009, i64 0 }, %struct.anon.0 { i32 157, double 0x5CE705E9A4708278, i64 0 }, %struct.anon.0 { i32 158, double 0x5D26B473AA57BCCC, i64 0 }, %struct.anon.0 { i32 159, double 0x5D5C99583A43C211, i64 0 }, %struct.anon.0 { i32 160, double 0x5D9C619094EDABFF, i64 0 }, %struct.anon.0 { i32 161, double 0x5DD1FC707CA49D0C, i64 0 }, %struct.anon.0 { i32 162, double 0x5E11F5BD7E3E66D7, i64 0 }, %struct.anon.0 { i32 163, double 0x5E46E7773EB99FFE, i64 0 }, %struct.anon.0 { i32 164, double 0x5E8702DAC9BFF3C4, i64 0 }, %struct.anon.0 { i32 165, double 0x5EBD865FB6DB483D, i64 0 }, %struct.anon.0 { i32 166, double 0x5EFDD7B3BDA4F022, i64 0 }, %struct.anon.0 { i32 167, double 0x5F3342A870490C20, i64 0 }, %struct.anon.0 { i32 168, double 0x5F73958DF4743D96, i64 0 }, %struct.anon.0 { i32 169, double 0x5FA96E0264407202, i64 0 }, %struct.anon.0 { i32 170, double 0x5FEA02A088AA61CB, i64 0 }, %struct.anon.0 { i32 171, double 0x6020FC7B98F70C27, i64 0 }, %struct.anon.0 { i32 172, double 0x606179C3DBD279B5, i64 0 }, %struct.anon.0 { i32 173, double 0x6096F53F0CBDE66D, i64 0 }, %struct.anon.0 { i32 174, double 0x60D7C1863ED21D72, i64 0 }, %struct.anon.0 { i32 175, double 0x610F634C336BA109, i64 0 }, %struct.anon.0 { i32 176, double 0x6150550C4B30743E, i64 0 }, %struct.anon.0 { i32 177, double 0x6185B3A7AF8D6A58, i64 0 }, %struct.anon.0 { i32 178, double 0x61C6B645188F61A6, i64 0 }, %struct.anon.0 { i32 179, double 0x61FE593C7F7FC2B6, i64 0 }, %struct.anon.0 { i32 180, double 0x623FF0512A89A152, i64 0 }, %struct.anon.0 { i32 181, double 0x62757517C62554AB, i64 0 }, %struct.anon.0 { i32 182, double 0x62B6B4D9B43DD8B0, i64 0 }, %struct.anon.0 { i32 183, double 0x62EEAD67FD495F0C, i64 0 }, %struct.anon.0 { i32 184, double 0x633051FC798C73BF, i64 0 }, %struct.anon.0 { i32 185, double 0x63662B50260A05B0, i64 0 }, %struct.anon.0 { i32 186, double 0x63A7B722E0A01831, i64 0 }, %struct.anon.0 { i32 187, double 0x63E031A38BC95228, i64 0 }, %struct.anon.0 { i32 188, double 0x64216A7D9CF591C4, i64 0 }, %struct.anon.0 { i32 189, double 0x6457E94B7C67434E, i64 0 }, %struct.anon.0 { i32 190, double 0x6499DA1274FC845F, i64 0 }, %struct.anon.0 { i32 191, double 0x64D1D70F51D10B37, i64 0 }, %struct.anon.0 { i32 192, double 0x6513638DD7BD6347, i64 0 }, %struct.anon.0 { i32 193, double 0x654AE645195D32EA, i64 0 }, %struct.anon.0 { i32 194, double 0x658D62E2FAFB0A78, i64 0 }, %struct.anon.0 { i32 195, double 0x65C47D66A251FDC8, i64 0 }, %struct.anon.0 { i32 196, double 0x66067FB5C8283404, i64 0 }, %struct.anon.0 { i32 197, double 0x663F88FFF5D23096, i64 0 }, %struct.anon.0 { i32 198, double 0x668166C698CF183B, i64 0 }, %struct.anon.0 { i32 199, double 0x66B8837EF81663C4, i64 0 }, %struct.anon.0 { i32 200, double 0x66FB30964EC395DC, i64 0 }, %struct.anon.0 { i32 201, double 0x67333F3EB0C99455, i64 0 }, %struct.anon.0 { i32 202, double 0x677574569A265440, i64 0 }, %struct.anon.0 { i32 203, double 0x67AE864D6C5FB13F, i64 0 }, %struct.anon.0 { i32 204, double 0x67F118B502D68B23, i64 0 }, %struct.anon.0 { i32 205, double 0x6828718BFFC8A0F0, i64 0 }, %struct.anon.0 { i32 206, double 0x686B83C3509147EC, i64 0 }, %struct.anon.0 { i32 207, double 0x68A3C3D033D33A22, i64 0 }, %struct.anon.0 { i32 208, double 0x68E65B0EB1760A70, i64 0 }, %struct.anon.0 { i32 209, double 0x692022DCFA4F7276, i64 0 }, %struct.anon.0 { i32 210, double 0x696256B20D92D490, i64 0 }, %struct.anon.0 { i32 211, double 0x699A9978449EF6AE, i64 0 }, %struct.anon.0 { i32 212, double 0x69DE5F96E67B300E, i64 0 }, %struct.anon.0 { i32 213, double 0x6A1621B11118433F, i64 0 }, %struct.anon.0 { i32 214, double 0x6A5963E824AAFA2C, i64 0 }, %struct.anon.0 { i32 215, double 0x6A92964BB55B607A, i64 0 }, %struct.anon.0 { i32 216, double 0x6AD56C4BDEF04315, i64 0 }, %struct.anon.0 { i32 217, double 0x6B0F82CC5974E98E, i64 0 }, %struct.anon.0 { i32 218, double 0x6B523E389BD89920, i64 0 }, %struct.anon.0 { i32 219, double 0x6B8AF4E4D08703CD, i64 0 }, %struct.anon.0 { i32 220, double 0x6BCF5AF14BDC472F, i64 0 }, %struct.anon.0 { i32 221, double 0x6C07456988048E48, i64 0 }, %struct.anon.0 { i32 222, double 0x6C4B30DD3FC905BA, i64 0 }, %struct.anon.0 { i32 223, double 0x6C844576ED7BF7F0, i64 0 }, %struct.anon.0 { i32 224, double 0x6CC7CAC197CFE503, i64 0 }, %struct.anon.0 { i32 225, double 0x6D01D10D86B9F4EA, i64 0 }, %struct.anon.0 { i32 226, double 0x6D4500FEE805882D, i64 0 }, %struct.anon.0 { i32 227, double 0x6D7F98BDFCEDC857, i64 0 }, %struct.anon.0 { i32 228, double 0x6DC2B4E306A4ED48, i64 0 }, %struct.anon.0 { i32 229, double 0x6DFC43A1F340B436, i64 0 }, %struct.anon.0 { i32 230, double 0x6E40CE83F7F82D2F, i64 0 }, %struct.anon.0 { i32 231, double 0x6E798107227F629D, i64 0 }, %struct.anon.0 { i32 232, double 0x6EBE764F3171D1E4, i64 0 }, %struct.anon.0 { i32 233, double 0x6EF7366F7E65F0C1, i64 0 }, %struct.anon.0 { i32 234, double 0x6F3BD824633209DB, i64 0 }, %struct.anon.0 { i32 235, double 0x6F754EF859079401, i64 0 }, %struct.anon.0 { i32 236, double 0x6FB9AB418B722116, i64 0 }, %struct.anon.0 { i32 237, double 0x6FF3BA1BEA6C0405, i64 0 }, %struct.anon.0 { i32 238, double 0x7037DD36EFA41AC2, i64 0 }, %struct.anon.0 { i32 239, double 0x70726AC00FDAD7C1, i64 0 }, %struct.anon.0 { i32 240, double 0x70B65F6380A9D916, i64 0 }, %struct.anon.0 { i32 241, double 0x70F1567ECEED051C, i64 0 }, %struct.anon.0 { i32 242, double 0x7135262C0FA08F37, i64 0 }, %struct.anon.0 { i32 243, double 0x7170751A5E6AFBDA, i64 0 }, %struct.anon.0 { i32 244, double 0x71B42861FEE50880, i64 0 }, %struct.anon.0 { i32 245, double 0x71EF802478B8C60F, i64 0 }, %struct.anon.0 { i32 246, double 0x72335ECE2AF0162B, i64 0 }, %struct.anon.0 { i32 247, double 0x726E64A3307A4718, i64 0 }, %struct.anon.0 { i32 248, double 0x72B2C3D7B998957A, i64 0 }, %struct.anon.0 { i32 249, double 0x72ED8FE2BA26EF27, i64 0 }, %struct.anon.0 { i32 250, double 0x73325340AB3F01F9, i64 0 }, %struct.anon.0 { i32 251, double 0x736CFC134C842C7B, i64 0 }, %struct.anon.0 { i32 252, double 0x73B209F3A89205F1, i64 0 }, %struct.anon.0 { i32 253, double 0x73ECA51F129E9FF6, i64 0 }, %struct.anon.0 { i32 254, double 0x7431E5DFC140E1E5, i64 0 }, %struct.anon.0 { i32 255, double 0x746C8879F38C0156, i64 0 }, %struct.anon.0 { i32 256, double 0x74B1E5DFC140E1E5, i64 0 }, %struct.anon.0 { i32 257, double 0x74ECA5026D7F8D57, i64 0 }, %struct.anon.0 { i32 258, double 0x753209AB80C363A9, i64 0 }, %struct.anon.0 { i32 259, double 0x756CFAF174C80BFF, i64 0 }, %struct.anon.0 { i32 260, double 0x75B251D22EC67138, i64 0 }, %struct.anon.0 { i32 261, double 0x75ED8BD82C0FF43B, i64 0 }, %struct.anon.0 { i32 262, double 0x7632BFBD1BDF17DF, i64 0 }, %struct.anon.0 { i32 263, double 0x766E5AAB154463E9, i64 0 }, %struct.anon.0 { i32 264, double 0x76B355BB04BE109E, i64 0 }, %struct.anon.0 { i32 265, double 0x76EF6BDB1903CB6C, i64 0 }, %struct.anon.0 { i32 266, double 0x7734171452ED7D44, i64 0 }, %struct.anon.0 { i32 267, double 0x777062BEC18B7A95, i64 0 }, %struct.anon.0 { i32 268, double 0x77B5082946D09F23, i64 0 }, %struct.anon.0 { i32 269, double 0x77F137C2715F8FCE, i64 0 }, %struct.anon.0 { i32 270, double 0x78362E9B88B007D7, i64 0 }, %struct.anon.0 { i32 271, double 0x78723A06D604293B, i64 0 }, %struct.anon.0 { i32 272, double 0x78B79185413B0855, i64 0 }, %struct.anon.0 { i32 273, double 0x78F36FE14A3A6FF8, i64 0 }, %struct.anon.0 { i32 274, double 0x793939C09FD12EEB, i64 0 }, %struct.anon.0 { i32 275, double 0x7974E12F02BCC648, i64 0 }, %struct.anon.0 { i32 276, double 0x79BB3243AC4D8695, i64 0 }, %struct.anon.0 { i32 277, double 0x79F697A7DDF6428C, i64 0 }, %struct.anon.0 { i32 278, double 0x7A3D88957D1C3026, i64 0 }, %struct.anon.0 { i32 279, double 0x7A789F47F2E76286, i64 0 }, %struct.anon.0 { i32 280, double 0x7AC026B1C06B6A55, i64 0 }, %struct.anon.0 { i32 281, double 0x7AFB06D5F99FFB25, i64 0 }, %struct.anon.0 { i32 282, double 0x7B41CA9FCDF65321, i64 0 }, %struct.anon.0 { i32 283, double 0x7B7DE08E8AF3DAA2, i64 0 }, %struct.anon.0 { i32 284, double 0x7BC3BCC9487D4439, i64 0 }, %struct.anon.0 { i32 285, double 0x7C00A17F5858BD33, i64 0 }, %struct.anon.0 { i32 286, double 0x7C460CE8DEFBF238, i64 0 }, %struct.anon.0 { i32 287, double 0x7C82A50DC40B7C1C, i64 0 }, %struct.anon.0 { i32 288, double 0x7CC8CE85FADB707E, i64 0 }, %struct.anon.0 { i32 289, double 0x7D050C548A50F71C, i64 0 }, %struct.anon.0 { i32 290, double 0x7D4C19F3C62C956F, i64 0 }, %struct.anon.0 { i32 291, double 0x7D87ED04193A08E5, i64 0 }, %struct.anon.0 { i32 292, double 0x7DD006CD07056D39, i64 0 }, %struct.anon.0 { i32 293, double 0x7E0B6245B0DF6C2E, i64 0 }, %struct.anon.0 { i32 294, double 0x7E5267CF76103B70, i64 0 }, %struct.anon.0 { i32 295, double 0x7E8F8E3E4ED175A9, i64 0 }, %struct.anon.0 { i32 296, double 0x7ED54807E082C4B9, i64 0 }, %struct.anon.0 { i32 297, double 0x7F124E0324B880C1, i64 0 }], align 16, !dbg !160
@.str.6 = private unnamed_addr constant [26 x i8] c"gsl_sf_fact_e(n, &result)\00", align 1, !dbg !78
@.str.8 = private unnamed_addr constant [32 x i8] c"gsl_sf_doublefact_e(n, &result)\00", align 1, !dbg !88
@.str.10 = private unnamed_addr constant [29 x i8] c"gsl_sf_lngamma_e(x, &result)\00", align 1, !dbg !98
@.str.11 = private unnamed_addr constant [27 x i8] c"gsl_sf_gamma_e(x, &result)\00", align 1, !dbg !103
@.str.12 = private unnamed_addr constant [31 x i8] c"gsl_sf_gammastar_e(x, &result)\00", align 1, !dbg !108
@.str.13 = private unnamed_addr constant [30 x i8] c"gsl_sf_gammainv_e(x, &result)\00", align 1, !dbg !113
@.str.14 = private unnamed_addr constant [36 x i8] c"gsl_sf_taylorcoeff_e(n, x, &result)\00", align 1, !dbg !118
@.str.15 = private unnamed_addr constant [31 x i8] c"gsl_sf_choose_e(n, m, &result)\00", align 1, !dbg !123
@.str.16 = private unnamed_addr constant [33 x i8] c"gsl_sf_lnchoose_e(n, m, &result)\00", align 1, !dbg !125
@gamma_5_10_cs = internal constant %struct.cheb_series_struct { ptr @gamma_5_10_data, i32 23, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8, !dbg !133
@gamma_5_10_data = internal global [24 x double] [double 0xBFF874FAB62825BE, double 0x40134DBCB8D97F3D, double 0x3FCD279B946A2D6C, double 0xBF8C70AA4212C1F7, double 0x3F54D0CFB9E5F64F, double 0xBF2244F4822FD343, double 0x3EF1CB99099E27C5, double 0xBEC28BC539BD20D1, double 0x3E9443BCA367B4B2, double 0xBE66ED6C5C08AF38, double 0x3E3AA3E09EB5E757, double 0xBE0F9BE01E08A22F, double 0x3DE312068CAC5098, double 0xBDB754941B7A08B5, double 0x3D8CDECC43D55A84, double 0xBD620917265A01A2, double 0x3D36B805E0D9E4D5, double 0xBD0CD1D888CF99CF, double 0x3CE26400F6257D87, double 0xBCB7986E370BDBDE, double 0x3C8E69EA7944197D, double 0xBC63AE6B675E8304, double 0x3C39908EBC7CA0CA, double 0xBC10A82EF1780DA1], align 16, !dbg !146
@gstar_a_data = internal unnamed_addr constant [30 x double] [double 0x400157C954F0328A, double 0xBFAC548A4785D178, double 0x3F926F9EE88609E6, double 0xBF77CB614A3CD67D, double 0x3F5E8F5EDD9ED532, double 0xBF4393E6D5E99766, double 0x3F29115795EF9CF9, double 0xBF100E6A64F02A06, double 0x3EF497C6ADF7A5FF, double 0xBEDA73D8DF0564A5, double 0x3EC104F6FD906034, double 0xBEA5F085154BF8AB, double 0x3E8C54E4B78FD81D, double 0xBE7252D7323E32F6, double 0x3E57BD27AA16D962, double 0xBE3ECCA266A7D187, double 0x3E2401B8B648BF4B, double 0xBE0A06318BEA05FC, double 0x3DF0F1EDA17903A0, double 0xBDD616FD793E8444, double 0x3DBCD30A46547813, double 0xBDA2D2A299176931, double 0x3D889A78A828F0F0, double 0xBD701785B88FF505, double 0x3D55108F4E57F22B, double 0xBD3B978F2881B6E0, double 0x3D221483CF035DAB, double 0xBD07AF3C0C35F443, double 0x3CEEC129F6E1B1AD, double 0xBCD238CA994778F3], align 16, !dbg !153
@gstar_b_data = internal unnamed_addr constant [30 x double] [double 0x3F778D8D00889F45, double 0x3F3D78317304F3A1, double 0xBF25ECDC9B7D3F5F, double 0x3F10201D583A9DF9, double 0xBEF7759D2814174C, double 0x3EE0E2355A98F3FA, double 0xBEC80D11220E6B2E, double 0x3EB0F4CE643512E7, double 0xBE97AA93AA0BF960, double 0x3E8058BF2C3DD93B, double 0xBE665828E804E059, double 0x3E4E3505690FB4CA, double 0xBE342DC9CA557B41, double 0x3E1A9D1F8AF7616A, double 0xBE014C091C392ED9, double 0x3DE61B3657505C36, double 0xBDCBAE18513B151B, double 0x3DB0E2A7A2DFC4CB, double 0xBD93E4DFCC146048, double 0x3D76478D46414293, double 0xBD56F96487B27D04, double 0x3D342227BDB3009E, double 0xBD055AAD66748C7A, double 0xBCE4D4082640C439, double 0x3CE9961E7AFB73EF, double 0xBCDF1105F843F92A, double 0x3CCF2AF2955B8135, double 0xBCBC77ACB8980640, double 0x3CA82E7C0ECAD13D, double 0xBC916EDE756B86EF], align 16, !dbg !158

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lngamma_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !187 {
  %3 = alloca double, align 8, !DIAssignID !226
  call void @llvm.dbg.assign(metadata i1 undef, metadata !223, metadata !DIExpression(), metadata !226, metadata ptr %3, metadata !DIExpression()), !dbg !227
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !224, metadata !DIExpression(), metadata !228, metadata ptr %4, metadata !DIExpression()), !dbg !229
  tail call void @llvm.dbg.value(metadata double %0, metadata !198, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !199, metadata !DIExpression()), !dbg !230
  %5 = fadd double %0, -1.000000e+00, !dbg !231
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !232
  %7 = fcmp olt double %6, 1.000000e-02, !dbg !233
  br i1 %7, label %8, label %38, !dbg !234

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata double %5, metadata !235, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0xBFF007228B4CD147, metadata !242, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0x3FFBC8A35D2B114E, metadata !243, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0x3FF3E48F2C0326B5, metadata !244, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0x40142EB8F3A779B9, metadata !245, metadata !DIExpression()), !dbg !256
  %9 = fadd double %5, 0xBFF007228B4CD147, !dbg !258
  %10 = fadd double %5, 0x3FFBC8A35D2B114E, !dbg !259
  %11 = fmul double %9, %10, !dbg !260
  call void @llvm.dbg.value(metadata double %11, metadata !246, metadata !DIExpression()), !dbg !256
  %12 = fadd double %5, 0x3FF3E48F2C0326B5, !dbg !261
  %13 = fadd double %5, 0x40142EB8F3A779B9, !dbg !262
  %14 = fmul double %12, %13, !dbg !263
  call void @llvm.dbg.value(metadata double %14, metadata !247, metadata !DIExpression()), !dbg !256
  %15 = fmul double %11, 0x4000A72BCDE822B8, !dbg !264
  %16 = fdiv double %15, %14, !dbg !265
  call void @llvm.dbg.value(metadata double %16, metadata !248, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0x3F7399C6B2FE3C2E, metadata !249, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0xBF886BE8CE175C95, metadata !250, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0x3F93C8855B9A90B0, metadata !251, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0xBF9A901651B2B525, metadata !252, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0x3FA0163058FBCC17, metadata !253, metadata !DIExpression()), !dbg !256
  %17 = fmul double %5, %5, !dbg !266
  %18 = fmul double %5, %17, !dbg !267
  %19 = fmul double %5, %18, !dbg !268
  %20 = fmul double %5, %19, !dbg !269
  call void @llvm.dbg.value(metadata double %20, metadata !254, metadata !DIExpression()), !dbg !256
  %21 = fmul double %5, 0x3FA0163058FBCC17, !dbg !270
  %22 = fadd double %21, 0xBF9A901651B2B525, !dbg !271
  %23 = fmul double %5, %22, !dbg !272
  %24 = fadd double %23, 0x3F93C8855B9A90B0, !dbg !273
  %25 = fmul double %5, %24, !dbg !274
  %26 = fadd double %25, 0xBF886BE8CE175C95, !dbg !275
  %27 = fmul double %5, %26, !dbg !276
  %28 = fadd double %27, 0x3F7399C6B2FE3C2E, !dbg !277
  %29 = fmul double %20, %28, !dbg !278
  call void @llvm.dbg.value(metadata double %29, metadata !255, metadata !DIExpression()), !dbg !256
  %30 = fadd double %16, %29, !dbg !279
  %31 = fmul double %5, %30, !dbg !280
  store double %31, ptr %1, align 8, !dbg !281, !tbaa !282
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !287
  %33 = fmul double %32, 0x3CC0000000000000, !dbg !288
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !289
  tail call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()), !dbg !290
  %35 = fadd double %6, 0x3CB0000000000000, !dbg !291
  %36 = fdiv double 1.000000e+00, %35, !dbg !292
  %37 = fmul double %36, %33, !dbg !293
  store double %37, ptr %34, align 8, !dbg !293, !tbaa !294
  br label %188

38:                                               ; preds = %2
  %39 = fadd double %0, -2.000000e+00, !dbg !295
  %40 = tail call double @llvm.fabs.f64(double %39), !dbg !296
  %41 = fcmp olt double %40, 1.000000e-02, !dbg !297
  br i1 %41, label %42, label %72, !dbg !298

42:                                               ; preds = %38
  call void @llvm.dbg.value(metadata double %39, metadata !299, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata ptr %1, metadata !302, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double 0x3FF003AB59D1C825, metadata !303, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double 0x4010D666DADA6AA8, metadata !304, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double 0x4004F368A0A50351, metadata !305, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double 0x4025B71FF2054D90, metadata !306, metadata !DIExpression()), !dbg !317
  %43 = fadd double %39, 0x3FF003AB59D1C825, !dbg !319
  %44 = fadd double %39, 0x4010D666DADA6AA8, !dbg !320
  %45 = fmul double %43, %44, !dbg !321
  call void @llvm.dbg.value(metadata double %45, metadata !307, metadata !DIExpression()), !dbg !317
  %46 = fadd double %39, 0x4004F368A0A50351, !dbg !322
  %47 = fadd double %39, 0x4025B71FF2054D90, !dbg !323
  %48 = fmul double %46, %47, !dbg !324
  call void @llvm.dbg.value(metadata double %48, metadata !308, metadata !DIExpression()), !dbg !317
  %49 = fmul double %45, 0x4006D3B8E31068E4, !dbg !325
  %50 = fdiv double %49, %48, !dbg !326
  call void @llvm.dbg.value(metadata double %50, metadata !309, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double 0x3F1DDE6D37545B3B, metadata !310, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double 0xBF21E5A3F738F3CA, metadata !311, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double 0x3F1BFA716513D256, metadata !312, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double 0xBF122C77E28883CE, metadata !313, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double 0x3F0559A074362DA9, metadata !314, metadata !DIExpression()), !dbg !317
  %51 = fmul double %39, %39, !dbg !327
  %52 = fmul double %39, %51, !dbg !328
  %53 = fmul double %39, %52, !dbg !329
  %54 = fmul double %39, %53, !dbg !330
  call void @llvm.dbg.value(metadata double %54, metadata !315, metadata !DIExpression()), !dbg !317
  %55 = fmul double %39, 0x3F0559A074362DA9, !dbg !331
  %56 = fadd double %55, 0xBF122C77E28883CE, !dbg !332
  %57 = fmul double %39, %56, !dbg !333
  %58 = fadd double %57, 0x3F1BFA716513D256, !dbg !334
  %59 = fmul double %39, %58, !dbg !335
  %60 = fadd double %59, 0xBF21E5A3F738F3CA, !dbg !336
  %61 = fmul double %39, %60, !dbg !337
  %62 = fadd double %61, 0x3F1DDE6D37545B3B, !dbg !338
  %63 = fmul double %54, %62, !dbg !339
  call void @llvm.dbg.value(metadata double %63, metadata !316, metadata !DIExpression()), !dbg !317
  %64 = fadd double %50, %63, !dbg !340
  %65 = fmul double %39, %64, !dbg !341
  store double %65, ptr %1, align 8, !dbg !342, !tbaa !282
  %66 = tail call double @llvm.fabs.f64(double %65), !dbg !343
  %67 = fmul double %66, 0x3CC0000000000000, !dbg !344
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !345
  tail call void @llvm.dbg.value(metadata i32 0, metadata !203, metadata !DIExpression()), !dbg !346
  %69 = fadd double %40, 0x3CB0000000000000, !dbg !347
  %70 = fdiv double 1.000000e+00, %69, !dbg !348
  %71 = fmul double %70, %67, !dbg !349
  store double %71, ptr %68, align 8, !dbg !349, !tbaa !294
  br label %188

72:                                               ; preds = %38
  %73 = fcmp ult double %0, 5.000000e-01, !dbg !350
  br i1 %73, label %117, label %74, !dbg !351

74:                                               ; preds = %72
  call void @llvm.dbg.value(metadata double %0, metadata !352, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata ptr %1, metadata !356, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata double %5, metadata !352, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i64 1, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !358, metadata !DIExpression()), !dbg !361
  %75 = fadd double %5, 1.000000e+00, !dbg !364
  %76 = fdiv double 0x40852429B6C30B05, %75, !dbg !368
  %77 = fadd double %76, 0x3FEFFFFFFFFFF950, !dbg !369
  call void @llvm.dbg.value(metadata i64 2, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata double %77, metadata !358, metadata !DIExpression()), !dbg !361
  %78 = fadd double %5, 2.000000e+00, !dbg !364
  %79 = fdiv double 0x4093AC8E8ED4171B, %78, !dbg !368
  %80 = fsub double %77, %79, !dbg !369
  call void @llvm.dbg.value(metadata i64 3, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata double %80, metadata !358, metadata !DIExpression()), !dbg !361
  %81 = fadd double %5, 3.000000e+00, !dbg !364
  %82 = fdiv double 0x40881A9661D3B4D8, %81, !dbg !368
  %83 = fadd double %82, %80, !dbg !369
  call void @llvm.dbg.value(metadata i64 4, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata double %83, metadata !358, metadata !DIExpression()), !dbg !361
  %84 = fadd double %5, 4.000000e+00, !dbg !364
  %85 = fdiv double 0x406613AE51A32F5D, %84, !dbg !368
  %86 = fsub double %83, %85, !dbg !369
  call void @llvm.dbg.value(metadata i64 5, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata double %86, metadata !358, metadata !DIExpression()), !dbg !361
  %87 = fadd double %5, 5.000000e+00, !dbg !364
  %88 = fdiv double 0x402903C27F8B9C81, %87, !dbg !368
  %89 = fadd double %88, %86, !dbg !369
  call void @llvm.dbg.value(metadata i64 6, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata double %89, metadata !358, metadata !DIExpression()), !dbg !361
  %90 = fadd double %5, 6.000000e+00, !dbg !364
  %91 = fdiv double 0x3FC1BCB2992B2855, %90, !dbg !368
  %92 = fsub double %89, %91, !dbg !369
  call void @llvm.dbg.value(metadata i64 7, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata double %92, metadata !358, metadata !DIExpression()), !dbg !361
  %93 = fadd double %5, 7.000000e+00, !dbg !364
  %94 = fdiv double 0x3EE4F0514E4E324F, %93, !dbg !368
  %95 = fadd double %94, %92, !dbg !369
  call void @llvm.dbg.value(metadata i64 8, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata double %95, metadata !358, metadata !DIExpression()), !dbg !361
  %96 = fadd double %5, 8.000000e+00, !dbg !364
  %97 = fdiv double 0x3E8435508F3FAEEF, %96, !dbg !368
  %98 = fadd double %97, %95, !dbg !369
  call void @llvm.dbg.value(metadata double %98, metadata !358, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i64 9, metadata !357, metadata !DIExpression()), !dbg !361
  %99 = fadd double %5, 5.000000e-01, !dbg !370
  %100 = fadd double %5, 7.500000e+00, !dbg !371
  %101 = fdiv double %100, 0x4005BF0A8B145769, !dbg !372
  %102 = tail call double @log(double noundef %101) #9, !dbg !373
  %103 = fmul double %99, %102, !dbg !374
  call void @llvm.dbg.value(metadata double %103, metadata !359, metadata !DIExpression()), !dbg !361
  %104 = tail call double @log(double noundef %98) #9, !dbg !375
  %105 = fadd double %104, 0x3FED67F1C864BEB5, !dbg !376
  call void @llvm.dbg.value(metadata double %105, metadata !360, metadata !DIExpression()), !dbg !361
  %106 = fadd double %105, -7.000000e+00, !dbg !377
  %107 = fadd double %103, %106, !dbg !378
  store double %107, ptr %1, align 8, !dbg !379, !tbaa !282
  %108 = tail call double @llvm.fabs.f64(double %103), !dbg !380
  %109 = tail call double @llvm.fabs.f64(double %105), !dbg !381
  %110 = fadd double %108, %109, !dbg !382
  %111 = fadd double %110, 7.000000e+00, !dbg !383
  %112 = fmul double %111, 0x3CC0000000000000, !dbg !384
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !385
  %114 = tail call double @llvm.fabs.f64(double %107), !dbg !386
  %115 = fmul double %114, 0x3CB0000000000000, !dbg !387
  %116 = fadd double %112, %115, !dbg !388
  store double %116, ptr %113, align 8, !dbg !388, !tbaa !294
  br label %188, !dbg !389

117:                                              ; preds = %72
  %118 = fcmp oeq double %0, 0.000000e+00, !dbg !390
  br i1 %118, label %119, label %121, !dbg !391

119:                                              ; preds = %117
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !392, !tbaa !282
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !392
  store double 0x7FF8000000000000, ptr %120, align 8, !dbg !392, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1138, i32 noundef 1) #9, !dbg !395
  br label %188, !dbg !395

121:                                              ; preds = %117
  %122 = tail call double @llvm.fabs.f64(double %0), !dbg !397
  %123 = fcmp olt double %122, 2.000000e-02, !dbg !398
  br i1 %123, label %124, label %154, !dbg !399

124:                                              ; preds = %121
  call void @llvm.dbg.value(metadata double %0, metadata !400, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata ptr %1, metadata !405, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata ptr undef, metadata !406, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double 0xBFB3C467E37DB0C8, metadata !407, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double 0xBF8669CF713AA1E2, metadata !408, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double 0x3FB7AF73866DA4E8, metadata !409, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double 0xBF92B5DF55ED2958, metadata !410, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double 0x3F926FE278E930AE, metadata !411, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double 0xBF7C0FAC8A677A84, metadata !412, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double 0x3F7060754242E352, metadata !413, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double 0xBF5F094BD00128CE, metadata !414, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double 0x3F4FF0A5D7D0B01E, metadata !415, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double 0xBF3FBDF153D2EADD, metadata !416, metadata !DIExpression()), !dbg !420
  %125 = fmul double %0, 0x3F3FBDF153D2EADD, !dbg !422
  %126 = fsub double 0x3F4FF0A5D7D0B01E, %125, !dbg !423
  %127 = fmul double %126, %0, !dbg !424
  %128 = fadd double %127, 0xBF5F094BD00128CE, !dbg !425
  %129 = fmul double %128, %0, !dbg !426
  %130 = fadd double %129, 0x3F7060754242E352, !dbg !427
  %131 = fmul double %130, %0, !dbg !428
  %132 = fadd double %131, 0xBF7C0FAC8A677A84, !dbg !429
  call void @llvm.dbg.value(metadata double %132, metadata !417, metadata !DIExpression()), !dbg !420
  %133 = fmul double %132, %0, !dbg !430
  %134 = fadd double %133, 0x3F926FE278E930AE, !dbg !431
  %135 = fmul double %134, %0, !dbg !432
  %136 = fadd double %135, 0xBF92B5DF55ED2958, !dbg !433
  %137 = fmul double %136, %0, !dbg !434
  %138 = fadd double %137, 0x3FB7AF73866DA4E8, !dbg !435
  %139 = fmul double %138, %0, !dbg !436
  %140 = fadd double %139, 0xBF8669CF713AA1E2, !dbg !437
  %141 = fmul double %140, %0, !dbg !438
  %142 = fadd double %141, 0xBFB3C467E37DB0C8, !dbg !439
  %143 = fmul double %142, %0, !dbg !440
  call void @llvm.dbg.value(metadata double %143, metadata !418, metadata !DIExpression()), !dbg !420
  %144 = fadd double %0, 1.000000e+00, !dbg !441
  %145 = fdiv double 1.000000e+00, %144, !dbg !442
  %146 = fadd double %145, %143, !dbg !443
  %147 = fmul double %0, 5.000000e-01, !dbg !444
  %148 = fadd double %147, %146, !dbg !445
  call void @llvm.dbg.value(metadata double %148, metadata !419, metadata !DIExpression()), !dbg !420
  %149 = fdiv double %148, %122, !dbg !446
  %150 = tail call double @log(double noundef %149) #9, !dbg !447
  store double %150, ptr %1, align 8, !dbg !448, !tbaa !282
  %151 = tail call double @llvm.fabs.f64(double %150), !dbg !449
  %152 = fmul double %151, 0x3CD0000000000000, !dbg !450
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !451
  store double %152, ptr %153, align 8, !dbg !452, !tbaa !294
  tail call void @llvm.dbg.value(metadata double poison, metadata !206, metadata !DIExpression()), !dbg !453
  br label %188

154:                                              ; preds = %121
  %155 = fcmp ogt double %0, 0xC3045F306DC9C883, !dbg !454
  br i1 %155, label %156, label %187, !dbg !455

156:                                              ; preds = %154
  %157 = fsub double 1.000000e+00, %0, !dbg !456
  tail call void @llvm.dbg.value(metadata double %157, metadata !211, metadata !DIExpression()), !dbg !457
  %158 = fmul double %157, 0x400921FB54442D18, !dbg !458
  %159 = tail call double @sin(double noundef %158) #9, !dbg !459
  tail call void @llvm.dbg.value(metadata double %159, metadata !214, metadata !DIExpression()), !dbg !457
  %160 = tail call double @llvm.fabs.f64(double %159), !dbg !460
  tail call void @llvm.dbg.value(metadata double %160, metadata !215, metadata !DIExpression()), !dbg !457
  %161 = fcmp oeq double %159, 0.000000e+00, !dbg !461
  br i1 %161, label %162, label %164, !dbg !462

162:                                              ; preds = %156
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !463, !tbaa !282
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !463
  store double 0x7FF8000000000000, ptr %163, align 8, !dbg !463, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, i32 noundef 1) #9, !dbg !466
  br label %188, !dbg !466

164:                                              ; preds = %156
  %165 = fcmp olt double %160, 0x3FA8209F5B22BAA6, !dbg !468
  br i1 %165, label %166, label %176, !dbg !469

166:                                              ; preds = %164
  %167 = fcmp olt double %0, 0xC1DFFFFFFF800000, !dbg !470
  br i1 %167, label %168, label %169, !dbg !471

168:                                              ; preds = %166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !472
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1159, i32 noundef 18) #9, !dbg !474
  br label %188, !dbg !474

169:                                              ; preds = %166
  %170 = fadd double %0, -5.000000e-01, !dbg !476
  %171 = fptosi double %170 to i32, !dbg !477
  %172 = sub nsw i32 0, %171, !dbg !478
  tail call void @llvm.dbg.value(metadata i32 %172, metadata !216, metadata !DIExpression()), !dbg !227
  %173 = sitofp i32 %172 to double, !dbg !479
  %174 = fadd double %173, %0, !dbg !480
  tail call void @llvm.dbg.value(metadata double %174, metadata !222, metadata !DIExpression()), !dbg !227
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9, !dbg !481
  %175 = call fastcc i32 @lngamma_sgn_sing(i32 noundef %172, double noundef %174, ptr noundef %1, ptr noundef nonnull %3), !dbg !482, !range !483
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9, !dbg !484
  br label %188

176:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !485
  call fastcc void @lngamma_lanczos(double noundef %157, ptr noundef nonnull %4), !dbg !486
  %177 = tail call double @log(double noundef %160) #9, !dbg !487
  %178 = load double, ptr %4, align 8, !dbg !488, !tbaa !282
  %179 = fadd double %177, %178, !dbg !489
  %180 = fsub double 0x3FF250D048E7A1BD, %179, !dbg !490
  store double %180, ptr %1, align 8, !dbg !491, !tbaa !282
  %181 = tail call double @llvm.fabs.f64(double %180), !dbg !492
  %182 = fmul double %181, 0x3CC0000000000000, !dbg !493
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !494
  %184 = load double, ptr %183, align 8, !dbg !494, !tbaa !294
  %185 = fadd double %184, %182, !dbg !495
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !496
  store double %185, ptr %186, align 8, !dbg !497, !tbaa !294
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !498
  br label %188

187:                                              ; preds = %154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !499
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1180, i32 noundef 18) #9, !dbg !501
  br label %188, !dbg !501

188:                                              ; preds = %162, %168, %169, %176, %8, %42, %74, %119, %124, %187
  %189 = phi i32 [ 0, %8 ], [ 0, %42 ], [ 0, %74 ], [ 1, %119 ], [ 0, %124 ], [ 18, %187 ], [ 1, %162 ], [ 18, %168 ], [ %175, %169 ], [ 0, %176 ], !dbg !503
  ret i32 %189, !dbg !504
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc void @lngamma_lanczos(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !dbg !353 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !352, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !356, metadata !DIExpression()), !dbg !505
  %3 = fadd double %0, -1.000000e+00, !dbg !506
  tail call void @llvm.dbg.value(metadata double %3, metadata !352, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !358, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i32 1, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 1, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !358, metadata !DIExpression()), !dbg !505
  %4 = fadd double %3, 1.000000e+00, !dbg !507
  %5 = fdiv double 0x40852429B6C30B05, %4, !dbg !508
  %6 = fadd double %5, 0x3FEFFFFFFFFFF950, !dbg !509
  tail call void @llvm.dbg.value(metadata double %6, metadata !358, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 2, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 2, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double %6, metadata !358, metadata !DIExpression()), !dbg !505
  %7 = fadd double %3, 2.000000e+00, !dbg !507
  %8 = fdiv double 0xC093AC8E8ED4171B, %7, !dbg !508
  %9 = fadd double %6, %8, !dbg !509
  tail call void @llvm.dbg.value(metadata double %9, metadata !358, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 3, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 3, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double %9, metadata !358, metadata !DIExpression()), !dbg !505
  %10 = fadd double %3, 3.000000e+00, !dbg !507
  %11 = fdiv double 0x40881A9661D3B4D8, %10, !dbg !508
  %12 = fadd double %9, %11, !dbg !509
  tail call void @llvm.dbg.value(metadata double %12, metadata !358, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 4, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 4, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double %12, metadata !358, metadata !DIExpression()), !dbg !505
  %13 = fadd double %3, 4.000000e+00, !dbg !507
  %14 = fdiv double 0xC06613AE51A32F5D, %13, !dbg !508
  %15 = fadd double %12, %14, !dbg !509
  tail call void @llvm.dbg.value(metadata double %15, metadata !358, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 5, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 5, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double %15, metadata !358, metadata !DIExpression()), !dbg !505
  %16 = fadd double %3, 5.000000e+00, !dbg !507
  %17 = fdiv double 0x402903C27F8B9C81, %16, !dbg !508
  %18 = fadd double %15, %17, !dbg !509
  tail call void @llvm.dbg.value(metadata double %18, metadata !358, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 6, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 6, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double %18, metadata !358, metadata !DIExpression()), !dbg !505
  %19 = fadd double %3, 6.000000e+00, !dbg !507
  %20 = fdiv double 0xBFC1BCB2992B2855, %19, !dbg !508
  %21 = fadd double %18, %20, !dbg !509
  tail call void @llvm.dbg.value(metadata double %21, metadata !358, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 7, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 7, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double %21, metadata !358, metadata !DIExpression()), !dbg !505
  %22 = fadd double %3, 7.000000e+00, !dbg !507
  %23 = fdiv double 0x3EE4F0514E4E324F, %22, !dbg !508
  %24 = fadd double %21, %23, !dbg !509
  tail call void @llvm.dbg.value(metadata double %24, metadata !358, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 8, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 8, metadata !357, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double %24, metadata !358, metadata !DIExpression()), !dbg !505
  %25 = fadd double %3, 8.000000e+00, !dbg !507
  %26 = fdiv double 0x3E8435508F3FAEEF, %25, !dbg !508
  %27 = fadd double %24, %26, !dbg !509
  tail call void @llvm.dbg.value(metadata double %27, metadata !358, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 9, metadata !357, metadata !DIExpression()), !dbg !505
  %28 = fadd double %3, 5.000000e-01, !dbg !510
  %29 = fadd double %3, 7.500000e+00, !dbg !511
  %30 = fdiv double %29, 0x4005BF0A8B145769, !dbg !512
  %31 = tail call double @log(double noundef %30) #9, !dbg !513
  %32 = fmul double %28, %31, !dbg !514
  tail call void @llvm.dbg.value(metadata double %32, metadata !359, metadata !DIExpression()), !dbg !505
  %33 = tail call double @log(double noundef %27) #9, !dbg !515
  %34 = fadd double %33, 0x3FED67F1C864BEB5, !dbg !516
  tail call void @llvm.dbg.value(metadata double %34, metadata !360, metadata !DIExpression()), !dbg !505
  %35 = fadd double %34, -7.000000e+00, !dbg !517
  %36 = fadd double %32, %35, !dbg !518
  store double %36, ptr %1, align 8, !dbg !519, !tbaa !282
  %37 = tail call double @llvm.fabs.f64(double %32), !dbg !520
  %38 = tail call double @llvm.fabs.f64(double %34), !dbg !521
  %39 = fadd double %37, %38, !dbg !522
  %40 = fadd double %39, 7.000000e+00, !dbg !523
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !524
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !525
  %43 = tail call double @llvm.fabs.f64(double %36), !dbg !526
  %44 = fmul double %43, 0x3CB0000000000000, !dbg !527
  %45 = fadd double %41, %44, !dbg !528
  store double %45, ptr %42, align 8, !dbg !528, !tbaa !294
  ret void, !dbg !529
}

declare !dbg !530 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !535 double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @lngamma_sgn_sing(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !539 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !589
  call void @llvm.dbg.assign(metadata i1 undef, metadata !581, metadata !DIExpression(), metadata !589, metadata ptr %5, metadata !DIExpression()), !dbg !590
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !591
  call void @llvm.dbg.assign(metadata i1 undef, metadata !582, metadata !DIExpression(), metadata !591, metadata ptr %6, metadata !DIExpression()), !dbg !590
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !592
  call void @llvm.dbg.assign(metadata i1 undef, metadata !583, metadata !DIExpression(), metadata !592, metadata ptr %7, metadata !DIExpression()), !dbg !590
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !593
  call void @llvm.dbg.assign(metadata i1 undef, metadata !584, metadata !DIExpression(), metadata !593, metadata ptr %8, metadata !DIExpression()), !dbg !590
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !594
  call void @llvm.dbg.assign(metadata i1 undef, metadata !585, metadata !DIExpression(), metadata !594, metadata ptr %9, metadata !DIExpression()), !dbg !590
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !595
  call void @llvm.dbg.assign(metadata i1 undef, metadata !586, metadata !DIExpression(), metadata !595, metadata ptr %10, metadata !DIExpression()), !dbg !590
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !587, metadata !DIExpression(), metadata !596, metadata ptr %11, metadata !DIExpression()), !dbg !590
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !588, metadata !DIExpression(), metadata !597, metadata ptr %12, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !543, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double %1, metadata !544, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !545, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !546, metadata !DIExpression()), !dbg !598
  %13 = fcmp oeq double %1, 0.000000e+00, !dbg !599
  br i1 %13, label %14, label %15, !dbg !600

14:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !601
  store double 0.000000e+00, ptr %3, align 8, !dbg !603, !tbaa !604
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 769, i32 noundef 1) #9, !dbg !605
  br label %162, !dbg !605

15:                                               ; preds = %4
  %16 = icmp eq i32 %0, 1, !dbg !607
  br i1 %16, label %17, label %54, !dbg !608

17:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata double 0x3FB3C467E37DB0C8, metadata !547, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata double 0x3FB691A1D1A50504, metadata !551, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata double 0xBF71DD1B4C89FE46, metadata !552, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata double 0x3F8C7D310595538D, metadata !553, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata double 0xBF70C527D87A1B9F, metadata !554, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata double 0x3F66950963DABDCA, metadata !555, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata double 0xBF5457C2415611B5, metadata !556, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata double 0x3F4563131D562E32, metadata !557, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata double 0xBF351B2574F503D9, metadata !558, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata double 0x3F254597BDBBCE0A, metadata !559, metadata !DIExpression()), !dbg !609
  %18 = fmul double %1, 0x3F254597BDBBCE0A, !dbg !610
  %19 = fadd double %18, 0xBF351B2574F503D9, !dbg !611
  %20 = fmul double %19, %1, !dbg !612
  %21 = fadd double %20, 0x3F4563131D562E32, !dbg !613
  %22 = fmul double %21, %1, !dbg !614
  %23 = fadd double %22, 0xBF5457C2415611B5, !dbg !615
  %24 = fmul double %23, %1, !dbg !616
  %25 = fadd double %24, 0x3F66950963DABDCA, !dbg !617
  tail call void @llvm.dbg.value(metadata double %25, metadata !560, metadata !DIExpression()), !dbg !609
  %26 = fmul double %25, %1, !dbg !618
  %27 = fadd double %26, 0xBF70C527D87A1B9F, !dbg !619
  %28 = fmul double %27, %1, !dbg !620
  %29 = fadd double %28, 0x3F8C7D310595538D, !dbg !621
  %30 = fmul double %29, %1, !dbg !622
  %31 = fadd double %30, 0xBF71DD1B4C89FE46, !dbg !623
  %32 = fmul double %31, %1, !dbg !624
  %33 = fadd double %32, 0x3FB691A1D1A50504, !dbg !625
  %34 = fmul double %33, %1, !dbg !626
  %35 = fadd double %34, 0x3FB3C467E37DB0C8, !dbg !627
  %36 = fmul double %35, %1, !dbg !628
  tail call void @llvm.dbg.value(metadata double %36, metadata !561, metadata !DIExpression()), !dbg !609
  %37 = fadd double %36, -1.000000e+00, !dbg !629
  %38 = fmul double %1, 5.000000e-01, !dbg !630
  %39 = fmul double %1, 3.000000e+00, !dbg !631
  %40 = fadd double %39, 1.000000e+00, !dbg !632
  %41 = fmul double %38, %40, !dbg !633
  %42 = fmul double %1, %1, !dbg !634
  %43 = fsub double 1.000000e+00, %42, !dbg !635
  %44 = fdiv double %41, %43, !dbg !636
  %45 = fsub double %37, %44, !dbg !637
  tail call void @llvm.dbg.value(metadata double %45, metadata !562, metadata !DIExpression()), !dbg !609
  %46 = fdiv double %45, %1, !dbg !638
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !638
  %48 = tail call double @log(double noundef %47) #9, !dbg !639
  store double %48, ptr %2, align 8, !dbg !640, !tbaa !282
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !641
  %50 = fmul double %49, 0x3CC0000000000000, !dbg !642
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !643
  store double %50, ptr %51, align 8, !dbg !644, !tbaa !294
  %52 = fcmp ogt double %1, 0.000000e+00, !dbg !645
  %53 = select i1 %52, double -1.000000e+00, double 1.000000e+00, !dbg !646
  store double %53, ptr %3, align 8, !dbg !647, !tbaa !604
  br label %162

54:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata double 0xBFFA51A6625307D3, metadata !565, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 0x3FE9F9CB402BC46C, metadata !566, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 0xBFC86A8E4720DB67, metadata !567, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 0x3F9AC6805CF350A6, metadata !568, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 0xBF633816AA4607AB, metadata !569, metadata !DIExpression()), !dbg !590
  %55 = fmul double %1, %1, !dbg !648
  tail call void @llvm.dbg.value(metadata double %55, metadata !570, metadata !DIExpression()), !dbg !590
  %56 = fmul double %55, 0x3F633816AA4607AB, !dbg !649
  %57 = fsub double 0x3F9AC6805CF350A6, %56, !dbg !650
  %58 = fmul double %55, %57, !dbg !651
  %59 = fadd double %58, 0xBFC86A8E4720DB67, !dbg !652
  %60 = fmul double %55, %59, !dbg !653
  %61 = fadd double %60, 0x3FE9F9CB402BC46C, !dbg !654
  %62 = fmul double %55, %61, !dbg !655
  %63 = fadd double %62, 0xBFFA51A6625307D3, !dbg !656
  %64 = fmul double %55, %63, !dbg !657
  %65 = fadd double %64, 1.000000e+00, !dbg !658
  tail call void @llvm.dbg.value(metadata double %65, metadata !571, metadata !DIExpression()), !dbg !590
  %66 = tail call double @llvm.fabs.f64(double %1), !dbg !659
  tail call void @llvm.dbg.value(metadata double %66, metadata !572, metadata !DIExpression()), !dbg !590
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !660
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !661
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !662
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9, !dbg !663
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9, !dbg !664
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9, !dbg !665
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9, !dbg !666
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9, !dbg !667
  store double 0.000000e+00, ptr %8, align 8, !dbg !668, !tbaa !282, !DIAssignID !669
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !584, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !669, metadata ptr %8, metadata !DIExpression()), !dbg !590
  store double 0.000000e+00, ptr %9, align 8, !dbg !670, !tbaa !282, !DIAssignID !671
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !585, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !671, metadata ptr %9, metadata !DIExpression()), !dbg !590
  store double 0.000000e+00, ptr %10, align 8, !dbg !672, !tbaa !282, !DIAssignID !673
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !586, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !673, metadata ptr %10, metadata !DIExpression()), !dbg !590
  store double 0.000000e+00, ptr %11, align 8, !dbg !674, !tbaa !282, !DIAssignID !675
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !587, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !675, metadata ptr %11, metadata !DIExpression()), !dbg !590
  store double 0.000000e+00, ptr %12, align 8, !dbg !676, !tbaa !282, !DIAssignID !677
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !588, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !677, metadata ptr %12, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i32 %0, metadata !678, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata ptr %5, metadata !685, metadata !DIExpression()), !dbg !686
  %67 = icmp ult i32 %0, 171, !dbg !688
  br i1 %67, label %68, label %76, !dbg !690

68:                                               ; preds = %54
  %69 = zext nneg i32 %0 to i64, !dbg !691
  %70 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %69, i32 1, !dbg !693
  %71 = load double, ptr %70, align 8, !dbg !693, !tbaa !694
  %72 = tail call double @log(double noundef %71) #9, !dbg !698
  store double %72, ptr %5, align 8, !dbg !699, !tbaa !282, !DIAssignID !700
  call void @llvm.dbg.assign(metadata double %72, metadata !581, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !700, metadata ptr %5, metadata !DIExpression()), !dbg !590
  %73 = tail call double @llvm.fabs.f64(double %72), !dbg !701
  %74 = fmul double %73, 0x3CC0000000000000, !dbg !702
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !703
  store double %74, ptr %75, align 8, !dbg !704, !tbaa !294, !DIAssignID !705
  call void @llvm.dbg.assign(metadata double %74, metadata !581, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !705, metadata ptr %75, metadata !DIExpression()), !dbg !590
  br label %80, !dbg !706

76:                                               ; preds = %54
  %77 = uitofp i32 %0 to double, !dbg !707
  %78 = fadd double %77, 1.000000e+00, !dbg !709
  %79 = call i32 @gsl_sf_lngamma_e(double noundef %78, ptr noundef nonnull %5), !dbg !710, !range !711
  br label %80, !dbg !712

80:                                               ; preds = %68, %76
  %81 = add nsw i32 %0, 1, !dbg !713
  %82 = call i32 @gsl_sf_psi_int_e(i32 noundef %81, ptr noundef nonnull %6) #9, !dbg !714
  %83 = call i32 @gsl_sf_psi_1_int_e(i32 noundef %81, ptr noundef nonnull %7) #9, !dbg !715
  %84 = fcmp ogt double %66, 1.000000e-05, !dbg !716
  br i1 %84, label %85, label %89, !dbg !718

85:                                               ; preds = %80
  %86 = sitofp i32 %0 to double, !dbg !719
  %87 = fadd double %86, 1.000000e+00, !dbg !720
  %88 = call i32 @gsl_sf_psi_n_e(i32 noundef 2, double noundef %87, ptr noundef nonnull %8) #9, !dbg !721
  br label %89, !dbg !721

89:                                               ; preds = %85, %80
  %90 = fcmp ogt double %66, 2.000000e-04, !dbg !722
  br i1 %90, label %91, label %95, !dbg !724

91:                                               ; preds = %89
  %92 = sitofp i32 %0 to double, !dbg !725
  %93 = fadd double %92, 1.000000e+00, !dbg !726
  %94 = call i32 @gsl_sf_psi_n_e(i32 noundef 3, double noundef %93, ptr noundef nonnull %9) #9, !dbg !727
  br label %95, !dbg !727

95:                                               ; preds = %91, %89
  %96 = fcmp ogt double %66, 1.000000e-03, !dbg !728
  br i1 %96, label %97, label %101, !dbg !730

97:                                               ; preds = %95
  %98 = sitofp i32 %0 to double, !dbg !731
  %99 = fadd double %98, 1.000000e+00, !dbg !732
  %100 = call i32 @gsl_sf_psi_n_e(i32 noundef 4, double noundef %99, ptr noundef nonnull %10) #9, !dbg !733
  br label %101, !dbg !733

101:                                              ; preds = %97, %95
  %102 = fcmp ogt double %66, 5.000000e-03, !dbg !734
  br i1 %102, label %103, label %107, !dbg !736

103:                                              ; preds = %101
  %104 = sitofp i32 %0 to double, !dbg !737
  %105 = fadd double %104, 1.000000e+00, !dbg !738
  %106 = call i32 @gsl_sf_psi_n_e(i32 noundef 5, double noundef %105, ptr noundef nonnull %11) #9, !dbg !739
  br label %107, !dbg !739

107:                                              ; preds = %103, %101
  %108 = fcmp ogt double %66, 1.000000e-02, !dbg !740
  br i1 %108, label %109, label %114, !dbg !742

109:                                              ; preds = %107
  %110 = sitofp i32 %0 to double, !dbg !743
  %111 = fadd double %110, 1.000000e+00, !dbg !744
  %112 = call i32 @gsl_sf_psi_n_e(i32 noundef 6, double noundef %111, ptr noundef nonnull %12) #9, !dbg !745
  %113 = load double, ptr %12, align 8, !dbg !746, !tbaa !282
  br label %114, !dbg !745

114:                                              ; preds = %109, %107
  %115 = phi double [ %113, %109 ], [ 0.000000e+00, %107 ], !dbg !746
  %116 = load double, ptr %6, align 8, !dbg !747, !tbaa !282
  tail call void @llvm.dbg.value(metadata double %116, metadata !573, metadata !DIExpression()), !dbg !590
  %117 = load double, ptr %7, align 8, !dbg !748, !tbaa !282
  %118 = fmul double %117, 5.000000e-01, !dbg !749
  tail call void @llvm.dbg.value(metadata double %118, metadata !574, metadata !DIExpression()), !dbg !590
  %119 = load double, ptr %8, align 8, !dbg !750, !tbaa !282
  %120 = fdiv double %119, 6.000000e+00, !dbg !751
  tail call void @llvm.dbg.value(metadata double %120, metadata !575, metadata !DIExpression()), !dbg !590
  %121 = load double, ptr %9, align 8, !dbg !752, !tbaa !282
  %122 = fdiv double %121, 2.400000e+01, !dbg !753
  tail call void @llvm.dbg.value(metadata double %122, metadata !576, metadata !DIExpression()), !dbg !590
  %123 = load double, ptr %10, align 8, !dbg !754, !tbaa !282
  %124 = fdiv double %123, 1.200000e+02, !dbg !755
  tail call void @llvm.dbg.value(metadata double %124, metadata !577, metadata !DIExpression()), !dbg !590
  %125 = load double, ptr %11, align 8, !dbg !756, !tbaa !282
  %126 = fdiv double %125, 7.200000e+02, !dbg !757
  tail call void @llvm.dbg.value(metadata double %126, metadata !578, metadata !DIExpression()), !dbg !590
  %127 = fdiv double %115, 5.040000e+03, !dbg !758
  tail call void @llvm.dbg.value(metadata double %127, metadata !579, metadata !DIExpression()), !dbg !590
  %128 = load double, ptr %5, align 8, !dbg !759, !tbaa !282
  %129 = fmul double %127, %1, !dbg !760
  %130 = fsub double %126, %129, !dbg !761
  %131 = fmul double %130, %1, !dbg !762
  %132 = fsub double %124, %131, !dbg !763
  %133 = fmul double %132, %1, !dbg !764
  %134 = fsub double %122, %133, !dbg !765
  %135 = fmul double %134, %1, !dbg !766
  %136 = fsub double %120, %135, !dbg !767
  %137 = fmul double %136, %1, !dbg !768
  %138 = fsub double %118, %137, !dbg !769
  %139 = fmul double %138, %1, !dbg !770
  %140 = fsub double %116, %139, !dbg !771
  %141 = fmul double %140, %1, !dbg !772
  %142 = fsub double %128, %141, !dbg !773
  tail call void @llvm.dbg.value(metadata double %142, metadata !580, metadata !DIExpression()), !dbg !590
  %143 = fneg double %142, !dbg !774
  %144 = call double @log(double noundef %65) #9, !dbg !775
  %145 = fsub double %143, %144, !dbg !776
  tail call void @llvm.dbg.value(metadata double %145, metadata !563, metadata !DIExpression()), !dbg !590
  %146 = call double @log(double noundef %66) #9, !dbg !777
  %147 = fsub double %145, %146, !dbg !778
  store double %147, ptr %2, align 8, !dbg !779, !tbaa !282
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !780
  %149 = load double, ptr %148, align 8, !dbg !780, !tbaa !294
  %150 = call double @llvm.fabs.f64(double %145), !dbg !781
  %151 = call double @llvm.fabs.f64(double %147), !dbg !782
  %152 = fadd double %150, %151, !dbg !783
  %153 = fmul double %152, 0x3CC0000000000000, !dbg !784
  %154 = fadd double %149, %153, !dbg !785
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !786
  store double %154, ptr %155, align 8, !dbg !787, !tbaa !294
  %156 = and i32 %0, 1, !dbg !788
  %157 = icmp eq i32 %156, 0, !dbg !788
  %158 = fcmp ogt double %1, 0.000000e+00, !dbg !789
  %159 = select i1 %158, double 1.000000e+00, double -1.000000e+00, !dbg !790
  %160 = fneg double %159, !dbg !791
  %161 = select i1 %157, double %159, double %160, !dbg !791
  store double %161, ptr %3, align 8, !dbg !792, !tbaa !604
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9, !dbg !793
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9, !dbg !793
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9, !dbg !793
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9, !dbg !793
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9, !dbg !793
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !793
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !793
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !793
  br label %162

162:                                              ; preds = %14, %17, %114
  %163 = phi i32 [ 1, %14 ], [ 0, %17 ], [ 0, %114 ], !dbg !794
  ret i32 %163, !dbg !795
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !796 double @log(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !797 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !825
  call void @llvm.dbg.assign(metadata i1 undef, metadata !823, metadata !DIExpression(), metadata !825, metadata ptr %4, metadata !DIExpression()), !dbg !826
  tail call void @llvm.dbg.value(metadata double %0, metadata !799, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !800, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !801, metadata !DIExpression()), !dbg !827
  %5 = fadd double %0, -1.000000e+00, !dbg !828
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !829
  %7 = fcmp olt double %6, 1.000000e-02, !dbg !830
  br i1 %7, label %8, label %38, !dbg !831

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata double %5, metadata !235, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double 0xBFF007228B4CD147, metadata !242, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double 0x3FFBC8A35D2B114E, metadata !243, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double 0x3FF3E48F2C0326B5, metadata !244, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double 0x40142EB8F3A779B9, metadata !245, metadata !DIExpression()), !dbg !832
  %9 = fadd double %5, 0xBFF007228B4CD147, !dbg !834
  %10 = fadd double %5, 0x3FFBC8A35D2B114E, !dbg !835
  %11 = fmul double %9, %10, !dbg !836
  call void @llvm.dbg.value(metadata double %11, metadata !246, metadata !DIExpression()), !dbg !832
  %12 = fadd double %5, 0x3FF3E48F2C0326B5, !dbg !837
  %13 = fadd double %5, 0x40142EB8F3A779B9, !dbg !838
  %14 = fmul double %12, %13, !dbg !839
  call void @llvm.dbg.value(metadata double %14, metadata !247, metadata !DIExpression()), !dbg !832
  %15 = fmul double %11, 0x4000A72BCDE822B8, !dbg !840
  %16 = fdiv double %15, %14, !dbg !841
  call void @llvm.dbg.value(metadata double %16, metadata !248, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double 0x3F7399C6B2FE3C2E, metadata !249, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double 0xBF886BE8CE175C95, metadata !250, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double 0x3F93C8855B9A90B0, metadata !251, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double 0xBF9A901651B2B525, metadata !252, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double 0x3FA0163058FBCC17, metadata !253, metadata !DIExpression()), !dbg !832
  %17 = fmul double %5, %5, !dbg !842
  %18 = fmul double %5, %17, !dbg !843
  %19 = fmul double %5, %18, !dbg !844
  %20 = fmul double %5, %19, !dbg !845
  call void @llvm.dbg.value(metadata double %20, metadata !254, metadata !DIExpression()), !dbg !832
  %21 = fmul double %5, 0x3FA0163058FBCC17, !dbg !846
  %22 = fadd double %21, 0xBF9A901651B2B525, !dbg !847
  %23 = fmul double %5, %22, !dbg !848
  %24 = fadd double %23, 0x3F93C8855B9A90B0, !dbg !849
  %25 = fmul double %5, %24, !dbg !850
  %26 = fadd double %25, 0xBF886BE8CE175C95, !dbg !851
  %27 = fmul double %5, %26, !dbg !852
  %28 = fadd double %27, 0x3F7399C6B2FE3C2E, !dbg !853
  %29 = fmul double %20, %28, !dbg !854
  call void @llvm.dbg.value(metadata double %29, metadata !255, metadata !DIExpression()), !dbg !832
  %30 = fadd double %16, %29, !dbg !855
  %31 = fmul double %5, %30, !dbg !856
  store double %31, ptr %1, align 8, !dbg !857, !tbaa !282
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !858
  %33 = fmul double %32, 0x3CC0000000000000, !dbg !859
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !860
  tail call void @llvm.dbg.value(metadata i32 0, metadata !802, metadata !DIExpression()), !dbg !861
  %35 = fadd double %6, 0x3CB0000000000000, !dbg !862
  %36 = fdiv double 1.000000e+00, %35, !dbg !863
  %37 = fmul double %36, %33, !dbg !864
  store double %37, ptr %34, align 8, !dbg !864, !tbaa !294
  store double 1.000000e+00, ptr %2, align 8, !dbg !865, !tbaa !604
  br label %192

38:                                               ; preds = %3
  %39 = fadd double %0, -2.000000e+00, !dbg !866
  %40 = tail call double @llvm.fabs.f64(double %39), !dbg !867
  %41 = fcmp olt double %40, 1.000000e-02, !dbg !868
  br i1 %41, label %42, label %72, !dbg !869

42:                                               ; preds = %38
  call void @llvm.dbg.value(metadata double %39, metadata !299, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata ptr %1, metadata !302, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double 0x3FF003AB59D1C825, metadata !303, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double 0x4010D666DADA6AA8, metadata !304, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double 0x4004F368A0A50351, metadata !305, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double 0x4025B71FF2054D90, metadata !306, metadata !DIExpression()), !dbg !870
  %43 = fadd double %39, 0x3FF003AB59D1C825, !dbg !872
  %44 = fadd double %39, 0x4010D666DADA6AA8, !dbg !873
  %45 = fmul double %43, %44, !dbg !874
  call void @llvm.dbg.value(metadata double %45, metadata !307, metadata !DIExpression()), !dbg !870
  %46 = fadd double %39, 0x4004F368A0A50351, !dbg !875
  %47 = fadd double %39, 0x4025B71FF2054D90, !dbg !876
  %48 = fmul double %46, %47, !dbg !877
  call void @llvm.dbg.value(metadata double %48, metadata !308, metadata !DIExpression()), !dbg !870
  %49 = fmul double %45, 0x4006D3B8E31068E4, !dbg !878
  %50 = fdiv double %49, %48, !dbg !879
  call void @llvm.dbg.value(metadata double %50, metadata !309, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double 0x3F1DDE6D37545B3B, metadata !310, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double 0xBF21E5A3F738F3CA, metadata !311, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double 0x3F1BFA716513D256, metadata !312, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double 0xBF122C77E28883CE, metadata !313, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata double 0x3F0559A074362DA9, metadata !314, metadata !DIExpression()), !dbg !870
  %51 = fmul double %39, %39, !dbg !880
  %52 = fmul double %39, %51, !dbg !881
  %53 = fmul double %39, %52, !dbg !882
  %54 = fmul double %39, %53, !dbg !883
  call void @llvm.dbg.value(metadata double %54, metadata !315, metadata !DIExpression()), !dbg !870
  %55 = fmul double %39, 0x3F0559A074362DA9, !dbg !884
  %56 = fadd double %55, 0xBF122C77E28883CE, !dbg !885
  %57 = fmul double %39, %56, !dbg !886
  %58 = fadd double %57, 0x3F1BFA716513D256, !dbg !887
  %59 = fmul double %39, %58, !dbg !888
  %60 = fadd double %59, 0xBF21E5A3F738F3CA, !dbg !889
  %61 = fmul double %39, %60, !dbg !890
  %62 = fadd double %61, 0x3F1DDE6D37545B3B, !dbg !891
  %63 = fmul double %54, %62, !dbg !892
  call void @llvm.dbg.value(metadata double %63, metadata !316, metadata !DIExpression()), !dbg !870
  %64 = fadd double %50, %63, !dbg !893
  %65 = fmul double %39, %64, !dbg !894
  store double %65, ptr %1, align 8, !dbg !895, !tbaa !282
  %66 = tail call double @llvm.fabs.f64(double %65), !dbg !896
  %67 = fmul double %66, 0x3CC0000000000000, !dbg !897
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !898
  tail call void @llvm.dbg.value(metadata i32 0, metadata !805, metadata !DIExpression()), !dbg !899
  %69 = fadd double %40, 0x3CB0000000000000, !dbg !900
  %70 = fdiv double 1.000000e+00, %69, !dbg !901
  %71 = fmul double %70, %67, !dbg !902
  store double %71, ptr %68, align 8, !dbg !902, !tbaa !294
  store double 1.000000e+00, ptr %2, align 8, !dbg !903, !tbaa !604
  br label %192

72:                                               ; preds = %38
  %73 = fcmp ult double %0, 5.000000e-01, !dbg !904
  br i1 %73, label %117, label %74, !dbg !905

74:                                               ; preds = %72
  store double 1.000000e+00, ptr %2, align 8, !dbg !906, !tbaa !604
  call void @llvm.dbg.value(metadata double %0, metadata !352, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr %1, metadata !356, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double %5, metadata !352, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !358, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 1, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 1, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !358, metadata !DIExpression()), !dbg !908
  %75 = fadd double %5, 1.000000e+00, !dbg !910
  %76 = fdiv double 0x40852429B6C30B05, %75, !dbg !911
  %77 = fadd double %76, 0x3FEFFFFFFFFFF950, !dbg !912
  call void @llvm.dbg.value(metadata double %77, metadata !358, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 2, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 2, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double %77, metadata !358, metadata !DIExpression()), !dbg !908
  %78 = fadd double %5, 2.000000e+00, !dbg !910
  %79 = fdiv double 0x4093AC8E8ED4171B, %78, !dbg !911
  %80 = fsub double %77, %79, !dbg !912
  call void @llvm.dbg.value(metadata double %80, metadata !358, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 3, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 3, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double %80, metadata !358, metadata !DIExpression()), !dbg !908
  %81 = fadd double %5, 3.000000e+00, !dbg !910
  %82 = fdiv double 0x40881A9661D3B4D8, %81, !dbg !911
  %83 = fadd double %82, %80, !dbg !912
  call void @llvm.dbg.value(metadata double %83, metadata !358, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 4, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 4, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double %83, metadata !358, metadata !DIExpression()), !dbg !908
  %84 = fadd double %5, 4.000000e+00, !dbg !910
  %85 = fdiv double 0x406613AE51A32F5D, %84, !dbg !911
  %86 = fsub double %83, %85, !dbg !912
  call void @llvm.dbg.value(metadata double %86, metadata !358, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 5, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 5, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double %86, metadata !358, metadata !DIExpression()), !dbg !908
  %87 = fadd double %5, 5.000000e+00, !dbg !910
  %88 = fdiv double 0x402903C27F8B9C81, %87, !dbg !911
  %89 = fadd double %88, %86, !dbg !912
  call void @llvm.dbg.value(metadata double %89, metadata !358, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 6, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 6, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double %89, metadata !358, metadata !DIExpression()), !dbg !908
  %90 = fadd double %5, 6.000000e+00, !dbg !910
  %91 = fdiv double 0x3FC1BCB2992B2855, %90, !dbg !911
  %92 = fsub double %89, %91, !dbg !912
  call void @llvm.dbg.value(metadata double %92, metadata !358, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 7, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 7, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double %92, metadata !358, metadata !DIExpression()), !dbg !908
  %93 = fadd double %5, 7.000000e+00, !dbg !910
  %94 = fdiv double 0x3EE4F0514E4E324F, %93, !dbg !911
  %95 = fadd double %94, %92, !dbg !912
  call void @llvm.dbg.value(metadata double %95, metadata !358, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 8, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 8, metadata !357, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double %95, metadata !358, metadata !DIExpression()), !dbg !908
  %96 = fadd double %5, 8.000000e+00, !dbg !910
  %97 = fdiv double 0x3E8435508F3FAEEF, %96, !dbg !911
  %98 = fadd double %97, %95, !dbg !912
  call void @llvm.dbg.value(metadata double %98, metadata !358, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i64 9, metadata !357, metadata !DIExpression()), !dbg !908
  %99 = fadd double %5, 5.000000e-01, !dbg !913
  %100 = fadd double %5, 7.500000e+00, !dbg !914
  %101 = fdiv double %100, 0x4005BF0A8B145769, !dbg !915
  %102 = tail call double @log(double noundef %101) #9, !dbg !916
  %103 = fmul double %99, %102, !dbg !917
  call void @llvm.dbg.value(metadata double %103, metadata !359, metadata !DIExpression()), !dbg !908
  %104 = tail call double @log(double noundef %98) #9, !dbg !918
  %105 = fadd double %104, 0x3FED67F1C864BEB5, !dbg !919
  call void @llvm.dbg.value(metadata double %105, metadata !360, metadata !DIExpression()), !dbg !908
  %106 = fadd double %105, -7.000000e+00, !dbg !920
  %107 = fadd double %103, %106, !dbg !921
  store double %107, ptr %1, align 8, !dbg !922, !tbaa !282
  %108 = tail call double @llvm.fabs.f64(double %103), !dbg !923
  %109 = tail call double @llvm.fabs.f64(double %105), !dbg !924
  %110 = fadd double %108, %109, !dbg !925
  %111 = fadd double %110, 7.000000e+00, !dbg !926
  %112 = fmul double %111, 0x3CC0000000000000, !dbg !927
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !928
  %114 = tail call double @llvm.fabs.f64(double %107), !dbg !929
  %115 = fmul double %114, 0x3CB0000000000000, !dbg !930
  %116 = fadd double %112, %115, !dbg !931
  store double %116, ptr %113, align 8, !dbg !931, !tbaa !294
  br label %192, !dbg !932

117:                                              ; preds = %72
  %118 = fcmp oeq double %0, 0.000000e+00, !dbg !933
  br i1 %118, label %119, label %121, !dbg !934

119:                                              ; preds = %117
  store double 0.000000e+00, ptr %2, align 8, !dbg !935, !tbaa !604
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !937, !tbaa !282
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !937
  store double 0x7FF8000000000000, ptr %120, align 8, !dbg !937, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1205, i32 noundef 1) #9, !dbg !939
  br label %192, !dbg !939

121:                                              ; preds = %117
  %122 = tail call double @llvm.fabs.f64(double %0), !dbg !941
  %123 = fcmp olt double %122, 2.000000e-02, !dbg !942
  br i1 %123, label %124, label %156, !dbg !943

124:                                              ; preds = %121
  call void @llvm.dbg.value(metadata double %0, metadata !400, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata ptr %1, metadata !405, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata ptr %2, metadata !406, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata double 0xBFB3C467E37DB0C8, metadata !407, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata double 0xBF8669CF713AA1E2, metadata !408, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata double 0x3FB7AF73866DA4E8, metadata !409, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata double 0xBF92B5DF55ED2958, metadata !410, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata double 0x3F926FE278E930AE, metadata !411, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata double 0xBF7C0FAC8A677A84, metadata !412, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata double 0x3F7060754242E352, metadata !413, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata double 0xBF5F094BD00128CE, metadata !414, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata double 0x3F4FF0A5D7D0B01E, metadata !415, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata double 0xBF3FBDF153D2EADD, metadata !416, metadata !DIExpression()), !dbg !944
  %125 = fmul double %0, 0x3F3FBDF153D2EADD, !dbg !947
  %126 = fsub double 0x3F4FF0A5D7D0B01E, %125, !dbg !948
  %127 = fmul double %126, %0, !dbg !949
  %128 = fadd double %127, 0xBF5F094BD00128CE, !dbg !950
  %129 = fmul double %128, %0, !dbg !951
  %130 = fadd double %129, 0x3F7060754242E352, !dbg !952
  %131 = fmul double %130, %0, !dbg !953
  %132 = fadd double %131, 0xBF7C0FAC8A677A84, !dbg !954
  call void @llvm.dbg.value(metadata double %132, metadata !417, metadata !DIExpression()), !dbg !944
  %133 = fmul double %132, %0, !dbg !955
  %134 = fadd double %133, 0x3F926FE278E930AE, !dbg !956
  %135 = fmul double %134, %0, !dbg !957
  %136 = fadd double %135, 0xBF92B5DF55ED2958, !dbg !958
  %137 = fmul double %136, %0, !dbg !959
  %138 = fadd double %137, 0x3FB7AF73866DA4E8, !dbg !960
  %139 = fmul double %138, %0, !dbg !961
  %140 = fadd double %139, 0xBF8669CF713AA1E2, !dbg !962
  %141 = fmul double %140, %0, !dbg !963
  %142 = fadd double %141, 0xBFB3C467E37DB0C8, !dbg !964
  %143 = fmul double %142, %0, !dbg !965
  call void @llvm.dbg.value(metadata double %143, metadata !418, metadata !DIExpression()), !dbg !944
  %144 = fadd double %0, 1.000000e+00, !dbg !966
  %145 = fdiv double 1.000000e+00, %144, !dbg !967
  %146 = fadd double %145, %143, !dbg !968
  %147 = fmul double %0, 5.000000e-01, !dbg !969
  %148 = fadd double %147, %146, !dbg !970
  call void @llvm.dbg.value(metadata double %148, metadata !419, metadata !DIExpression()), !dbg !944
  %149 = fdiv double %148, %122, !dbg !971
  %150 = tail call double @log(double noundef %149) #9, !dbg !972
  store double %150, ptr %1, align 8, !dbg !973, !tbaa !282
  %151 = tail call double @llvm.fabs.f64(double %150), !dbg !974
  %152 = fmul double %151, 0x3CD0000000000000, !dbg !975
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !976
  store double %152, ptr %153, align 8, !dbg !977, !tbaa !294
  %154 = fcmp oge double %0, 0.000000e+00, !dbg !978
  %155 = select i1 %154, double 1.000000e+00, double -1.000000e+00, !dbg !978
  store double %155, ptr %2, align 8, !dbg !979, !tbaa !604
  br label %192, !dbg !980

156:                                              ; preds = %121
  %157 = fcmp ogt double %0, 0xC3045F306DC9C883, !dbg !981
  br i1 %157, label %158, label %191, !dbg !982

158:                                              ; preds = %156
  %159 = fsub double 1.000000e+00, %0, !dbg !983
  tail call void @llvm.dbg.value(metadata double %159, metadata !808, metadata !DIExpression()), !dbg !984
  %160 = fmul double %0, 0x400921FB54442D18, !dbg !985
  %161 = tail call double @sin(double noundef %160) #9, !dbg !986
  tail call void @llvm.dbg.value(metadata double %161, metadata !814, metadata !DIExpression()), !dbg !984
  %162 = tail call double @llvm.fabs.f64(double %161), !dbg !987
  tail call void @llvm.dbg.value(metadata double %162, metadata !815, metadata !DIExpression()), !dbg !984
  %163 = fcmp oeq double %161, 0.000000e+00, !dbg !988
  br i1 %163, label %164, label %166, !dbg !989

164:                                              ; preds = %158
  store double 0.000000e+00, ptr %2, align 8, !dbg !990, !tbaa !604
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !992, !tbaa !282
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !992
  store double 0x7FF8000000000000, ptr %165, align 8, !dbg !992, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1219, i32 noundef 1) #9, !dbg !994
  br label %192, !dbg !994

166:                                              ; preds = %158
  %167 = fcmp olt double %162, 0x3FA8209F5B22BAA6, !dbg !996
  br i1 %167, label %168, label %178, !dbg !997

168:                                              ; preds = %166
  %169 = fcmp olt double %0, 0xC1DFFFFFFF800000, !dbg !998
  br i1 %169, label %170, label %171, !dbg !999

170:                                              ; preds = %168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1000
  store double 0.000000e+00, ptr %2, align 8, !dbg !1002, !tbaa !604
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1227, i32 noundef 18) #9, !dbg !1003
  br label %192, !dbg !1003

171:                                              ; preds = %168
  %172 = fadd double %0, -5.000000e-01, !dbg !1005
  %173 = fptosi double %172 to i32, !dbg !1006
  %174 = sub nsw i32 0, %173, !dbg !1007
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !816, metadata !DIExpression()), !dbg !1008
  %175 = sitofp i32 %174 to double, !dbg !1009
  %176 = fadd double %175, %0, !dbg !1010
  tail call void @llvm.dbg.value(metadata double %176, metadata !822, metadata !DIExpression()), !dbg !1008
  %177 = tail call fastcc i32 @lngamma_sgn_sing(i32 noundef %174, double noundef %176, ptr noundef %1, ptr noundef %2), !dbg !1011, !range !483
  br label %192

178:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !1012
  call fastcc void @lngamma_lanczos(double noundef %159, ptr noundef nonnull %4), !dbg !1013
  %179 = fcmp ogt double %161, 0.000000e+00, !dbg !1014
  %180 = select i1 %179, double 1.000000e+00, double -1.000000e+00, !dbg !1015
  store double %180, ptr %2, align 8, !dbg !1016, !tbaa !604
  %181 = tail call double @log(double noundef %162) #9, !dbg !1017
  %182 = load double, ptr %4, align 8, !dbg !1018, !tbaa !282
  %183 = fadd double %181, %182, !dbg !1019
  %184 = fsub double 0x3FF250D048E7A1BD, %183, !dbg !1020
  store double %184, ptr %1, align 8, !dbg !1021, !tbaa !282
  %185 = tail call double @llvm.fabs.f64(double %184), !dbg !1022
  %186 = fmul double %185, 0x3CC0000000000000, !dbg !1023
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1024
  %188 = load double, ptr %187, align 8, !dbg !1024, !tbaa !294
  %189 = fadd double %188, %186, !dbg !1025
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1026
  store double %189, ptr %190, align 8, !dbg !1027, !tbaa !294
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !1028
  br label %192

191:                                              ; preds = %156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1029
  store double 0.000000e+00, ptr %2, align 8, !dbg !1031, !tbaa !604
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1249, i32 noundef 18) #9, !dbg !1032
  br label %192, !dbg !1032

192:                                              ; preds = %164, %170, %171, %178, %8, %42, %74, %119, %124, %191
  %193 = phi i32 [ 0, %8 ], [ 0, %42 ], [ 0, %74 ], [ 1, %119 ], [ 0, %124 ], [ 18, %191 ], [ 1, %164 ], [ 18, %170 ], [ %177, %171 ], [ 0, %178 ], !dbg !1034
  ret i32 %193, !dbg !1035
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1036 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1055
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1046, metadata !DIExpression(), metadata !1055, metadata ptr %3, metadata !DIExpression()), !dbg !1056
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1057
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1050, metadata !DIExpression(), metadata !1057, metadata ptr %4, metadata !DIExpression()), !dbg !1058
  %5 = alloca double, align 8, !DIAssignID !1059
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1052, metadata !DIExpression(), metadata !1059, metadata ptr %5, metadata !DIExpression()), !dbg !1058
  tail call void @llvm.dbg.value(metadata double %0, metadata !1038, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1039, metadata !DIExpression()), !dbg !1060
  %6 = fcmp olt double %0, 5.000000e-01, !dbg !1061
  br i1 %6, label %7, label %58, !dbg !1062

7:                                                ; preds = %2
  %8 = fadd double %0, 5.000000e-01, !dbg !1063
  %9 = tail call double @llvm.floor.f64(double %8), !dbg !1064
  %10 = fptosi double %9 to i32, !dbg !1065
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1040, metadata !DIExpression()), !dbg !1066
  %11 = sitofp i32 %10 to double, !dbg !1067
  %12 = fsub double %0, %11, !dbg !1068
  tail call void @llvm.dbg.value(metadata double %12, metadata !1043, metadata !DIExpression()), !dbg !1066
  %13 = and i32 %10, 1, !dbg !1069
  %14 = icmp eq i32 %13, 0, !dbg !1069
  tail call void @llvm.dbg.value(metadata double poison, metadata !1044, metadata !DIExpression()), !dbg !1066
  %15 = fmul double %12, 0x400921FB54442D18, !dbg !1070
  %16 = tail call double @sin(double noundef %15) #9, !dbg !1071
  %17 = fneg double %16, !dbg !1072
  %18 = select i1 %14, double %16, double %17, !dbg !1072
  %19 = fdiv double %18, 0x400921FB54442D18, !dbg !1073
  tail call void @llvm.dbg.value(metadata double %19, metadata !1045, metadata !DIExpression()), !dbg !1066
  %20 = fcmp oeq double %19, 0.000000e+00, !dbg !1074
  br i1 %20, label %21, label %23, !dbg !1075

21:                                               ; preds = %7
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !1076, !tbaa !282
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1076
  store double 0x7FF8000000000000, ptr %22, align 8, !dbg !1076, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1264, i32 noundef 1) #9, !dbg !1079
  br label %60, !dbg !1079

23:                                               ; preds = %7
  %24 = fcmp ogt double %0, -1.690000e+02, !dbg !1081
  br i1 %24, label %25, label %49, !dbg !1082

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !1083
  %26 = fsub double 1.000000e+00, %0, !dbg !1084
  %27 = call fastcc i32 @gamma_xgthalf(double noundef %26, ptr noundef nonnull %3), !dbg !1085, !range !1086
  %28 = tail call double @llvm.fabs.f64(double %19), !dbg !1087
  %29 = load double, ptr %3, align 8, !dbg !1089, !tbaa !282
  %30 = fmul double %28, %29, !dbg !1090
  %31 = fmul double %30, 0x10000000000000, !dbg !1091
  %32 = fcmp olt double %31, 1.000000e+00, !dbg !1092
  br i1 %32, label %33, label %45, !dbg !1093

33:                                               ; preds = %25
  %34 = fmul double %19, %29, !dbg !1094
  %35 = fdiv double 1.000000e+00, %34, !dbg !1096
  store double %35, ptr %1, align 8, !dbg !1097, !tbaa !282
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1098
  %37 = load double, ptr %36, align 8, !dbg !1098, !tbaa !294
  %38 = fdiv double %37, %29, !dbg !1099
  %39 = fmul double %35, %38, !dbg !1100
  %40 = tail call double @llvm.fabs.f64(double %39), !dbg !1100
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1101
  %42 = tail call double @llvm.fabs.f64(double %35), !dbg !1102
  %43 = fmul double %42, 0x3CC0000000000000, !dbg !1103
  %44 = fadd double %43, %40, !dbg !1104
  store double %44, ptr %41, align 8, !dbg !1104, !tbaa !294
  br label %47, !dbg !1105

45:                                               ; preds = %25
  store double 0.000000e+00, ptr %1, align 8, !dbg !1106, !tbaa !282
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1106
  store double 0x10000000000000, ptr %46, align 8, !dbg !1106, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1276, i32 noundef 15) #9, !dbg !1109
  br label %47, !dbg !1109

47:                                               ; preds = %45, %33
  %48 = phi i32 [ 0, %33 ], [ 15, %45 ], !dbg !1111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !1112
  br label %60

49:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !1113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9, !dbg !1114
  %50 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !1115, !range !711
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !1053, metadata !DIExpression()), !dbg !1058
  %51 = load double, ptr %4, align 8, !dbg !1116, !tbaa !282
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1117
  %53 = load double, ptr %52, align 8, !dbg !1117, !tbaa !294
  %54 = load double, ptr %5, align 8, !dbg !1118, !tbaa !604
  %55 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %51, double noundef %53, double noundef %54, double noundef 0.000000e+00, ptr noundef %1) #9, !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !1054, metadata !DIExpression()), !dbg !1058
  %56 = icmp eq i32 %55, 0, !dbg !1120
  %57 = select i1 %56, i32 %50, i32 %55, !dbg !1120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9, !dbg !1121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !1121
  br label %60

58:                                               ; preds = %2
  %59 = tail call fastcc i32 @gamma_xgthalf(double noundef %0, ptr noundef %1), !dbg !1122, !range !1086
  br label %60, !dbg !1124

60:                                               ; preds = %21, %49, %47, %58
  %61 = phi i32 [ %59, %58 ], [ 1, %21 ], [ %48, %47 ], [ %57, %49 ], !dbg !1125
  ret i32 %61, !dbg !1126
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gamma_xgthalf(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !dbg !1127 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1172
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1163, metadata !DIExpression(), metadata !1172, metadata ptr %3, metadata !DIExpression()), !dbg !1173
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1174
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1170, metadata !DIExpression(), metadata !1174, metadata ptr %4, metadata !DIExpression()), !dbg !1175
  tail call void @llvm.dbg.value(metadata double %0, metadata !1129, metadata !DIExpression()), !dbg !1176
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1130, metadata !DIExpression()), !dbg !1176
  %5 = fcmp oeq double %0, 5.000000e-01, !dbg !1177
  br i1 %5, label %6, label %8, !dbg !1178

6:                                                ; preds = %2
  store double 0x3FFC5BF891B4EF6B, ptr %1, align 8, !dbg !1179, !tbaa !282
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1181
  store double 0x3CBC5BF891B4EF6B, ptr %7, align 8, !dbg !1182, !tbaa !294
  br label %147, !dbg !1183

8:                                                ; preds = %2
  %9 = fcmp ugt double %0, 1.710000e+02, !dbg !1184
  br i1 %9, label %21, label %10, !dbg !1185

10:                                               ; preds = %8
  %11 = tail call double @llvm.floor.f64(double %0), !dbg !1186
  %12 = fcmp oeq double %11, %0, !dbg !1187
  br i1 %12, label %13, label %21, !dbg !1188

13:                                               ; preds = %10
  %14 = fptosi double %11 to i32, !dbg !1189
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1131, metadata !DIExpression()), !dbg !1190
  %15 = add nsw i32 %14, -1, !dbg !1191
  %16 = sext i32 %15 to i64, !dbg !1192
  %17 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %16, i32 1, !dbg !1193
  %18 = load double, ptr %17, align 8, !dbg !1193, !tbaa !694
  store double %18, ptr %1, align 8, !dbg !1194, !tbaa !282
  %19 = fmul double %18, 0x3CB0000000000000, !dbg !1195
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1196
  store double %19, ptr %20, align 8, !dbg !1197, !tbaa !294
  br label %147

21:                                               ; preds = %10, %8
  %22 = fadd double %0, -1.000000e+00, !dbg !1198
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !1199
  %24 = fcmp olt double %23, 1.000000e-02, !dbg !1200
  br i1 %24, label %25, label %42, !dbg !1201

25:                                               ; preds = %21
  tail call void @llvm.dbg.value(metadata double %22, metadata !1135, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata double 0x3FDB0EE6072093CE, metadata !1138, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata double 0xBF8669CF713AA1E2, metadata !1139, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata double 0x3FB7AF73866DA4E8, metadata !1140, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata double 0xBF92B5DF55ED2958, metadata !1141, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata double 0x3F926FE278E930AE, metadata !1142, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata double 0xBF7C0FAC8A677A84, metadata !1143, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata double 0x3F7060754242E352, metadata !1144, metadata !DIExpression()), !dbg !1202
  %26 = fdiv double 1.000000e+00, %0, !dbg !1203
  %27 = fmul double %22, 0x3F7060754242E352, !dbg !1204
  %28 = fadd double %27, 0xBF7C0FAC8A677A84, !dbg !1205
  %29 = fmul double %22, %28, !dbg !1206
  %30 = fadd double %29, 0x3F926FE278E930AE, !dbg !1207
  %31 = fmul double %22, %30, !dbg !1208
  %32 = fadd double %31, 0xBF92B5DF55ED2958, !dbg !1209
  %33 = fmul double %22, %32, !dbg !1210
  %34 = fadd double %33, 0x3FB7AF73866DA4E8, !dbg !1211
  %35 = fmul double %22, %34, !dbg !1212
  %36 = fadd double %35, 0xBF8669CF713AA1E2, !dbg !1213
  %37 = fmul double %22, %36, !dbg !1214
  %38 = fadd double %37, 0x3FDB0EE6072093CE, !dbg !1215
  %39 = fmul double %22, %38, !dbg !1216
  %40 = fadd double %26, %39, !dbg !1217
  store double %40, ptr %1, align 8, !dbg !1218, !tbaa !282
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1219
  store double 0x3CB0000000000000, ptr %41, align 8, !dbg !1220, !tbaa !294
  br label %147

42:                                               ; preds = %21
  %43 = fadd double %0, -2.000000e+00, !dbg !1221
  %44 = tail call double @llvm.fabs.f64(double %43), !dbg !1222
  %45 = fcmp olt double %44, 1.000000e-02, !dbg !1223
  br i1 %45, label %46, label %64, !dbg !1224

46:                                               ; preds = %42
  tail call void @llvm.dbg.value(metadata double %43, metadata !1145, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata double 0x3FDB0EE6072093CE, metadata !1148, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata double 0x3FDA5B978B96BEBF, metadata !1149, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata double 0x3FB4E239984650AC, metadata !1150, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata double 0x3FB301FBB0F25A92, metadata !1151, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata double 0xBF317F3740FE2A71, metadata !1152, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata double 0x3F86D7EEAC9EA41B, metadata !1153, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata double 0xBF675E6E90492E64, metadata !1154, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata double 0x3F613C449C85323D, metadata !1155, metadata !DIExpression()), !dbg !1225
  %47 = fmul double %43, 0x3F613C449C85323D, !dbg !1226
  %48 = fadd double %47, 0xBF675E6E90492E64, !dbg !1227
  %49 = fmul double %43, %48, !dbg !1228
  %50 = fadd double %49, 0x3F86D7EEAC9EA41B, !dbg !1229
  %51 = fmul double %43, %50, !dbg !1230
  %52 = fadd double %51, 0xBF317F3740FE2A71, !dbg !1231
  %53 = fmul double %43, %52, !dbg !1232
  %54 = fadd double %53, 0x3FB301FBB0F25A92, !dbg !1233
  %55 = fmul double %43, %54, !dbg !1234
  %56 = fadd double %55, 0x3FB4E239984650AC, !dbg !1235
  %57 = fmul double %43, %56, !dbg !1236
  %58 = fadd double %57, 0x3FDA5B978B96BEBF, !dbg !1237
  %59 = fmul double %43, %58, !dbg !1238
  %60 = fadd double %59, 0x3FDB0EE6072093CE, !dbg !1239
  %61 = fmul double %43, %60, !dbg !1240
  %62 = fadd double %61, 1.000000e+00, !dbg !1241
  store double %62, ptr %1, align 8, !dbg !1242, !tbaa !282
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1243
  store double 0x3CB0000000000000, ptr %63, align 8, !dbg !1244, !tbaa !294
  br label %147

64:                                               ; preds = %42
  %65 = fcmp olt double %0, 5.000000e+00, !dbg !1245
  br i1 %65, label %66, label %112, !dbg !1246

66:                                               ; preds = %64
  call void @llvm.dbg.value(metadata double %0, metadata !352, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr undef, metadata !356, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata double %22, metadata !352, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 1, metadata !357, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !358, metadata !DIExpression()), !dbg !1247
  %67 = fadd double %22, 1.000000e+00, !dbg !1249
  %68 = fdiv double 0x40852429B6C30B05, %67, !dbg !1250
  %69 = fadd double %68, 0x3FEFFFFFFFFFF950, !dbg !1251
  call void @llvm.dbg.value(metadata i64 2, metadata !357, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata double %69, metadata !358, metadata !DIExpression()), !dbg !1247
  %70 = fadd double %22, 2.000000e+00, !dbg !1249
  %71 = fdiv double 0x4093AC8E8ED4171B, %70, !dbg !1250
  %72 = fsub double %69, %71, !dbg !1251
  call void @llvm.dbg.value(metadata i64 3, metadata !357, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata double %72, metadata !358, metadata !DIExpression()), !dbg !1247
  %73 = fadd double %22, 3.000000e+00, !dbg !1249
  %74 = fdiv double 0x40881A9661D3B4D8, %73, !dbg !1250
  %75 = fadd double %74, %72, !dbg !1251
  call void @llvm.dbg.value(metadata i64 4, metadata !357, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata double %75, metadata !358, metadata !DIExpression()), !dbg !1247
  %76 = fadd double %22, 4.000000e+00, !dbg !1249
  %77 = fdiv double 0x406613AE51A32F5D, %76, !dbg !1250
  %78 = fsub double %75, %77, !dbg !1251
  call void @llvm.dbg.value(metadata i64 5, metadata !357, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata double %78, metadata !358, metadata !DIExpression()), !dbg !1247
  %79 = fadd double %22, 5.000000e+00, !dbg !1249
  %80 = fdiv double 0x402903C27F8B9C81, %79, !dbg !1250
  %81 = fadd double %80, %78, !dbg !1251
  call void @llvm.dbg.value(metadata i64 6, metadata !357, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata double %81, metadata !358, metadata !DIExpression()), !dbg !1247
  %82 = fadd double %22, 6.000000e+00, !dbg !1249
  %83 = fdiv double 0x3FC1BCB2992B2855, %82, !dbg !1250
  %84 = fsub double %81, %83, !dbg !1251
  call void @llvm.dbg.value(metadata i64 7, metadata !357, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata double %84, metadata !358, metadata !DIExpression()), !dbg !1247
  %85 = fadd double %22, 7.000000e+00, !dbg !1249
  %86 = fdiv double 0x3EE4F0514E4E324F, %85, !dbg !1250
  %87 = fadd double %86, %84, !dbg !1251
  call void @llvm.dbg.value(metadata i64 8, metadata !357, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata double %87, metadata !358, metadata !DIExpression()), !dbg !1247
  %88 = fadd double %22, 8.000000e+00, !dbg !1249
  %89 = fdiv double 0x3E8435508F3FAEEF, %88, !dbg !1250
  %90 = fadd double %89, %87, !dbg !1251
  call void @llvm.dbg.value(metadata double %90, metadata !358, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 9, metadata !357, metadata !DIExpression()), !dbg !1247
  %91 = fadd double %22, 5.000000e-01, !dbg !1252
  %92 = fadd double %22, 7.500000e+00, !dbg !1253
  %93 = fdiv double %92, 0x4005BF0A8B145769, !dbg !1254
  %94 = tail call double @log(double noundef %93) #9, !dbg !1255
  %95 = fmul double %91, %94, !dbg !1256
  call void @llvm.dbg.value(metadata double %95, metadata !359, metadata !DIExpression()), !dbg !1247
  %96 = tail call double @log(double noundef %90) #9, !dbg !1257
  %97 = fadd double %96, 0x3FED67F1C864BEB5, !dbg !1258
  call void @llvm.dbg.value(metadata double %97, metadata !360, metadata !DIExpression()), !dbg !1247
  %98 = fadd double %97, -7.000000e+00, !dbg !1259
  %99 = fadd double %95, %98, !dbg !1260
  tail call void @llvm.dbg.value(metadata double %99, metadata !1156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1261
  %100 = tail call double @llvm.fabs.f64(double %95), !dbg !1262
  %101 = tail call double @llvm.fabs.f64(double %97), !dbg !1263
  %102 = fadd double %100, %101, !dbg !1264
  %103 = fadd double %102, 7.000000e+00, !dbg !1265
  %104 = fmul double %103, 0x3CC0000000000000, !dbg !1266
  %105 = tail call double @llvm.fabs.f64(double %99), !dbg !1267
  %106 = fmul double %105, 0x3CB0000000000000, !dbg !1268
  %107 = fadd double %104, %106, !dbg !1269
  tail call void @llvm.dbg.value(metadata double %107, metadata !1156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1261
  %108 = tail call double @exp(double noundef %99) #9, !dbg !1270
  store double %108, ptr %1, align 8, !dbg !1271, !tbaa !282
  %109 = fadd double %107, 0x3CC0000000000000, !dbg !1272
  %110 = fmul double %108, %109, !dbg !1273
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1274
  store double %110, ptr %111, align 8, !dbg !1275, !tbaa !294
  br label %147

112:                                              ; preds = %64
  %113 = fcmp olt double %0, 1.000000e+01, !dbg !1276
  br i1 %113, label %114, label %127, !dbg !1277

114:                                              ; preds = %112
  tail call void @llvm.dbg.value(metadata double 5.040000e+03, metadata !1159, metadata !DIExpression()), !dbg !1173
  %115 = fmul double %0, 2.000000e+00, !dbg !1278
  %116 = fadd double %115, -1.500000e+01, !dbg !1279
  %117 = fdiv double %116, 5.000000e+00, !dbg !1280
  tail call void @llvm.dbg.value(metadata double %117, metadata !1162, metadata !DIExpression()), !dbg !1173
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !1281
  call fastcc void @cheb_eval_e(ptr noundef nonnull @gamma_5_10_cs, double noundef %117, ptr noundef nonnull %3), !dbg !1282
  %118 = load double, ptr %3, align 8, !dbg !1283, !tbaa !282
  %119 = tail call double @exp(double noundef %118) #9, !dbg !1284
  %120 = fmul double %119, 5.040000e+03, !dbg !1285
  store double %120, ptr %1, align 8, !dbg !1286, !tbaa !282
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1287
  %122 = load double, ptr %121, align 8, !dbg !1287, !tbaa !294
  %123 = fmul double %120, %122, !dbg !1288
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1289
  %125 = fmul double %120, 0x3CC0000000000000, !dbg !1290
  %126 = fadd double %125, %123, !dbg !1291
  store double %126, ptr %124, align 8, !dbg !1291, !tbaa !294
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !1292
  br label %147

127:                                              ; preds = %112
  %128 = fcmp olt double %0, 1.710000e+02, !dbg !1293
  br i1 %128, label %129, label %145, !dbg !1294

129:                                              ; preds = %127
  %130 = fmul double %0, 5.000000e-01, !dbg !1295
  %131 = tail call double @pow(double noundef %0, double noundef %130) #9, !dbg !1296
  tail call void @llvm.dbg.value(metadata double %131, metadata !1164, metadata !DIExpression()), !dbg !1175
  %132 = fneg double %0, !dbg !1297
  %133 = tail call double @exp(double noundef %132) #9, !dbg !1298
  tail call void @llvm.dbg.value(metadata double %133, metadata !1167, metadata !DIExpression()), !dbg !1175
  %134 = fmul double %131, %133, !dbg !1299
  %135 = fmul double %131, %134, !dbg !1300
  tail call void @llvm.dbg.value(metadata double %135, metadata !1168, metadata !DIExpression()), !dbg !1175
  %136 = fmul double %135, 0x40040D931FF62706, !dbg !1301
  %137 = tail call double @sqrt(double noundef %0) #9, !dbg !1302
  %138 = fdiv double %136, %137, !dbg !1303
  tail call void @llvm.dbg.value(metadata double %138, metadata !1169, metadata !DIExpression()), !dbg !1175
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !1304
  call fastcc void @gammastar_ser(double noundef %0, ptr noundef nonnull %4), !dbg !1305
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1171, metadata !DIExpression()), !dbg !1175
  %139 = load double, ptr %4, align 8, !dbg !1306, !tbaa !282
  %140 = fmul double %138, %139, !dbg !1307
  store double %140, ptr %1, align 8, !dbg !1308, !tbaa !282
  %141 = fadd double %0, 2.500000e+00, !dbg !1309
  %142 = fmul double %141, 0x3CB0000000000000, !dbg !1310
  %143 = fmul double %142, %140, !dbg !1311
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1312
  store double %143, ptr %144, align 8, !dbg !1313, !tbaa !294
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !1314
  br label %147

145:                                              ; preds = %127
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !1315, !tbaa !282
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1315
  store double 0x7FF0000000000000, ptr %146, align 8, !dbg !1315, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1106, i32 noundef 16) #9, !dbg !1318
  br label %147, !dbg !1318

147:                                              ; preds = %6, %13, %25, %46, %66, %114, %129, %145
  %148 = phi i32 [ 0, %6 ], [ 0, %13 ], [ 0, %25 ], [ 0, %46 ], [ 0, %66 ], [ 0, %114 ], [ 0, %129 ], [ 16, %145 ], !dbg !1320
  ret i32 %148, !dbg !1321
}

declare !dbg !1322 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gammastar_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1326 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1352
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1330, metadata !DIExpression(), metadata !1352, metadata ptr %3, metadata !DIExpression()), !dbg !1353
  tail call void @llvm.dbg.value(metadata double %0, metadata !1328, metadata !DIExpression()), !dbg !1354
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1329, metadata !DIExpression()), !dbg !1354
  %4 = fcmp ugt double %0, 0.000000e+00, !dbg !1355
  br i1 %4, label %7, label %5, !dbg !1356

5:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !1357, !tbaa !282
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1357
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !1357, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1304, i32 noundef 1) #9, !dbg !1360
  br label %167, !dbg !1360

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 5.000000e-01, !dbg !1362
  br i1 %8, label %9, label %29, !dbg !1363

9:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !1364
  %10 = call i32 @gsl_sf_lngamma_e(double noundef %0, ptr noundef nonnull %3), !dbg !1365, !range !711
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1334, metadata !DIExpression()), !dbg !1353
  %11 = tail call double @log(double noundef %0) #9, !dbg !1366
  tail call void @llvm.dbg.value(metadata double %11, metadata !1336, metadata !DIExpression()), !dbg !1353
  tail call void @llvm.dbg.value(metadata double 0x3FED67F1C864BEB4, metadata !1337, metadata !DIExpression()), !dbg !1353
  %12 = load double, ptr %3, align 8, !dbg !1367, !tbaa !282
  %13 = fadd double %0, -5.000000e-01, !dbg !1368
  %14 = fmul double %13, %11, !dbg !1369
  %15 = fsub double %12, %14, !dbg !1370
  %16 = fadd double %15, %0, !dbg !1371
  %17 = fadd double %16, 0xBFED67F1C864BEB4, !dbg !1372
  tail call void @llvm.dbg.value(metadata double %17, metadata !1338, metadata !DIExpression()), !dbg !1353
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1373
  %19 = load double, ptr %18, align 8, !dbg !1373, !tbaa !294
  %20 = fadd double %0, 5.000000e-01, !dbg !1374
  %21 = tail call double @llvm.fabs.f64(double %11), !dbg !1375
  %22 = fmul double %20, %21, !dbg !1376
  %23 = fadd double %22, 0x3FED67F1C864BEB4, !dbg !1377
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !1378
  %25 = fadd double %19, %24, !dbg !1379
  tail call void @llvm.dbg.value(metadata double %25, metadata !1339, metadata !DIExpression()), !dbg !1353
  %26 = tail call i32 @gsl_sf_exp_err_e(double noundef %17, double noundef %25, ptr noundef %1) #9, !dbg !1380
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1340, metadata !DIExpression()), !dbg !1353
  %27 = icmp eq i32 %10, 0, !dbg !1381
  %28 = select i1 %27, i32 %26, i32 %10, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !1382
  br label %167

29:                                               ; preds = %7
  %30 = fcmp olt double %0, 2.000000e+00, !dbg !1383
  br i1 %30, label %31, label %70, !dbg !1384

31:                                               ; preds = %29
  %32 = fadd double %0, -5.000000e-01, !dbg !1385
  %33 = fmul double %32, 0x3FF5555555555555, !dbg !1386
  %34 = fadd double %33, -1.000000e+00, !dbg !1387
  tail call void @llvm.dbg.value(metadata double %34, metadata !1341, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata !1389, metadata !1390, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata double %34, metadata !1397, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata ptr %1, metadata !1398, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1400, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1401, metadata !DIExpression()), !dbg !1411
  %35 = fmul double %34, 2.000000e+00, !dbg !1413
  %36 = fadd double %35, 1.000000e+00, !dbg !1414
  %37 = fadd double %36, -1.000000e+00, !dbg !1415
  %38 = fmul double %37, 5.000000e-01, !dbg !1416
  call void @llvm.dbg.value(metadata double %38, metadata !1402, metadata !DIExpression()), !dbg !1411
  %39 = fmul double %38, 2.000000e+00, !dbg !1417
  call void @llvm.dbg.value(metadata double %39, metadata !1403, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32 29, metadata !1399, metadata !DIExpression()), !dbg !1411
  br label %40, !dbg !1418

40:                                               ; preds = %40, %31
  %41 = phi i64 [ 29, %31 ], [ %56, %40 ]
  %42 = phi double [ 0.000000e+00, %31 ], [ %49, %40 ]
  %43 = phi double [ 0.000000e+00, %31 ], [ %55, %40 ]
  %44 = phi double [ 0.000000e+00, %31 ], [ %42, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !1399, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata double %42, metadata !1400, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata double %43, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata double %44, metadata !1401, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata double %42, metadata !1405, metadata !DIExpression()), !dbg !1419
  %45 = fmul double %39, %42, !dbg !1420
  %46 = fsub double %45, %44, !dbg !1421
  %47 = getelementptr inbounds double, ptr @gstar_a_data, i64 %41, !dbg !1422
  %48 = load double, ptr %47, align 8, !dbg !1422, !tbaa !604
  %49 = fadd double %46, %48, !dbg !1423
  call void @llvm.dbg.value(metadata double %49, metadata !1400, metadata !DIExpression()), !dbg !1411
  %50 = tail call double @llvm.fabs.f64(double %45), !dbg !1424
  %51 = tail call double @llvm.fabs.f64(double %44), !dbg !1425
  %52 = fadd double %50, %51, !dbg !1426
  %53 = tail call double @llvm.fabs.f64(double %48), !dbg !1427
  %54 = fadd double %52, %53, !dbg !1428
  %55 = fadd double %43, %54, !dbg !1429
  call void @llvm.dbg.value(metadata double %55, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata double %42, metadata !1401, metadata !DIExpression()), !dbg !1411
  %56 = add nsw i64 %41, -1, !dbg !1430
  call void @llvm.dbg.value(metadata i64 %56, metadata !1399, metadata !DIExpression()), !dbg !1411
  %57 = icmp ugt i64 %41, 1, !dbg !1431
  br i1 %57, label %40, label %58, !dbg !1418, !llvm.loop !1432

58:                                               ; preds = %40
  call void @llvm.dbg.value(metadata double %49, metadata !1409, metadata !DIExpression()), !dbg !1435
  %59 = fmul double %38, %49, !dbg !1436
  %60 = fsub double %59, %42, !dbg !1437
  %61 = fadd double %60, 0x3FF157C954F0328A, !dbg !1438
  call void @llvm.dbg.value(metadata double %61, metadata !1400, metadata !DIExpression()), !dbg !1411
  %62 = tail call double @llvm.fabs.f64(double %59), !dbg !1439
  %63 = tail call double @llvm.fabs.f64(double %42), !dbg !1440
  %64 = fadd double %63, %62, !dbg !1441
  %65 = fadd double %64, 0x3FF157C954F0328A, !dbg !1442
  %66 = fadd double %55, %65, !dbg !1443
  call void @llvm.dbg.value(metadata double %66, metadata !1404, metadata !DIExpression()), !dbg !1411
  store double %61, ptr %1, align 8, !dbg !1444, !tbaa !282
  %67 = fmul double %66, 0x3CB0000000000000, !dbg !1445
  %68 = fadd double %67, 0x3CD238CA994778F3, !dbg !1446
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1447
  store double %68, ptr %69, align 8, !dbg !1448, !tbaa !294
  br label %167

70:                                               ; preds = %29
  %71 = fcmp olt double %0, 1.000000e+01, !dbg !1449
  br i1 %71, label %72, label %121, !dbg !1450

72:                                               ; preds = %70
  %73 = fadd double %0, -2.000000e+00, !dbg !1451
  %74 = fmul double %73, 2.500000e-01, !dbg !1452
  %75 = fadd double %74, -1.000000e+00, !dbg !1453
  tail call void @llvm.dbg.value(metadata double %75, metadata !1344, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata !1389, metadata !1390, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata double %75, metadata !1397, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata ptr undef, metadata !1398, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1400, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1401, metadata !DIExpression()), !dbg !1455
  %76 = fmul double %75, 2.000000e+00, !dbg !1457
  %77 = fadd double %76, 1.000000e+00, !dbg !1458
  %78 = fadd double %77, -1.000000e+00, !dbg !1459
  %79 = fmul double %78, 5.000000e-01, !dbg !1460
  call void @llvm.dbg.value(metadata double %79, metadata !1402, metadata !DIExpression()), !dbg !1455
  %80 = fmul double %79, 2.000000e+00, !dbg !1461
  call void @llvm.dbg.value(metadata double %80, metadata !1403, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1404, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i32 29, metadata !1399, metadata !DIExpression()), !dbg !1455
  br label %81, !dbg !1462

81:                                               ; preds = %81, %72
  %82 = phi i64 [ 29, %72 ], [ %97, %81 ]
  %83 = phi double [ 0.000000e+00, %72 ], [ %90, %81 ]
  %84 = phi double [ 0.000000e+00, %72 ], [ %96, %81 ]
  %85 = phi double [ 0.000000e+00, %72 ], [ %83, %81 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !1399, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata double %83, metadata !1400, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata double %84, metadata !1404, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata double %85, metadata !1401, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata double %83, metadata !1405, metadata !DIExpression()), !dbg !1463
  %86 = fmul double %80, %83, !dbg !1464
  %87 = fsub double %86, %85, !dbg !1465
  %88 = getelementptr inbounds double, ptr @gstar_b_data, i64 %82, !dbg !1466
  %89 = load double, ptr %88, align 8, !dbg !1466, !tbaa !604
  %90 = fadd double %87, %89, !dbg !1467
  call void @llvm.dbg.value(metadata double %90, metadata !1400, metadata !DIExpression()), !dbg !1455
  %91 = tail call double @llvm.fabs.f64(double %86), !dbg !1468
  %92 = tail call double @llvm.fabs.f64(double %85), !dbg !1469
  %93 = fadd double %91, %92, !dbg !1470
  %94 = tail call double @llvm.fabs.f64(double %89), !dbg !1471
  %95 = fadd double %93, %94, !dbg !1472
  %96 = fadd double %84, %95, !dbg !1473
  call void @llvm.dbg.value(metadata double %96, metadata !1404, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata double %83, metadata !1401, metadata !DIExpression()), !dbg !1455
  %97 = add nsw i64 %82, -1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %97, metadata !1399, metadata !DIExpression()), !dbg !1455
  %98 = icmp ugt i64 %82, 1, !dbg !1475
  br i1 %98, label %81, label %99, !dbg !1462, !llvm.loop !1476

99:                                               ; preds = %81
  call void @llvm.dbg.value(metadata double %90, metadata !1409, metadata !DIExpression()), !dbg !1478
  %100 = fmul double %79, %90, !dbg !1479
  %101 = fsub double %100, %83, !dbg !1480
  %102 = fadd double %101, 0x3F678D8D00889F45, !dbg !1481
  call void @llvm.dbg.value(metadata double %102, metadata !1400, metadata !DIExpression()), !dbg !1455
  %103 = tail call double @llvm.fabs.f64(double %100), !dbg !1482
  %104 = tail call double @llvm.fabs.f64(double %83), !dbg !1483
  %105 = fadd double %104, %103, !dbg !1484
  %106 = fadd double %105, 0x3F678D8D00889F45, !dbg !1485
  %107 = fadd double %96, %106, !dbg !1486
  call void @llvm.dbg.value(metadata double %107, metadata !1404, metadata !DIExpression()), !dbg !1455
  tail call void @llvm.dbg.value(metadata double %102, metadata !1347, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1454
  %108 = fmul double %107, 0x3CB0000000000000, !dbg !1487
  %109 = fadd double %108, 0x3C916EDE756B86EF, !dbg !1488
  tail call void @llvm.dbg.value(metadata double %109, metadata !1347, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1454
  %110 = fmul double %0, %0, !dbg !1489
  %111 = fdiv double %102, %110, !dbg !1490
  %112 = fadd double %111, 1.000000e+00, !dbg !1491
  %113 = fmul double %0, 1.200000e+01, !dbg !1492
  %114 = fdiv double 1.000000e+00, %113, !dbg !1493
  %115 = fadd double %114, %112, !dbg !1494
  store double %115, ptr %1, align 8, !dbg !1495, !tbaa !282
  %116 = fdiv double %109, %110, !dbg !1496
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1497
  %118 = tail call double @llvm.fabs.f64(double %115), !dbg !1498
  %119 = fmul double %118, 0x3CC0000000000000, !dbg !1499
  %120 = fadd double %116, %119, !dbg !1500
  store double %120, ptr %117, align 8, !dbg !1500, !tbaa !294
  br label %167

121:                                              ; preds = %70
  %122 = fcmp olt double %0, 8.192000e+03, !dbg !1501
  br i1 %122, label %123, label %147, !dbg !1502

123:                                              ; preds = %121
  call void @llvm.dbg.value(metadata double %0, metadata !1503, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata ptr %1, metadata !1507, metadata !DIExpression()), !dbg !1518
  %124 = fmul double %0, %0, !dbg !1521
  %125 = fdiv double 1.000000e+00, %124, !dbg !1522
  call void @llvm.dbg.value(metadata double %125, metadata !1508, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata double 0x3FB5555555555555, metadata !1509, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata double 0xBF66C16C16C16C17, metadata !1510, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata double 0x3F4A01A01A01A01A, metadata !1511, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata double 0xBF43813813813814, metadata !1512, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata double 0x3F4B951E2B18FF23, metadata !1513, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata double 0xBF5F6AB0D9993C7D, metadata !1514, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata double 0x3F7A41A41A41A41A, metadata !1515, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata double 0xBF9E4286CB0F5398, metadata !1516, metadata !DIExpression()), !dbg !1518
  %126 = fmul double %125, 0x3F9E4286CB0F5398, !dbg !1523
  %127 = fsub double 0x3F7A41A41A41A41A, %126, !dbg !1524
  %128 = fmul double %125, %127, !dbg !1525
  %129 = fadd double %128, 0xBF5F6AB0D9993C7D, !dbg !1526
  %130 = fmul double %125, %129, !dbg !1527
  %131 = fadd double %130, 0x3F4B951E2B18FF23, !dbg !1528
  %132 = fmul double %125, %131, !dbg !1529
  %133 = fadd double %132, 0xBF43813813813814, !dbg !1530
  %134 = fmul double %125, %133, !dbg !1531
  %135 = fadd double %134, 0x3F4A01A01A01A01A, !dbg !1532
  %136 = fmul double %125, %135, !dbg !1533
  %137 = fadd double %136, 0xBF66C16C16C16C17, !dbg !1534
  %138 = fmul double %125, %137, !dbg !1535
  %139 = fadd double %138, 0x3FB5555555555555, !dbg !1536
  call void @llvm.dbg.value(metadata double %139, metadata !1517, metadata !DIExpression()), !dbg !1518
  %140 = fdiv double %139, %0, !dbg !1537
  %141 = tail call double @exp(double noundef %140) #9, !dbg !1538
  store double %141, ptr %1, align 8, !dbg !1539, !tbaa !282
  %142 = fmul double %141, 0x3CC0000000000000, !dbg !1540
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1541, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata double %140, metadata !1547, metadata !DIExpression()), !dbg !1548
  %143 = fcmp olt double %140, 1.000000e+00, !dbg !1550
  %144 = select i1 %143, double 1.000000e+00, double %140, !dbg !1550
  %145 = fmul double %144, %142, !dbg !1551
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1552
  store double %145, ptr %146, align 8, !dbg !1553, !tbaa !294
  br label %167, !dbg !1554

147:                                              ; preds = %121
  %148 = fcmp olt double %0, 0x4330000000000000, !dbg !1555
  br i1 %148, label %149, label %164, !dbg !1556

149:                                              ; preds = %147
  %150 = fdiv double 1.000000e+00, %0, !dbg !1557
  tail call void @llvm.dbg.value(metadata double %150, metadata !1348, metadata !DIExpression()), !dbg !1558
  %151 = fdiv double %150, 1.200000e+01, !dbg !1559
  %152 = fdiv double %150, 2.400000e+01, !dbg !1560
  %153 = fmul double %150, 0x3FB0EB240795CEB2, !dbg !1561
  %154 = fadd double %153, 0x3FE8B60B60B60B61, !dbg !1562
  %155 = fmul double %150, %154, !dbg !1563
  %156 = fsub double 1.000000e+00, %155, !dbg !1564
  %157 = fmul double %152, %156, !dbg !1565
  %158 = fadd double %157, 1.000000e+00, !dbg !1566
  %159 = fmul double %151, %158, !dbg !1567
  %160 = fadd double %159, 1.000000e+00, !dbg !1568
  store double %160, ptr %1, align 8, !dbg !1569, !tbaa !282
  %161 = tail call double @llvm.fabs.f64(double %160), !dbg !1570
  %162 = fmul double %161, 0x3CC0000000000000, !dbg !1571
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1572
  store double %162, ptr %163, align 8, !dbg !1573, !tbaa !294
  br label %167

164:                                              ; preds = %147
  store double 1.000000e+00, ptr %1, align 8, !dbg !1574, !tbaa !282
  %165 = fdiv double 1.000000e+00, %0, !dbg !1576
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1577
  store double %165, ptr %166, align 8, !dbg !1578, !tbaa !294
  br label %167, !dbg !1579

167:                                              ; preds = %5, %9, %58, %99, %123, %149, %164
  %168 = phi i32 [ 1, %5 ], [ %28, %9 ], [ 0, %58 ], [ 0, %99 ], [ 0, %123 ], [ 0, %149 ], [ 0, %164 ], !dbg !1580
  ret i32 %168, !dbg !1581
}

declare !dbg !1582 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cheb_eval_e(ptr nocapture noundef readonly %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !dbg !1391 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1390, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %1, metadata !1397, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1398, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1400, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1401, metadata !DIExpression()), !dbg !1585
  %4 = fmul double %1, 2.000000e+00, !dbg !1586
  %5 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 2, !dbg !1587
  %6 = load double, ptr %5, align 8, !dbg !1587, !tbaa !1588
  %7 = fsub double %4, %6, !dbg !1591
  %8 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 3, !dbg !1592
  %9 = load double, ptr %8, align 8, !dbg !1592, !tbaa !1593
  %10 = fsub double %7, %9, !dbg !1594
  %11 = fsub double %9, %6, !dbg !1595
  %12 = fdiv double %10, %11, !dbg !1596
  tail call void @llvm.dbg.value(metadata double %12, metadata !1402, metadata !DIExpression()), !dbg !1585
  %13 = fmul double %12, 2.000000e+00, !dbg !1597
  tail call void @llvm.dbg.value(metadata double %13, metadata !1403, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1404, metadata !DIExpression()), !dbg !1585
  %14 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 1, !dbg !1598
  %15 = load i32, ptr %14, align 8, !dbg !1598, !tbaa !1599
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1399, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1400, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1404, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1401, metadata !DIExpression()), !dbg !1585
  %16 = icmp sgt i32 %15, 0, !dbg !1600
  %17 = load ptr, ptr %0, align 8, !dbg !1601, !tbaa !1602
  br i1 %16, label %18, label %38, !dbg !1603

18:                                               ; preds = %3
  %19 = zext nneg i32 %15 to i64, !dbg !1603
  br label %20, !dbg !1603

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %19, %18 ], [ %36, %20 ]
  %22 = phi double [ 0.000000e+00, %18 ], [ %29, %20 ]
  %23 = phi double [ 0.000000e+00, %18 ], [ %35, %20 ]
  %24 = phi double [ 0.000000e+00, %18 ], [ %22, %20 ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1399, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %22, metadata !1400, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %23, metadata !1404, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %24, metadata !1401, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %22, metadata !1405, metadata !DIExpression()), !dbg !1604
  %25 = fmul double %13, %22, !dbg !1605
  %26 = fsub double %25, %24, !dbg !1606
  %27 = getelementptr inbounds double, ptr %17, i64 %21, !dbg !1607
  %28 = load double, ptr %27, align 8, !dbg !1607, !tbaa !604
  %29 = fadd double %26, %28, !dbg !1608
  tail call void @llvm.dbg.value(metadata double %29, metadata !1400, metadata !DIExpression()), !dbg !1585
  %30 = tail call double @llvm.fabs.f64(double %25), !dbg !1609
  %31 = tail call double @llvm.fabs.f64(double %24), !dbg !1610
  %32 = fadd double %31, %30, !dbg !1611
  %33 = tail call double @llvm.fabs.f64(double %28), !dbg !1612
  %34 = fadd double %32, %33, !dbg !1613
  %35 = fadd double %23, %34, !dbg !1614
  tail call void @llvm.dbg.value(metadata double %35, metadata !1404, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %22, metadata !1401, metadata !DIExpression()), !dbg !1585
  %36 = add nsw i64 %21, -1, !dbg !1615
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !1399, metadata !DIExpression()), !dbg !1585
  %37 = icmp ugt i64 %21, 1, !dbg !1600
  br i1 %37, label %20, label %38, !dbg !1603, !llvm.loop !1616

38:                                               ; preds = %20, %3
  %39 = phi double [ 0.000000e+00, %3 ], [ %22, %20 ], !dbg !1585
  %40 = phi double [ 0.000000e+00, %3 ], [ %35, %20 ], !dbg !1585
  %41 = phi double [ 0.000000e+00, %3 ], [ %29, %20 ], !dbg !1585
  tail call void @llvm.dbg.value(metadata double %41, metadata !1409, metadata !DIExpression()), !dbg !1618
  %42 = fmul double %12, %41, !dbg !1619
  %43 = fsub double %42, %39, !dbg !1620
  %44 = load double, ptr %17, align 8, !dbg !1621, !tbaa !604
  %45 = fmul double %44, 5.000000e-01, !dbg !1622
  %46 = fadd double %43, %45, !dbg !1623
  tail call void @llvm.dbg.value(metadata double %46, metadata !1400, metadata !DIExpression()), !dbg !1585
  %47 = tail call double @llvm.fabs.f64(double %42), !dbg !1624
  %48 = tail call double @llvm.fabs.f64(double %39), !dbg !1625
  %49 = fadd double %48, %47, !dbg !1626
  %50 = tail call double @llvm.fabs.f64(double %44), !dbg !1627
  %51 = fmul double %50, 5.000000e-01, !dbg !1628
  %52 = fadd double %49, %51, !dbg !1629
  %53 = fadd double %40, %52, !dbg !1630
  tail call void @llvm.dbg.value(metadata double %53, metadata !1404, metadata !DIExpression()), !dbg !1585
  store double %46, ptr %2, align 8, !dbg !1631, !tbaa !282
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !1632
  %55 = sext i32 %15 to i64, !dbg !1633
  %56 = getelementptr inbounds double, ptr %17, i64 %55, !dbg !1633
  %57 = load double, ptr %56, align 8, !dbg !1633, !tbaa !604
  %58 = tail call double @llvm.fabs.f64(double %57), !dbg !1634
  %59 = fadd double %58, %54, !dbg !1635
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1636
  store double %59, ptr %60, align 8, !dbg !1637, !tbaa !294
  ret void, !dbg !1638
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc void @gammastar_ser(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !dbg !1504 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1503, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1507, metadata !DIExpression()), !dbg !1639
  %3 = fmul double %0, %0, !dbg !1640
  %4 = fdiv double 1.000000e+00, %3, !dbg !1641
  tail call void @llvm.dbg.value(metadata double %4, metadata !1508, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata double 0x3FB5555555555555, metadata !1509, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata double 0xBF66C16C16C16C17, metadata !1510, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata double 0x3F4A01A01A01A01A, metadata !1511, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata double 0xBF43813813813814, metadata !1512, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata double 0x3F4B951E2B18FF23, metadata !1513, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata double 0xBF5F6AB0D9993C7D, metadata !1514, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata double 0x3F7A41A41A41A41A, metadata !1515, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata double 0xBF9E4286CB0F5398, metadata !1516, metadata !DIExpression()), !dbg !1639
  %5 = fmul double %4, 0x3F9E4286CB0F5398, !dbg !1642
  %6 = fsub double 0x3F7A41A41A41A41A, %5, !dbg !1643
  %7 = fmul double %4, %6, !dbg !1644
  %8 = fadd double %7, 0xBF5F6AB0D9993C7D, !dbg !1645
  %9 = fmul double %4, %8, !dbg !1646
  %10 = fadd double %9, 0x3F4B951E2B18FF23, !dbg !1647
  %11 = fmul double %4, %10, !dbg !1648
  %12 = fadd double %11, 0xBF43813813813814, !dbg !1649
  %13 = fmul double %4, %12, !dbg !1650
  %14 = fadd double %13, 0x3F4A01A01A01A01A, !dbg !1651
  %15 = fmul double %4, %14, !dbg !1652
  %16 = fadd double %15, 0xBF66C16C16C16C17, !dbg !1653
  %17 = fmul double %4, %16, !dbg !1654
  %18 = fadd double %17, 0x3FB5555555555555, !dbg !1655
  tail call void @llvm.dbg.value(metadata double %18, metadata !1517, metadata !DIExpression()), !dbg !1639
  %19 = fdiv double %18, %0, !dbg !1656
  %20 = tail call double @exp(double noundef %19) #9, !dbg !1657
  store double %20, ptr %1, align 8, !dbg !1658, !tbaa !282
  %21 = fmul double %20, 0x3CC0000000000000, !dbg !1659
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1541, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata double %19, metadata !1547, metadata !DIExpression()), !dbg !1660
  %22 = fcmp olt double %19, 1.000000e+00, !dbg !1662
  %23 = select i1 %22, double 1.000000e+00, double %19, !dbg !1662
  %24 = fmul double %23, %21, !dbg !1663
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1664
  store double %24, ptr %25, align 8, !dbg !1665, !tbaa !294
  ret void, !dbg !1666
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gammainv_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1667 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1680
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1671, metadata !DIExpression(), metadata !1680, metadata ptr %3, metadata !DIExpression()), !dbg !1681
  %4 = alloca double, align 8, !DIAssignID !1682
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1675, metadata !DIExpression(), metadata !1682, metadata ptr %4, metadata !DIExpression()), !dbg !1681
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1683
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1677, metadata !DIExpression(), metadata !1683, metadata ptr %5, metadata !DIExpression()), !dbg !1684
  tail call void @llvm.dbg.value(metadata double %0, metadata !1669, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1670, metadata !DIExpression()), !dbg !1685
  %6 = fcmp ole double %0, 0.000000e+00, !dbg !1686
  %7 = tail call double @llvm.floor.f64(double %0)
  %8 = fcmp oeq double %7, %0
  %9 = and i1 %6, %8, !dbg !1687
  br i1 %9, label %10, label %11, !dbg !1687

10:                                               ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1688
  br label %48, !dbg !1690

11:                                               ; preds = %2
  %12 = fcmp olt double %0, 5.000000e-01, !dbg !1691
  br i1 %12, label %13, label %26, !dbg !1692

13:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !1693
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9, !dbg !1694
  %14 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !1695, !range !711
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1676, metadata !DIExpression()), !dbg !1681
  switch i32 %14, label %16 [
    i32 1, label %15
    i32 0, label %17
  ], !dbg !1696

15:                                               ; preds = %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1697
  br label %24, !dbg !1700

16:                                               ; preds = %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1701
  br label %24, !dbg !1704

17:                                               ; preds = %13
  %18 = load double, ptr %3, align 8, !dbg !1705, !tbaa !282
  %19 = fneg double %18, !dbg !1707
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1708
  %21 = load double, ptr %20, align 8, !dbg !1708, !tbaa !294
  %22 = load double, ptr %4, align 8, !dbg !1709, !tbaa !604
  %23 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %19, double noundef %21, double noundef %22, double noundef 0.000000e+00, ptr noundef %1) #9, !dbg !1710
  br label %24, !dbg !1711

24:                                               ; preds = %17, %16, %15
  %25 = phi i32 [ 0, %15 ], [ %14, %16 ], [ %23, %17 ], !dbg !1712
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9, !dbg !1713
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !1713
  br label %48

26:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !1714
  %27 = call fastcc i32 @gamma_xgthalf(double noundef %0, ptr noundef nonnull %5), !dbg !1715, !range !1086
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1679, metadata !DIExpression()), !dbg !1684
  %28 = icmp eq i32 %27, 16, !dbg !1716
  br i1 %28, label %29, label %31, !dbg !1718

29:                                               ; preds = %26
  store double 0.000000e+00, ptr %1, align 8, !dbg !1719, !tbaa !282
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1719
  store double 0x10000000000000, ptr %30, align 8, !dbg !1719, !tbaa !294
  br label %44, !dbg !1722

31:                                               ; preds = %26
  %32 = load double, ptr %5, align 8, !dbg !1724, !tbaa !282
  %33 = fdiv double 1.000000e+00, %32, !dbg !1726
  store double %33, ptr %1, align 8, !dbg !1727, !tbaa !282
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1728
  %35 = load double, ptr %34, align 8, !dbg !1728, !tbaa !294
  %36 = fdiv double %35, %32, !dbg !1729
  %37 = fmul double %33, %36, !dbg !1730
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !1730
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1731
  %40 = tail call double @llvm.fabs.f64(double %33), !dbg !1732
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !1733
  %42 = fadd double %41, %38, !dbg !1734
  store double %42, ptr %39, align 8, !dbg !1734, !tbaa !294
  %43 = fcmp olt double %40, 0x10000000000000, !dbg !1735
  br i1 %43, label %44, label %46, !dbg !1737

44:                                               ; preds = %31, %29
  %45 = phi i32 [ 1379, %29 ], [ 1385, %31 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %45, i32 noundef 15) #9, !dbg !1738
  br label %46, !dbg !1739

46:                                               ; preds = %44, %31
  %47 = phi i32 [ 0, %31 ], [ 15, %44 ], !dbg !1738
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !1739
  br label %48

48:                                               ; preds = %46, %10, %24
  %49 = phi i32 [ 0, %10 ], [ %25, %24 ], [ %47, %46 ], !dbg !1740
  ret i32 %49, !dbg !1741
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lngamma_complex_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1742 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1763
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1754, metadata !DIExpression(), metadata !1763, metadata ptr %5, metadata !DIExpression()), !dbg !1764
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1765
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1755, metadata !DIExpression(), metadata !1765, metadata ptr %6, metadata !DIExpression()), !dbg !1764
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1766
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1756, metadata !DIExpression(), metadata !1766, metadata ptr %7, metadata !DIExpression()), !dbg !1764
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1767
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1757, metadata !DIExpression(), metadata !1767, metadata ptr %8, metadata !DIExpression()), !dbg !1764
  tail call void @llvm.dbg.value(metadata double %0, metadata !1746, metadata !DIExpression()), !dbg !1768
  tail call void @llvm.dbg.value(metadata double %1, metadata !1747, metadata !DIExpression()), !dbg !1768
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1748, metadata !DIExpression()), !dbg !1768
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1749, metadata !DIExpression()), !dbg !1768
  %9 = fcmp ugt double %0, 5.000000e-01, !dbg !1769
  br i1 %9, label %50, label %10, !dbg !1770

10:                                               ; preds = %4
  %11 = fsub double 1.000000e+00, %0, !dbg !1771
  tail call void @llvm.dbg.value(metadata double %11, metadata !1750, metadata !DIExpression()), !dbg !1764
  %12 = fneg double %1, !dbg !1772
  tail call void @llvm.dbg.value(metadata double %12, metadata !1753, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !1773
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !1773
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !1774
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9, !dbg !1774
  call fastcc void @lngamma_lanczos_complex(double noundef %11, double noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1758, metadata !DIExpression()), !dbg !1764
  %13 = fmul double %0, 0x400921FB54442D18, !dbg !1776
  %14 = fmul double %1, 0x400921FB54442D18, !dbg !1777
  %15 = call i32 @gsl_sf_complex_logsin_e(double noundef %13, double noundef %14, ptr noundef nonnull %7, ptr noundef nonnull %8) #9, !dbg !1778
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1759, metadata !DIExpression()), !dbg !1764
  %16 = icmp eq i32 %15, 0, !dbg !1779
  br i1 %16, label %17, label %45, !dbg !1780

17:                                               ; preds = %10
  %18 = load double, ptr %7, align 8, !dbg !1781, !tbaa !282
  %19 = fsub double 0x3FF250D048E7A1BD, %18, !dbg !1782
  %20 = load double, ptr %5, align 8, !dbg !1783, !tbaa !282
  %21 = fsub double %19, %20, !dbg !1784
  store double %21, ptr %2, align 8, !dbg !1785, !tbaa !282
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1786
  %23 = load double, ptr %22, align 8, !dbg !1786, !tbaa !294
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1787
  %25 = load double, ptr %24, align 8, !dbg !1787, !tbaa !294
  %26 = fadd double %23, %25, !dbg !1788
  %27 = call double @llvm.fabs.f64(double %21), !dbg !1789
  %28 = fmul double %27, 0x3CC0000000000000, !dbg !1790
  %29 = fadd double %28, %26, !dbg !1791
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1792
  store double %29, ptr %30, align 8, !dbg !1793, !tbaa !294
  %31 = load double, ptr %8, align 8, !dbg !1794, !tbaa !282
  %32 = fneg double %31, !dbg !1795
  %33 = load double, ptr %6, align 8, !dbg !1796, !tbaa !282
  %34 = fsub double %32, %33, !dbg !1797
  store double %34, ptr %3, align 8, !dbg !1798, !tbaa !282
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1799
  %36 = load double, ptr %35, align 8, !dbg !1799, !tbaa !294
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1800
  %38 = load double, ptr %37, align 8, !dbg !1800, !tbaa !294
  %39 = fadd double %36, %38, !dbg !1801
  %40 = call double @llvm.fabs.f64(double %34), !dbg !1802
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !1803
  %42 = fadd double %41, %39, !dbg !1804
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1805
  store double %42, ptr %43, align 8, !dbg !1806, !tbaa !294
  %44 = call i32 @gsl_sf_angle_restrict_symm_e(ptr noundef nonnull %3) #9, !dbg !1807
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !1760, metadata !DIExpression()), !dbg !1808
  br label %48

45:                                               ; preds = %10
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1809, !tbaa !282
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1809
  store double 0x7FF8000000000000, ptr %46, align 8, !dbg !1809, !tbaa !294
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1809, !tbaa !282
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1809
  store double 0x7FF8000000000000, ptr %47, align 8, !dbg !1809, !tbaa !294
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1417, i32 noundef 1) #9, !dbg !1812
  br label %48, !dbg !1812

48:                                               ; preds = %45, %17
  %49 = phi i32 [ %44, %17 ], [ 1, %45 ], !dbg !1814
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9, !dbg !1815
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !1815
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !1815
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !1815
  br label %51

50:                                               ; preds = %4
  tail call fastcc void @lngamma_lanczos_complex(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1816
  br label %51, !dbg !1818

51:                                               ; preds = %48, %50
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ], !dbg !1819
  ret i32 %52, !dbg !1820
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lngamma_lanczos_complex(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1821 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1843
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1829, metadata !DIExpression(), metadata !1843, metadata ptr %5, metadata !DIExpression()), !dbg !1844
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1845
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1830, metadata !DIExpression(), metadata !1845, metadata ptr %6, metadata !DIExpression()), !dbg !1844
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1846
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1831, metadata !DIExpression(), metadata !1846, metadata ptr %7, metadata !DIExpression()), !dbg !1844
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1832, metadata !DIExpression(), metadata !1847, metadata ptr %8, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %0, metadata !1824, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %1, metadata !1825, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1826, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1827, metadata !DIExpression()), !dbg !1844
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !1848
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !1848
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !1849
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9, !dbg !1849
  %9 = fadd double %0, -1.000000e+00, !dbg !1850
  tail call void @llvm.dbg.value(metadata double %9, metadata !1824, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !1833, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1834, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1828, metadata !DIExpression()), !dbg !1844
  %10 = fmul double %1, %1
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !1833, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1834, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !1833, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1834, metadata !DIExpression()), !dbg !1844
  %11 = fadd double %9, 1.000000e+00, !dbg !1851
  tail call void @llvm.dbg.value(metadata double %11, metadata !1837, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata double %1, metadata !1841, metadata !DIExpression()), !dbg !1852
  %12 = fmul double %11, %11, !dbg !1853
  %13 = fadd double %10, %12, !dbg !1854
  %14 = fdiv double 0x40852429B6C30B05, %13, !dbg !1855
  tail call void @llvm.dbg.value(metadata double %14, metadata !1842, metadata !DIExpression()), !dbg !1852
  %15 = fmul double %11, %14, !dbg !1856
  %16 = fadd double %15, 0x3FEFFFFFFFFFF950, !dbg !1857
  tail call void @llvm.dbg.value(metadata double %16, metadata !1833, metadata !DIExpression()), !dbg !1844
  %17 = fmul double %14, %1, !dbg !1858
  %18 = fsub double 0.000000e+00, %17, !dbg !1859
  tail call void @llvm.dbg.value(metadata double %18, metadata !1834, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %16, metadata !1833, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %18, metadata !1834, metadata !DIExpression()), !dbg !1844
  %19 = fadd double %9, 2.000000e+00, !dbg !1851
  tail call void @llvm.dbg.value(metadata double %19, metadata !1837, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata double %1, metadata !1841, metadata !DIExpression()), !dbg !1852
  %20 = fmul double %19, %19, !dbg !1853
  %21 = fadd double %10, %20, !dbg !1854
  %22 = fdiv double 0xC093AC8E8ED4171B, %21, !dbg !1855
  tail call void @llvm.dbg.value(metadata double %22, metadata !1842, metadata !DIExpression()), !dbg !1852
  %23 = fmul double %19, %22, !dbg !1856
  %24 = fadd double %16, %23, !dbg !1857
  tail call void @llvm.dbg.value(metadata double %24, metadata !1833, metadata !DIExpression()), !dbg !1844
  %25 = fmul double %22, %1, !dbg !1858
  %26 = fsub double %18, %25, !dbg !1859
  tail call void @llvm.dbg.value(metadata double %26, metadata !1834, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %24, metadata !1833, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %26, metadata !1834, metadata !DIExpression()), !dbg !1844
  %27 = fadd double %9, 3.000000e+00, !dbg !1851
  tail call void @llvm.dbg.value(metadata double %27, metadata !1837, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata double %1, metadata !1841, metadata !DIExpression()), !dbg !1852
  %28 = fmul double %27, %27, !dbg !1853
  %29 = fadd double %10, %28, !dbg !1854
  %30 = fdiv double 0x40881A9661D3B4D8, %29, !dbg !1855
  tail call void @llvm.dbg.value(metadata double %30, metadata !1842, metadata !DIExpression()), !dbg !1852
  %31 = fmul double %27, %30, !dbg !1856
  %32 = fadd double %24, %31, !dbg !1857
  tail call void @llvm.dbg.value(metadata double %32, metadata !1833, metadata !DIExpression()), !dbg !1844
  %33 = fmul double %30, %1, !dbg !1858
  %34 = fsub double %26, %33, !dbg !1859
  tail call void @llvm.dbg.value(metadata double %34, metadata !1834, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %32, metadata !1833, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %34, metadata !1834, metadata !DIExpression()), !dbg !1844
  %35 = fadd double %9, 4.000000e+00, !dbg !1851
  tail call void @llvm.dbg.value(metadata double %35, metadata !1837, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata double %1, metadata !1841, metadata !DIExpression()), !dbg !1852
  %36 = fmul double %35, %35, !dbg !1853
  %37 = fadd double %10, %36, !dbg !1854
  %38 = fdiv double 0xC06613AE51A32F5D, %37, !dbg !1855
  tail call void @llvm.dbg.value(metadata double %38, metadata !1842, metadata !DIExpression()), !dbg !1852
  %39 = fmul double %35, %38, !dbg !1856
  %40 = fadd double %32, %39, !dbg !1857
  tail call void @llvm.dbg.value(metadata double %40, metadata !1833, metadata !DIExpression()), !dbg !1844
  %41 = fmul double %38, %1, !dbg !1858
  %42 = fsub double %34, %41, !dbg !1859
  tail call void @llvm.dbg.value(metadata double %42, metadata !1834, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %40, metadata !1833, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %42, metadata !1834, metadata !DIExpression()), !dbg !1844
  %43 = fadd double %9, 5.000000e+00, !dbg !1851
  tail call void @llvm.dbg.value(metadata double %43, metadata !1837, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata double %1, metadata !1841, metadata !DIExpression()), !dbg !1852
  %44 = fmul double %43, %43, !dbg !1853
  %45 = fadd double %10, %44, !dbg !1854
  %46 = fdiv double 0x402903C27F8B9C81, %45, !dbg !1855
  tail call void @llvm.dbg.value(metadata double %46, metadata !1842, metadata !DIExpression()), !dbg !1852
  %47 = fmul double %43, %46, !dbg !1856
  %48 = fadd double %40, %47, !dbg !1857
  tail call void @llvm.dbg.value(metadata double %48, metadata !1833, metadata !DIExpression()), !dbg !1844
  %49 = fmul double %46, %1, !dbg !1858
  %50 = fsub double %42, %49, !dbg !1859
  tail call void @llvm.dbg.value(metadata double %50, metadata !1834, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %48, metadata !1833, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %50, metadata !1834, metadata !DIExpression()), !dbg !1844
  %51 = fadd double %9, 6.000000e+00, !dbg !1851
  tail call void @llvm.dbg.value(metadata double %51, metadata !1837, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata double %1, metadata !1841, metadata !DIExpression()), !dbg !1852
  %52 = fmul double %51, %51, !dbg !1853
  %53 = fadd double %10, %52, !dbg !1854
  %54 = fdiv double 0xBFC1BCB2992B2855, %53, !dbg !1855
  tail call void @llvm.dbg.value(metadata double %54, metadata !1842, metadata !DIExpression()), !dbg !1852
  %55 = fmul double %51, %54, !dbg !1856
  %56 = fadd double %48, %55, !dbg !1857
  tail call void @llvm.dbg.value(metadata double %56, metadata !1833, metadata !DIExpression()), !dbg !1844
  %57 = fmul double %54, %1, !dbg !1858
  %58 = fsub double %50, %57, !dbg !1859
  tail call void @llvm.dbg.value(metadata double %58, metadata !1834, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %56, metadata !1833, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %58, metadata !1834, metadata !DIExpression()), !dbg !1844
  %59 = fadd double %9, 7.000000e+00, !dbg !1851
  tail call void @llvm.dbg.value(metadata double %59, metadata !1837, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata double %1, metadata !1841, metadata !DIExpression()), !dbg !1852
  %60 = fmul double %59, %59, !dbg !1853
  %61 = fadd double %10, %60, !dbg !1854
  %62 = fdiv double 0x3EE4F0514E4E324F, %61, !dbg !1855
  tail call void @llvm.dbg.value(metadata double %62, metadata !1842, metadata !DIExpression()), !dbg !1852
  %63 = fmul double %59, %62, !dbg !1856
  %64 = fadd double %56, %63, !dbg !1857
  tail call void @llvm.dbg.value(metadata double %64, metadata !1833, metadata !DIExpression()), !dbg !1844
  %65 = fmul double %62, %1, !dbg !1858
  %66 = fsub double %58, %65, !dbg !1859
  tail call void @llvm.dbg.value(metadata double %66, metadata !1834, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1828, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %64, metadata !1833, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %66, metadata !1834, metadata !DIExpression()), !dbg !1844
  %67 = fadd double %9, 8.000000e+00, !dbg !1851
  tail call void @llvm.dbg.value(metadata double %67, metadata !1837, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata double %1, metadata !1841, metadata !DIExpression()), !dbg !1852
  %68 = fmul double %67, %67, !dbg !1853
  %69 = fadd double %10, %68, !dbg !1854
  %70 = fdiv double 0x3E8435508F3FAEEF, %69, !dbg !1855
  tail call void @llvm.dbg.value(metadata double %70, metadata !1842, metadata !DIExpression()), !dbg !1852
  %71 = fmul double %67, %70, !dbg !1856
  %72 = fadd double %64, %71, !dbg !1857
  tail call void @llvm.dbg.value(metadata double %72, metadata !1833, metadata !DIExpression()), !dbg !1844
  %73 = fmul double %70, %1, !dbg !1858
  %74 = fsub double %66, %73, !dbg !1859
  tail call void @llvm.dbg.value(metadata double %74, metadata !1834, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 9, metadata !1828, metadata !DIExpression()), !dbg !1844
  %75 = fadd double %9, 7.500000e+00, !dbg !1860
  %76 = call i32 @gsl_sf_complex_log_e(double noundef %75, double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #9, !dbg !1861
  %77 = call i32 @gsl_sf_complex_log_e(double noundef %72, double noundef %74, ptr noundef nonnull %7, ptr noundef nonnull %8) #9, !dbg !1862
  %78 = fadd double %9, 5.000000e-01, !dbg !1863
  %79 = load double, ptr %5, align 8, !dbg !1864, !tbaa !282
  %80 = fmul double %78, %79, !dbg !1865
  %81 = load double, ptr %6, align 8, !dbg !1866, !tbaa !282
  %82 = fmul double %81, %1, !dbg !1867
  %83 = fsub double %80, %82, !dbg !1868
  %84 = fsub double %83, %75, !dbg !1869
  %85 = fadd double %84, 0x3FED67F1C864BEB5, !dbg !1870
  %86 = load double, ptr %7, align 8, !dbg !1871, !tbaa !282
  %87 = fadd double %86, %85, !dbg !1872
  store double %87, ptr %2, align 8, !dbg !1873, !tbaa !282
  %88 = fmul double %79, %1, !dbg !1874
  %89 = fmul double %78, %81, !dbg !1875
  %90 = fadd double %88, %89, !dbg !1876
  %91 = fsub double %90, %1, !dbg !1877
  %92 = load double, ptr %8, align 8, !dbg !1878, !tbaa !282
  %93 = fadd double %91, %92, !dbg !1879
  store double %93, ptr %3, align 8, !dbg !1880, !tbaa !282
  %94 = load double, ptr %2, align 8, !dbg !1881, !tbaa !282
  %95 = call double @llvm.fabs.f64(double %94), !dbg !1882
  %96 = fmul double %95, 0x3CD0000000000000, !dbg !1883
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1884
  store double %96, ptr %97, align 8, !dbg !1885, !tbaa !294
  %98 = call double @llvm.fabs.f64(double %93), !dbg !1886
  %99 = fmul double %98, 0x3CD0000000000000, !dbg !1887
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1888
  store double %99, ptr %100, align 8, !dbg !1889, !tbaa !294
  tail call void @llvm.dbg.value(metadata double %93, metadata !1835, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %99, metadata !1836, metadata !DIExpression()), !dbg !1844
  %101 = call i32 @gsl_sf_angle_restrict_symm_err_e(double noundef %93, ptr noundef nonnull %3) #9, !dbg !1890
  %102 = load double, ptr %100, align 8, !dbg !1891, !tbaa !294
  %103 = fadd double %99, %102, !dbg !1891
  store double %103, ptr %100, align 8, !dbg !1891, !tbaa !294
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9, !dbg !1892
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !1892
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !1892
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !1892
  ret void, !dbg !1893
}

declare !dbg !1894 i32 @gsl_sf_complex_logsin_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1898 i32 @gsl_sf_angle_restrict_symm_e(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_taylorcoeff_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1901 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1905, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata double %1, metadata !1906, metadata !DIExpression()), !dbg !1920
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1907, metadata !DIExpression()), !dbg !1920
  %4 = fcmp olt double %1, 0.000000e+00, !dbg !1921
  %5 = icmp slt i32 %0, 0
  %6 = or i1 %5, %4, !dbg !1922
  br i1 %6, label %7, label %9, !dbg !1922

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1923, !tbaa !282
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1923
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !1923, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1432, i32 noundef 1) #9, !dbg !1926
  br label %87, !dbg !1926

9:                                                ; preds = %3
  switch i32 %0, label %14 [
    i32 0, label %10
    i32 1, label %12
  ], !dbg !1928

10:                                               ; preds = %9
  store double 1.000000e+00, ptr %2, align 8, !dbg !1929, !tbaa !282
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1931
  store double 0.000000e+00, ptr %11, align 8, !dbg !1932, !tbaa !294
  br label %87, !dbg !1933

12:                                               ; preds = %9
  store double %1, ptr %2, align 8, !dbg !1934, !tbaa !282
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1936
  store double 0.000000e+00, ptr %13, align 8, !dbg !1937, !tbaa !294
  br label %87, !dbg !1938

14:                                               ; preds = %9
  %15 = fcmp oeq double %1, 0.000000e+00, !dbg !1939
  br i1 %15, label %16, label %17, !dbg !1940

16:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1941
  br label %87, !dbg !1943

17:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata double 0x3FFD67F1C864BEB4, metadata !1908, metadata !DIExpression()), !dbg !1944
  %18 = sitofp i32 %0 to double, !dbg !1945
  %19 = tail call double @log(double noundef %1) #9, !dbg !1946
  %20 = fadd double %19, 1.000000e+00, !dbg !1947
  %21 = fmul double %20, %18, !dbg !1948
  %22 = fadd double %21, 1.000000e+00, !dbg !1949
  %23 = fadd double %18, 5.000000e-01, !dbg !1950
  %24 = fadd double %18, 1.000000e+00, !dbg !1951
  %25 = tail call double @log(double noundef %24) #9, !dbg !1952
  %26 = fmul double %23, %25, !dbg !1953
  %27 = fsub double %22, %26, !dbg !1954
  %28 = fadd double %27, 0x3FED67F1C864BEB4, !dbg !1955
  tail call void @llvm.dbg.value(metadata double %28, metadata !1914, metadata !DIExpression()), !dbg !1944
  %29 = fcmp olt double %28, 0xC0861B2BDD7ABCD2, !dbg !1956
  br i1 %29, label %30, label %32, !dbg !1957

30:                                               ; preds = %17
  store double 0.000000e+00, ptr %2, align 8, !dbg !1958, !tbaa !282
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1958
  store double 0x10000000000000, ptr %31, align 8, !dbg !1958, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1454, i32 noundef 15) #9, !dbg !1961
  br label %87, !dbg !1961

32:                                               ; preds = %17
  %33 = fcmp ogt double %28, 0x40862642FEFA39EF, !dbg !1963
  br i1 %33, label %40, label %34, !dbg !1964

34:                                               ; preds = %32
  %35 = add i32 %0, -1, !dbg !1965
  %36 = and i32 %0, 3, !dbg !1965
  %37 = icmp ult i32 %35, 3, !dbg !1965
  br i1 %37, label %64, label %38, !dbg !1965

38:                                               ; preds = %34
  %39 = and i32 %0, -4, !dbg !1965
  br label %42, !dbg !1965

40:                                               ; preds = %32
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1967, !tbaa !282
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1967
  store double 0x7FF0000000000000, ptr %41, align 8, !dbg !1967, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1457, i32 noundef 16) #9, !dbg !1970
  br label %87, !dbg !1970

42:                                               ; preds = %42, %38
  %43 = phi i32 [ 1, %38 ], [ %61, %42 ]
  %44 = phi double [ 1.000000e+00, %38 ], [ %60, %42 ]
  %45 = phi i32 [ 0, %38 ], [ %62, %42 ]
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1919, metadata !DIExpression()), !dbg !1972
  tail call void @llvm.dbg.value(metadata double %44, metadata !1915, metadata !DIExpression()), !dbg !1972
  %46 = sitofp i32 %43 to double, !dbg !1973
  %47 = fdiv double %1, %46, !dbg !1976
  %48 = fmul double %44, %47, !dbg !1977
  tail call void @llvm.dbg.value(metadata double %48, metadata !1915, metadata !DIExpression()), !dbg !1972
  %49 = add nuw nsw i32 %43, 1, !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1919, metadata !DIExpression()), !dbg !1972
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1919, metadata !DIExpression()), !dbg !1972
  tail call void @llvm.dbg.value(metadata double %48, metadata !1915, metadata !DIExpression()), !dbg !1972
  %50 = sitofp i32 %49 to double, !dbg !1973
  %51 = fdiv double %1, %50, !dbg !1976
  %52 = fmul double %48, %51, !dbg !1977
  tail call void @llvm.dbg.value(metadata double %52, metadata !1915, metadata !DIExpression()), !dbg !1972
  %53 = add nuw nsw i32 %43, 2, !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1919, metadata !DIExpression()), !dbg !1972
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1919, metadata !DIExpression()), !dbg !1972
  tail call void @llvm.dbg.value(metadata double %52, metadata !1915, metadata !DIExpression()), !dbg !1972
  %54 = sitofp i32 %53 to double, !dbg !1973
  %55 = fdiv double %1, %54, !dbg !1976
  %56 = fmul double %52, %55, !dbg !1977
  tail call void @llvm.dbg.value(metadata double %56, metadata !1915, metadata !DIExpression()), !dbg !1972
  %57 = add nuw i32 %43, 3, !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !1919, metadata !DIExpression()), !dbg !1972
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !1919, metadata !DIExpression()), !dbg !1972
  tail call void @llvm.dbg.value(metadata double %56, metadata !1915, metadata !DIExpression()), !dbg !1972
  %58 = sitofp i32 %57 to double, !dbg !1973
  %59 = fdiv double %1, %58, !dbg !1976
  %60 = fmul double %56, %59, !dbg !1977
  tail call void @llvm.dbg.value(metadata double %60, metadata !1915, metadata !DIExpression()), !dbg !1972
  %61 = add nuw i32 %43, 4, !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1919, metadata !DIExpression()), !dbg !1972
  %62 = add i32 %45, 4, !dbg !1965
  %63 = icmp eq i32 %62, %39, !dbg !1965
  br i1 %63, label %64, label %42, !dbg !1965, !llvm.loop !1979

64:                                               ; preds = %42, %34
  %65 = phi double [ undef, %34 ], [ %60, %42 ]
  %66 = phi i32 [ 1, %34 ], [ %61, %42 ]
  %67 = phi double [ 1.000000e+00, %34 ], [ %60, %42 ]
  %68 = icmp eq i32 %36, 0, !dbg !1965
  br i1 %68, label %79, label %69, !dbg !1965

69:                                               ; preds = %64, %69
  %70 = phi i32 [ %76, %69 ], [ %66, %64 ]
  %71 = phi double [ %75, %69 ], [ %67, %64 ]
  %72 = phi i32 [ %77, %69 ], [ 0, %64 ]
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !1919, metadata !DIExpression()), !dbg !1972
  tail call void @llvm.dbg.value(metadata double %71, metadata !1915, metadata !DIExpression()), !dbg !1972
  %73 = sitofp i32 %70 to double, !dbg !1973
  %74 = fdiv double %1, %73, !dbg !1976
  %75 = fmul double %71, %74, !dbg !1977
  tail call void @llvm.dbg.value(metadata double %75, metadata !1915, metadata !DIExpression()), !dbg !1972
  %76 = add nuw i32 %70, 1, !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1919, metadata !DIExpression()), !dbg !1972
  %77 = add i32 %72, 1, !dbg !1965
  %78 = icmp eq i32 %77, %36, !dbg !1965
  br i1 %78, label %79, label %69, !dbg !1965, !llvm.loop !1981

79:                                               ; preds = %69, %64
  %80 = phi double [ %65, %64 ], [ %75, %69 ], !dbg !1977
  store double %80, ptr %2, align 8, !dbg !1983, !tbaa !282
  %81 = fmul double %18, 0x3CB0000000000000, !dbg !1984
  %82 = fmul double %81, %80, !dbg !1985
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1986
  store double %82, ptr %83, align 8, !dbg !1987, !tbaa !294
  %84 = tail call double @llvm.fabs.f64(double %80), !dbg !1988
  %85 = fcmp olt double %84, 0x10000000000000, !dbg !1988
  br i1 %85, label %86, label %87, !dbg !1990

86:                                               ; preds = %79
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1467, i32 noundef 15) #9, !dbg !1991
  br label %87, !dbg !1991

87:                                               ; preds = %30, %40, %79, %86, %7, %10, %12, %16
  %88 = phi i32 [ 1, %7 ], [ 0, %10 ], [ 0, %12 ], [ 0, %16 ], [ 15, %30 ], [ 16, %40 ], [ 15, %86 ], [ 0, %79 ], !dbg !1993
  ret i32 %88, !dbg !1994
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fact_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1995 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1997, metadata !DIExpression()), !dbg !1999
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1998, metadata !DIExpression()), !dbg !1999
  %3 = icmp ult i32 %0, 18, !dbg !2000
  br i1 %3, label %4, label %9, !dbg !2002

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64, !dbg !2003
  %6 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %5, i32 1, !dbg !2005
  %7 = load double, ptr %6, align 8, !dbg !2005, !tbaa !694
  store double %7, ptr %1, align 8, !dbg !2006, !tbaa !282
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2007
  store double 0.000000e+00, ptr %8, align 8, !dbg !2008, !tbaa !294
  br label %20, !dbg !2009

9:                                                ; preds = %2
  %10 = icmp ult i32 %0, 171, !dbg !2010
  br i1 %10, label %11, label %18, !dbg !2012

11:                                               ; preds = %9
  %12 = zext nneg i32 %0 to i64, !dbg !2013
  %13 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %12, i32 1, !dbg !2015
  %14 = load double, ptr %13, align 8, !dbg !2015, !tbaa !694
  store double %14, ptr %1, align 8, !dbg !2016, !tbaa !282
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !2017
  %16 = fmul double %15, 0x3CC0000000000000, !dbg !2018
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2019
  store double %16, ptr %17, align 8, !dbg !2020, !tbaa !294
  br label %20, !dbg !2021

18:                                               ; preds = %9
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !2022, !tbaa !282
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2022
  store double 0x7FF0000000000000, ptr %19, align 8, !dbg !2022, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1489, i32 noundef 16) #9, !dbg !2025
  br label %20, !dbg !2025

20:                                               ; preds = %4, %11, %18
  %21 = phi i32 [ 0, %4 ], [ 0, %11 ], [ 16, %18 ], !dbg !2027
  ret i32 %21, !dbg !2028
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_doublefact_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !2029 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2031, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2032, metadata !DIExpression()), !dbg !2033
  %3 = icmp ult i32 %0, 26, !dbg !2034
  br i1 %3, label %4, label %9, !dbg !2036

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64, !dbg !2037
  %6 = getelementptr inbounds [298 x %struct.anon.0], ptr @doub_fact_table, i64 0, i64 %5, i32 1, !dbg !2039
  %7 = load double, ptr %6, align 8, !dbg !2039, !tbaa !694
  store double %7, ptr %1, align 8, !dbg !2040, !tbaa !282
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2041
  store double 0.000000e+00, ptr %8, align 8, !dbg !2042, !tbaa !294
  br label %20, !dbg !2043

9:                                                ; preds = %2
  %10 = icmp ult i32 %0, 298, !dbg !2044
  br i1 %10, label %11, label %18, !dbg !2046

11:                                               ; preds = %9
  %12 = zext nneg i32 %0 to i64, !dbg !2047
  %13 = getelementptr inbounds [298 x %struct.anon.0], ptr @doub_fact_table, i64 0, i64 %12, i32 1, !dbg !2049
  %14 = load double, ptr %13, align 8, !dbg !2049, !tbaa !694
  store double %14, ptr %1, align 8, !dbg !2050, !tbaa !282
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !2051
  %16 = fmul double %15, 0x3CC0000000000000, !dbg !2052
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2053
  store double %16, ptr %17, align 8, !dbg !2054, !tbaa !294
  br label %20, !dbg !2055

18:                                               ; preds = %9
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !2056, !tbaa !282
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2056
  store double 0x7FF0000000000000, ptr %19, align 8, !dbg !2056, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1509, i32 noundef 16) #9, !dbg !2059
  br label %20, !dbg !2059

20:                                               ; preds = %4, %11, %18
  %21 = phi i32 [ 0, %4 ], [ 0, %11 ], [ 16, %18 ], !dbg !2061
  ret i32 %21, !dbg !2062
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !679 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !678, metadata !DIExpression()), !dbg !2063
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !685, metadata !DIExpression()), !dbg !2063
  %3 = icmp ult i32 %0, 171, !dbg !2064
  br i1 %3, label %4, label %12, !dbg !2065

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64, !dbg !2066
  %6 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %5, i32 1, !dbg !2067
  %7 = load double, ptr %6, align 8, !dbg !2067, !tbaa !694
  %8 = tail call double @log(double noundef %7) #9, !dbg !2068
  store double %8, ptr %1, align 8, !dbg !2069, !tbaa !282
  %9 = tail call double @llvm.fabs.f64(double %8), !dbg !2070
  %10 = fmul double %9, 0x3CC0000000000000, !dbg !2071
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2072
  store double %10, ptr %11, align 8, !dbg !2073, !tbaa !294
  br label %16, !dbg !2074

12:                                               ; preds = %2
  %13 = uitofp i32 %0 to double, !dbg !2075
  %14 = fadd double %13, 1.000000e+00, !dbg !2076
  %15 = tail call i32 @gsl_sf_lngamma_e(double noundef %14, ptr noundef %1), !dbg !2077, !range !711
  br label %16, !dbg !2078

16:                                               ; preds = %12, %4
  ret i32 0, !dbg !2079
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lndoublefact_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !2080 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2084, metadata !DIExpression(), metadata !2090, metadata ptr %3, metadata !DIExpression()), !dbg !2091
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2092
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2088, metadata !DIExpression(), metadata !2092, metadata ptr %4, metadata !DIExpression()), !dbg !2093
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2082, metadata !DIExpression()), !dbg !2094
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2083, metadata !DIExpression()), !dbg !2094
  %5 = icmp ult i32 %0, 298, !dbg !2095
  br i1 %5, label %6, label %14, !dbg !2096

6:                                                ; preds = %2
  %7 = zext nneg i32 %0 to i64, !dbg !2097
  %8 = getelementptr inbounds [298 x %struct.anon.0], ptr @doub_fact_table, i64 0, i64 %7, i32 1, !dbg !2099
  %9 = load double, ptr %8, align 8, !dbg !2099, !tbaa !694
  %10 = tail call double @log(double noundef %9) #9, !dbg !2100
  store double %10, ptr %1, align 8, !dbg !2101, !tbaa !282
  %11 = tail call double @llvm.fabs.f64(double %10), !dbg !2102
  %12 = fmul double %11, 0x3CC0000000000000, !dbg !2103
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2104
  store double %12, ptr %13, align 8, !dbg !2105, !tbaa !294
  br label %47, !dbg !2106

14:                                               ; preds = %2
  %15 = and i32 %0, 1, !dbg !2107
  %16 = icmp eq i32 %15, 0, !dbg !2107
  %17 = uitofp i32 %0 to double, !dbg !2108
  br i1 %16, label %34, label %18, !dbg !2109

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !2110
  %19 = fadd double %17, 2.000000e+00, !dbg !2111
  %20 = fmul double %19, 5.000000e-01, !dbg !2112
  %21 = call i32 @gsl_sf_lngamma_e(double noundef %20, ptr noundef nonnull %3), !dbg !2113, !range !711
  %22 = fadd double %17, 1.000000e+00, !dbg !2114
  %23 = fmul double %22, 5.000000e-01, !dbg !2115
  %24 = fmul double %23, 0x3FE62E42FEFA39EF, !dbg !2116
  %25 = fadd double %24, 0xBFE250D048E7A1BD, !dbg !2117
  %26 = load double, ptr %3, align 8, !dbg !2118, !tbaa !282
  %27 = fadd double %25, %26, !dbg !2119
  store double %27, ptr %1, align 8, !dbg !2120, !tbaa !282
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !2121
  %29 = fmul double %28, 0x3CC0000000000000, !dbg !2122
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2123
  %31 = load double, ptr %30, align 8, !dbg !2123, !tbaa !294
  %32 = fadd double %31, %29, !dbg !2124
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2125
  store double %32, ptr %33, align 8, !dbg !2126, !tbaa !294
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !2127
  br label %47

34:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !2128
  %35 = fmul double %17, 5.000000e-01, !dbg !2129
  %36 = fadd double %35, 1.000000e+00, !dbg !2130
  %37 = call i32 @gsl_sf_lngamma_e(double noundef %36, ptr noundef nonnull %4), !dbg !2131, !range !711
  %38 = fmul double %35, 0x3FE62E42FEFA39EF, !dbg !2132
  %39 = load double, ptr %4, align 8, !dbg !2133, !tbaa !282
  %40 = fadd double %38, %39, !dbg !2134
  store double %40, ptr %1, align 8, !dbg !2135, !tbaa !282
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !2136
  %42 = fmul double %41, 0x3CC0000000000000, !dbg !2137
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2138
  %44 = load double, ptr %43, align 8, !dbg !2138, !tbaa !294
  %45 = fadd double %44, %42, !dbg !2139
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2140
  store double %45, ptr %46, align 8, !dbg !2141, !tbaa !294
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !2142
  br label %47

47:                                               ; preds = %34, %18, %6
  ret i32 0, !dbg !2143
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lnchoose_e(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !2144 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2151, metadata !DIExpression(), metadata !2157, metadata ptr %4, metadata !DIExpression()), !dbg !2158
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2155, metadata !DIExpression(), metadata !2159, metadata ptr %5, metadata !DIExpression()), !dbg !2158
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2160
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2156, metadata !DIExpression(), metadata !2160, metadata ptr %6, metadata !DIExpression()), !dbg !2158
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2148, metadata !DIExpression()), !dbg !2161
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2149, metadata !DIExpression()), !dbg !2161
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2150, metadata !DIExpression()), !dbg !2161
  %7 = icmp ugt i32 %1, %0, !dbg !2162
  br i1 %7, label %8, label %10, !dbg !2163

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2164, !tbaa !282
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2164
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !2164, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1561, i32 noundef 1) #9, !dbg !2167
  br label %81, !dbg !2167

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, %0, !dbg !2169
  %12 = icmp eq i32 %1, 0
  %13 = or i1 %11, %12, !dbg !2170
  br i1 %13, label %14, label %15, !dbg !2170

14:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !2171
  br label %81, !dbg !2173

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !2174
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !2175
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !2176
  %16 = shl i32 %1, 1, !dbg !2177
  %17 = icmp ugt i32 %16, %0, !dbg !2179
  %18 = sub i32 %0, %1
  %19 = select i1 %17, i32 %18, i32 %1, !dbg !2180
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !2149, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i32 %0, metadata !678, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata ptr %4, metadata !685, metadata !DIExpression()), !dbg !2181
  %20 = icmp ult i32 %0, 171, !dbg !2183
  br i1 %20, label %21, label %29, !dbg !2184

21:                                               ; preds = %15
  %22 = zext nneg i32 %0 to i64, !dbg !2185
  %23 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %22, i32 1, !dbg !2186
  %24 = load double, ptr %23, align 8, !dbg !2186, !tbaa !694
  %25 = tail call double @log(double noundef %24) #9, !dbg !2187
  store double %25, ptr %4, align 8, !dbg !2188, !tbaa !282, !DIAssignID !2189
  call void @llvm.dbg.assign(metadata double %25, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2189, metadata ptr %4, metadata !DIExpression()), !dbg !2158
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !2190
  %27 = fmul double %26, 0x3CC0000000000000, !dbg !2191
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2192
  store double %27, ptr %28, align 8, !dbg !2193, !tbaa !294, !DIAssignID !2194
  call void @llvm.dbg.assign(metadata double %27, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2194, metadata ptr %28, metadata !DIExpression()), !dbg !2158
  br label %33, !dbg !2195

29:                                               ; preds = %15
  %30 = uitofp i32 %0 to double, !dbg !2196
  %31 = fadd double %30, 1.000000e+00, !dbg !2197
  %32 = call i32 @gsl_sf_lngamma_e(double noundef %31, ptr noundef nonnull %4), !dbg !2198, !range !711
  br label %33, !dbg !2199

33:                                               ; preds = %21, %29
  call void @llvm.dbg.value(metadata i32 %19, metadata !678, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata ptr %5, metadata !685, metadata !DIExpression()), !dbg !2200
  %34 = icmp ult i32 %19, 171, !dbg !2202
  br i1 %34, label %35, label %43, !dbg !2203

35:                                               ; preds = %33
  %36 = zext nneg i32 %19 to i64, !dbg !2204
  %37 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %36, i32 1, !dbg !2205
  %38 = load double, ptr %37, align 8, !dbg !2205, !tbaa !694
  %39 = tail call double @log(double noundef %38) #9, !dbg !2206
  store double %39, ptr %5, align 8, !dbg !2207, !tbaa !282, !DIAssignID !2208
  call void @llvm.dbg.assign(metadata double %39, metadata !2155, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2208, metadata ptr %5, metadata !DIExpression()), !dbg !2158
  %40 = tail call double @llvm.fabs.f64(double %39), !dbg !2209
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !2210
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !2211
  store double %41, ptr %42, align 8, !dbg !2212, !tbaa !294, !DIAssignID !2213
  call void @llvm.dbg.assign(metadata double %41, metadata !2155, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2213, metadata ptr %42, metadata !DIExpression()), !dbg !2158
  br label %47, !dbg !2214

43:                                               ; preds = %33
  %44 = uitofp i32 %19 to double, !dbg !2215
  %45 = fadd double %44, 1.000000e+00, !dbg !2216
  %46 = call i32 @gsl_sf_lngamma_e(double noundef %45, ptr noundef nonnull %5), !dbg !2217, !range !711
  br label %47, !dbg !2218

47:                                               ; preds = %35, %43
  %48 = sub i32 %0, %19, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %48, metadata !678, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %6, metadata !685, metadata !DIExpression()), !dbg !2220
  %49 = icmp ult i32 %48, 171, !dbg !2222
  br i1 %49, label %50, label %57, !dbg !2223

50:                                               ; preds = %47
  %51 = zext nneg i32 %48 to i64, !dbg !2224
  %52 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %51, i32 1, !dbg !2225
  %53 = load double, ptr %52, align 8, !dbg !2225, !tbaa !694
  %54 = tail call double @log(double noundef %53) #9, !dbg !2226
  call void @llvm.dbg.assign(metadata double %54, metadata !2156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2227, metadata ptr %6, metadata !DIExpression()), !dbg !2158
  %55 = tail call double @llvm.fabs.f64(double %54), !dbg !2228
  %56 = fmul double %55, 0x3CC0000000000000, !dbg !2229
  call void @llvm.dbg.assign(metadata double %56, metadata !2156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2230, metadata ptr %6, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !2158
  br label %64, !dbg !2231

57:                                               ; preds = %47
  %58 = uitofp i32 %48 to double, !dbg !2232
  %59 = fadd double %58, 1.000000e+00, !dbg !2233
  %60 = call i32 @gsl_sf_lngamma_e(double noundef %59, ptr noundef nonnull %6), !dbg !2234, !range !711
  %61 = load double, ptr %6, align 8, !dbg !2235, !tbaa !282
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1
  %63 = load double, ptr %62, align 8, !dbg !2236, !tbaa !294
  br label %64, !dbg !2237

64:                                               ; preds = %50, %57
  %65 = phi double [ %56, %50 ], [ %63, %57 ], !dbg !2236
  %66 = phi double [ %54, %50 ], [ %61, %57 ], !dbg !2235
  %67 = load double, ptr %4, align 8, !dbg !2238, !tbaa !282
  %68 = load double, ptr %5, align 8, !dbg !2239, !tbaa !282
  %69 = fsub double %67, %68, !dbg !2240
  %70 = fsub double %69, %66, !dbg !2241
  store double %70, ptr %2, align 8, !dbg !2242, !tbaa !282
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2243
  %72 = load double, ptr %71, align 8, !dbg !2243, !tbaa !294
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !2244
  %74 = load double, ptr %73, align 8, !dbg !2244, !tbaa !294
  %75 = fadd double %72, %74, !dbg !2245
  %76 = fadd double %75, %65, !dbg !2246
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2247
  %78 = tail call double @llvm.fabs.f64(double %70), !dbg !2248
  %79 = fmul double %78, 0x3CC0000000000000, !dbg !2249
  %80 = fadd double %79, %76, !dbg !2250
  store double %80, ptr %77, align 8, !dbg !2250, !tbaa !294
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !2251
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !2251
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !2251
  br label %81

81:                                               ; preds = %8, %14, %64
  %82 = phi i32 [ 1, %8 ], [ 0, %14 ], [ 0, %64 ], !dbg !2252
  ret i32 %82, !dbg !2253
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_choose_e(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !2254 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2275
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2271, metadata !DIExpression(), metadata !2275, metadata ptr %4, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2256, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2257, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2258, metadata !DIExpression()), !dbg !2277
  %5 = icmp ugt i32 %1, %0, !dbg !2278
  br i1 %5, label %6, label %8, !dbg !2279

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2280, !tbaa !282
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2280
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !2280, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1587, i32 noundef 1) #9, !dbg !2283
  br label %71, !dbg !2283

8:                                                ; preds = %3
  %9 = icmp eq i32 %1, %0, !dbg !2285
  %10 = icmp eq i32 %1, 0
  %11 = or i1 %9, %10, !dbg !2286
  br i1 %11, label %12, label %14, !dbg !2286

12:                                               ; preds = %8
  store double 1.000000e+00, ptr %2, align 8, !dbg !2287, !tbaa !282
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2289
  store double 0.000000e+00, ptr %13, align 8, !dbg !2290, !tbaa !294
  br label %71, !dbg !2291

14:                                               ; preds = %8
  %15 = icmp ult i32 %0, 171, !dbg !2292
  br i1 %15, label %16, label %32, !dbg !2293

16:                                               ; preds = %14
  %17 = zext nneg i32 %0 to i64, !dbg !2294
  %18 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %17, i32 1, !dbg !2296
  %19 = load double, ptr %18, align 8, !dbg !2296, !tbaa !694
  %20 = zext i32 %1 to i64, !dbg !2297
  %21 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %20, i32 1, !dbg !2298
  %22 = load double, ptr %21, align 8, !dbg !2298, !tbaa !694
  %23 = fdiv double %19, %22, !dbg !2299
  %24 = sub i32 %0, %1, !dbg !2300
  %25 = zext i32 %24 to i64, !dbg !2301
  %26 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %25, i32 1, !dbg !2302
  %27 = load double, ptr %26, align 8, !dbg !2302, !tbaa !694
  %28 = fdiv double %23, %27, !dbg !2303
  store double %28, ptr %2, align 8, !dbg !2304, !tbaa !282
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !2305
  %30 = fmul double %29, 0x3CD8000000000000, !dbg !2306
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2307
  store double %30, ptr %31, align 8, !dbg !2308, !tbaa !294
  br label %71, !dbg !2309

32:                                               ; preds = %14
  %33 = shl i32 %1, 1, !dbg !2310
  %34 = icmp ult i32 %33, %0, !dbg !2312
  %35 = sub i32 %0, %1
  %36 = select i1 %34, i32 %35, i32 %1, !dbg !2313
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !2257, metadata !DIExpression()), !dbg !2277
  %37 = sub i32 %0, %36, !dbg !2314
  %38 = icmp ult i32 %37, 64, !dbg !2315
  br i1 %38, label %39, label %63, !dbg !2316

39:                                               ; preds = %32
  %40 = add i32 %36, 1
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2259, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()), !dbg !2317
  %41 = icmp ugt i32 %40, %0, !dbg !2318
  br i1 %41, label %57, label %42, !dbg !2319

42:                                               ; preds = %39, %53
  %43 = phi double [ %54, %53 ], [ 1.000000e+00, %39 ]
  %44 = phi i32 [ %55, %53 ], [ %0, %39 ]
  tail call void @llvm.dbg.value(metadata double %43, metadata !2259, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !2266, metadata !DIExpression()), !dbg !2317
  %45 = uitofp i32 %44 to double, !dbg !2320
  %46 = sub i32 %44, %36, !dbg !2321
  %47 = uitofp i32 %46 to double, !dbg !2322
  %48 = fdiv double %45, %47, !dbg !2323
  tail call void @llvm.dbg.value(metadata double %48, metadata !2267, metadata !DIExpression()), !dbg !2324
  %49 = fdiv double 0x7FEFFFFFFFFFFFFF, %43, !dbg !2325
  %50 = fcmp ule double %48, %49, !dbg !2327
  br i1 %50, label %53, label %51, !dbg !2328

51:                                               ; preds = %42
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !2329, !tbaa !282
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2329
  store double 0x7FF0000000000000, ptr %52, align 8, !dbg !2329, !tbaa !294
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1609, i32 noundef 16) #9, !dbg !2332
  tail call void @llvm.dbg.value(metadata double undef, metadata !2259, metadata !DIExpression()), !dbg !2317
  br label %71

53:                                               ; preds = %42
  %54 = fmul double %43, %48, !dbg !2334
  tail call void @llvm.dbg.value(metadata double %54, metadata !2259, metadata !DIExpression()), !dbg !2317
  %55 = add i32 %44, -1, !dbg !2335
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !2266, metadata !DIExpression()), !dbg !2317
  %56 = icmp ult i32 %55, %40, !dbg !2318
  br i1 %56, label %57, label %42, !dbg !2319, !llvm.loop !2336

57:                                               ; preds = %53, %39
  %58 = phi double [ 1.000000e+00, %39 ], [ %54, %53 ], !dbg !2338
  store double %58, ptr %2, align 8, !dbg !2339, !tbaa !282
  %59 = fmul double %58, 0x3CC0000000000000, !dbg !2340
  %60 = uitofp i32 %37 to double, !dbg !2341
  %61 = fmul double %59, %60, !dbg !2342
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2343
  store double %61, ptr %62, align 8, !dbg !2344, !tbaa !294
  br label %71, !dbg !2345

63:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !2346
  %64 = call i32 @gsl_sf_lnchoose_e(i32 noundef %0, i32 noundef %36, ptr noundef nonnull %4), !dbg !2347, !range !483
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !2273, metadata !DIExpression()), !dbg !2276
  %65 = load double, ptr %4, align 8, !dbg !2348, !tbaa !282
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2349
  %67 = load double, ptr %66, align 8, !dbg !2349, !tbaa !294
  %68 = tail call i32 @gsl_sf_exp_err_e(double noundef %65, double noundef %67, ptr noundef %2) #9, !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !2274, metadata !DIExpression()), !dbg !2276
  %69 = icmp eq i32 %64, 0, !dbg !2351
  %70 = select i1 %69, i32 %68, i32 1, !dbg !2351
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !2352
  br label %71

71:                                               ; preds = %51, %57, %6, %12, %16, %63
  %72 = phi i32 [ 1, %6 ], [ 0, %12 ], [ 0, %16 ], [ %70, %63 ], [ 16, %51 ], [ 0, %57 ], !dbg !2353
  ret i32 %72, !dbg !2354
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fact(i32 noundef %0) local_unnamed_addr #0 !dbg !2355 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2359, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 %0, metadata !1997, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata ptr undef, metadata !1998, metadata !DIExpression()), !dbg !2363
  %2 = icmp ult i32 %0, 18, !dbg !2365
  br i1 %2, label %3, label %7, !dbg !2366

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64, !dbg !2367
  %5 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %4, i32 1, !dbg !2368
  %6 = load double, ptr %5, align 8, !dbg !2368, !tbaa !694
  tail call void @llvm.dbg.value(metadata double %6, metadata !2360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2362
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2360, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2362
  br label %14, !dbg !2369

7:                                                ; preds = %1
  %8 = icmp ult i32 %0, 171, !dbg !2370
  br i1 %8, label %9, label %13, !dbg !2371

9:                                                ; preds = %7
  %10 = zext nneg i32 %0 to i64, !dbg !2372
  %11 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %10, i32 1, !dbg !2373
  %12 = load double, ptr %11, align 8, !dbg !2373, !tbaa !694
  tail call void @llvm.dbg.value(metadata double %12, metadata !2360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2362
  tail call void @llvm.dbg.value(metadata double poison, metadata !2360, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2362
  br label %14, !dbg !2374

13:                                               ; preds = %7
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2362
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2360, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2362
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1489, i32 noundef 16) #9, !dbg !2375
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 16, metadata !2361, metadata !DIExpression()), !dbg !2362
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1634, i32 noundef 16) #9, !dbg !2376
  br label %14, !dbg !2376

14:                                               ; preds = %9, %3, %13
  %15 = phi double [ 0x7FF0000000000000, %13 ], [ %12, %9 ], [ %6, %3 ]
  ret double %15, !dbg !2380
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lnfact(i32 noundef %0) local_unnamed_addr #0 !dbg !2381 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2386
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2384, metadata !DIExpression(), metadata !2386, metadata ptr %2, metadata !DIExpression()), !dbg !2387
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2383, metadata !DIExpression()), !dbg !2387
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %0, metadata !678, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %2, metadata !685, metadata !DIExpression()), !dbg !2389
  %3 = icmp ult i32 %0, 171, !dbg !2391
  br i1 %3, label %4, label %9, !dbg !2392

4:                                                ; preds = %1
  %5 = zext nneg i32 %0 to i64, !dbg !2393
  %6 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %5, i32 1, !dbg !2394
  %7 = load double, ptr %6, align 8, !dbg !2394, !tbaa !694
  %8 = tail call double @log(double noundef %7) #9, !dbg !2395
  call void @llvm.dbg.assign(metadata double %8, metadata !2384, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2396, metadata ptr %2, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.assign(metadata double poison, metadata !2384, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2397, metadata ptr %2, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !2387
  br label %14, !dbg !2398

9:                                                ; preds = %1
  %10 = uitofp i32 %0 to double, !dbg !2399
  %11 = fadd double %10, 1.000000e+00, !dbg !2400
  %12 = call i32 @gsl_sf_lngamma_e(double noundef %11, ptr noundef nonnull %2), !dbg !2401, !range !711
  %13 = load double, ptr %2, align 8, !dbg !2388, !tbaa !282
  br label %14, !dbg !2402

14:                                               ; preds = %4, %9
  %15 = phi double [ %8, %4 ], [ %13, %9 ], !dbg !2388
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2385, metadata !DIExpression()), !dbg !2387
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !2403
  ret double %15, !dbg !2403
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_doublefact(i32 noundef %0) local_unnamed_addr #0 !dbg !2404 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2406, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %0, metadata !2031, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata ptr undef, metadata !2032, metadata !DIExpression()), !dbg !2410
  %2 = icmp ult i32 %0, 26, !dbg !2412
  br i1 %2, label %3, label %7, !dbg !2413

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64, !dbg !2414
  %5 = getelementptr inbounds [298 x %struct.anon.0], ptr @doub_fact_table, i64 0, i64 %4, i32 1, !dbg !2415
  %6 = load double, ptr %5, align 8, !dbg !2415, !tbaa !694
  tail call void @llvm.dbg.value(metadata double %6, metadata !2407, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2409
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2407, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2409
  br label %14, !dbg !2416

7:                                                ; preds = %1
  %8 = icmp ult i32 %0, 298, !dbg !2417
  br i1 %8, label %9, label %13, !dbg !2418

9:                                                ; preds = %7
  %10 = zext nneg i32 %0 to i64, !dbg !2419
  %11 = getelementptr inbounds [298 x %struct.anon.0], ptr @doub_fact_table, i64 0, i64 %10, i32 1, !dbg !2420
  %12 = load double, ptr %11, align 8, !dbg !2420, !tbaa !694
  tail call void @llvm.dbg.value(metadata double %12, metadata !2407, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2409
  tail call void @llvm.dbg.value(metadata double poison, metadata !2407, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2409
  br label %14, !dbg !2421

13:                                               ; preds = %7
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2407, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2409
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2407, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2409
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1509, i32 noundef 16) #9, !dbg !2422
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2407, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2409
  tail call void @llvm.dbg.value(metadata i32 16, metadata !2408, metadata !DIExpression()), !dbg !2409
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1644, i32 noundef 16) #9, !dbg !2423
  br label %14, !dbg !2423

14:                                               ; preds = %9, %3, %13
  %15 = phi double [ 0x7FF0000000000000, %13 ], [ %12, %9 ], [ %6, %3 ]
  ret double %15, !dbg !2427
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lndoublefact(i32 noundef %0) local_unnamed_addr #0 !dbg !2428 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2431, metadata !DIExpression(), metadata !2433, metadata ptr %2, metadata !DIExpression()), !dbg !2434
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2430, metadata !DIExpression()), !dbg !2434
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !2435
  %3 = call i32 @gsl_sf_lndoublefact_e(i32 noundef %0, ptr noundef nonnull %2), !dbg !2435
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2432, metadata !DIExpression()), !dbg !2434
  %4 = load double, ptr %2, align 8, !dbg !2435, !tbaa !282
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !2436
  ret double %4, !dbg !2436
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lngamma(double noundef %0) local_unnamed_addr #0 !dbg !2437 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2444
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2442, metadata !DIExpression(), metadata !2444, metadata ptr %2, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata double %0, metadata !2441, metadata !DIExpression()), !dbg !2445
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !2446
  %3 = call i32 @gsl_sf_lngamma_e(double noundef %0, ptr noundef nonnull %2), !dbg !2446, !range !711
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2443, metadata !DIExpression()), !dbg !2445
  %4 = icmp eq i32 %3, 0, !dbg !2447
  br i1 %4, label %6, label %5, !dbg !2446

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1654, i32 noundef %3) #9, !dbg !2449
  br label %6, !dbg !2449

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !2446, !tbaa !282
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !2452
  ret double %7, !dbg !2452
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gamma(double noundef %0) local_unnamed_addr #0 !dbg !2453 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2458
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2456, metadata !DIExpression(), metadata !2458, metadata ptr %2, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata double %0, metadata !2455, metadata !DIExpression()), !dbg !2459
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !2460
  %3 = call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef nonnull %2), !dbg !2460
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2457, metadata !DIExpression()), !dbg !2459
  %4 = icmp eq i32 %3, 0, !dbg !2461
  br i1 %4, label %6, label %5, !dbg !2460

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1659, i32 noundef %3) #9, !dbg !2463
  br label %6, !dbg !2463

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !2460, !tbaa !282
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !2466
  ret double %7, !dbg !2466
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gammastar(double noundef %0) local_unnamed_addr #0 !dbg !2467 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2472
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2470, metadata !DIExpression(), metadata !2472, metadata ptr %2, metadata !DIExpression()), !dbg !2473
  tail call void @llvm.dbg.value(metadata double %0, metadata !2469, metadata !DIExpression()), !dbg !2473
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !2474
  %3 = call i32 @gsl_sf_gammastar_e(double noundef %0, ptr noundef nonnull %2), !dbg !2474
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2471, metadata !DIExpression()), !dbg !2473
  %4 = icmp eq i32 %3, 0, !dbg !2475
  br i1 %4, label %6, label %5, !dbg !2474

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1664, i32 noundef %3) #9, !dbg !2477
  br label %6, !dbg !2477

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !2474, !tbaa !282
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !2480
  ret double %7, !dbg !2480
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gammainv(double noundef %0) local_unnamed_addr #0 !dbg !2481 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2486
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2484, metadata !DIExpression(), metadata !2486, metadata ptr %2, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata double %0, metadata !2483, metadata !DIExpression()), !dbg !2487
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !2488
  %3 = call i32 @gsl_sf_gammainv_e(double noundef %0, ptr noundef nonnull %2), !dbg !2488
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2485, metadata !DIExpression()), !dbg !2487
  %4 = icmp eq i32 %3, 0, !dbg !2489
  br i1 %4, label %6, label %5, !dbg !2488

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1669, i32 noundef %3) #9, !dbg !2491
  br label %6, !dbg !2491

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !2488, !tbaa !282
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !2494
  ret double %7, !dbg !2494
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_taylorcoeff(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2495 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2503
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2501, metadata !DIExpression(), metadata !2503, metadata ptr %3, metadata !DIExpression()), !dbg !2504
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2499, metadata !DIExpression()), !dbg !2504
  tail call void @llvm.dbg.value(metadata double %1, metadata !2500, metadata !DIExpression()), !dbg !2504
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !2505
  %4 = call i32 @gsl_sf_taylorcoeff_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2505, !range !1086
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2502, metadata !DIExpression()), !dbg !2504
  %5 = icmp eq i32 %4, 0, !dbg !2506
  br i1 %5, label %7, label %6, !dbg !2505

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1674, i32 noundef %4) #9, !dbg !2508
  br label %7, !dbg !2508

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !2505, !tbaa !282
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !2511
  ret double %8, !dbg !2511
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_choose(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2512 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2520
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2518, metadata !DIExpression(), metadata !2520, metadata ptr %3, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2516, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2517, metadata !DIExpression()), !dbg !2521
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !2522
  %4 = call i32 @gsl_sf_choose_e(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !2522
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2519, metadata !DIExpression()), !dbg !2521
  %5 = icmp eq i32 %4, 0, !dbg !2523
  br i1 %5, label %7, label %6, !dbg !2522

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1679, i32 noundef %4) #9, !dbg !2525
  br label %7, !dbg !2525

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !2522, !tbaa !282
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !2528
  ret double %8, !dbg !2528
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lnchoose(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2529 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2535
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2533, metadata !DIExpression(), metadata !2535, metadata ptr %3, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2532, metadata !DIExpression()), !dbg !2536
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !2537
  %4 = call i32 @gsl_sf_lnchoose_e(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !2537, !range !483
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2534, metadata !DIExpression()), !dbg !2536
  %5 = icmp eq i32 %4, 0, !dbg !2538
  br i1 %5, label %7, label %6, !dbg !2537

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1684, i32 noundef 1) #9, !dbg !2540
  br label %7, !dbg !2540

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !2537, !tbaa !282
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !2543
  ret double %8, !dbg !2543
}

declare !dbg !2544 i32 @gsl_sf_psi_int_e(i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2548 i32 @gsl_sf_psi_1_int_e(i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2549 i32 @gsl_sf_psi_n_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2550 double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2551 double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2552 double @sqrt(double noundef) local_unnamed_addr #5

declare !dbg !2553 i32 @gsl_sf_complex_log_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2555 i32 @gsl_sf_angle_restrict_symm_err_e(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1138, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "gamma.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "90e733926436881dbc1a6a7354634a57")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1138, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1159, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1249, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 37)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1276, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 10)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1457, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 9)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "fact_table", scope: !34, file: !2, line: 42, type: !171, isLocal: true, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !75, globals: !77, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 39, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!40 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!41 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!42 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!43 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!44 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!45 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!46 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!47 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!48 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!49 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!50 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!51 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!52 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!53 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!54 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!55 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!56 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!57 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!58 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!59 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!60 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!61 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!62 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!63 = !DIEnumerator(name: "GSL_ESING", value: 21)
!64 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!65 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!66 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!67 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!68 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!69 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!70 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!71 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!72 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!73 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!74 = !DIEnumerator(name: "GSL_EOF", value: 32)
!75 = !{!38, !76}
!76 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!77 = !{!0, !7, !12, !17, !22, !27, !78, !83, !88, !93, !98, !103, !108, !113, !118, !123, !125, !130, !133, !146, !151, !153, !156, !158, !32, !160}
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1634, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 26)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1639, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 28)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1644, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 32)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1649, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 34)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1654, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 29)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1659, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 27)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1664, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 31)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1669, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 30)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1674, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 36)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1679, type: !110, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1684, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 33)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "lanczos_7_c", scope: !34, file: !2, line: 644, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 576, elements: !30)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "gamma_5_10_cs", scope: !34, file: !2, line: 1006, type: !135, isLocal: true, isDefinition: true)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !137, line: 29, baseType: !138)
!137 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !137, line: 22, size: 320, elements: !139)
!139 = !{!140, !142, !143, !144, !145}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !138, file: !137, line: 23, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !138, file: !137, line: 24, baseType: !38, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !138, file: !137, line: 25, baseType: !76, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !138, file: !137, line: 26, baseType: !76, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !138, file: !137, line: 27, baseType: !38, size: 32, offset: 256)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "gamma_5_10_data", scope: !34, file: !2, line: 980, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1536, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 24)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "gstar_a_cs", scope: !34, file: !2, line: 592, type: !136, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "gstar_a_data", scope: !34, file: !2, line: 560, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1920, elements: !116)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "gstar_b_cs", scope: !34, file: !2, line: 635, type: !136, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "gstar_b_data", scope: !34, file: !2, line: 603, type: !155, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "doub_fact_table", scope: !34, file: !2, line: 251, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 57216, elements: !169)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 251, size: 192, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !163, file: !2, line: 251, baseType: !38, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !163, file: !2, line: 251, baseType: !76, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !163, file: !2, line: 251, baseType: !168, size: 64, offset: 128)
!168 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!169 = !{!170}
!170 = !DISubrange(count: 298)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 32832, elements: !177)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 42, size: 192, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !172, file: !2, line: 42, baseType: !38, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !172, file: !2, line: 42, baseType: !76, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !172, file: !2, line: 42, baseType: !168, size: 64, offset: 128)
!177 = !{!178}
!178 = !DISubrange(count: 171)
!179 = !{i32 7, !"Dwarf Version", i32 5}
!180 = !{i32 2, !"Debug Info Version", i32 3}
!181 = !{i32 1, !"wchar_size", i32 4}
!182 = !{i32 8, !"PIC Level", i32 2}
!183 = !{i32 7, !"PIE Level", i32 2}
!184 = !{i32 7, !"uwtable", i32 2}
!185 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!186 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!187 = distinct !DISubprogram(name: "gsl_sf_lngamma_e", scope: !2, file: !2, line: 1114, type: !188, scopeLine: 1115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !197)
!188 = !DISubroutineType(types: !189)
!189 = !{!38, !76, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !192, line: 41, baseType: !193)
!192 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !192, line: 37, size: 128, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !193, file: !192, line: 38, baseType: !76, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !193, file: !192, line: 39, baseType: !76, size: 64, offset: 64)
!197 = !{!198, !199, !200, !203, !206, !211, !214, !215, !216, !222, !223, !224}
!198 = !DILocalVariable(name: "x", arg: 1, scope: !187, file: !2, line: 1114, type: !76)
!199 = !DILocalVariable(name: "result", arg: 2, scope: !187, file: !2, line: 1114, type: !190)
!200 = !DILocalVariable(name: "stat", scope: !201, file: !2, line: 1125, type: !38)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 1118, column: 28)
!202 = distinct !DILexicalBlock(scope: !187, file: !2, line: 1118, column: 6)
!203 = !DILocalVariable(name: "stat", scope: !204, file: !2, line: 1130, type: !38)
!204 = distinct !DILexicalBlock(scope: !205, file: !2, line: 1129, column: 33)
!205 = distinct !DILexicalBlock(scope: !202, file: !2, line: 1129, column: 11)
!206 = !DILocalVariable(name: "sgn", scope: !207, file: !2, line: 1141, type: !76)
!207 = distinct !DILexicalBlock(scope: !208, file: !2, line: 1140, column: 27)
!208 = distinct !DILexicalBlock(scope: !209, file: !2, line: 1140, column: 11)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 1137, column: 11)
!210 = distinct !DILexicalBlock(scope: !205, file: !2, line: 1134, column: 11)
!211 = !DILocalVariable(name: "z", scope: !212, file: !2, line: 1148, type: !76)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 1144, column: 44)
!213 = distinct !DILexicalBlock(scope: !208, file: !2, line: 1144, column: 11)
!214 = !DILocalVariable(name: "s", scope: !212, file: !2, line: 1149, type: !76)
!215 = !DILocalVariable(name: "as", scope: !212, file: !2, line: 1150, type: !76)
!216 = !DILocalVariable(name: "N", scope: !217, file: !2, line: 1162, type: !38)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 1161, column: 12)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 1156, column: 10)
!219 = distinct !DILexicalBlock(scope: !220, file: !2, line: 1154, column: 30)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 1154, column: 13)
!221 = distinct !DILexicalBlock(scope: !212, file: !2, line: 1151, column: 8)
!222 = !DILocalVariable(name: "eps", scope: !217, file: !2, line: 1163, type: !76)
!223 = !DILocalVariable(name: "sgn", scope: !217, file: !2, line: 1164, type: !76)
!224 = !DILocalVariable(name: "lg_z", scope: !225, file: !2, line: 1169, type: !191)
!225 = distinct !DILexicalBlock(scope: !220, file: !2, line: 1168, column: 10)
!226 = distinct !DIAssignID()
!227 = !DILocation(line: 0, scope: !217)
!228 = distinct !DIAssignID()
!229 = !DILocation(line: 0, scope: !225)
!230 = !DILocation(line: 0, scope: !187)
!231 = !DILocation(line: 1118, column: 13, scope: !202)
!232 = !DILocation(line: 1118, column: 6, scope: !202)
!233 = !DILocation(line: 1118, column: 20, scope: !202)
!234 = !DILocation(line: 1118, column: 6, scope: !187)
!235 = !DILocalVariable(name: "eps", arg: 1, scope: !236, file: !2, line: 897, type: !239)
!236 = distinct !DISubprogram(name: "lngamma_1_pade", scope: !2, file: !2, line: 897, type: !237, scopeLine: 898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !240)
!237 = !DISubroutineType(types: !238)
!238 = !{!38, !239, !190}
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!240 = !{!235, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!241 = !DILocalVariable(name: "result", arg: 2, scope: !236, file: !2, line: 897, type: !190)
!242 = !DILocalVariable(name: "n1", scope: !236, file: !2, line: 902, type: !239)
!243 = !DILocalVariable(name: "n2", scope: !236, file: !2, line: 903, type: !239)
!244 = !DILocalVariable(name: "d1", scope: !236, file: !2, line: 904, type: !239)
!245 = !DILocalVariable(name: "d2", scope: !236, file: !2, line: 905, type: !239)
!246 = !DILocalVariable(name: "num", scope: !236, file: !2, line: 906, type: !239)
!247 = !DILocalVariable(name: "den", scope: !236, file: !2, line: 907, type: !239)
!248 = !DILocalVariable(name: "pade", scope: !236, file: !2, line: 908, type: !239)
!249 = !DILocalVariable(name: "c0", scope: !236, file: !2, line: 909, type: !239)
!250 = !DILocalVariable(name: "c1", scope: !236, file: !2, line: 910, type: !239)
!251 = !DILocalVariable(name: "c2", scope: !236, file: !2, line: 911, type: !239)
!252 = !DILocalVariable(name: "c3", scope: !236, file: !2, line: 912, type: !239)
!253 = !DILocalVariable(name: "c4", scope: !236, file: !2, line: 913, type: !239)
!254 = !DILocalVariable(name: "eps5", scope: !236, file: !2, line: 914, type: !239)
!255 = !DILocalVariable(name: "corr", scope: !236, file: !2, line: 915, type: !239)
!256 = !DILocation(line: 0, scope: !236, inlinedAt: !257)
!257 = distinct !DILocation(line: 1125, column: 16, scope: !201)
!258 = !DILocation(line: 906, column: 27, scope: !236, inlinedAt: !257)
!259 = !DILocation(line: 906, column: 40, scope: !236, inlinedAt: !257)
!260 = !DILocation(line: 906, column: 33, scope: !236, inlinedAt: !257)
!261 = !DILocation(line: 907, column: 27, scope: !236, inlinedAt: !257)
!262 = !DILocation(line: 907, column: 40, scope: !236, inlinedAt: !257)
!263 = !DILocation(line: 907, column: 33, scope: !236, inlinedAt: !257)
!264 = !DILocation(line: 908, column: 54, scope: !236, inlinedAt: !257)
!265 = !DILocation(line: 908, column: 60, scope: !236, inlinedAt: !257)
!266 = !DILocation(line: 914, column: 26, scope: !236, inlinedAt: !257)
!267 = !DILocation(line: 914, column: 30, scope: !236, inlinedAt: !257)
!268 = !DILocation(line: 914, column: 34, scope: !236, inlinedAt: !257)
!269 = !DILocation(line: 914, column: 38, scope: !236, inlinedAt: !257)
!270 = !DILocation(line: 915, column: 68, scope: !236, inlinedAt: !257)
!271 = !DILocation(line: 915, column: 64, scope: !236, inlinedAt: !257)
!272 = !DILocation(line: 915, column: 59, scope: !236, inlinedAt: !257)
!273 = !DILocation(line: 915, column: 54, scope: !236, inlinedAt: !257)
!274 = !DILocation(line: 915, column: 49, scope: !236, inlinedAt: !257)
!275 = !DILocation(line: 915, column: 44, scope: !236, inlinedAt: !257)
!276 = !DILocation(line: 915, column: 39, scope: !236, inlinedAt: !257)
!277 = !DILocation(line: 915, column: 34, scope: !236, inlinedAt: !257)
!278 = !DILocation(line: 915, column: 28, scope: !236, inlinedAt: !257)
!279 = !DILocation(line: 916, column: 29, scope: !236, inlinedAt: !257)
!280 = !DILocation(line: 916, column: 21, scope: !236, inlinedAt: !257)
!281 = !DILocation(line: 916, column: 15, scope: !236, inlinedAt: !257)
!282 = !{!283, !284, i64 0}
!283 = !{!"gsl_sf_result_struct", !284, i64 0, !284, i64 8}
!284 = !{!"double", !285, i64 0}
!285 = !{!"omnipotent char", !286, i64 0}
!286 = !{!"Simple C/C++ TBAA"}
!287 = !DILocation(line: 917, column: 41, scope: !236, inlinedAt: !257)
!288 = !DILocation(line: 917, column: 39, scope: !236, inlinedAt: !257)
!289 = !DILocation(line: 917, column: 11, scope: !236, inlinedAt: !257)
!290 = !DILocation(line: 0, scope: !201)
!291 = !DILocation(line: 1126, column: 41, scope: !201)
!292 = !DILocation(line: 1126, column: 23, scope: !201)
!293 = !DILocation(line: 1126, column: 17, scope: !201)
!294 = !{!283, !284, i64 8}
!295 = !DILocation(line: 1129, column: 18, scope: !205)
!296 = !DILocation(line: 1129, column: 11, scope: !205)
!297 = !DILocation(line: 1129, column: 25, scope: !205)
!298 = !DILocation(line: 1129, column: 11, scope: !202)
!299 = !DILocalVariable(name: "eps", arg: 1, scope: !300, file: !2, line: 924, type: !239)
!300 = distinct !DISubprogram(name: "lngamma_2_pade", scope: !2, file: !2, line: 924, type: !237, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !301)
!301 = !{!299, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!302 = !DILocalVariable(name: "result", arg: 2, scope: !300, file: !2, line: 924, type: !190)
!303 = !DILocalVariable(name: "n1", scope: !300, file: !2, line: 929, type: !239)
!304 = !DILocalVariable(name: "n2", scope: !300, file: !2, line: 930, type: !239)
!305 = !DILocalVariable(name: "d1", scope: !300, file: !2, line: 931, type: !239)
!306 = !DILocalVariable(name: "d2", scope: !300, file: !2, line: 932, type: !239)
!307 = !DILocalVariable(name: "num", scope: !300, file: !2, line: 933, type: !239)
!308 = !DILocalVariable(name: "den", scope: !300, file: !2, line: 934, type: !239)
!309 = !DILocalVariable(name: "pade", scope: !300, file: !2, line: 935, type: !239)
!310 = !DILocalVariable(name: "c0", scope: !300, file: !2, line: 936, type: !239)
!311 = !DILocalVariable(name: "c1", scope: !300, file: !2, line: 937, type: !239)
!312 = !DILocalVariable(name: "c2", scope: !300, file: !2, line: 938, type: !239)
!313 = !DILocalVariable(name: "c3", scope: !300, file: !2, line: 939, type: !239)
!314 = !DILocalVariable(name: "c4", scope: !300, file: !2, line: 940, type: !239)
!315 = !DILocalVariable(name: "eps5", scope: !300, file: !2, line: 941, type: !239)
!316 = !DILocalVariable(name: "corr", scope: !300, file: !2, line: 942, type: !239)
!317 = !DILocation(line: 0, scope: !300, inlinedAt: !318)
!318 = distinct !DILocation(line: 1130, column: 16, scope: !204)
!319 = !DILocation(line: 933, column: 27, scope: !300, inlinedAt: !318)
!320 = !DILocation(line: 933, column: 40, scope: !300, inlinedAt: !318)
!321 = !DILocation(line: 933, column: 33, scope: !300, inlinedAt: !318)
!322 = !DILocation(line: 934, column: 27, scope: !300, inlinedAt: !318)
!323 = !DILocation(line: 934, column: 40, scope: !300, inlinedAt: !318)
!324 = !DILocation(line: 934, column: 33, scope: !300, inlinedAt: !318)
!325 = !DILocation(line: 935, column: 52, scope: !300, inlinedAt: !318)
!326 = !DILocation(line: 935, column: 57, scope: !300, inlinedAt: !318)
!327 = !DILocation(line: 941, column: 26, scope: !300, inlinedAt: !318)
!328 = !DILocation(line: 941, column: 30, scope: !300, inlinedAt: !318)
!329 = !DILocation(line: 941, column: 34, scope: !300, inlinedAt: !318)
!330 = !DILocation(line: 941, column: 38, scope: !300, inlinedAt: !318)
!331 = !DILocation(line: 942, column: 68, scope: !300, inlinedAt: !318)
!332 = !DILocation(line: 942, column: 64, scope: !300, inlinedAt: !318)
!333 = !DILocation(line: 942, column: 59, scope: !300, inlinedAt: !318)
!334 = !DILocation(line: 942, column: 54, scope: !300, inlinedAt: !318)
!335 = !DILocation(line: 942, column: 49, scope: !300, inlinedAt: !318)
!336 = !DILocation(line: 942, column: 44, scope: !300, inlinedAt: !318)
!337 = !DILocation(line: 942, column: 39, scope: !300, inlinedAt: !318)
!338 = !DILocation(line: 942, column: 34, scope: !300, inlinedAt: !318)
!339 = !DILocation(line: 942, column: 28, scope: !300, inlinedAt: !318)
!340 = !DILocation(line: 943, column: 29, scope: !300, inlinedAt: !318)
!341 = !DILocation(line: 943, column: 21, scope: !300, inlinedAt: !318)
!342 = !DILocation(line: 943, column: 15, scope: !300, inlinedAt: !318)
!343 = !DILocation(line: 944, column: 41, scope: !300, inlinedAt: !318)
!344 = !DILocation(line: 944, column: 39, scope: !300, inlinedAt: !318)
!345 = !DILocation(line: 944, column: 11, scope: !300, inlinedAt: !318)
!346 = !DILocation(line: 0, scope: !204)
!347 = !DILocation(line: 1131, column: 41, scope: !204)
!348 = !DILocation(line: 1131, column: 23, scope: !204)
!349 = !DILocation(line: 1131, column: 17, scope: !204)
!350 = !DILocation(line: 1134, column: 13, scope: !210)
!351 = !DILocation(line: 1134, column: 11, scope: !205)
!352 = !DILocalVariable(name: "x", arg: 1, scope: !353, file: !2, line: 703, type: !76)
!353 = distinct !DISubprogram(name: "lngamma_lanczos", scope: !2, file: !2, line: 703, type: !354, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !355)
!354 = !DISubroutineType(cc: DW_CC_nocall, types: !189)
!355 = !{!352, !356, !357, !358, !359, !360}
!356 = !DILocalVariable(name: "result", arg: 2, scope: !353, file: !2, line: 703, type: !190)
!357 = !DILocalVariable(name: "k", scope: !353, file: !2, line: 705, type: !38)
!358 = !DILocalVariable(name: "Ag", scope: !353, file: !2, line: 706, type: !76)
!359 = !DILocalVariable(name: "term1", scope: !353, file: !2, line: 707, type: !76)
!360 = !DILocalVariable(name: "term2", scope: !353, file: !2, line: 707, type: !76)
!361 = !DILocation(line: 0, scope: !353, inlinedAt: !362)
!362 = distinct !DILocation(line: 1135, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !210, file: !2, line: 1134, column: 21)
!364 = !DILocation(line: 712, column: 48, scope: !365, inlinedAt: !362)
!365 = distinct !DILexicalBlock(scope: !366, file: !2, line: 712, column: 23)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 712, column: 3)
!367 = distinct !DILexicalBlock(scope: !353, file: !2, line: 712, column: 3)
!368 = !DILocation(line: 712, column: 45, scope: !365, inlinedAt: !362)
!369 = !DILocation(line: 712, column: 28, scope: !365, inlinedAt: !362)
!370 = !DILocation(line: 715, column: 13, scope: !353, inlinedAt: !362)
!371 = !DILocation(line: 715, column: 25, scope: !353, inlinedAt: !362)
!372 = !DILocation(line: 715, column: 30, scope: !353, inlinedAt: !362)
!373 = !DILocation(line: 715, column: 19, scope: !353, inlinedAt: !362)
!374 = !DILocation(line: 715, column: 18, scope: !353, inlinedAt: !362)
!375 = !DILocation(line: 716, column: 27, scope: !353, inlinedAt: !362)
!376 = !DILocation(line: 716, column: 25, scope: !353, inlinedAt: !362)
!377 = !DILocation(line: 717, column: 33, scope: !353, inlinedAt: !362)
!378 = !DILocation(line: 717, column: 24, scope: !353, inlinedAt: !362)
!379 = !DILocation(line: 717, column: 16, scope: !353, inlinedAt: !362)
!380 = !DILocation(line: 718, column: 43, scope: !353, inlinedAt: !362)
!381 = !DILocation(line: 718, column: 57, scope: !353, inlinedAt: !362)
!382 = !DILocation(line: 718, column: 55, scope: !353, inlinedAt: !362)
!383 = !DILocation(line: 718, column: 69, scope: !353, inlinedAt: !362)
!384 = !DILocation(line: 718, column: 40, scope: !353, inlinedAt: !362)
!385 = !DILocation(line: 718, column: 11, scope: !353, inlinedAt: !362)
!386 = !DILocation(line: 719, column: 36, scope: !353, inlinedAt: !362)
!387 = !DILocation(line: 719, column: 34, scope: !353, inlinedAt: !362)
!388 = !DILocation(line: 719, column: 15, scope: !353, inlinedAt: !362)
!389 = !DILocation(line: 1135, column: 5, scope: !363)
!390 = !DILocation(line: 1137, column: 13, scope: !209)
!391 = !DILocation(line: 1137, column: 11, scope: !210)
!392 = !DILocation(line: 1138, column: 5, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !2, line: 1138, column: 5)
!394 = distinct !DILexicalBlock(scope: !209, file: !2, line: 1137, column: 21)
!395 = !DILocation(line: 1138, column: 5, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !2, line: 1138, column: 5)
!397 = !DILocation(line: 1140, column: 11, scope: !208)
!398 = !DILocation(line: 1140, column: 19, scope: !208)
!399 = !DILocation(line: 1140, column: 11, scope: !209)
!400 = !DILocalVariable(name: "eps", arg: 1, scope: !401, file: !2, line: 729, type: !76)
!401 = distinct !DISubprogram(name: "lngamma_sgn_0", scope: !2, file: !2, line: 729, type: !402, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{!38, !76, !190, !141}
!404 = !{!400, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!405 = !DILocalVariable(name: "lng", arg: 2, scope: !401, file: !2, line: 729, type: !190)
!406 = !DILocalVariable(name: "sgn", arg: 3, scope: !401, file: !2, line: 729, type: !141)
!407 = !DILocalVariable(name: "c1", scope: !401, file: !2, line: 732, type: !239)
!408 = !DILocalVariable(name: "c2", scope: !401, file: !2, line: 733, type: !239)
!409 = !DILocalVariable(name: "c3", scope: !401, file: !2, line: 734, type: !239)
!410 = !DILocalVariable(name: "c4", scope: !401, file: !2, line: 735, type: !239)
!411 = !DILocalVariable(name: "c5", scope: !401, file: !2, line: 736, type: !239)
!412 = !DILocalVariable(name: "c6", scope: !401, file: !2, line: 737, type: !239)
!413 = !DILocalVariable(name: "c7", scope: !401, file: !2, line: 738, type: !239)
!414 = !DILocalVariable(name: "c8", scope: !401, file: !2, line: 739, type: !239)
!415 = !DILocalVariable(name: "c9", scope: !401, file: !2, line: 740, type: !239)
!416 = !DILocalVariable(name: "c10", scope: !401, file: !2, line: 741, type: !239)
!417 = !DILocalVariable(name: "g6", scope: !401, file: !2, line: 742, type: !239)
!418 = !DILocalVariable(name: "g", scope: !401, file: !2, line: 743, type: !239)
!419 = !DILocalVariable(name: "gee", scope: !401, file: !2, line: 746, type: !239)
!420 = !DILocation(line: 0, scope: !401, inlinedAt: !421)
!421 = distinct !DILocation(line: 1142, column: 12, scope: !207)
!422 = !DILocation(line: 742, column: 56, scope: !401, inlinedAt: !421)
!423 = !DILocation(line: 742, column: 51, scope: !401, inlinedAt: !421)
!424 = !DILocation(line: 742, column: 46, scope: !401, inlinedAt: !421)
!425 = !DILocation(line: 742, column: 41, scope: !401, inlinedAt: !421)
!426 = !DILocation(line: 742, column: 36, scope: !401, inlinedAt: !421)
!427 = !DILocation(line: 742, column: 32, scope: !401, inlinedAt: !421)
!428 = !DILocation(line: 742, column: 28, scope: !401, inlinedAt: !421)
!429 = !DILocation(line: 742, column: 24, scope: !401, inlinedAt: !421)
!430 = !DILocation(line: 743, column: 65, scope: !401, inlinedAt: !421)
!431 = !DILocation(line: 743, column: 61, scope: !401, inlinedAt: !421)
!432 = !DILocation(line: 743, column: 57, scope: !401, inlinedAt: !421)
!433 = !DILocation(line: 743, column: 53, scope: !401, inlinedAt: !421)
!434 = !DILocation(line: 743, column: 49, scope: !401, inlinedAt: !421)
!435 = !DILocation(line: 743, column: 45, scope: !401, inlinedAt: !421)
!436 = !DILocation(line: 743, column: 41, scope: !401, inlinedAt: !421)
!437 = !DILocation(line: 743, column: 37, scope: !401, inlinedAt: !421)
!438 = !DILocation(line: 743, column: 33, scope: !401, inlinedAt: !421)
!439 = !DILocation(line: 743, column: 29, scope: !401, inlinedAt: !421)
!440 = !DILocation(line: 743, column: 25, scope: !401, inlinedAt: !421)
!441 = !DILocation(line: 746, column: 34, scope: !401, inlinedAt: !421)
!442 = !DILocation(line: 746, column: 29, scope: !401, inlinedAt: !421)
!443 = !DILocation(line: 746, column: 24, scope: !401, inlinedAt: !421)
!444 = !DILocation(line: 746, column: 45, scope: !401, inlinedAt: !421)
!445 = !DILocation(line: 746, column: 40, scope: !401, inlinedAt: !421)
!446 = !DILocation(line: 748, column: 21, scope: !401, inlinedAt: !421)
!447 = !DILocation(line: 748, column: 14, scope: !401, inlinedAt: !421)
!448 = !DILocation(line: 748, column: 12, scope: !401, inlinedAt: !421)
!449 = !DILocation(line: 749, column: 38, scope: !401, inlinedAt: !421)
!450 = !DILocation(line: 749, column: 36, scope: !401, inlinedAt: !421)
!451 = !DILocation(line: 749, column: 8, scope: !401, inlinedAt: !421)
!452 = !DILocation(line: 749, column: 12, scope: !401, inlinedAt: !421)
!453 = !DILocation(line: 0, scope: !207)
!454 = !DILocation(line: 1144, column: 13, scope: !213)
!455 = !DILocation(line: 1144, column: 11, scope: !208)
!456 = !DILocation(line: 1148, column: 21, scope: !212)
!457 = !DILocation(line: 0, scope: !212)
!458 = !DILocation(line: 1149, column: 25, scope: !212)
!459 = !DILocation(line: 1149, column: 17, scope: !212)
!460 = !DILocation(line: 1150, column: 17, scope: !212)
!461 = !DILocation(line: 1151, column: 10, scope: !221)
!462 = !DILocation(line: 1151, column: 8, scope: !212)
!463 = !DILocation(line: 1152, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 1152, column: 7)
!465 = distinct !DILexicalBlock(scope: !221, file: !2, line: 1151, column: 18)
!466 = !DILocation(line: 1152, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !2, line: 1152, column: 7)
!468 = !DILocation(line: 1154, column: 16, scope: !220)
!469 = !DILocation(line: 1154, column: 13, scope: !221)
!470 = !DILocation(line: 1156, column: 12, scope: !218)
!471 = !DILocation(line: 1156, column: 10, scope: !219)
!472 = !DILocation(line: 1158, column: 21, scope: !473)
!473 = distinct !DILexicalBlock(scope: !218, file: !2, line: 1156, column: 29)
!474 = !DILocation(line: 1159, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !473, file: !2, line: 1159, column: 9)
!476 = !DILocation(line: 1162, column: 26, scope: !217)
!477 = !DILocation(line: 1162, column: 18, scope: !217)
!478 = !DILocation(line: 1162, column: 17, scope: !217)
!479 = !DILocation(line: 1163, column: 26, scope: !217)
!480 = !DILocation(line: 1163, column: 24, scope: !217)
!481 = !DILocation(line: 1164, column: 9, scope: !217)
!482 = !DILocation(line: 1165, column: 16, scope: !217)
!483 = !{i32 0, i32 2}
!484 = !DILocation(line: 1166, column: 7, scope: !218)
!485 = !DILocation(line: 1169, column: 7, scope: !225)
!486 = !DILocation(line: 1170, column: 7, scope: !225)
!487 = !DILocation(line: 1171, column: 31, scope: !225)
!488 = !DILocation(line: 1171, column: 46, scope: !225)
!489 = !DILocation(line: 1171, column: 39, scope: !225)
!490 = !DILocation(line: 1171, column: 28, scope: !225)
!491 = !DILocation(line: 1171, column: 19, scope: !225)
!492 = !DILocation(line: 1172, column: 45, scope: !225)
!493 = !DILocation(line: 1172, column: 43, scope: !225)
!494 = !DILocation(line: 1172, column: 70, scope: !225)
!495 = !DILocation(line: 1172, column: 63, scope: !225)
!496 = !DILocation(line: 1172, column: 15, scope: !225)
!497 = !DILocation(line: 1172, column: 19, scope: !225)
!498 = !DILocation(line: 1174, column: 5, scope: !220)
!499 = !DILocation(line: 1179, column: 17, scope: !500)
!500 = distinct !DILexicalBlock(scope: !213, file: !2, line: 1176, column: 8)
!501 = !DILocation(line: 1180, column: 5, scope: !502)
!502 = distinct !DILexicalBlock(scope: !500, file: !2, line: 1180, column: 5)
!503 = !DILocation(line: 0, scope: !202)
!504 = !DILocation(line: 1182, column: 1, scope: !187)
!505 = !DILocation(line: 0, scope: !353)
!506 = !DILocation(line: 709, column: 5, scope: !353)
!507 = !DILocation(line: 712, column: 48, scope: !365)
!508 = !DILocation(line: 712, column: 45, scope: !365)
!509 = !DILocation(line: 712, column: 28, scope: !365)
!510 = !DILocation(line: 715, column: 13, scope: !353)
!511 = !DILocation(line: 715, column: 25, scope: !353)
!512 = !DILocation(line: 715, column: 30, scope: !353)
!513 = !DILocation(line: 715, column: 19, scope: !353)
!514 = !DILocation(line: 715, column: 18, scope: !353)
!515 = !DILocation(line: 716, column: 27, scope: !353)
!516 = !DILocation(line: 716, column: 25, scope: !353)
!517 = !DILocation(line: 717, column: 33, scope: !353)
!518 = !DILocation(line: 717, column: 24, scope: !353)
!519 = !DILocation(line: 717, column: 16, scope: !353)
!520 = !DILocation(line: 718, column: 43, scope: !353)
!521 = !DILocation(line: 718, column: 57, scope: !353)
!522 = !DILocation(line: 718, column: 55, scope: !353)
!523 = !DILocation(line: 718, column: 69, scope: !353)
!524 = !DILocation(line: 718, column: 40, scope: !353)
!525 = !DILocation(line: 718, column: 11, scope: !353)
!526 = !DILocation(line: 719, column: 36, scope: !353)
!527 = !DILocation(line: 719, column: 34, scope: !353)
!528 = !DILocation(line: 719, column: 15, scope: !353)
!529 = !DILocation(line: 721, column: 3, scope: !353)
!530 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !533, !533, !38, !38}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!535 = !DISubprogram(name: "sin", scope: !536, file: !536, line: 64, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!536 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!537 = !DISubroutineType(types: !538)
!538 = !{!76, !76}
!539 = distinct !DISubprogram(name: "lngamma_sgn_sing", scope: !2, file: !2, line: 763, type: !540, scopeLine: 764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{!38, !38, !76, !190, !141}
!542 = !{!543, !544, !545, !546, !547, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!543 = !DILocalVariable(name: "N", arg: 1, scope: !539, file: !2, line: 763, type: !38)
!544 = !DILocalVariable(name: "eps", arg: 2, scope: !539, file: !2, line: 763, type: !76)
!545 = !DILocalVariable(name: "lng", arg: 3, scope: !539, file: !2, line: 763, type: !190)
!546 = !DILocalVariable(name: "sgn", arg: 4, scope: !539, file: !2, line: 763, type: !141)
!547 = !DILocalVariable(name: "c0", scope: !548, file: !2, line: 776, type: !239)
!548 = distinct !DILexicalBlock(scope: !549, file: !2, line: 771, column: 19)
!549 = distinct !DILexicalBlock(scope: !550, file: !2, line: 771, column: 11)
!550 = distinct !DILexicalBlock(scope: !539, file: !2, line: 765, column: 6)
!551 = !DILocalVariable(name: "c1", scope: !548, file: !2, line: 777, type: !239)
!552 = !DILocalVariable(name: "c2", scope: !548, file: !2, line: 778, type: !239)
!553 = !DILocalVariable(name: "c3", scope: !548, file: !2, line: 779, type: !239)
!554 = !DILocalVariable(name: "c4", scope: !548, file: !2, line: 780, type: !239)
!555 = !DILocalVariable(name: "c5", scope: !548, file: !2, line: 781, type: !239)
!556 = !DILocalVariable(name: "c6", scope: !548, file: !2, line: 782, type: !239)
!557 = !DILocalVariable(name: "c7", scope: !548, file: !2, line: 783, type: !239)
!558 = !DILocalVariable(name: "c8", scope: !548, file: !2, line: 784, type: !239)
!559 = !DILocalVariable(name: "c9", scope: !548, file: !2, line: 785, type: !239)
!560 = !DILocalVariable(name: "g5", scope: !548, file: !2, line: 786, type: !239)
!561 = !DILocalVariable(name: "g", scope: !548, file: !2, line: 787, type: !239)
!562 = !DILocalVariable(name: "gam_e", scope: !548, file: !2, line: 790, type: !239)
!563 = !DILocalVariable(name: "g", scope: !564, file: !2, line: 798, type: !76)
!564 = distinct !DILexicalBlock(scope: !549, file: !2, line: 797, column: 8)
!565 = !DILocalVariable(name: "cs1", scope: !564, file: !2, line: 803, type: !239)
!566 = !DILocalVariable(name: "cs2", scope: !564, file: !2, line: 804, type: !239)
!567 = !DILocalVariable(name: "cs3", scope: !564, file: !2, line: 805, type: !239)
!568 = !DILocalVariable(name: "cs4", scope: !564, file: !2, line: 806, type: !239)
!569 = !DILocalVariable(name: "cs5", scope: !564, file: !2, line: 807, type: !239)
!570 = !DILocalVariable(name: "e2", scope: !564, file: !2, line: 808, type: !239)
!571 = !DILocalVariable(name: "sin_ser", scope: !564, file: !2, line: 809, type: !239)
!572 = !DILocalVariable(name: "aeps", scope: !564, file: !2, line: 814, type: !76)
!573 = !DILocalVariable(name: "c1", scope: !564, file: !2, line: 815, type: !76)
!574 = !DILocalVariable(name: "c2", scope: !564, file: !2, line: 815, type: !76)
!575 = !DILocalVariable(name: "c3", scope: !564, file: !2, line: 815, type: !76)
!576 = !DILocalVariable(name: "c4", scope: !564, file: !2, line: 815, type: !76)
!577 = !DILocalVariable(name: "c5", scope: !564, file: !2, line: 815, type: !76)
!578 = !DILocalVariable(name: "c6", scope: !564, file: !2, line: 815, type: !76)
!579 = !DILocalVariable(name: "c7", scope: !564, file: !2, line: 815, type: !76)
!580 = !DILocalVariable(name: "lng_ser", scope: !564, file: !2, line: 816, type: !76)
!581 = !DILocalVariable(name: "c0", scope: !564, file: !2, line: 817, type: !191)
!582 = !DILocalVariable(name: "psi_0", scope: !564, file: !2, line: 818, type: !191)
!583 = !DILocalVariable(name: "psi_1", scope: !564, file: !2, line: 819, type: !191)
!584 = !DILocalVariable(name: "psi_2", scope: !564, file: !2, line: 820, type: !191)
!585 = !DILocalVariable(name: "psi_3", scope: !564, file: !2, line: 821, type: !191)
!586 = !DILocalVariable(name: "psi_4", scope: !564, file: !2, line: 822, type: !191)
!587 = !DILocalVariable(name: "psi_5", scope: !564, file: !2, line: 823, type: !191)
!588 = !DILocalVariable(name: "psi_6", scope: !564, file: !2, line: 824, type: !191)
!589 = distinct !DIAssignID()
!590 = !DILocation(line: 0, scope: !564)
!591 = distinct !DIAssignID()
!592 = distinct !DIAssignID()
!593 = distinct !DIAssignID()
!594 = distinct !DIAssignID()
!595 = distinct !DIAssignID()
!596 = distinct !DIAssignID()
!597 = distinct !DIAssignID()
!598 = !DILocation(line: 0, scope: !539)
!599 = !DILocation(line: 765, column: 10, scope: !550)
!600 = !DILocation(line: 765, column: 6, scope: !539)
!601 = !DILocation(line: 767, column: 14, scope: !602)
!602 = distinct !DILexicalBlock(scope: !550, file: !2, line: 765, column: 18)
!603 = !DILocation(line: 768, column: 10, scope: !602)
!604 = !{!284, !284, i64 0}
!605 = !DILocation(line: 769, column: 5, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !2, line: 769, column: 5)
!607 = !DILocation(line: 771, column: 13, scope: !549)
!608 = !DILocation(line: 771, column: 11, scope: !550)
!609 = !DILocation(line: 0, scope: !548)
!610 = !DILocation(line: 786, column: 61, scope: !548)
!611 = !DILocation(line: 786, column: 56, scope: !548)
!612 = !DILocation(line: 786, column: 51, scope: !548)
!613 = !DILocation(line: 786, column: 46, scope: !548)
!614 = !DILocation(line: 786, column: 41, scope: !548)
!615 = !DILocation(line: 786, column: 36, scope: !548)
!616 = !DILocation(line: 786, column: 31, scope: !548)
!617 = !DILocation(line: 786, column: 26, scope: !548)
!618 = !DILocation(line: 787, column: 76, scope: !548)
!619 = !DILocation(line: 787, column: 71, scope: !548)
!620 = !DILocation(line: 787, column: 66, scope: !548)
!621 = !DILocation(line: 787, column: 61, scope: !548)
!622 = !DILocation(line: 787, column: 56, scope: !548)
!623 = !DILocation(line: 787, column: 51, scope: !548)
!624 = !DILocation(line: 787, column: 46, scope: !548)
!625 = !DILocation(line: 787, column: 41, scope: !548)
!626 = !DILocation(line: 787, column: 36, scope: !548)
!627 = !DILocation(line: 787, column: 31, scope: !548)
!628 = !DILocation(line: 787, column: 26, scope: !548)
!629 = !DILocation(line: 790, column: 28, scope: !548)
!630 = !DILocation(line: 790, column: 39, scope: !548)
!631 = !DILocation(line: 790, column: 52, scope: !548)
!632 = !DILocation(line: 790, column: 48, scope: !548)
!633 = !DILocation(line: 790, column: 43, scope: !548)
!634 = !DILocation(line: 790, column: 68, scope: !548)
!635 = !DILocation(line: 790, column: 63, scope: !548)
!636 = !DILocation(line: 790, column: 57, scope: !548)
!637 = !DILocation(line: 790, column: 34, scope: !548)
!638 = !DILocation(line: 792, column: 31, scope: !548)
!639 = !DILocation(line: 792, column: 16, scope: !548)
!640 = !DILocation(line: 792, column: 14, scope: !548)
!641 = !DILocation(line: 793, column: 40, scope: !548)
!642 = !DILocation(line: 793, column: 38, scope: !548)
!643 = !DILocation(line: 793, column: 10, scope: !548)
!644 = !DILocation(line: 793, column: 14, scope: !548)
!645 = !DILocation(line: 794, column: 18, scope: !548)
!646 = !DILocation(line: 794, column: 14, scope: !548)
!647 = !DILocation(line: 794, column: 10, scope: !548)
!648 = !DILocation(line: 808, column: 27, scope: !564)
!649 = !DILocation(line: 809, column: 68, scope: !564)
!650 = !DILocation(line: 809, column: 65, scope: !564)
!651 = !DILocation(line: 809, column: 60, scope: !564)
!652 = !DILocation(line: 809, column: 57, scope: !564)
!653 = !DILocation(line: 809, column: 52, scope: !564)
!654 = !DILocation(line: 809, column: 49, scope: !564)
!655 = !DILocation(line: 809, column: 44, scope: !564)
!656 = !DILocation(line: 809, column: 41, scope: !564)
!657 = !DILocation(line: 809, column: 36, scope: !564)
!658 = !DILocation(line: 809, column: 32, scope: !564)
!659 = !DILocation(line: 814, column: 19, scope: !564)
!660 = !DILocation(line: 817, column: 5, scope: !564)
!661 = !DILocation(line: 818, column: 5, scope: !564)
!662 = !DILocation(line: 819, column: 5, scope: !564)
!663 = !DILocation(line: 820, column: 5, scope: !564)
!664 = !DILocation(line: 821, column: 5, scope: !564)
!665 = !DILocation(line: 822, column: 5, scope: !564)
!666 = !DILocation(line: 823, column: 5, scope: !564)
!667 = !DILocation(line: 824, column: 5, scope: !564)
!668 = !DILocation(line: 825, column: 15, scope: !564)
!669 = distinct !DIAssignID()
!670 = !DILocation(line: 826, column: 15, scope: !564)
!671 = distinct !DIAssignID()
!672 = !DILocation(line: 827, column: 15, scope: !564)
!673 = distinct !DIAssignID()
!674 = !DILocation(line: 828, column: 15, scope: !564)
!675 = distinct !DIAssignID()
!676 = !DILocation(line: 829, column: 15, scope: !564)
!677 = distinct !DIAssignID()
!678 = !DILocalVariable(name: "n", arg: 1, scope: !679, file: !2, line: 1514, type: !682)
!679 = distinct !DISubprogram(name: "gsl_sf_lnfact_e", scope: !2, file: !2, line: 1514, type: !680, scopeLine: 1515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !684)
!680 = !DISubroutineType(types: !681)
!681 = !{!38, !682, !190}
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!684 = !{!678, !685}
!685 = !DILocalVariable(name: "result", arg: 2, scope: !679, file: !2, line: 1514, type: !190)
!686 = !DILocation(line: 0, scope: !679, inlinedAt: !687)
!687 = distinct !DILocation(line: 830, column: 5, scope: !564)
!688 = !DILocation(line: 1518, column: 8, scope: !689, inlinedAt: !687)
!689 = distinct !DILexicalBlock(scope: !679, file: !2, line: 1518, column: 6)
!690 = !DILocation(line: 1518, column: 6, scope: !679, inlinedAt: !687)
!691 = !DILocation(line: 1519, column: 23, scope: !692, inlinedAt: !687)
!692 = distinct !DILexicalBlock(scope: !689, file: !2, line: 1518, column: 28)
!693 = !DILocation(line: 1519, column: 37, scope: !692, inlinedAt: !687)
!694 = !{!695, !284, i64 8}
!695 = !{!"", !696, i64 0, !284, i64 8, !697, i64 16}
!696 = !{!"int", !285, i64 0}
!697 = !{!"long", !285, i64 0}
!698 = !DILocation(line: 1519, column: 19, scope: !692, inlinedAt: !687)
!699 = !DILocation(line: 1519, column: 17, scope: !692, inlinedAt: !687)
!700 = distinct !DIAssignID()
!701 = !DILocation(line: 1520, column: 43, scope: !692, inlinedAt: !687)
!702 = !DILocation(line: 1520, column: 41, scope: !692, inlinedAt: !687)
!703 = !DILocation(line: 1520, column: 13, scope: !692, inlinedAt: !687)
!704 = !DILocation(line: 1520, column: 17, scope: !692, inlinedAt: !687)
!705 = distinct !DIAssignID()
!706 = !DILocation(line: 1521, column: 5, scope: !692, inlinedAt: !687)
!707 = !DILocation(line: 1524, column: 22, scope: !708, inlinedAt: !687)
!708 = distinct !DILexicalBlock(scope: !689, file: !2, line: 1523, column: 8)
!709 = !DILocation(line: 1524, column: 23, scope: !708, inlinedAt: !687)
!710 = !DILocation(line: 1524, column: 5, scope: !708, inlinedAt: !687)
!711 = !{i32 0, i32 19}
!712 = !DILocation(line: 1525, column: 5, scope: !708, inlinedAt: !687)
!713 = !DILocation(line: 831, column: 23, scope: !564)
!714 = !DILocation(line: 831, column: 5, scope: !564)
!715 = !DILocation(line: 832, column: 5, scope: !564)
!716 = !DILocation(line: 833, column: 13, scope: !717)
!717 = distinct !DILexicalBlock(scope: !564, file: !2, line: 833, column: 8)
!718 = !DILocation(line: 833, column: 8, scope: !564)
!719 = !DILocation(line: 833, column: 42, scope: !717)
!720 = !DILocation(line: 833, column: 43, scope: !717)
!721 = !DILocation(line: 833, column: 24, scope: !717)
!722 = !DILocation(line: 834, column: 13, scope: !723)
!723 = distinct !DILexicalBlock(scope: !564, file: !2, line: 834, column: 8)
!724 = !DILocation(line: 834, column: 8, scope: !564)
!725 = !DILocation(line: 834, column: 42, scope: !723)
!726 = !DILocation(line: 834, column: 43, scope: !723)
!727 = !DILocation(line: 834, column: 24, scope: !723)
!728 = !DILocation(line: 835, column: 13, scope: !729)
!729 = distinct !DILexicalBlock(scope: !564, file: !2, line: 835, column: 8)
!730 = !DILocation(line: 835, column: 8, scope: !564)
!731 = !DILocation(line: 835, column: 42, scope: !729)
!732 = !DILocation(line: 835, column: 43, scope: !729)
!733 = !DILocation(line: 835, column: 24, scope: !729)
!734 = !DILocation(line: 836, column: 13, scope: !735)
!735 = distinct !DILexicalBlock(scope: !564, file: !2, line: 836, column: 8)
!736 = !DILocation(line: 836, column: 8, scope: !564)
!737 = !DILocation(line: 836, column: 42, scope: !735)
!738 = !DILocation(line: 836, column: 43, scope: !735)
!739 = !DILocation(line: 836, column: 24, scope: !735)
!740 = !DILocation(line: 837, column: 13, scope: !741)
!741 = distinct !DILexicalBlock(scope: !564, file: !2, line: 837, column: 8)
!742 = !DILocation(line: 837, column: 8, scope: !564)
!743 = !DILocation(line: 837, column: 42, scope: !741)
!744 = !DILocation(line: 837, column: 43, scope: !741)
!745 = !DILocation(line: 837, column: 24, scope: !741)
!746 = !DILocation(line: 844, column: 16, scope: !564)
!747 = !DILocation(line: 838, column: 16, scope: !564)
!748 = !DILocation(line: 839, column: 16, scope: !564)
!749 = !DILocation(line: 839, column: 19, scope: !564)
!750 = !DILocation(line: 840, column: 16, scope: !564)
!751 = !DILocation(line: 840, column: 19, scope: !564)
!752 = !DILocation(line: 841, column: 16, scope: !564)
!753 = !DILocation(line: 841, column: 19, scope: !564)
!754 = !DILocation(line: 842, column: 16, scope: !564)
!755 = !DILocation(line: 842, column: 19, scope: !564)
!756 = !DILocation(line: 843, column: 16, scope: !564)
!757 = !DILocation(line: 843, column: 19, scope: !564)
!758 = !DILocation(line: 844, column: 19, scope: !564)
!759 = !DILocation(line: 845, column: 18, scope: !564)
!760 = !DILocation(line: 845, column: 73, scope: !564)
!761 = !DILocation(line: 845, column: 69, scope: !564)
!762 = !DILocation(line: 845, column: 65, scope: !564)
!763 = !DILocation(line: 845, column: 61, scope: !564)
!764 = !DILocation(line: 845, column: 57, scope: !564)
!765 = !DILocation(line: 845, column: 53, scope: !564)
!766 = !DILocation(line: 845, column: 49, scope: !564)
!767 = !DILocation(line: 845, column: 45, scope: !564)
!768 = !DILocation(line: 845, column: 41, scope: !564)
!769 = !DILocation(line: 845, column: 37, scope: !564)
!770 = !DILocation(line: 845, column: 33, scope: !564)
!771 = !DILocation(line: 845, column: 29, scope: !564)
!772 = !DILocation(line: 845, column: 25, scope: !564)
!773 = !DILocation(line: 845, column: 21, scope: !564)
!774 = !DILocation(line: 851, column: 9, scope: !564)
!775 = !DILocation(line: 851, column: 20, scope: !564)
!776 = !DILocation(line: 851, column: 18, scope: !564)
!777 = !DILocation(line: 853, column: 20, scope: !564)
!778 = !DILocation(line: 853, column: 18, scope: !564)
!779 = !DILocation(line: 853, column: 14, scope: !564)
!780 = !DILocation(line: 854, column: 19, scope: !564)
!781 = !DILocation(line: 854, column: 50, scope: !564)
!782 = !DILocation(line: 854, column: 60, scope: !564)
!783 = !DILocation(line: 854, column: 58, scope: !564)
!784 = !DILocation(line: 854, column: 47, scope: !564)
!785 = !DILocation(line: 854, column: 23, scope: !564)
!786 = !DILocation(line: 854, column: 10, scope: !564)
!787 = !DILocation(line: 854, column: 14, scope: !564)
!788 = !DILocation(line: 856, column: 14, scope: !564)
!789 = !DILocation(line: 856, column: 51, scope: !564)
!790 = !DILocation(line: 856, column: 47, scope: !564)
!791 = !DILocation(line: 856, column: 43, scope: !564)
!792 = !DILocation(line: 856, column: 10, scope: !564)
!793 = !DILocation(line: 859, column: 3, scope: !549)
!794 = !DILocation(line: 0, scope: !550)
!795 = !DILocation(line: 860, column: 1, scope: !539)
!796 = !DISubprogram(name: "log", scope: !536, file: !536, line: 104, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!797 = distinct !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !2, file: !2, line: 1185, type: !402, scopeLine: 1186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !798)
!798 = !{!799, !800, !801, !802, !805, !808, !814, !815, !816, !822, !823}
!799 = !DILocalVariable(name: "x", arg: 1, scope: !797, file: !2, line: 1185, type: !76)
!800 = !DILocalVariable(name: "result_lg", arg: 2, scope: !797, file: !2, line: 1185, type: !190)
!801 = !DILocalVariable(name: "sgn", arg: 3, scope: !797, file: !2, line: 1185, type: !141)
!802 = !DILocalVariable(name: "stat", scope: !803, file: !2, line: 1188, type: !38)
!803 = distinct !DILexicalBlock(scope: !804, file: !2, line: 1187, column: 28)
!804 = distinct !DILexicalBlock(scope: !797, file: !2, line: 1187, column: 6)
!805 = !DILocalVariable(name: "stat", scope: !806, file: !2, line: 1194, type: !38)
!806 = distinct !DILexicalBlock(scope: !807, file: !2, line: 1193, column: 33)
!807 = distinct !DILexicalBlock(scope: !804, file: !2, line: 1193, column: 11)
!808 = !DILocalVariable(name: "z", scope: !809, file: !2, line: 1214, type: !76)
!809 = distinct !DILexicalBlock(scope: !810, file: !2, line: 1210, column: 44)
!810 = distinct !DILexicalBlock(scope: !811, file: !2, line: 1210, column: 11)
!811 = distinct !DILexicalBlock(scope: !812, file: !2, line: 1207, column: 11)
!812 = distinct !DILexicalBlock(scope: !813, file: !2, line: 1203, column: 11)
!813 = distinct !DILexicalBlock(scope: !807, file: !2, line: 1199, column: 11)
!814 = !DILocalVariable(name: "s", scope: !809, file: !2, line: 1215, type: !76)
!815 = !DILocalVariable(name: "as", scope: !809, file: !2, line: 1216, type: !76)
!816 = !DILocalVariable(name: "N", scope: !817, file: !2, line: 1230, type: !38)
!817 = distinct !DILexicalBlock(scope: !818, file: !2, line: 1229, column: 12)
!818 = distinct !DILexicalBlock(scope: !819, file: !2, line: 1223, column: 10)
!819 = distinct !DILexicalBlock(scope: !820, file: !2, line: 1221, column: 30)
!820 = distinct !DILexicalBlock(scope: !821, file: !2, line: 1221, column: 13)
!821 = distinct !DILexicalBlock(scope: !809, file: !2, line: 1217, column: 8)
!822 = !DILocalVariable(name: "eps", scope: !817, file: !2, line: 1231, type: !76)
!823 = !DILocalVariable(name: "lg_z", scope: !824, file: !2, line: 1236, type: !191)
!824 = distinct !DILexicalBlock(scope: !820, file: !2, line: 1235, column: 10)
!825 = distinct !DIAssignID()
!826 = !DILocation(line: 0, scope: !824)
!827 = !DILocation(line: 0, scope: !797)
!828 = !DILocation(line: 1187, column: 13, scope: !804)
!829 = !DILocation(line: 1187, column: 6, scope: !804)
!830 = !DILocation(line: 1187, column: 20, scope: !804)
!831 = !DILocation(line: 1187, column: 6, scope: !797)
!832 = !DILocation(line: 0, scope: !236, inlinedAt: !833)
!833 = distinct !DILocation(line: 1188, column: 16, scope: !803)
!834 = !DILocation(line: 906, column: 27, scope: !236, inlinedAt: !833)
!835 = !DILocation(line: 906, column: 40, scope: !236, inlinedAt: !833)
!836 = !DILocation(line: 906, column: 33, scope: !236, inlinedAt: !833)
!837 = !DILocation(line: 907, column: 27, scope: !236, inlinedAt: !833)
!838 = !DILocation(line: 907, column: 40, scope: !236, inlinedAt: !833)
!839 = !DILocation(line: 907, column: 33, scope: !236, inlinedAt: !833)
!840 = !DILocation(line: 908, column: 54, scope: !236, inlinedAt: !833)
!841 = !DILocation(line: 908, column: 60, scope: !236, inlinedAt: !833)
!842 = !DILocation(line: 914, column: 26, scope: !236, inlinedAt: !833)
!843 = !DILocation(line: 914, column: 30, scope: !236, inlinedAt: !833)
!844 = !DILocation(line: 914, column: 34, scope: !236, inlinedAt: !833)
!845 = !DILocation(line: 914, column: 38, scope: !236, inlinedAt: !833)
!846 = !DILocation(line: 915, column: 68, scope: !236, inlinedAt: !833)
!847 = !DILocation(line: 915, column: 64, scope: !236, inlinedAt: !833)
!848 = !DILocation(line: 915, column: 59, scope: !236, inlinedAt: !833)
!849 = !DILocation(line: 915, column: 54, scope: !236, inlinedAt: !833)
!850 = !DILocation(line: 915, column: 49, scope: !236, inlinedAt: !833)
!851 = !DILocation(line: 915, column: 44, scope: !236, inlinedAt: !833)
!852 = !DILocation(line: 915, column: 39, scope: !236, inlinedAt: !833)
!853 = !DILocation(line: 915, column: 34, scope: !236, inlinedAt: !833)
!854 = !DILocation(line: 915, column: 28, scope: !236, inlinedAt: !833)
!855 = !DILocation(line: 916, column: 29, scope: !236, inlinedAt: !833)
!856 = !DILocation(line: 916, column: 21, scope: !236, inlinedAt: !833)
!857 = !DILocation(line: 916, column: 15, scope: !236, inlinedAt: !833)
!858 = !DILocation(line: 917, column: 41, scope: !236, inlinedAt: !833)
!859 = !DILocation(line: 917, column: 39, scope: !236, inlinedAt: !833)
!860 = !DILocation(line: 917, column: 11, scope: !236, inlinedAt: !833)
!861 = !DILocation(line: 0, scope: !803)
!862 = !DILocation(line: 1189, column: 44, scope: !803)
!863 = !DILocation(line: 1189, column: 26, scope: !803)
!864 = !DILocation(line: 1189, column: 20, scope: !803)
!865 = !DILocation(line: 1190, column: 10, scope: !803)
!866 = !DILocation(line: 1193, column: 18, scope: !807)
!867 = !DILocation(line: 1193, column: 11, scope: !807)
!868 = !DILocation(line: 1193, column: 25, scope: !807)
!869 = !DILocation(line: 1193, column: 11, scope: !804)
!870 = !DILocation(line: 0, scope: !300, inlinedAt: !871)
!871 = distinct !DILocation(line: 1194, column: 15, scope: !806)
!872 = !DILocation(line: 933, column: 27, scope: !300, inlinedAt: !871)
!873 = !DILocation(line: 933, column: 40, scope: !300, inlinedAt: !871)
!874 = !DILocation(line: 933, column: 33, scope: !300, inlinedAt: !871)
!875 = !DILocation(line: 934, column: 27, scope: !300, inlinedAt: !871)
!876 = !DILocation(line: 934, column: 40, scope: !300, inlinedAt: !871)
!877 = !DILocation(line: 934, column: 33, scope: !300, inlinedAt: !871)
!878 = !DILocation(line: 935, column: 52, scope: !300, inlinedAt: !871)
!879 = !DILocation(line: 935, column: 57, scope: !300, inlinedAt: !871)
!880 = !DILocation(line: 941, column: 26, scope: !300, inlinedAt: !871)
!881 = !DILocation(line: 941, column: 30, scope: !300, inlinedAt: !871)
!882 = !DILocation(line: 941, column: 34, scope: !300, inlinedAt: !871)
!883 = !DILocation(line: 941, column: 38, scope: !300, inlinedAt: !871)
!884 = !DILocation(line: 942, column: 68, scope: !300, inlinedAt: !871)
!885 = !DILocation(line: 942, column: 64, scope: !300, inlinedAt: !871)
!886 = !DILocation(line: 942, column: 59, scope: !300, inlinedAt: !871)
!887 = !DILocation(line: 942, column: 54, scope: !300, inlinedAt: !871)
!888 = !DILocation(line: 942, column: 49, scope: !300, inlinedAt: !871)
!889 = !DILocation(line: 942, column: 44, scope: !300, inlinedAt: !871)
!890 = !DILocation(line: 942, column: 39, scope: !300, inlinedAt: !871)
!891 = !DILocation(line: 942, column: 34, scope: !300, inlinedAt: !871)
!892 = !DILocation(line: 942, column: 28, scope: !300, inlinedAt: !871)
!893 = !DILocation(line: 943, column: 29, scope: !300, inlinedAt: !871)
!894 = !DILocation(line: 943, column: 21, scope: !300, inlinedAt: !871)
!895 = !DILocation(line: 943, column: 15, scope: !300, inlinedAt: !871)
!896 = !DILocation(line: 944, column: 41, scope: !300, inlinedAt: !871)
!897 = !DILocation(line: 944, column: 39, scope: !300, inlinedAt: !871)
!898 = !DILocation(line: 944, column: 11, scope: !300, inlinedAt: !871)
!899 = !DILocation(line: 0, scope: !806)
!900 = !DILocation(line: 1195, column: 44, scope: !806)
!901 = !DILocation(line: 1195, column: 26, scope: !806)
!902 = !DILocation(line: 1195, column: 20, scope: !806)
!903 = !DILocation(line: 1196, column: 10, scope: !806)
!904 = !DILocation(line: 1199, column: 13, scope: !813)
!905 = !DILocation(line: 1199, column: 11, scope: !807)
!906 = !DILocation(line: 1200, column: 10, scope: !907)
!907 = distinct !DILexicalBlock(scope: !813, file: !2, line: 1199, column: 21)
!908 = !DILocation(line: 0, scope: !353, inlinedAt: !909)
!909 = distinct !DILocation(line: 1201, column: 12, scope: !907)
!910 = !DILocation(line: 712, column: 48, scope: !365, inlinedAt: !909)
!911 = !DILocation(line: 712, column: 45, scope: !365, inlinedAt: !909)
!912 = !DILocation(line: 712, column: 28, scope: !365, inlinedAt: !909)
!913 = !DILocation(line: 715, column: 13, scope: !353, inlinedAt: !909)
!914 = !DILocation(line: 715, column: 25, scope: !353, inlinedAt: !909)
!915 = !DILocation(line: 715, column: 30, scope: !353, inlinedAt: !909)
!916 = !DILocation(line: 715, column: 19, scope: !353, inlinedAt: !909)
!917 = !DILocation(line: 715, column: 18, scope: !353, inlinedAt: !909)
!918 = !DILocation(line: 716, column: 27, scope: !353, inlinedAt: !909)
!919 = !DILocation(line: 716, column: 25, scope: !353, inlinedAt: !909)
!920 = !DILocation(line: 717, column: 33, scope: !353, inlinedAt: !909)
!921 = !DILocation(line: 717, column: 24, scope: !353, inlinedAt: !909)
!922 = !DILocation(line: 717, column: 16, scope: !353, inlinedAt: !909)
!923 = !DILocation(line: 718, column: 43, scope: !353, inlinedAt: !909)
!924 = !DILocation(line: 718, column: 57, scope: !353, inlinedAt: !909)
!925 = !DILocation(line: 718, column: 55, scope: !353, inlinedAt: !909)
!926 = !DILocation(line: 718, column: 69, scope: !353, inlinedAt: !909)
!927 = !DILocation(line: 718, column: 40, scope: !353, inlinedAt: !909)
!928 = !DILocation(line: 718, column: 11, scope: !353, inlinedAt: !909)
!929 = !DILocation(line: 719, column: 36, scope: !353, inlinedAt: !909)
!930 = !DILocation(line: 719, column: 34, scope: !353, inlinedAt: !909)
!931 = !DILocation(line: 719, column: 15, scope: !353, inlinedAt: !909)
!932 = !DILocation(line: 1201, column: 5, scope: !907)
!933 = !DILocation(line: 1203, column: 13, scope: !812)
!934 = !DILocation(line: 1203, column: 11, scope: !813)
!935 = !DILocation(line: 1204, column: 10, scope: !936)
!936 = distinct !DILexicalBlock(scope: !812, file: !2, line: 1203, column: 21)
!937 = !DILocation(line: 1205, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !2, line: 1205, column: 5)
!939 = !DILocation(line: 1205, column: 5, scope: !940)
!940 = distinct !DILexicalBlock(scope: !938, file: !2, line: 1205, column: 5)
!941 = !DILocation(line: 1207, column: 11, scope: !811)
!942 = !DILocation(line: 1207, column: 19, scope: !811)
!943 = !DILocation(line: 1207, column: 11, scope: !812)
!944 = !DILocation(line: 0, scope: !401, inlinedAt: !945)
!945 = distinct !DILocation(line: 1208, column: 12, scope: !946)
!946 = distinct !DILexicalBlock(scope: !811, file: !2, line: 1207, column: 27)
!947 = !DILocation(line: 742, column: 56, scope: !401, inlinedAt: !945)
!948 = !DILocation(line: 742, column: 51, scope: !401, inlinedAt: !945)
!949 = !DILocation(line: 742, column: 46, scope: !401, inlinedAt: !945)
!950 = !DILocation(line: 742, column: 41, scope: !401, inlinedAt: !945)
!951 = !DILocation(line: 742, column: 36, scope: !401, inlinedAt: !945)
!952 = !DILocation(line: 742, column: 32, scope: !401, inlinedAt: !945)
!953 = !DILocation(line: 742, column: 28, scope: !401, inlinedAt: !945)
!954 = !DILocation(line: 742, column: 24, scope: !401, inlinedAt: !945)
!955 = !DILocation(line: 743, column: 65, scope: !401, inlinedAt: !945)
!956 = !DILocation(line: 743, column: 61, scope: !401, inlinedAt: !945)
!957 = !DILocation(line: 743, column: 57, scope: !401, inlinedAt: !945)
!958 = !DILocation(line: 743, column: 53, scope: !401, inlinedAt: !945)
!959 = !DILocation(line: 743, column: 49, scope: !401, inlinedAt: !945)
!960 = !DILocation(line: 743, column: 45, scope: !401, inlinedAt: !945)
!961 = !DILocation(line: 743, column: 41, scope: !401, inlinedAt: !945)
!962 = !DILocation(line: 743, column: 37, scope: !401, inlinedAt: !945)
!963 = !DILocation(line: 743, column: 33, scope: !401, inlinedAt: !945)
!964 = !DILocation(line: 743, column: 29, scope: !401, inlinedAt: !945)
!965 = !DILocation(line: 743, column: 25, scope: !401, inlinedAt: !945)
!966 = !DILocation(line: 746, column: 34, scope: !401, inlinedAt: !945)
!967 = !DILocation(line: 746, column: 29, scope: !401, inlinedAt: !945)
!968 = !DILocation(line: 746, column: 24, scope: !401, inlinedAt: !945)
!969 = !DILocation(line: 746, column: 45, scope: !401, inlinedAt: !945)
!970 = !DILocation(line: 746, column: 40, scope: !401, inlinedAt: !945)
!971 = !DILocation(line: 748, column: 21, scope: !401, inlinedAt: !945)
!972 = !DILocation(line: 748, column: 14, scope: !401, inlinedAt: !945)
!973 = !DILocation(line: 748, column: 12, scope: !401, inlinedAt: !945)
!974 = !DILocation(line: 749, column: 38, scope: !401, inlinedAt: !945)
!975 = !DILocation(line: 749, column: 36, scope: !401, inlinedAt: !945)
!976 = !DILocation(line: 749, column: 8, scope: !401, inlinedAt: !945)
!977 = !DILocation(line: 749, column: 12, scope: !401, inlinedAt: !945)
!978 = !DILocation(line: 750, column: 10, scope: !401, inlinedAt: !945)
!979 = !DILocation(line: 750, column: 8, scope: !401, inlinedAt: !945)
!980 = !DILocation(line: 1208, column: 5, scope: !946)
!981 = !DILocation(line: 1210, column: 13, scope: !810)
!982 = !DILocation(line: 1210, column: 11, scope: !811)
!983 = !DILocation(line: 1214, column: 20, scope: !809)
!984 = !DILocation(line: 0, scope: !809)
!985 = !DILocation(line: 1215, column: 24, scope: !809)
!986 = !DILocation(line: 1215, column: 16, scope: !809)
!987 = !DILocation(line: 1216, column: 17, scope: !809)
!988 = !DILocation(line: 1217, column: 10, scope: !821)
!989 = !DILocation(line: 1217, column: 8, scope: !809)
!990 = !DILocation(line: 1218, column: 12, scope: !991)
!991 = distinct !DILexicalBlock(scope: !821, file: !2, line: 1217, column: 18)
!992 = !DILocation(line: 1219, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !991, file: !2, line: 1219, column: 7)
!994 = !DILocation(line: 1219, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !993, file: !2, line: 1219, column: 7)
!996 = !DILocation(line: 1221, column: 16, scope: !820)
!997 = !DILocation(line: 1221, column: 13, scope: !821)
!998 = !DILocation(line: 1223, column: 12, scope: !818)
!999 = !DILocation(line: 1223, column: 10, scope: !819)
!1000 = !DILocation(line: 1225, column: 24, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !818, file: !2, line: 1223, column: 29)
!1002 = !DILocation(line: 1226, column: 14, scope: !1001)
!1003 = !DILocation(line: 1227, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 1227, column: 9)
!1005 = !DILocation(line: 1230, column: 26, scope: !817)
!1006 = !DILocation(line: 1230, column: 18, scope: !817)
!1007 = !DILocation(line: 1230, column: 17, scope: !817)
!1008 = !DILocation(line: 0, scope: !817)
!1009 = !DILocation(line: 1231, column: 26, scope: !817)
!1010 = !DILocation(line: 1231, column: 24, scope: !817)
!1011 = !DILocation(line: 1232, column: 16, scope: !817)
!1012 = !DILocation(line: 1236, column: 7, scope: !824)
!1013 = !DILocation(line: 1237, column: 7, scope: !824)
!1014 = !DILocation(line: 1238, column: 17, scope: !824)
!1015 = !DILocation(line: 1238, column: 15, scope: !824)
!1016 = !DILocation(line: 1238, column: 12, scope: !824)
!1017 = !DILocation(line: 1239, column: 34, scope: !824)
!1018 = !DILocation(line: 1239, column: 49, scope: !824)
!1019 = !DILocation(line: 1239, column: 42, scope: !824)
!1020 = !DILocation(line: 1239, column: 31, scope: !824)
!1021 = !DILocation(line: 1239, column: 22, scope: !824)
!1022 = !DILocation(line: 1240, column: 48, scope: !824)
!1023 = !DILocation(line: 1240, column: 46, scope: !824)
!1024 = !DILocation(line: 1240, column: 76, scope: !824)
!1025 = !DILocation(line: 1240, column: 69, scope: !824)
!1026 = !DILocation(line: 1240, column: 18, scope: !824)
!1027 = !DILocation(line: 1240, column: 22, scope: !824)
!1028 = !DILocation(line: 1242, column: 5, scope: !820)
!1029 = !DILocation(line: 1247, column: 20, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !810, file: !2, line: 1244, column: 8)
!1031 = !DILocation(line: 1248, column: 10, scope: !1030)
!1032 = !DILocation(line: 1249, column: 5, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 1249, column: 5)
!1034 = !DILocation(line: 0, scope: !804)
!1035 = !DILocation(line: 1251, column: 1, scope: !797)
!1036 = distinct !DISubprogram(name: "gsl_sf_gamma_e", scope: !2, file: !2, line: 1255, type: !237, scopeLine: 1256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1037)
!1037 = !{!1038, !1039, !1040, !1043, !1044, !1045, !1046, !1050, !1052, !1053, !1054}
!1038 = !DILocalVariable(name: "x", arg: 1, scope: !1036, file: !2, line: 1255, type: !239)
!1039 = !DILocalVariable(name: "result", arg: 2, scope: !1036, file: !2, line: 1255, type: !190)
!1040 = !DILocalVariable(name: "rint_x", scope: !1041, file: !2, line: 1258, type: !38)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 1257, column: 15)
!1042 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 1257, column: 6)
!1043 = !DILocalVariable(name: "f_x", scope: !1041, file: !2, line: 1259, type: !76)
!1044 = !DILocalVariable(name: "sgn_gamma", scope: !1041, file: !2, line: 1260, type: !76)
!1045 = !DILocalVariable(name: "sin_term", scope: !1041, file: !2, line: 1261, type: !76)
!1046 = !DILocalVariable(name: "g", scope: !1047, file: !2, line: 1267, type: !191)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 1266, column: 25)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 1266, column: 13)
!1049 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 1263, column: 8)
!1050 = !DILocalVariable(name: "lng", scope: !1051, file: !2, line: 1285, type: !191)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 1279, column: 10)
!1052 = !DILocalVariable(name: "sgn", scope: !1051, file: !2, line: 1286, type: !76)
!1053 = !DILocalVariable(name: "stat_lng", scope: !1051, file: !2, line: 1287, type: !38)
!1054 = !DILocalVariable(name: "stat_e", scope: !1051, file: !2, line: 1288, type: !38)
!1055 = distinct !DIAssignID()
!1056 = !DILocation(line: 0, scope: !1047)
!1057 = distinct !DIAssignID()
!1058 = !DILocation(line: 0, scope: !1051)
!1059 = distinct !DIAssignID()
!1060 = !DILocation(line: 0, scope: !1036)
!1061 = !DILocation(line: 1257, column: 8, scope: !1042)
!1062 = !DILocation(line: 1257, column: 6, scope: !1036)
!1063 = !DILocation(line: 1258, column: 30, scope: !1041)
!1064 = !DILocation(line: 1258, column: 23, scope: !1041)
!1065 = !DILocation(line: 1258, column: 18, scope: !1041)
!1066 = !DILocation(line: 0, scope: !1041)
!1067 = !DILocation(line: 1259, column: 22, scope: !1041)
!1068 = !DILocation(line: 1259, column: 20, scope: !1041)
!1069 = !DILocation(line: 1260, column: 26, scope: !1041)
!1070 = !DILocation(line: 1261, column: 44, scope: !1041)
!1071 = !DILocation(line: 1261, column: 35, scope: !1041)
!1072 = !DILocation(line: 1261, column: 33, scope: !1041)
!1073 = !DILocation(line: 1261, column: 51, scope: !1041)
!1074 = !DILocation(line: 1263, column: 17, scope: !1049)
!1075 = !DILocation(line: 1263, column: 8, scope: !1041)
!1076 = !DILocation(line: 1264, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 1264, column: 7)
!1078 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 1263, column: 25)
!1079 = !DILocation(line: 1264, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 1264, column: 7)
!1081 = !DILocation(line: 1266, column: 15, scope: !1048)
!1082 = !DILocation(line: 1266, column: 13, scope: !1049)
!1083 = !DILocation(line: 1267, column: 7, scope: !1047)
!1084 = !DILocation(line: 1268, column: 24, scope: !1047)
!1085 = !DILocation(line: 1268, column: 7, scope: !1047)
!1086 = !{i32 0, i32 17}
!1087 = !DILocation(line: 1269, column: 10, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 1269, column: 10)
!1089 = !DILocation(line: 1269, column: 29, scope: !1088)
!1090 = !DILocation(line: 1269, column: 25, scope: !1088)
!1091 = !DILocation(line: 1269, column: 33, scope: !1088)
!1092 = !DILocation(line: 1269, column: 47, scope: !1088)
!1093 = !DILocation(line: 1269, column: 10, scope: !1047)
!1094 = !DILocation(line: 1270, column: 38, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 1269, column: 54)
!1096 = !DILocation(line: 1270, column: 27, scope: !1095)
!1097 = !DILocation(line: 1270, column: 22, scope: !1095)
!1098 = !DILocation(line: 1271, column: 31, scope: !1095)
!1099 = !DILocation(line: 1271, column: 34, scope: !1095)
!1100 = !DILocation(line: 1271, column: 42, scope: !1095)
!1101 = !DILocation(line: 1271, column: 17, scope: !1095)
!1102 = !DILocation(line: 1272, column: 48, scope: !1095)
!1103 = !DILocation(line: 1272, column: 46, scope: !1095)
!1104 = !DILocation(line: 1272, column: 21, scope: !1095)
!1105 = !DILocation(line: 1273, column: 9, scope: !1095)
!1106 = !DILocation(line: 1276, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 1276, column: 9)
!1108 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 1275, column: 12)
!1109 = !DILocation(line: 1276, column: 9, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 1276, column: 9)
!1111 = !DILocation(line: 0, scope: !1088)
!1112 = !DILocation(line: 1278, column: 5, scope: !1048)
!1113 = !DILocation(line: 1285, column: 7, scope: !1051)
!1114 = !DILocation(line: 1286, column: 7, scope: !1051)
!1115 = !DILocation(line: 1287, column: 22, scope: !1051)
!1116 = !DILocation(line: 1288, column: 48, scope: !1051)
!1117 = !DILocation(line: 1288, column: 57, scope: !1051)
!1118 = !DILocation(line: 1288, column: 62, scope: !1051)
!1119 = !DILocation(line: 1288, column: 22, scope: !1051)
!1120 = !DILocation(line: 1289, column: 14, scope: !1051)
!1121 = !DILocation(line: 1290, column: 5, scope: !1048)
!1122 = !DILocation(line: 1293, column: 12, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 1292, column: 8)
!1124 = !DILocation(line: 1293, column: 5, scope: !1123)
!1125 = !DILocation(line: 0, scope: !1042)
!1126 = !DILocation(line: 1295, column: 1, scope: !1036)
!1127 = distinct !DISubprogram(name: "gamma_xgthalf", scope: !2, file: !2, line: 1019, type: !237, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1128)
!1128 = !{!1129, !1130, !1131, !1135, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1159, !1162, !1163, !1164, !1167, !1168, !1169, !1170, !1171}
!1129 = !DILocalVariable(name: "x", arg: 1, scope: !1127, file: !2, line: 1019, type: !239)
!1130 = !DILocalVariable(name: "result", arg: 2, scope: !1127, file: !2, line: 1019, type: !190)
!1131 = !DILocalVariable(name: "n", scope: !1132, file: !2, line: 1028, type: !38)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 1027, column: 62)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 1027, column: 14)
!1134 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 1023, column: 6)
!1135 = !DILocalVariable(name: "eps", scope: !1136, file: !2, line: 1036, type: !239)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 1033, column: 33)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 1033, column: 11)
!1138 = !DILocalVariable(name: "c1", scope: !1136, file: !2, line: 1037, type: !239)
!1139 = !DILocalVariable(name: "c2", scope: !1136, file: !2, line: 1038, type: !239)
!1140 = !DILocalVariable(name: "c3", scope: !1136, file: !2, line: 1039, type: !239)
!1141 = !DILocalVariable(name: "c4", scope: !1136, file: !2, line: 1040, type: !239)
!1142 = !DILocalVariable(name: "c5", scope: !1136, file: !2, line: 1041, type: !239)
!1143 = !DILocalVariable(name: "c6", scope: !1136, file: !2, line: 1042, type: !239)
!1144 = !DILocalVariable(name: "c7", scope: !1136, file: !2, line: 1043, type: !239)
!1145 = !DILocalVariable(name: "eps", scope: !1146, file: !2, line: 1051, type: !239)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 1048, column: 33)
!1147 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 1048, column: 11)
!1148 = !DILocalVariable(name: "c1", scope: !1146, file: !2, line: 1052, type: !239)
!1149 = !DILocalVariable(name: "c2", scope: !1146, file: !2, line: 1053, type: !239)
!1150 = !DILocalVariable(name: "c3", scope: !1146, file: !2, line: 1054, type: !239)
!1151 = !DILocalVariable(name: "c4", scope: !1146, file: !2, line: 1055, type: !239)
!1152 = !DILocalVariable(name: "c5", scope: !1146, file: !2, line: 1056, type: !239)
!1153 = !DILocalVariable(name: "c6", scope: !1146, file: !2, line: 1057, type: !239)
!1154 = !DILocalVariable(name: "c7", scope: !1146, file: !2, line: 1058, type: !239)
!1155 = !DILocalVariable(name: "c8", scope: !1146, file: !2, line: 1059, type: !239)
!1156 = !DILocalVariable(name: "lg", scope: !1157, file: !2, line: 1069, type: !191)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 1064, column: 20)
!1158 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 1064, column: 11)
!1159 = !DILocalVariable(name: "gamma_8", scope: !1160, file: !2, line: 1080, type: !239)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 1075, column: 21)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 1075, column: 11)
!1162 = !DILocalVariable(name: "t", scope: !1160, file: !2, line: 1081, type: !239)
!1163 = !DILocalVariable(name: "c", scope: !1160, file: !2, line: 1082, type: !191)
!1164 = !DILocalVariable(name: "p", scope: !1165, file: !2, line: 1095, type: !76)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 1089, column: 34)
!1166 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 1089, column: 11)
!1167 = !DILocalVariable(name: "e", scope: !1165, file: !2, line: 1096, type: !76)
!1168 = !DILocalVariable(name: "q", scope: !1165, file: !2, line: 1097, type: !76)
!1169 = !DILocalVariable(name: "pre", scope: !1165, file: !2, line: 1098, type: !76)
!1170 = !DILocalVariable(name: "gstar", scope: !1165, file: !2, line: 1099, type: !191)
!1171 = !DILocalVariable(name: "stat_gs", scope: !1165, file: !2, line: 1100, type: !38)
!1172 = distinct !DIAssignID()
!1173 = !DILocation(line: 0, scope: !1160)
!1174 = distinct !DIAssignID()
!1175 = !DILocation(line: 0, scope: !1165)
!1176 = !DILocation(line: 0, scope: !1127)
!1177 = !DILocation(line: 1023, column: 8, scope: !1134)
!1178 = !DILocation(line: 1023, column: 6, scope: !1127)
!1179 = !DILocation(line: 1024, column: 17, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 1023, column: 16)
!1181 = !DILocation(line: 1025, column: 13, scope: !1180)
!1182 = !DILocation(line: 1025, column: 17, scope: !1180)
!1183 = !DILocation(line: 1026, column: 5, scope: !1180)
!1184 = !DILocation(line: 1027, column: 16, scope: !1133)
!1185 = !DILocation(line: 1027, column: 44, scope: !1133)
!1186 = !DILocation(line: 1027, column: 52, scope: !1133)
!1187 = !DILocation(line: 1027, column: 49, scope: !1133)
!1188 = !DILocation(line: 1027, column: 14, scope: !1134)
!1189 = !DILocation(line: 1028, column: 13, scope: !1132)
!1190 = !DILocation(line: 0, scope: !1132)
!1191 = !DILocation(line: 1029, column: 32, scope: !1132)
!1192 = !DILocation(line: 1029, column: 19, scope: !1132)
!1193 = !DILocation(line: 1029, column: 37, scope: !1132)
!1194 = !DILocation(line: 1029, column: 17, scope: !1132)
!1195 = !DILocation(line: 1030, column: 35, scope: !1132)
!1196 = !DILocation(line: 1030, column: 13, scope: !1132)
!1197 = !DILocation(line: 1030, column: 17, scope: !1132)
!1198 = !DILocation(line: 1033, column: 18, scope: !1137)
!1199 = !DILocation(line: 1033, column: 11, scope: !1137)
!1200 = !DILocation(line: 1033, column: 25, scope: !1137)
!1201 = !DILocation(line: 1033, column: 11, scope: !1133)
!1202 = !DILocation(line: 0, scope: !1136)
!1203 = !DILocation(line: 1044, column: 22, scope: !1136)
!1204 = !DILocation(line: 1044, column: 78, scope: !1136)
!1205 = !DILocation(line: 1044, column: 74, scope: !1136)
!1206 = !DILocation(line: 1044, column: 70, scope: !1136)
!1207 = !DILocation(line: 1044, column: 66, scope: !1136)
!1208 = !DILocation(line: 1044, column: 62, scope: !1136)
!1209 = !DILocation(line: 1044, column: 58, scope: !1136)
!1210 = !DILocation(line: 1044, column: 54, scope: !1136)
!1211 = !DILocation(line: 1044, column: 50, scope: !1136)
!1212 = !DILocation(line: 1044, column: 46, scope: !1136)
!1213 = !DILocation(line: 1044, column: 42, scope: !1136)
!1214 = !DILocation(line: 1044, column: 38, scope: !1136)
!1215 = !DILocation(line: 1044, column: 34, scope: !1136)
!1216 = !DILocation(line: 1044, column: 30, scope: !1136)
!1217 = !DILocation(line: 1044, column: 25, scope: !1136)
!1218 = !DILocation(line: 1044, column: 17, scope: !1136)
!1219 = !DILocation(line: 1045, column: 13, scope: !1136)
!1220 = !DILocation(line: 1045, column: 17, scope: !1136)
!1221 = !DILocation(line: 1048, column: 18, scope: !1147)
!1222 = !DILocation(line: 1048, column: 11, scope: !1147)
!1223 = !DILocation(line: 1048, column: 25, scope: !1147)
!1224 = !DILocation(line: 1048, column: 11, scope: !1137)
!1225 = !DILocation(line: 0, scope: !1146)
!1226 = !DILocation(line: 1060, column: 84, scope: !1146)
!1227 = !DILocation(line: 1060, column: 80, scope: !1146)
!1228 = !DILocation(line: 1060, column: 76, scope: !1146)
!1229 = !DILocation(line: 1060, column: 72, scope: !1146)
!1230 = !DILocation(line: 1060, column: 68, scope: !1146)
!1231 = !DILocation(line: 1060, column: 64, scope: !1146)
!1232 = !DILocation(line: 1060, column: 60, scope: !1146)
!1233 = !DILocation(line: 1060, column: 56, scope: !1146)
!1234 = !DILocation(line: 1060, column: 52, scope: !1146)
!1235 = !DILocation(line: 1060, column: 48, scope: !1146)
!1236 = !DILocation(line: 1060, column: 44, scope: !1146)
!1237 = !DILocation(line: 1060, column: 40, scope: !1146)
!1238 = !DILocation(line: 1060, column: 36, scope: !1146)
!1239 = !DILocation(line: 1060, column: 32, scope: !1146)
!1240 = !DILocation(line: 1060, column: 28, scope: !1146)
!1241 = !DILocation(line: 1060, column: 23, scope: !1146)
!1242 = !DILocation(line: 1060, column: 17, scope: !1146)
!1243 = !DILocation(line: 1061, column: 13, scope: !1146)
!1244 = !DILocation(line: 1061, column: 17, scope: !1146)
!1245 = !DILocation(line: 1064, column: 13, scope: !1158)
!1246 = !DILocation(line: 1064, column: 11, scope: !1147)
!1247 = !DILocation(line: 0, scope: !353, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 1070, column: 5, scope: !1157)
!1249 = !DILocation(line: 712, column: 48, scope: !365, inlinedAt: !1248)
!1250 = !DILocation(line: 712, column: 45, scope: !365, inlinedAt: !1248)
!1251 = !DILocation(line: 712, column: 28, scope: !365, inlinedAt: !1248)
!1252 = !DILocation(line: 715, column: 13, scope: !353, inlinedAt: !1248)
!1253 = !DILocation(line: 715, column: 25, scope: !353, inlinedAt: !1248)
!1254 = !DILocation(line: 715, column: 30, scope: !353, inlinedAt: !1248)
!1255 = !DILocation(line: 715, column: 19, scope: !353, inlinedAt: !1248)
!1256 = !DILocation(line: 715, column: 18, scope: !353, inlinedAt: !1248)
!1257 = !DILocation(line: 716, column: 27, scope: !353, inlinedAt: !1248)
!1258 = !DILocation(line: 716, column: 25, scope: !353, inlinedAt: !1248)
!1259 = !DILocation(line: 717, column: 33, scope: !353, inlinedAt: !1248)
!1260 = !DILocation(line: 717, column: 24, scope: !353, inlinedAt: !1248)
!1261 = !DILocation(line: 0, scope: !1157)
!1262 = !DILocation(line: 718, column: 43, scope: !353, inlinedAt: !1248)
!1263 = !DILocation(line: 718, column: 57, scope: !353, inlinedAt: !1248)
!1264 = !DILocation(line: 718, column: 55, scope: !353, inlinedAt: !1248)
!1265 = !DILocation(line: 718, column: 69, scope: !353, inlinedAt: !1248)
!1266 = !DILocation(line: 718, column: 40, scope: !353, inlinedAt: !1248)
!1267 = !DILocation(line: 719, column: 36, scope: !353, inlinedAt: !1248)
!1268 = !DILocation(line: 719, column: 34, scope: !353, inlinedAt: !1248)
!1269 = !DILocation(line: 719, column: 15, scope: !353, inlinedAt: !1248)
!1270 = !DILocation(line: 1071, column: 19, scope: !1157)
!1271 = !DILocation(line: 1071, column: 17, scope: !1157)
!1272 = !DILocation(line: 1072, column: 41, scope: !1157)
!1273 = !DILocation(line: 1072, column: 31, scope: !1157)
!1274 = !DILocation(line: 1072, column: 13, scope: !1157)
!1275 = !DILocation(line: 1072, column: 17, scope: !1157)
!1276 = !DILocation(line: 1075, column: 13, scope: !1161)
!1277 = !DILocation(line: 1075, column: 11, scope: !1158)
!1278 = !DILocation(line: 1081, column: 26, scope: !1160)
!1279 = !DILocation(line: 1081, column: 29, scope: !1160)
!1280 = !DILocation(line: 1081, column: 36, scope: !1160)
!1281 = !DILocation(line: 1082, column: 5, scope: !1160)
!1282 = !DILocation(line: 1083, column: 5, scope: !1160)
!1283 = !DILocation(line: 1084, column: 26, scope: !1160)
!1284 = !DILocation(line: 1084, column: 20, scope: !1160)
!1285 = !DILocation(line: 1084, column: 31, scope: !1160)
!1286 = !DILocation(line: 1084, column: 18, scope: !1160)
!1287 = !DILocation(line: 1085, column: 36, scope: !1160)
!1288 = !DILocation(line: 1085, column: 32, scope: !1160)
!1289 = !DILocation(line: 1085, column: 13, scope: !1160)
!1290 = !DILocation(line: 1086, column: 42, scope: !1160)
!1291 = !DILocation(line: 1086, column: 17, scope: !1160)
!1292 = !DILocation(line: 1088, column: 3, scope: !1161)
!1293 = !DILocation(line: 1089, column: 13, scope: !1166)
!1294 = !DILocation(line: 1089, column: 11, scope: !1161)
!1295 = !DILocation(line: 1095, column: 26, scope: !1165)
!1296 = !DILocation(line: 1095, column: 16, scope: !1165)
!1297 = !DILocation(line: 1096, column: 20, scope: !1165)
!1298 = !DILocation(line: 1096, column: 16, scope: !1165)
!1299 = !DILocation(line: 1097, column: 19, scope: !1165)
!1300 = !DILocation(line: 1097, column: 24, scope: !1165)
!1301 = !DILocation(line: 1098, column: 37, scope: !1165)
!1302 = !DILocation(line: 1098, column: 41, scope: !1165)
!1303 = !DILocation(line: 1098, column: 40, scope: !1165)
!1304 = !DILocation(line: 1099, column: 5, scope: !1165)
!1305 = !DILocation(line: 1100, column: 19, scope: !1165)
!1306 = !DILocation(line: 1101, column: 31, scope: !1165)
!1307 = !DILocation(line: 1101, column: 23, scope: !1165)
!1308 = !DILocation(line: 1101, column: 17, scope: !1165)
!1309 = !DILocation(line: 1102, column: 22, scope: !1165)
!1310 = !DILocation(line: 1102, column: 29, scope: !1165)
!1311 = !DILocation(line: 1102, column: 47, scope: !1165)
!1312 = !DILocation(line: 1102, column: 13, scope: !1165)
!1313 = !DILocation(line: 1102, column: 17, scope: !1165)
!1314 = !DILocation(line: 1104, column: 3, scope: !1166)
!1315 = !DILocation(line: 1106, column: 5, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 1106, column: 5)
!1317 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 1105, column: 8)
!1318 = !DILocation(line: 1106, column: 5, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 1106, column: 5)
!1320 = !DILocation(line: 0, scope: !1134)
!1321 = !DILocation(line: 1108, column: 1, scope: !1127)
!1322 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !1323, file: !1323, line: 122, type: !1324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1323 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!38, !239, !239, !239, !239, !190}
!1326 = distinct !DISubprogram(name: "gsl_sf_gammastar_e", scope: !2, file: !2, line: 1299, type: !237, scopeLine: 1300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1327)
!1327 = !{!1328, !1329, !1330, !1334, !1336, !1337, !1338, !1339, !1340, !1341, !1344, !1347, !1348}
!1328 = !DILocalVariable(name: "x", arg: 1, scope: !1326, file: !2, line: 1299, type: !239)
!1329 = !DILocalVariable(name: "result", arg: 2, scope: !1326, file: !2, line: 1299, type: !190)
!1330 = !DILocalVariable(name: "lg", scope: !1331, file: !2, line: 1307, type: !191)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 1306, column: 20)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 1306, column: 11)
!1333 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 1303, column: 6)
!1334 = !DILocalVariable(name: "stat_lg", scope: !1331, file: !2, line: 1308, type: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!1336 = !DILocalVariable(name: "lx", scope: !1331, file: !2, line: 1309, type: !239)
!1337 = !DILocalVariable(name: "c", scope: !1331, file: !2, line: 1310, type: !239)
!1338 = !DILocalVariable(name: "lnr_val", scope: !1331, file: !2, line: 1311, type: !239)
!1339 = !DILocalVariable(name: "lnr_err", scope: !1331, file: !2, line: 1312, type: !239)
!1340 = !DILocalVariable(name: "stat_e", scope: !1331, file: !2, line: 1313, type: !1335)
!1341 = !DILocalVariable(name: "t", scope: !1342, file: !2, line: 1317, type: !239)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 1316, column: 20)
!1343 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 1316, column: 11)
!1344 = !DILocalVariable(name: "t", scope: !1345, file: !2, line: 1321, type: !239)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 1320, column: 21)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 1320, column: 11)
!1347 = !DILocalVariable(name: "c", scope: !1345, file: !2, line: 1322, type: !191)
!1348 = !DILocalVariable(name: "xi", scope: !1349, file: !2, line: 1335, type: !239)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 1332, column: 36)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 1332, column: 11)
!1351 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 1329, column: 11)
!1352 = distinct !DIAssignID()
!1353 = !DILocation(line: 0, scope: !1331)
!1354 = !DILocation(line: 0, scope: !1326)
!1355 = !DILocation(line: 1303, column: 8, scope: !1333)
!1356 = !DILocation(line: 1303, column: 6, scope: !1326)
!1357 = !DILocation(line: 1304, column: 5, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 1304, column: 5)
!1359 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 1303, column: 16)
!1360 = !DILocation(line: 1304, column: 5, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 1304, column: 5)
!1362 = !DILocation(line: 1306, column: 13, scope: !1332)
!1363 = !DILocation(line: 1306, column: 11, scope: !1333)
!1364 = !DILocation(line: 1307, column: 5, scope: !1331)
!1365 = !DILocation(line: 1308, column: 25, scope: !1331)
!1366 = !DILocation(line: 1309, column: 23, scope: !1331)
!1367 = !DILocation(line: 1311, column: 31, scope: !1331)
!1368 = !DILocation(line: 1311, column: 39, scope: !1331)
!1369 = !DILocation(line: 1311, column: 44, scope: !1331)
!1370 = !DILocation(line: 1311, column: 35, scope: !1331)
!1371 = !DILocation(line: 1311, column: 48, scope: !1331)
!1372 = !DILocation(line: 1311, column: 52, scope: !1331)
!1373 = !DILocation(line: 1312, column: 31, scope: !1331)
!1374 = !DILocation(line: 1312, column: 63, scope: !1331)
!1375 = !DILocation(line: 1312, column: 69, scope: !1331)
!1376 = !DILocation(line: 1312, column: 68, scope: !1331)
!1377 = !DILocation(line: 1312, column: 78, scope: !1331)
!1378 = !DILocation(line: 1312, column: 59, scope: !1331)
!1379 = !DILocation(line: 1312, column: 35, scope: !1331)
!1380 = !DILocation(line: 1313, column: 25, scope: !1331)
!1381 = !DILocation(line: 1314, column: 12, scope: !1331)
!1382 = !DILocation(line: 1315, column: 3, scope: !1332)
!1383 = !DILocation(line: 1316, column: 13, scope: !1343)
!1384 = !DILocation(line: 1316, column: 11, scope: !1332)
!1385 = !DILocation(line: 1317, column: 32, scope: !1342)
!1386 = !DILocation(line: 1317, column: 29, scope: !1342)
!1387 = !DILocation(line: 1317, column: 38, scope: !1342)
!1388 = !DILocation(line: 0, scope: !1342)
!1389 = !{}
!1390 = !DILocalVariable(name: "cs", arg: 1, scope: !1391, file: !1392, line: 3, type: !1395)
!1391 = distinct !DISubprogram(name: "cheb_eval_e", scope: !1392, file: !1392, line: 3, type: !1393, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1396)
!1392 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!1393 = !DISubroutineType(cc: DW_CC_nocall, types: !1394)
!1394 = !{!38, !1395, !239, !190}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1396 = !{!1390, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1409}
!1397 = !DILocalVariable(name: "x", arg: 2, scope: !1391, file: !1392, line: 4, type: !239)
!1398 = !DILocalVariable(name: "result", arg: 3, scope: !1391, file: !1392, line: 5, type: !190)
!1399 = !DILocalVariable(name: "j", scope: !1391, file: !1392, line: 7, type: !38)
!1400 = !DILocalVariable(name: "d", scope: !1391, file: !1392, line: 8, type: !76)
!1401 = !DILocalVariable(name: "dd", scope: !1391, file: !1392, line: 9, type: !76)
!1402 = !DILocalVariable(name: "y", scope: !1391, file: !1392, line: 11, type: !76)
!1403 = !DILocalVariable(name: "y2", scope: !1391, file: !1392, line: 12, type: !76)
!1404 = !DILocalVariable(name: "e", scope: !1391, file: !1392, line: 14, type: !76)
!1405 = !DILocalVariable(name: "temp", scope: !1406, file: !1392, line: 17, type: !76)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !1392, line: 16, column: 33)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !1392, line: 16, column: 3)
!1408 = distinct !DILexicalBlock(scope: !1391, file: !1392, line: 16, column: 3)
!1409 = !DILocalVariable(name: "temp", scope: !1410, file: !1392, line: 24, type: !76)
!1410 = distinct !DILexicalBlock(scope: !1391, file: !1392, line: 23, column: 3)
!1411 = !DILocation(line: 0, scope: !1391, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 1318, column: 12, scope: !1342)
!1413 = !DILocation(line: 11, column: 19, scope: !1391, inlinedAt: !1412)
!1414 = !DILocation(line: 11, column: 22, scope: !1391, inlinedAt: !1412)
!1415 = !DILocation(line: 11, column: 30, scope: !1391, inlinedAt: !1412)
!1416 = !DILocation(line: 11, column: 39, scope: !1391, inlinedAt: !1412)
!1417 = !DILocation(line: 12, column: 19, scope: !1391, inlinedAt: !1412)
!1418 = !DILocation(line: 16, column: 3, scope: !1408, inlinedAt: !1412)
!1419 = !DILocation(line: 0, scope: !1406, inlinedAt: !1412)
!1420 = !DILocation(line: 18, column: 11, scope: !1406, inlinedAt: !1412)
!1421 = !DILocation(line: 18, column: 14, scope: !1406, inlinedAt: !1412)
!1422 = !DILocation(line: 18, column: 21, scope: !1406, inlinedAt: !1412)
!1423 = !DILocation(line: 18, column: 19, scope: !1406, inlinedAt: !1412)
!1424 = !DILocation(line: 19, column: 10, scope: !1406, inlinedAt: !1412)
!1425 = !DILocation(line: 19, column: 26, scope: !1406, inlinedAt: !1412)
!1426 = !DILocation(line: 19, column: 24, scope: !1406, inlinedAt: !1412)
!1427 = !DILocation(line: 19, column: 37, scope: !1406, inlinedAt: !1412)
!1428 = !DILocation(line: 19, column: 35, scope: !1406, inlinedAt: !1412)
!1429 = !DILocation(line: 19, column: 7, scope: !1406, inlinedAt: !1412)
!1430 = !DILocation(line: 16, column: 29, scope: !1407, inlinedAt: !1412)
!1431 = !DILocation(line: 16, column: 23, scope: !1407, inlinedAt: !1412)
!1432 = distinct !{!1432, !1418, !1433, !1434}
!1433 = !DILocation(line: 21, column: 3, scope: !1408, inlinedAt: !1412)
!1434 = !{!"llvm.loop.mustprogress"}
!1435 = !DILocation(line: 0, scope: !1410, inlinedAt: !1412)
!1436 = !DILocation(line: 25, column: 10, scope: !1410, inlinedAt: !1412)
!1437 = !DILocation(line: 25, column: 13, scope: !1410, inlinedAt: !1412)
!1438 = !DILocation(line: 25, column: 18, scope: !1410, inlinedAt: !1412)
!1439 = !DILocation(line: 26, column: 10, scope: !1410, inlinedAt: !1412)
!1440 = !DILocation(line: 26, column: 25, scope: !1410, inlinedAt: !1412)
!1441 = !DILocation(line: 26, column: 23, scope: !1410, inlinedAt: !1412)
!1442 = !DILocation(line: 26, column: 34, scope: !1410, inlinedAt: !1412)
!1443 = !DILocation(line: 26, column: 7, scope: !1410, inlinedAt: !1412)
!1444 = !DILocation(line: 29, column: 15, scope: !1391, inlinedAt: !1412)
!1445 = !DILocation(line: 30, column: 33, scope: !1391, inlinedAt: !1412)
!1446 = !DILocation(line: 30, column: 37, scope: !1391, inlinedAt: !1412)
!1447 = !DILocation(line: 30, column: 11, scope: !1391, inlinedAt: !1412)
!1448 = !DILocation(line: 30, column: 15, scope: !1391, inlinedAt: !1412)
!1449 = !DILocation(line: 1320, column: 13, scope: !1346)
!1450 = !DILocation(line: 1320, column: 11, scope: !1343)
!1451 = !DILocation(line: 1321, column: 29, scope: !1345)
!1452 = !DILocation(line: 1321, column: 26, scope: !1345)
!1453 = !DILocation(line: 1321, column: 35, scope: !1345)
!1454 = !DILocation(line: 0, scope: !1345)
!1455 = !DILocation(line: 0, scope: !1391, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 1323, column: 5, scope: !1345)
!1457 = !DILocation(line: 11, column: 19, scope: !1391, inlinedAt: !1456)
!1458 = !DILocation(line: 11, column: 22, scope: !1391, inlinedAt: !1456)
!1459 = !DILocation(line: 11, column: 30, scope: !1391, inlinedAt: !1456)
!1460 = !DILocation(line: 11, column: 39, scope: !1391, inlinedAt: !1456)
!1461 = !DILocation(line: 12, column: 19, scope: !1391, inlinedAt: !1456)
!1462 = !DILocation(line: 16, column: 3, scope: !1408, inlinedAt: !1456)
!1463 = !DILocation(line: 0, scope: !1406, inlinedAt: !1456)
!1464 = !DILocation(line: 18, column: 11, scope: !1406, inlinedAt: !1456)
!1465 = !DILocation(line: 18, column: 14, scope: !1406, inlinedAt: !1456)
!1466 = !DILocation(line: 18, column: 21, scope: !1406, inlinedAt: !1456)
!1467 = !DILocation(line: 18, column: 19, scope: !1406, inlinedAt: !1456)
!1468 = !DILocation(line: 19, column: 10, scope: !1406, inlinedAt: !1456)
!1469 = !DILocation(line: 19, column: 26, scope: !1406, inlinedAt: !1456)
!1470 = !DILocation(line: 19, column: 24, scope: !1406, inlinedAt: !1456)
!1471 = !DILocation(line: 19, column: 37, scope: !1406, inlinedAt: !1456)
!1472 = !DILocation(line: 19, column: 35, scope: !1406, inlinedAt: !1456)
!1473 = !DILocation(line: 19, column: 7, scope: !1406, inlinedAt: !1456)
!1474 = !DILocation(line: 16, column: 29, scope: !1407, inlinedAt: !1456)
!1475 = !DILocation(line: 16, column: 23, scope: !1407, inlinedAt: !1456)
!1476 = distinct !{!1476, !1462, !1477, !1434}
!1477 = !DILocation(line: 21, column: 3, scope: !1408, inlinedAt: !1456)
!1478 = !DILocation(line: 0, scope: !1410, inlinedAt: !1456)
!1479 = !DILocation(line: 25, column: 10, scope: !1410, inlinedAt: !1456)
!1480 = !DILocation(line: 25, column: 13, scope: !1410, inlinedAt: !1456)
!1481 = !DILocation(line: 25, column: 18, scope: !1410, inlinedAt: !1456)
!1482 = !DILocation(line: 26, column: 10, scope: !1410, inlinedAt: !1456)
!1483 = !DILocation(line: 26, column: 25, scope: !1410, inlinedAt: !1456)
!1484 = !DILocation(line: 26, column: 23, scope: !1410, inlinedAt: !1456)
!1485 = !DILocation(line: 26, column: 34, scope: !1410, inlinedAt: !1456)
!1486 = !DILocation(line: 26, column: 7, scope: !1410, inlinedAt: !1456)
!1487 = !DILocation(line: 30, column: 33, scope: !1391, inlinedAt: !1456)
!1488 = !DILocation(line: 30, column: 37, scope: !1391, inlinedAt: !1456)
!1489 = !DILocation(line: 1324, column: 28, scope: !1345)
!1490 = !DILocation(line: 1324, column: 25, scope: !1345)
!1491 = !DILocation(line: 1324, column: 32, scope: !1345)
!1492 = !DILocation(line: 1324, column: 49, scope: !1345)
!1493 = !DILocation(line: 1324, column: 43, scope: !1345)
!1494 = !DILocation(line: 1324, column: 38, scope: !1345)
!1495 = !DILocation(line: 1324, column: 18, scope: !1345)
!1496 = !DILocation(line: 1325, column: 25, scope: !1345)
!1497 = !DILocation(line: 1325, column: 13, scope: !1345)
!1498 = !DILocation(line: 1326, column: 44, scope: !1345)
!1499 = !DILocation(line: 1326, column: 42, scope: !1345)
!1500 = !DILocation(line: 1326, column: 17, scope: !1345)
!1501 = !DILocation(line: 1329, column: 13, scope: !1351)
!1502 = !DILocation(line: 1329, column: 11, scope: !1346)
!1503 = !DILocalVariable(name: "x", arg: 1, scope: !1504, file: !2, line: 954, type: !239)
!1504 = distinct !DISubprogram(name: "gammastar_ser", scope: !2, file: !2, line: 954, type: !1505, scopeLine: 955, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1506)
!1505 = !DISubroutineType(cc: DW_CC_nocall, types: !238)
!1506 = !{!1503, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517}
!1507 = !DILocalVariable(name: "result", arg: 2, scope: !1504, file: !2, line: 954, type: !190)
!1508 = !DILocalVariable(name: "y", scope: !1504, file: !2, line: 960, type: !239)
!1509 = !DILocalVariable(name: "c0", scope: !1504, file: !2, line: 961, type: !239)
!1510 = !DILocalVariable(name: "c1", scope: !1504, file: !2, line: 962, type: !239)
!1511 = !DILocalVariable(name: "c2", scope: !1504, file: !2, line: 963, type: !239)
!1512 = !DILocalVariable(name: "c3", scope: !1504, file: !2, line: 964, type: !239)
!1513 = !DILocalVariable(name: "c4", scope: !1504, file: !2, line: 965, type: !239)
!1514 = !DILocalVariable(name: "c5", scope: !1504, file: !2, line: 966, type: !239)
!1515 = !DILocalVariable(name: "c6", scope: !1504, file: !2, line: 967, type: !239)
!1516 = !DILocalVariable(name: "c7", scope: !1504, file: !2, line: 968, type: !239)
!1517 = !DILocalVariable(name: "ser", scope: !1504, file: !2, line: 969, type: !239)
!1518 = !DILocation(line: 0, scope: !1504, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 1330, column: 12, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 1329, column: 42)
!1521 = !DILocation(line: 960, column: 26, scope: !1504, inlinedAt: !1519)
!1522 = !DILocation(line: 960, column: 23, scope: !1504, inlinedAt: !1519)
!1523 = !DILocation(line: 969, column: 76, scope: !1504, inlinedAt: !1519)
!1524 = !DILocation(line: 969, column: 73, scope: !1504, inlinedAt: !1519)
!1525 = !DILocation(line: 969, column: 68, scope: !1504, inlinedAt: !1519)
!1526 = !DILocation(line: 969, column: 65, scope: !1504, inlinedAt: !1519)
!1527 = !DILocation(line: 969, column: 60, scope: !1504, inlinedAt: !1519)
!1528 = !DILocation(line: 969, column: 57, scope: !1504, inlinedAt: !1519)
!1529 = !DILocation(line: 969, column: 52, scope: !1504, inlinedAt: !1519)
!1530 = !DILocation(line: 969, column: 49, scope: !1504, inlinedAt: !1519)
!1531 = !DILocation(line: 969, column: 44, scope: !1504, inlinedAt: !1519)
!1532 = !DILocation(line: 969, column: 41, scope: !1504, inlinedAt: !1519)
!1533 = !DILocation(line: 969, column: 36, scope: !1504, inlinedAt: !1519)
!1534 = !DILocation(line: 969, column: 33, scope: !1504, inlinedAt: !1519)
!1535 = !DILocation(line: 969, column: 28, scope: !1504, inlinedAt: !1519)
!1536 = !DILocation(line: 969, column: 25, scope: !1504, inlinedAt: !1519)
!1537 = !DILocation(line: 970, column: 24, scope: !1504, inlinedAt: !1519)
!1538 = !DILocation(line: 970, column: 17, scope: !1504, inlinedAt: !1519)
!1539 = !DILocation(line: 970, column: 15, scope: !1504, inlinedAt: !1519)
!1540 = !DILocation(line: 971, column: 39, scope: !1504, inlinedAt: !1519)
!1541 = !DILocalVariable(name: "a", arg: 1, scope: !1542, file: !1543, line: 69, type: !76)
!1542 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !1543, file: !1543, line: 69, type: !1544, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1546)
!1543 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!76, !76, !76}
!1546 = !{!1541, !1547}
!1547 = !DILocalVariable(name: "b", arg: 2, scope: !1542, file: !1543, line: 69, type: !76)
!1548 = !DILocation(line: 0, scope: !1542, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 971, column: 55, scope: !1504, inlinedAt: !1519)
!1550 = !DILocation(line: 71, column: 10, scope: !1542, inlinedAt: !1549)
!1551 = !DILocation(line: 971, column: 53, scope: !1504, inlinedAt: !1519)
!1552 = !DILocation(line: 971, column: 11, scope: !1504, inlinedAt: !1519)
!1553 = !DILocation(line: 971, column: 15, scope: !1504, inlinedAt: !1519)
!1554 = !DILocation(line: 1330, column: 5, scope: !1520)
!1555 = !DILocation(line: 1332, column: 13, scope: !1350)
!1556 = !DILocation(line: 1332, column: 11, scope: !1351)
!1557 = !DILocation(line: 1335, column: 26, scope: !1349)
!1558 = !DILocation(line: 0, scope: !1349)
!1559 = !DILocation(line: 1336, column: 27, scope: !1349)
!1560 = !DILocation(line: 1336, column: 42, scope: !1349)
!1561 = !DILocation(line: 1336, column: 85, scope: !1349)
!1562 = !DILocation(line: 1336, column: 71, scope: !1349)
!1563 = !DILocation(line: 1336, column: 57, scope: !1349)
!1564 = !DILocation(line: 1336, column: 53, scope: !1349)
!1565 = !DILocation(line: 1336, column: 47, scope: !1349)
!1566 = !DILocation(line: 1336, column: 38, scope: !1349)
!1567 = !DILocation(line: 1336, column: 32, scope: !1349)
!1568 = !DILocation(line: 1336, column: 23, scope: !1349)
!1569 = !DILocation(line: 1336, column: 17, scope: !1349)
!1570 = !DILocation(line: 1337, column: 43, scope: !1349)
!1571 = !DILocation(line: 1337, column: 41, scope: !1349)
!1572 = !DILocation(line: 1337, column: 13, scope: !1349)
!1573 = !DILocation(line: 1337, column: 17, scope: !1349)
!1574 = !DILocation(line: 1341, column: 17, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 1340, column: 8)
!1576 = !DILocation(line: 1342, column: 22, scope: !1575)
!1577 = !DILocation(line: 1342, column: 13, scope: !1575)
!1578 = !DILocation(line: 1342, column: 17, scope: !1575)
!1579 = !DILocation(line: 1343, column: 5, scope: !1575)
!1580 = !DILocation(line: 0, scope: !1333)
!1581 = !DILocation(line: 1345, column: 1, scope: !1326)
!1582 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !1323, file: !1323, line: 110, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!38, !239, !239, !190}
!1585 = !DILocation(line: 0, scope: !1391)
!1586 = !DILocation(line: 11, column: 19, scope: !1391)
!1587 = !DILocation(line: 11, column: 28, scope: !1391)
!1588 = !{!1589, !284, i64 16}
!1589 = !{!"cheb_series_struct", !1590, i64 0, !696, i64 8, !284, i64 16, !284, i64 24, !696, i64 32}
!1590 = !{!"any pointer", !285, i64 0}
!1591 = !DILocation(line: 11, column: 22, scope: !1391)
!1592 = !DILocation(line: 11, column: 36, scope: !1391)
!1593 = !{!1589, !284, i64 24}
!1594 = !DILocation(line: 11, column: 30, scope: !1391)
!1595 = !DILocation(line: 11, column: 48, scope: !1391)
!1596 = !DILocation(line: 11, column: 39, scope: !1391)
!1597 = !DILocation(line: 12, column: 19, scope: !1391)
!1598 = !DILocation(line: 16, column: 15, scope: !1408)
!1599 = !{!1589, !696, i64 8}
!1600 = !DILocation(line: 16, column: 23, scope: !1407)
!1601 = !DILocation(line: 25, column: 30, scope: !1410)
!1602 = !{!1589, !1590, i64 0}
!1603 = !DILocation(line: 16, column: 3, scope: !1408)
!1604 = !DILocation(line: 0, scope: !1406)
!1605 = !DILocation(line: 18, column: 11, scope: !1406)
!1606 = !DILocation(line: 18, column: 14, scope: !1406)
!1607 = !DILocation(line: 18, column: 21, scope: !1406)
!1608 = !DILocation(line: 18, column: 19, scope: !1406)
!1609 = !DILocation(line: 19, column: 10, scope: !1406)
!1610 = !DILocation(line: 19, column: 26, scope: !1406)
!1611 = !DILocation(line: 19, column: 24, scope: !1406)
!1612 = !DILocation(line: 19, column: 37, scope: !1406)
!1613 = !DILocation(line: 19, column: 35, scope: !1406)
!1614 = !DILocation(line: 19, column: 7, scope: !1406)
!1615 = !DILocation(line: 16, column: 29, scope: !1407)
!1616 = distinct !{!1616, !1603, !1617, !1434}
!1617 = !DILocation(line: 21, column: 3, scope: !1408)
!1618 = !DILocation(line: 0, scope: !1410)
!1619 = !DILocation(line: 25, column: 10, scope: !1410)
!1620 = !DILocation(line: 25, column: 13, scope: !1410)
!1621 = !DILocation(line: 25, column: 26, scope: !1410)
!1622 = !DILocation(line: 25, column: 24, scope: !1410)
!1623 = !DILocation(line: 25, column: 18, scope: !1410)
!1624 = !DILocation(line: 26, column: 10, scope: !1410)
!1625 = !DILocation(line: 26, column: 25, scope: !1410)
!1626 = !DILocation(line: 26, column: 23, scope: !1410)
!1627 = !DILocation(line: 26, column: 42, scope: !1410)
!1628 = !DILocation(line: 26, column: 40, scope: !1410)
!1629 = !DILocation(line: 26, column: 34, scope: !1410)
!1630 = !DILocation(line: 26, column: 7, scope: !1410)
!1631 = !DILocation(line: 29, column: 15, scope: !1391)
!1632 = !DILocation(line: 30, column: 33, scope: !1391)
!1633 = !DILocation(line: 30, column: 44, scope: !1391)
!1634 = !DILocation(line: 30, column: 39, scope: !1391)
!1635 = !DILocation(line: 30, column: 37, scope: !1391)
!1636 = !DILocation(line: 30, column: 11, scope: !1391)
!1637 = !DILocation(line: 30, column: 15, scope: !1391)
!1638 = !DILocation(line: 32, column: 3, scope: !1391)
!1639 = !DILocation(line: 0, scope: !1504)
!1640 = !DILocation(line: 960, column: 26, scope: !1504)
!1641 = !DILocation(line: 960, column: 23, scope: !1504)
!1642 = !DILocation(line: 969, column: 76, scope: !1504)
!1643 = !DILocation(line: 969, column: 73, scope: !1504)
!1644 = !DILocation(line: 969, column: 68, scope: !1504)
!1645 = !DILocation(line: 969, column: 65, scope: !1504)
!1646 = !DILocation(line: 969, column: 60, scope: !1504)
!1647 = !DILocation(line: 969, column: 57, scope: !1504)
!1648 = !DILocation(line: 969, column: 52, scope: !1504)
!1649 = !DILocation(line: 969, column: 49, scope: !1504)
!1650 = !DILocation(line: 969, column: 44, scope: !1504)
!1651 = !DILocation(line: 969, column: 41, scope: !1504)
!1652 = !DILocation(line: 969, column: 36, scope: !1504)
!1653 = !DILocation(line: 969, column: 33, scope: !1504)
!1654 = !DILocation(line: 969, column: 28, scope: !1504)
!1655 = !DILocation(line: 969, column: 25, scope: !1504)
!1656 = !DILocation(line: 970, column: 24, scope: !1504)
!1657 = !DILocation(line: 970, column: 17, scope: !1504)
!1658 = !DILocation(line: 970, column: 15, scope: !1504)
!1659 = !DILocation(line: 971, column: 39, scope: !1504)
!1660 = !DILocation(line: 0, scope: !1542, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 971, column: 55, scope: !1504)
!1662 = !DILocation(line: 71, column: 10, scope: !1542, inlinedAt: !1661)
!1663 = !DILocation(line: 971, column: 53, scope: !1504)
!1664 = !DILocation(line: 971, column: 11, scope: !1504)
!1665 = !DILocation(line: 971, column: 15, scope: !1504)
!1666 = !DILocation(line: 972, column: 3, scope: !1504)
!1667 = distinct !DISubprogram(name: "gsl_sf_gammainv_e", scope: !2, file: !2, line: 1349, type: !237, scopeLine: 1350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1668)
!1668 = !{!1669, !1670, !1671, !1675, !1676, !1677, !1679}
!1669 = !DILocalVariable(name: "x", arg: 1, scope: !1667, file: !2, line: 1349, type: !239)
!1670 = !DILocalVariable(name: "result", arg: 2, scope: !1667, file: !2, line: 1349, type: !190)
!1671 = !DILocalVariable(name: "lng", scope: !1672, file: !2, line: 1358, type: !191)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 1357, column: 22)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 1357, column: 13)
!1674 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 1353, column: 7)
!1675 = !DILocalVariable(name: "sgn", scope: !1672, file: !2, line: 1359, type: !76)
!1676 = !DILocalVariable(name: "stat_lng", scope: !1672, file: !2, line: 1360, type: !38)
!1677 = !DILocalVariable(name: "g", scope: !1678, file: !2, line: 1376, type: !191)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 1375, column: 8)
!1679 = !DILocalVariable(name: "stat_g", scope: !1678, file: !2, line: 1377, type: !38)
!1680 = distinct !DIAssignID()
!1681 = !DILocation(line: 0, scope: !1672)
!1682 = distinct !DIAssignID()
!1683 = distinct !DIAssignID()
!1684 = !DILocation(line: 0, scope: !1678)
!1685 = !DILocation(line: 0, scope: !1667)
!1686 = !DILocation(line: 1353, column: 9, scope: !1674)
!1687 = !DILocation(line: 1353, column: 16, scope: !1674)
!1688 = !DILocation(line: 1355, column: 17, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 1353, column: 34)
!1690 = !DILocation(line: 1356, column: 5, scope: !1689)
!1691 = !DILocation(line: 1357, column: 15, scope: !1673)
!1692 = !DILocation(line: 1357, column: 13, scope: !1674)
!1693 = !DILocation(line: 1358, column: 5, scope: !1672)
!1694 = !DILocation(line: 1359, column: 5, scope: !1672)
!1695 = !DILocation(line: 1360, column: 20, scope: !1672)
!1696 = !DILocation(line: 1361, column: 8, scope: !1672)
!1697 = !DILocation(line: 1363, column: 19, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !2, line: 1361, column: 30)
!1699 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 1361, column: 8)
!1700 = !DILocation(line: 1364, column: 7, scope: !1698)
!1701 = !DILocation(line: 1368, column: 19, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 1366, column: 38)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !2, line: 1366, column: 13)
!1704 = !DILocation(line: 1369, column: 7, scope: !1702)
!1705 = !DILocation(line: 1372, column: 41, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 1371, column: 10)
!1707 = !DILocation(line: 1372, column: 36, scope: !1706)
!1708 = !DILocation(line: 1372, column: 50, scope: !1706)
!1709 = !DILocation(line: 1372, column: 55, scope: !1706)
!1710 = !DILocation(line: 1372, column: 14, scope: !1706)
!1711 = !DILocation(line: 1372, column: 7, scope: !1706)
!1712 = !DILocation(line: 0, scope: !1699)
!1713 = !DILocation(line: 1374, column: 3, scope: !1673)
!1714 = !DILocation(line: 1376, column: 5, scope: !1678)
!1715 = !DILocation(line: 1377, column: 18, scope: !1678)
!1716 = !DILocation(line: 1378, column: 15, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 1378, column: 8)
!1718 = !DILocation(line: 1378, column: 8, scope: !1678)
!1719 = !DILocation(line: 1379, column: 7, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 1379, column: 7)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 1378, column: 31)
!1722 = !DILocation(line: 1379, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 1379, column: 7)
!1724 = !DILocation(line: 1382, column: 28, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 1381, column: 10)
!1726 = !DILocation(line: 1382, column: 25, scope: !1725)
!1727 = !DILocation(line: 1382, column: 20, scope: !1725)
!1728 = !DILocation(line: 1383, column: 29, scope: !1725)
!1729 = !DILocation(line: 1383, column: 32, scope: !1725)
!1730 = !DILocation(line: 1383, column: 40, scope: !1725)
!1731 = !DILocation(line: 1383, column: 15, scope: !1725)
!1732 = !DILocation(line: 1384, column: 46, scope: !1725)
!1733 = !DILocation(line: 1384, column: 44, scope: !1725)
!1734 = !DILocation(line: 1384, column: 19, scope: !1725)
!1735 = !DILocation(line: 1385, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 1385, column: 7)
!1737 = !DILocation(line: 1385, column: 7, scope: !1725)
!1738 = !DILocation(line: 0, scope: !1717)
!1739 = !DILocation(line: 1388, column: 3, scope: !1673)
!1740 = !DILocation(line: 0, scope: !1674)
!1741 = !DILocation(line: 1389, column: 1, scope: !1667)
!1742 = distinct !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !2, file: !2, line: 1393, type: !1743, scopeLine: 1394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1745)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!38, !76, !76, !190, !190}
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760}
!1746 = !DILocalVariable(name: "zr", arg: 1, scope: !1742, file: !2, line: 1393, type: !76)
!1747 = !DILocalVariable(name: "zi", arg: 2, scope: !1742, file: !2, line: 1393, type: !76)
!1748 = !DILocalVariable(name: "lnr", arg: 3, scope: !1742, file: !2, line: 1393, type: !190)
!1749 = !DILocalVariable(name: "arg", arg: 4, scope: !1742, file: !2, line: 1393, type: !190)
!1750 = !DILocalVariable(name: "x", scope: !1751, file: !2, line: 1399, type: !76)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 1395, column: 17)
!1752 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 1395, column: 6)
!1753 = !DILocalVariable(name: "y", scope: !1751, file: !2, line: 1400, type: !76)
!1754 = !DILocalVariable(name: "a", scope: !1751, file: !2, line: 1401, type: !191)
!1755 = !DILocalVariable(name: "b", scope: !1751, file: !2, line: 1401, type: !191)
!1756 = !DILocalVariable(name: "lnsin_r", scope: !1751, file: !2, line: 1402, type: !191)
!1757 = !DILocalVariable(name: "lnsin_i", scope: !1751, file: !2, line: 1402, type: !191)
!1758 = !DILocalVariable(name: "stat_l", scope: !1751, file: !2, line: 1404, type: !38)
!1759 = !DILocalVariable(name: "stat_s", scope: !1751, file: !2, line: 1405, type: !38)
!1760 = !DILocalVariable(name: "stat_r", scope: !1761, file: !2, line: 1408, type: !38)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 1407, column: 31)
!1762 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 1407, column: 8)
!1763 = distinct !DIAssignID()
!1764 = !DILocation(line: 0, scope: !1751)
!1765 = distinct !DIAssignID()
!1766 = distinct !DIAssignID()
!1767 = distinct !DIAssignID()
!1768 = !DILocation(line: 0, scope: !1742)
!1769 = !DILocation(line: 1395, column: 9, scope: !1752)
!1770 = !DILocation(line: 1395, column: 6, scope: !1742)
!1771 = !DILocation(line: 1399, column: 19, scope: !1751)
!1772 = !DILocation(line: 1400, column: 16, scope: !1751)
!1773 = !DILocation(line: 1401, column: 5, scope: !1751)
!1774 = !DILocation(line: 1402, column: 5, scope: !1751)
!1775 = !DILocation(line: 1404, column: 18, scope: !1751)
!1776 = !DILocation(line: 1405, column: 46, scope: !1751)
!1777 = !DILocation(line: 1405, column: 55, scope: !1751)
!1778 = !DILocation(line: 1405, column: 18, scope: !1751)
!1779 = !DILocation(line: 1407, column: 15, scope: !1762)
!1780 = !DILocation(line: 1407, column: 8, scope: !1751)
!1781 = !DILocation(line: 1409, column: 35, scope: !1761)
!1782 = !DILocation(line: 1409, column: 25, scope: !1761)
!1783 = !DILocation(line: 1409, column: 43, scope: !1761)
!1784 = !DILocation(line: 1409, column: 39, scope: !1761)
!1785 = !DILocation(line: 1409, column: 16, scope: !1761)
!1786 = !DILocation(line: 1410, column: 26, scope: !1761)
!1787 = !DILocation(line: 1410, column: 34, scope: !1761)
!1788 = !DILocation(line: 1410, column: 30, scope: !1761)
!1789 = !DILocation(line: 1410, column: 64, scope: !1761)
!1790 = !DILocation(line: 1410, column: 62, scope: !1761)
!1791 = !DILocation(line: 1410, column: 38, scope: !1761)
!1792 = !DILocation(line: 1410, column: 12, scope: !1761)
!1793 = !DILocation(line: 1410, column: 16, scope: !1761)
!1794 = !DILocation(line: 1411, column: 27, scope: !1761)
!1795 = !DILocation(line: 1411, column: 18, scope: !1761)
!1796 = !DILocation(line: 1411, column: 35, scope: !1761)
!1797 = !DILocation(line: 1411, column: 31, scope: !1761)
!1798 = !DILocation(line: 1411, column: 16, scope: !1761)
!1799 = !DILocation(line: 1412, column: 26, scope: !1761)
!1800 = !DILocation(line: 1412, column: 34, scope: !1761)
!1801 = !DILocation(line: 1412, column: 30, scope: !1761)
!1802 = !DILocation(line: 1412, column: 64, scope: !1761)
!1803 = !DILocation(line: 1412, column: 62, scope: !1761)
!1804 = !DILocation(line: 1412, column: 38, scope: !1761)
!1805 = !DILocation(line: 1412, column: 12, scope: !1761)
!1806 = !DILocation(line: 1412, column: 16, scope: !1761)
!1807 = !DILocation(line: 1413, column: 16, scope: !1761)
!1808 = !DILocation(line: 0, scope: !1761)
!1809 = !DILocation(line: 1417, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 1417, column: 7)
!1811 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 1416, column: 10)
!1812 = !DILocation(line: 1417, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 1417, column: 7)
!1814 = !DILocation(line: 0, scope: !1762)
!1815 = !DILocation(line: 1419, column: 3, scope: !1752)
!1816 = !DILocation(line: 1422, column: 12, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 1420, column: 8)
!1818 = !DILocation(line: 1422, column: 5, scope: !1817)
!1819 = !DILocation(line: 0, scope: !1752)
!1820 = !DILocation(line: 1424, column: 1, scope: !1742)
!1821 = distinct !DISubprogram(name: "lngamma_lanczos_complex", scope: !2, file: !2, line: 661, type: !1822, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1823)
!1822 = !DISubroutineType(cc: DW_CC_nocall, types: !1744)
!1823 = !{!1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1841, !1842}
!1824 = !DILocalVariable(name: "zr", arg: 1, scope: !1821, file: !2, line: 661, type: !76)
!1825 = !DILocalVariable(name: "zi", arg: 2, scope: !1821, file: !2, line: 661, type: !76)
!1826 = !DILocalVariable(name: "yr", arg: 3, scope: !1821, file: !2, line: 661, type: !190)
!1827 = !DILocalVariable(name: "yi", arg: 4, scope: !1821, file: !2, line: 661, type: !190)
!1828 = !DILocalVariable(name: "k", scope: !1821, file: !2, line: 663, type: !38)
!1829 = !DILocalVariable(name: "log1_r", scope: !1821, file: !2, line: 664, type: !191)
!1830 = !DILocalVariable(name: "log1_i", scope: !1821, file: !2, line: 664, type: !191)
!1831 = !DILocalVariable(name: "logAg_r", scope: !1821, file: !2, line: 665, type: !191)
!1832 = !DILocalVariable(name: "logAg_i", scope: !1821, file: !2, line: 665, type: !191)
!1833 = !DILocalVariable(name: "Ag_r", scope: !1821, file: !2, line: 666, type: !76)
!1834 = !DILocalVariable(name: "Ag_i", scope: !1821, file: !2, line: 666, type: !76)
!1835 = !DILocalVariable(name: "yi_tmp_val", scope: !1821, file: !2, line: 667, type: !76)
!1836 = !DILocalVariable(name: "yi_tmp_err", scope: !1821, file: !2, line: 667, type: !76)
!1837 = !DILocalVariable(name: "R", scope: !1838, file: !2, line: 674, type: !76)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 673, column: 23)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 673, column: 3)
!1840 = distinct !DILexicalBlock(scope: !1821, file: !2, line: 673, column: 3)
!1841 = !DILocalVariable(name: "I", scope: !1838, file: !2, line: 675, type: !76)
!1842 = !DILocalVariable(name: "a", scope: !1838, file: !2, line: 676, type: !76)
!1843 = distinct !DIAssignID()
!1844 = !DILocation(line: 0, scope: !1821)
!1845 = distinct !DIAssignID()
!1846 = distinct !DIAssignID()
!1847 = distinct !DIAssignID()
!1848 = !DILocation(line: 664, column: 3, scope: !1821)
!1849 = !DILocation(line: 665, column: 3, scope: !1821)
!1850 = !DILocation(line: 669, column: 6, scope: !1821)
!1851 = !DILocation(line: 674, column: 19, scope: !1838)
!1852 = !DILocation(line: 0, scope: !1838)
!1853 = !DILocation(line: 676, column: 35, scope: !1838)
!1854 = !DILocation(line: 676, column: 38, scope: !1838)
!1855 = !DILocation(line: 676, column: 31, scope: !1838)
!1856 = !DILocation(line: 677, column: 16, scope: !1838)
!1857 = !DILocation(line: 677, column: 10, scope: !1838)
!1858 = !DILocation(line: 678, column: 16, scope: !1838)
!1859 = !DILocation(line: 678, column: 10, scope: !1838)
!1860 = !DILocation(line: 681, column: 27, scope: !1821)
!1861 = !DILocation(line: 681, column: 3, scope: !1821)
!1862 = !DILocation(line: 682, column: 3, scope: !1821)
!1863 = !DILocation(line: 685, column: 16, scope: !1821)
!1864 = !DILocation(line: 685, column: 29, scope: !1821)
!1865 = !DILocation(line: 685, column: 21, scope: !1821)
!1866 = !DILocation(line: 685, column: 45, scope: !1821)
!1867 = !DILocation(line: 685, column: 37, scope: !1821)
!1868 = !DILocation(line: 685, column: 33, scope: !1821)
!1869 = !DILocation(line: 685, column: 49, scope: !1821)
!1870 = !DILocation(line: 685, column: 60, scope: !1821)
!1871 = !DILocation(line: 685, column: 86, scope: !1821)
!1872 = !DILocation(line: 685, column: 76, scope: !1821)
!1873 = !DILocation(line: 685, column: 11, scope: !1821)
!1874 = !DILocation(line: 686, column: 15, scope: !1821)
!1875 = !DILocation(line: 686, column: 37, scope: !1821)
!1876 = !DILocation(line: 686, column: 27, scope: !1821)
!1877 = !DILocation(line: 686, column: 49, scope: !1821)
!1878 = !DILocation(line: 686, column: 64, scope: !1821)
!1879 = !DILocation(line: 686, column: 54, scope: !1821)
!1880 = !DILocation(line: 686, column: 11, scope: !1821)
!1881 = !DILocation(line: 687, column: 46, scope: !1821)
!1882 = !DILocation(line: 687, column: 37, scope: !1821)
!1883 = !DILocation(line: 687, column: 35, scope: !1821)
!1884 = !DILocation(line: 687, column: 7, scope: !1821)
!1885 = !DILocation(line: 687, column: 11, scope: !1821)
!1886 = !DILocation(line: 688, column: 37, scope: !1821)
!1887 = !DILocation(line: 688, column: 35, scope: !1821)
!1888 = !DILocation(line: 688, column: 7, scope: !1821)
!1889 = !DILocation(line: 688, column: 11, scope: !1821)
!1890 = !DILocation(line: 691, column: 3, scope: !1821)
!1891 = !DILocation(line: 692, column: 11, scope: !1821)
!1892 = !DILocation(line: 694, column: 1, scope: !1821)
!1893 = !DILocation(line: 693, column: 3, scope: !1821)
!1894 = !DISubprogram(name: "gsl_sf_complex_logsin_e", scope: !1895, file: !1895, line: 79, type: !1896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1895 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!38, !239, !239, !190, !190}
!1898 = !DISubprogram(name: "gsl_sf_angle_restrict_symm_e", scope: !1895, file: !1895, line: 133, type: !1899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!38, !141}
!1901 = distinct !DISubprogram(name: "gsl_sf_taylorcoeff_e", scope: !2, file: !2, line: 1427, type: !1902, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!38, !1335, !239, !190}
!1904 = !{!1905, !1906, !1907, !1908, !1914, !1915, !1919}
!1905 = !DILocalVariable(name: "n", arg: 1, scope: !1901, file: !2, line: 1427, type: !1335)
!1906 = !DILocalVariable(name: "x", arg: 2, scope: !1901, file: !2, line: 1427, type: !239)
!1907 = !DILocalVariable(name: "result", arg: 3, scope: !1901, file: !2, line: 1427, type: !190)
!1908 = !DILocalVariable(name: "log2pi", scope: !1909, file: !2, line: 1450, type: !239)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 1449, column: 8)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !2, line: 1444, column: 11)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !2, line: 1439, column: 11)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 1434, column: 11)
!1913 = distinct !DILexicalBlock(scope: !1901, file: !2, line: 1431, column: 6)
!1914 = !DILocalVariable(name: "ln_test", scope: !1909, file: !2, line: 1451, type: !239)
!1915 = !DILocalVariable(name: "product", scope: !1916, file: !2, line: 1460, type: !76)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !2, line: 1459, column: 10)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !2, line: 1456, column: 13)
!1918 = distinct !DILexicalBlock(scope: !1909, file: !2, line: 1453, column: 8)
!1919 = !DILocalVariable(name: "k", scope: !1916, file: !2, line: 1461, type: !38)
!1920 = !DILocation(line: 0, scope: !1901)
!1921 = !DILocation(line: 1431, column: 8, scope: !1913)
!1922 = !DILocation(line: 1431, column: 14, scope: !1913)
!1923 = !DILocation(line: 1432, column: 5, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 1432, column: 5)
!1925 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 1431, column: 24)
!1926 = !DILocation(line: 1432, column: 5, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 1432, column: 5)
!1928 = !DILocation(line: 1434, column: 11, scope: !1913)
!1929 = !DILocation(line: 1435, column: 17, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1912, file: !2, line: 1434, column: 19)
!1931 = !DILocation(line: 1436, column: 13, scope: !1930)
!1932 = !DILocation(line: 1436, column: 17, scope: !1930)
!1933 = !DILocation(line: 1437, column: 5, scope: !1930)
!1934 = !DILocation(line: 1440, column: 17, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1911, file: !2, line: 1439, column: 19)
!1936 = !DILocation(line: 1441, column: 13, scope: !1935)
!1937 = !DILocation(line: 1441, column: 17, scope: !1935)
!1938 = !DILocation(line: 1442, column: 5, scope: !1935)
!1939 = !DILocation(line: 1444, column: 13, scope: !1910)
!1940 = !DILocation(line: 1444, column: 11, scope: !1911)
!1941 = !DILocation(line: 1446, column: 17, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 1444, column: 21)
!1943 = !DILocation(line: 1447, column: 5, scope: !1942)
!1944 = !DILocation(line: 0, scope: !1909)
!1945 = !DILocation(line: 1451, column: 28, scope: !1909)
!1946 = !DILocation(line: 1451, column: 31, scope: !1909)
!1947 = !DILocation(line: 1451, column: 37, scope: !1909)
!1948 = !DILocation(line: 1451, column: 29, scope: !1909)
!1949 = !DILocation(line: 1451, column: 43, scope: !1909)
!1950 = !DILocation(line: 1451, column: 53, scope: !1909)
!1951 = !DILocation(line: 1451, column: 64, scope: !1909)
!1952 = !DILocation(line: 1451, column: 59, scope: !1909)
!1953 = !DILocation(line: 1451, column: 58, scope: !1909)
!1954 = !DILocation(line: 1451, column: 49, scope: !1909)
!1955 = !DILocation(line: 1451, column: 70, scope: !1909)
!1956 = !DILocation(line: 1453, column: 16, scope: !1918)
!1957 = !DILocation(line: 1453, column: 8, scope: !1909)
!1958 = !DILocation(line: 1454, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !2, line: 1454, column: 7)
!1960 = distinct !DILexicalBlock(scope: !1918, file: !2, line: 1453, column: 39)
!1961 = !DILocation(line: 1454, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !2, line: 1454, column: 7)
!1963 = !DILocation(line: 1456, column: 21, scope: !1917)
!1964 = !DILocation(line: 1456, column: 13, scope: !1918)
!1965 = !DILocation(line: 1462, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1916, file: !2, line: 1462, column: 7)
!1967 = !DILocation(line: 1457, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 1457, column: 7)
!1969 = distinct !DILexicalBlock(scope: !1917, file: !2, line: 1456, column: 44)
!1970 = !DILocation(line: 1457, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 1457, column: 7)
!1972 = !DILocation(line: 0, scope: !1916)
!1973 = !DILocation(line: 1463, column: 23, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !2, line: 1462, column: 27)
!1975 = distinct !DILexicalBlock(scope: !1966, file: !2, line: 1462, column: 7)
!1976 = !DILocation(line: 1463, column: 22, scope: !1974)
!1977 = !DILocation(line: 1463, column: 17, scope: !1974)
!1978 = !DILocation(line: 1462, column: 23, scope: !1975)
!1979 = distinct !{!1979, !1965, !1980, !1434}
!1980 = !DILocation(line: 1464, column: 7, scope: !1966)
!1981 = distinct !{!1981, !1982}
!1982 = !{!"llvm.loop.unroll.disable"}
!1983 = !DILocation(line: 1465, column: 19, scope: !1916)
!1984 = !DILocation(line: 1466, column: 23, scope: !1916)
!1985 = !DILocation(line: 1466, column: 41, scope: !1916)
!1986 = !DILocation(line: 1466, column: 15, scope: !1916)
!1987 = !DILocation(line: 1466, column: 19, scope: !1916)
!1988 = !DILocation(line: 1467, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1916, file: !2, line: 1467, column: 7)
!1990 = !DILocation(line: 1467, column: 7, scope: !1916)
!1991 = !DILocation(line: 1467, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 1467, column: 7)
!1993 = !DILocation(line: 0, scope: !1913)
!1994 = !DILocation(line: 1471, column: 1, scope: !1901)
!1995 = distinct !DISubprogram(name: "gsl_sf_fact_e", scope: !2, file: !2, line: 1474, type: !680, scopeLine: 1475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1996)
!1996 = !{!1997, !1998}
!1997 = !DILocalVariable(name: "n", arg: 1, scope: !1995, file: !2, line: 1474, type: !682)
!1998 = !DILocalVariable(name: "result", arg: 2, scope: !1995, file: !2, line: 1474, type: !190)
!1999 = !DILocation(line: 0, scope: !1995)
!2000 = !DILocation(line: 1478, column: 8, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1995, file: !2, line: 1478, column: 6)
!2002 = !DILocation(line: 1478, column: 6, scope: !1995)
!2003 = !DILocation(line: 1479, column: 19, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 1478, column: 14)
!2005 = !DILocation(line: 1479, column: 33, scope: !2004)
!2006 = !DILocation(line: 1479, column: 17, scope: !2004)
!2007 = !DILocation(line: 1480, column: 13, scope: !2004)
!2008 = !DILocation(line: 1480, column: 17, scope: !2004)
!2009 = !DILocation(line: 1481, column: 5, scope: !2004)
!2010 = !DILocation(line: 1483, column: 13, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 1483, column: 11)
!2012 = !DILocation(line: 1483, column: 11, scope: !2001)
!2013 = !DILocation(line: 1484, column: 19, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 1483, column: 33)
!2015 = !DILocation(line: 1484, column: 33, scope: !2014)
!2016 = !DILocation(line: 1484, column: 17, scope: !2014)
!2017 = !DILocation(line: 1485, column: 43, scope: !2014)
!2018 = !DILocation(line: 1485, column: 41, scope: !2014)
!2019 = !DILocation(line: 1485, column: 13, scope: !2014)
!2020 = !DILocation(line: 1485, column: 17, scope: !2014)
!2021 = !DILocation(line: 1486, column: 5, scope: !2014)
!2022 = !DILocation(line: 1489, column: 5, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !2, line: 1489, column: 5)
!2024 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 1488, column: 8)
!2025 = !DILocation(line: 1489, column: 5, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2023, file: !2, line: 1489, column: 5)
!2027 = !DILocation(line: 0, scope: !2001)
!2028 = !DILocation(line: 1491, column: 1, scope: !1995)
!2029 = distinct !DISubprogram(name: "gsl_sf_doublefact_e", scope: !2, file: !2, line: 1494, type: !680, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2030)
!2030 = !{!2031, !2032}
!2031 = !DILocalVariable(name: "n", arg: 1, scope: !2029, file: !2, line: 1494, type: !682)
!2032 = !DILocalVariable(name: "result", arg: 2, scope: !2029, file: !2, line: 1494, type: !190)
!2033 = !DILocation(line: 0, scope: !2029)
!2034 = !DILocation(line: 1498, column: 8, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 1498, column: 6)
!2036 = !DILocation(line: 1498, column: 6, scope: !2029)
!2037 = !DILocation(line: 1499, column: 19, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 1498, column: 14)
!2039 = !DILocation(line: 1499, column: 38, scope: !2038)
!2040 = !DILocation(line: 1499, column: 17, scope: !2038)
!2041 = !DILocation(line: 1500, column: 13, scope: !2038)
!2042 = !DILocation(line: 1500, column: 17, scope: !2038)
!2043 = !DILocation(line: 1501, column: 5, scope: !2038)
!2044 = !DILocation(line: 1503, column: 13, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 1503, column: 11)
!2046 = !DILocation(line: 1503, column: 11, scope: !2035)
!2047 = !DILocation(line: 1504, column: 19, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 1503, column: 39)
!2049 = !DILocation(line: 1504, column: 38, scope: !2048)
!2050 = !DILocation(line: 1504, column: 17, scope: !2048)
!2051 = !DILocation(line: 1505, column: 43, scope: !2048)
!2052 = !DILocation(line: 1505, column: 41, scope: !2048)
!2053 = !DILocation(line: 1505, column: 13, scope: !2048)
!2054 = !DILocation(line: 1505, column: 17, scope: !2048)
!2055 = !DILocation(line: 1506, column: 5, scope: !2048)
!2056 = !DILocation(line: 1509, column: 5, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !2, line: 1509, column: 5)
!2058 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 1508, column: 8)
!2059 = !DILocation(line: 1509, column: 5, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 1509, column: 5)
!2061 = !DILocation(line: 0, scope: !2035)
!2062 = !DILocation(line: 1511, column: 1, scope: !2029)
!2063 = !DILocation(line: 0, scope: !679)
!2064 = !DILocation(line: 1518, column: 8, scope: !689)
!2065 = !DILocation(line: 1518, column: 6, scope: !679)
!2066 = !DILocation(line: 1519, column: 23, scope: !692)
!2067 = !DILocation(line: 1519, column: 37, scope: !692)
!2068 = !DILocation(line: 1519, column: 19, scope: !692)
!2069 = !DILocation(line: 1519, column: 17, scope: !692)
!2070 = !DILocation(line: 1520, column: 43, scope: !692)
!2071 = !DILocation(line: 1520, column: 41, scope: !692)
!2072 = !DILocation(line: 1520, column: 13, scope: !692)
!2073 = !DILocation(line: 1520, column: 17, scope: !692)
!2074 = !DILocation(line: 1521, column: 5, scope: !692)
!2075 = !DILocation(line: 1524, column: 22, scope: !708)
!2076 = !DILocation(line: 1524, column: 23, scope: !708)
!2077 = !DILocation(line: 1524, column: 5, scope: !708)
!2078 = !DILocation(line: 1525, column: 5, scope: !708)
!2079 = !DILocation(line: 1527, column: 1, scope: !679)
!2080 = distinct !DISubprogram(name: "gsl_sf_lndoublefact_e", scope: !2, file: !2, line: 1530, type: !680, scopeLine: 1531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2081)
!2081 = !{!2082, !2083, !2084, !2088}
!2082 = !DILocalVariable(name: "n", arg: 1, scope: !2080, file: !2, line: 1530, type: !682)
!2083 = !DILocalVariable(name: "result", arg: 2, scope: !2080, file: !2, line: 1530, type: !190)
!2084 = !DILocalVariable(name: "lg", scope: !2085, file: !2, line: 1540, type: !191)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !2, line: 1539, column: 26)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 1539, column: 11)
!2087 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 1534, column: 6)
!2088 = !DILocalVariable(name: "lg", scope: !2089, file: !2, line: 1547, type: !191)
!2089 = distinct !DILexicalBlock(scope: !2086, file: !2, line: 1546, column: 8)
!2090 = distinct !DIAssignID()
!2091 = !DILocation(line: 0, scope: !2085)
!2092 = distinct !DIAssignID()
!2093 = !DILocation(line: 0, scope: !2089)
!2094 = !DILocation(line: 0, scope: !2080)
!2095 = !DILocation(line: 1534, column: 8, scope: !2087)
!2096 = !DILocation(line: 1534, column: 6, scope: !2080)
!2097 = !DILocation(line: 1535, column: 23, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 1534, column: 34)
!2099 = !DILocation(line: 1535, column: 42, scope: !2098)
!2100 = !DILocation(line: 1535, column: 19, scope: !2098)
!2101 = !DILocation(line: 1535, column: 17, scope: !2098)
!2102 = !DILocation(line: 1536, column: 43, scope: !2098)
!2103 = !DILocation(line: 1536, column: 41, scope: !2098)
!2104 = !DILocation(line: 1536, column: 13, scope: !2098)
!2105 = !DILocation(line: 1536, column: 17, scope: !2098)
!2106 = !DILocation(line: 1537, column: 5, scope: !2098)
!2107 = !DILocation(line: 1539, column: 11, scope: !2086)
!2108 = !DILocation(line: 0, scope: !2086)
!2109 = !DILocation(line: 1539, column: 11, scope: !2087)
!2110 = !DILocation(line: 1540, column: 5, scope: !2085)
!2111 = !DILocation(line: 1541, column: 28, scope: !2085)
!2112 = !DILocation(line: 1541, column: 25, scope: !2085)
!2113 = !DILocation(line: 1541, column: 5, scope: !2085)
!2114 = !DILocation(line: 1542, column: 25, scope: !2085)
!2115 = !DILocation(line: 1542, column: 22, scope: !2085)
!2116 = !DILocation(line: 1542, column: 31, scope: !2085)
!2117 = !DILocation(line: 1542, column: 39, scope: !2085)
!2118 = !DILocation(line: 1542, column: 57, scope: !2085)
!2119 = !DILocation(line: 1542, column: 52, scope: !2085)
!2120 = !DILocation(line: 1542, column: 17, scope: !2085)
!2121 = !DILocation(line: 1543, column: 43, scope: !2085)
!2122 = !DILocation(line: 1543, column: 41, scope: !2085)
!2123 = !DILocation(line: 1543, column: 66, scope: !2085)
!2124 = !DILocation(line: 1543, column: 61, scope: !2085)
!2125 = !DILocation(line: 1543, column: 13, scope: !2085)
!2126 = !DILocation(line: 1543, column: 17, scope: !2085)
!2127 = !DILocation(line: 1545, column: 3, scope: !2086)
!2128 = !DILocation(line: 1547, column: 5, scope: !2089)
!2129 = !DILocation(line: 1548, column: 25, scope: !2089)
!2130 = !DILocation(line: 1548, column: 27, scope: !2089)
!2131 = !DILocation(line: 1548, column: 5, scope: !2089)
!2132 = !DILocation(line: 1549, column: 24, scope: !2089)
!2133 = !DILocation(line: 1549, column: 36, scope: !2089)
!2134 = !DILocation(line: 1549, column: 31, scope: !2089)
!2135 = !DILocation(line: 1549, column: 17, scope: !2089)
!2136 = !DILocation(line: 1550, column: 43, scope: !2089)
!2137 = !DILocation(line: 1550, column: 41, scope: !2089)
!2138 = !DILocation(line: 1550, column: 66, scope: !2089)
!2139 = !DILocation(line: 1550, column: 61, scope: !2089)
!2140 = !DILocation(line: 1550, column: 13, scope: !2089)
!2141 = !DILocation(line: 1550, column: 17, scope: !2089)
!2142 = !DILocation(line: 1552, column: 3, scope: !2086)
!2143 = !DILocation(line: 1553, column: 1, scope: !2080)
!2144 = distinct !DISubprogram(name: "gsl_sf_lnchoose_e", scope: !2, file: !2, line: 1556, type: !2145, scopeLine: 1557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!38, !683, !683, !190}
!2147 = !{!2148, !2149, !2150, !2151, !2155, !2156}
!2148 = !DILocalVariable(name: "n", arg: 1, scope: !2144, file: !2, line: 1556, type: !683)
!2149 = !DILocalVariable(name: "m", arg: 2, scope: !2144, file: !2, line: 1556, type: !683)
!2150 = !DILocalVariable(name: "result", arg: 3, scope: !2144, file: !2, line: 1556, type: !190)
!2151 = !DILocalVariable(name: "nf", scope: !2152, file: !2, line: 1569, type: !191)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 1568, column: 8)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 1563, column: 11)
!2154 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 1560, column: 6)
!2155 = !DILocalVariable(name: "mf", scope: !2152, file: !2, line: 1570, type: !191)
!2156 = !DILocalVariable(name: "nmmf", scope: !2152, file: !2, line: 1571, type: !191)
!2157 = distinct !DIAssignID()
!2158 = !DILocation(line: 0, scope: !2152)
!2159 = distinct !DIAssignID()
!2160 = distinct !DIAssignID()
!2161 = !DILocation(line: 0, scope: !2144)
!2162 = !DILocation(line: 1560, column: 8, scope: !2154)
!2163 = !DILocation(line: 1560, column: 6, scope: !2144)
!2164 = !DILocation(line: 1561, column: 5, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !2, line: 1561, column: 5)
!2166 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 1560, column: 13)
!2167 = !DILocation(line: 1561, column: 5, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 1561, column: 5)
!2169 = !DILocation(line: 1563, column: 13, scope: !2153)
!2170 = !DILocation(line: 1563, column: 18, scope: !2153)
!2171 = !DILocation(line: 1565, column: 17, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 1563, column: 29)
!2173 = !DILocation(line: 1566, column: 5, scope: !2172)
!2174 = !DILocation(line: 1569, column: 5, scope: !2152)
!2175 = !DILocation(line: 1570, column: 5, scope: !2152)
!2176 = !DILocation(line: 1571, column: 5, scope: !2152)
!2177 = !DILocation(line: 1572, column: 9, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 1572, column: 8)
!2179 = !DILocation(line: 1572, column: 12, scope: !2178)
!2180 = !DILocation(line: 1572, column: 8, scope: !2152)
!2181 = !DILocation(line: 0, scope: !679, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 1573, column: 5, scope: !2152)
!2183 = !DILocation(line: 1518, column: 8, scope: !689, inlinedAt: !2182)
!2184 = !DILocation(line: 1518, column: 6, scope: !679, inlinedAt: !2182)
!2185 = !DILocation(line: 1519, column: 23, scope: !692, inlinedAt: !2182)
!2186 = !DILocation(line: 1519, column: 37, scope: !692, inlinedAt: !2182)
!2187 = !DILocation(line: 1519, column: 19, scope: !692, inlinedAt: !2182)
!2188 = !DILocation(line: 1519, column: 17, scope: !692, inlinedAt: !2182)
!2189 = distinct !DIAssignID()
!2190 = !DILocation(line: 1520, column: 43, scope: !692, inlinedAt: !2182)
!2191 = !DILocation(line: 1520, column: 41, scope: !692, inlinedAt: !2182)
!2192 = !DILocation(line: 1520, column: 13, scope: !692, inlinedAt: !2182)
!2193 = !DILocation(line: 1520, column: 17, scope: !692, inlinedAt: !2182)
!2194 = distinct !DIAssignID()
!2195 = !DILocation(line: 1521, column: 5, scope: !692, inlinedAt: !2182)
!2196 = !DILocation(line: 1524, column: 22, scope: !708, inlinedAt: !2182)
!2197 = !DILocation(line: 1524, column: 23, scope: !708, inlinedAt: !2182)
!2198 = !DILocation(line: 1524, column: 5, scope: !708, inlinedAt: !2182)
!2199 = !DILocation(line: 1525, column: 5, scope: !708, inlinedAt: !2182)
!2200 = !DILocation(line: 0, scope: !679, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 1574, column: 5, scope: !2152)
!2202 = !DILocation(line: 1518, column: 8, scope: !689, inlinedAt: !2201)
!2203 = !DILocation(line: 1518, column: 6, scope: !679, inlinedAt: !2201)
!2204 = !DILocation(line: 1519, column: 23, scope: !692, inlinedAt: !2201)
!2205 = !DILocation(line: 1519, column: 37, scope: !692, inlinedAt: !2201)
!2206 = !DILocation(line: 1519, column: 19, scope: !692, inlinedAt: !2201)
!2207 = !DILocation(line: 1519, column: 17, scope: !692, inlinedAt: !2201)
!2208 = distinct !DIAssignID()
!2209 = !DILocation(line: 1520, column: 43, scope: !692, inlinedAt: !2201)
!2210 = !DILocation(line: 1520, column: 41, scope: !692, inlinedAt: !2201)
!2211 = !DILocation(line: 1520, column: 13, scope: !692, inlinedAt: !2201)
!2212 = !DILocation(line: 1520, column: 17, scope: !692, inlinedAt: !2201)
!2213 = distinct !DIAssignID()
!2214 = !DILocation(line: 1521, column: 5, scope: !692, inlinedAt: !2201)
!2215 = !DILocation(line: 1524, column: 22, scope: !708, inlinedAt: !2201)
!2216 = !DILocation(line: 1524, column: 23, scope: !708, inlinedAt: !2201)
!2217 = !DILocation(line: 1524, column: 5, scope: !708, inlinedAt: !2201)
!2218 = !DILocation(line: 1525, column: 5, scope: !708, inlinedAt: !2201)
!2219 = !DILocation(line: 1575, column: 22, scope: !2152)
!2220 = !DILocation(line: 0, scope: !679, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 1575, column: 5, scope: !2152)
!2222 = !DILocation(line: 1518, column: 8, scope: !689, inlinedAt: !2221)
!2223 = !DILocation(line: 1518, column: 6, scope: !679, inlinedAt: !2221)
!2224 = !DILocation(line: 1519, column: 23, scope: !692, inlinedAt: !2221)
!2225 = !DILocation(line: 1519, column: 37, scope: !692, inlinedAt: !2221)
!2226 = !DILocation(line: 1519, column: 19, scope: !692, inlinedAt: !2221)
!2227 = distinct !DIAssignID()
!2228 = !DILocation(line: 1520, column: 43, scope: !692, inlinedAt: !2221)
!2229 = !DILocation(line: 1520, column: 41, scope: !692, inlinedAt: !2221)
!2230 = distinct !DIAssignID()
!2231 = !DILocation(line: 1521, column: 5, scope: !692, inlinedAt: !2221)
!2232 = !DILocation(line: 1524, column: 22, scope: !708, inlinedAt: !2221)
!2233 = !DILocation(line: 1524, column: 23, scope: !708, inlinedAt: !2221)
!2234 = !DILocation(line: 1524, column: 5, scope: !708, inlinedAt: !2221)
!2235 = !DILocation(line: 1576, column: 43, scope: !2152)
!2236 = !DILocation(line: 1577, column: 43, scope: !2152)
!2237 = !DILocation(line: 1525, column: 5, scope: !708, inlinedAt: !2221)
!2238 = !DILocation(line: 1576, column: 23, scope: !2152)
!2239 = !DILocation(line: 1576, column: 32, scope: !2152)
!2240 = !DILocation(line: 1576, column: 27, scope: !2152)
!2241 = !DILocation(line: 1576, column: 36, scope: !2152)
!2242 = !DILocation(line: 1576, column: 18, scope: !2152)
!2243 = !DILocation(line: 1577, column: 23, scope: !2152)
!2244 = !DILocation(line: 1577, column: 32, scope: !2152)
!2245 = !DILocation(line: 1577, column: 27, scope: !2152)
!2246 = !DILocation(line: 1577, column: 36, scope: !2152)
!2247 = !DILocation(line: 1577, column: 13, scope: !2152)
!2248 = !DILocation(line: 1578, column: 44, scope: !2152)
!2249 = !DILocation(line: 1578, column: 42, scope: !2152)
!2250 = !DILocation(line: 1578, column: 17, scope: !2152)
!2251 = !DILocation(line: 1580, column: 3, scope: !2153)
!2252 = !DILocation(line: 0, scope: !2154)
!2253 = !DILocation(line: 1581, column: 1, scope: !2144)
!2254 = distinct !DISubprogram(name: "gsl_sf_choose_e", scope: !2, file: !2, line: 1584, type: !2145, scopeLine: 1585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2266, !2267, !2271, !2273, !2274}
!2256 = !DILocalVariable(name: "n", arg: 1, scope: !2254, file: !2, line: 1584, type: !683)
!2257 = !DILocalVariable(name: "m", arg: 2, scope: !2254, file: !2, line: 1584, type: !683)
!2258 = !DILocalVariable(name: "result", arg: 3, scope: !2254, file: !2, line: 1584, type: !190)
!2259 = !DILocalVariable(name: "prod", scope: !2260, file: !2, line: 1603, type: !76)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 1602, column: 7)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 1601, column: 9)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !2, line: 1598, column: 10)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !2, line: 1594, column: 12)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 1589, column: 11)
!2265 = distinct !DILexicalBlock(scope: !2254, file: !2, line: 1586, column: 6)
!2266 = !DILocalVariable(name: "k", scope: !2260, file: !2, line: 1604, type: !683)
!2267 = !DILocalVariable(name: "tk", scope: !2268, file: !2, line: 1607, type: !76)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 1606, column: 31)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 1606, column: 9)
!2270 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 1606, column: 9)
!2271 = !DILocalVariable(name: "lc", scope: !2272, file: !2, line: 1619, type: !191)
!2272 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 1618, column: 7)
!2273 = !DILocalVariable(name: "stat_lc", scope: !2272, file: !2, line: 1620, type: !1335)
!2274 = !DILocalVariable(name: "stat_e", scope: !2272, file: !2, line: 1621, type: !1335)
!2275 = distinct !DIAssignID()
!2276 = !DILocation(line: 0, scope: !2272)
!2277 = !DILocation(line: 0, scope: !2254)
!2278 = !DILocation(line: 1586, column: 8, scope: !2265)
!2279 = !DILocation(line: 1586, column: 6, scope: !2254)
!2280 = !DILocation(line: 1587, column: 5, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !2, line: 1587, column: 5)
!2282 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 1586, column: 13)
!2283 = !DILocation(line: 1587, column: 5, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 1587, column: 5)
!2285 = !DILocation(line: 1589, column: 13, scope: !2264)
!2286 = !DILocation(line: 1589, column: 18, scope: !2264)
!2287 = !DILocation(line: 1590, column: 17, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2264, file: !2, line: 1589, column: 29)
!2289 = !DILocation(line: 1591, column: 13, scope: !2288)
!2290 = !DILocation(line: 1591, column: 17, scope: !2288)
!2291 = !DILocation(line: 1592, column: 5, scope: !2288)
!2292 = !DILocation(line: 1594, column: 14, scope: !2263)
!2293 = !DILocation(line: 1594, column: 12, scope: !2264)
!2294 = !DILocation(line: 1595, column: 20, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2263, file: !2, line: 1594, column: 35)
!2296 = !DILocation(line: 1595, column: 34, scope: !2295)
!2297 = !DILocation(line: 1595, column: 38, scope: !2295)
!2298 = !DILocation(line: 1595, column: 52, scope: !2295)
!2299 = !DILocation(line: 1595, column: 36, scope: !2295)
!2300 = !DILocation(line: 1595, column: 69, scope: !2295)
!2301 = !DILocation(line: 1595, column: 57, scope: !2295)
!2302 = !DILocation(line: 1595, column: 73, scope: !2295)
!2303 = !DILocation(line: 1595, column: 55, scope: !2295)
!2304 = !DILocation(line: 1595, column: 17, scope: !2295)
!2305 = !DILocation(line: 1596, column: 43, scope: !2295)
!2306 = !DILocation(line: 1596, column: 41, scope: !2295)
!2307 = !DILocation(line: 1596, column: 13, scope: !2295)
!2308 = !DILocation(line: 1596, column: 17, scope: !2295)
!2309 = !DILocation(line: 1597, column: 5, scope: !2295)
!2310 = !DILocation(line: 1599, column: 9, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 1599, column: 8)
!2312 = !DILocation(line: 1599, column: 12, scope: !2311)
!2313 = !DILocation(line: 1599, column: 8, scope: !2262)
!2314 = !DILocation(line: 1601, column: 11, scope: !2261)
!2315 = !DILocation(line: 1601, column: 15, scope: !2261)
!2316 = !DILocation(line: 1601, column: 9, scope: !2262)
!2317 = !DILocation(line: 0, scope: !2260)
!2318 = !DILocation(line: 1606, column: 19, scope: !2269)
!2319 = !DILocation(line: 1606, column: 9, scope: !2270)
!2320 = !DILocation(line: 1607, column: 23, scope: !2268)
!2321 = !DILocation(line: 1607, column: 45, scope: !2268)
!2322 = !DILocation(line: 1607, column: 35, scope: !2268)
!2323 = !DILocation(line: 1607, column: 33, scope: !2268)
!2324 = !DILocation(line: 0, scope: !2268)
!2325 = !DILocation(line: 1608, column: 30, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2268, file: !2, line: 1608, column: 14)
!2327 = !DILocation(line: 1608, column: 17, scope: !2326)
!2328 = !DILocation(line: 1608, column: 14, scope: !2268)
!2329 = !DILocation(line: 1609, column: 13, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 1609, column: 13)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1608, column: 37)
!2332 = !DILocation(line: 1609, column: 13, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 1609, column: 13)
!2334 = !DILocation(line: 1611, column: 16, scope: !2268)
!2335 = !DILocation(line: 1606, column: 27, scope: !2269)
!2336 = distinct !{!2336, !2319, !2337, !1434}
!2337 = !DILocation(line: 1612, column: 9, scope: !2270)
!2338 = !DILocation(line: 1603, column: 16, scope: !2260)
!2339 = !DILocation(line: 1613, column: 21, scope: !2260)
!2340 = !DILocation(line: 1614, column: 45, scope: !2260)
!2341 = !DILocation(line: 1614, column: 59, scope: !2260)
!2342 = !DILocation(line: 1614, column: 52, scope: !2260)
!2343 = !DILocation(line: 1614, column: 17, scope: !2260)
!2344 = !DILocation(line: 1614, column: 21, scope: !2260)
!2345 = !DILocation(line: 1615, column: 9, scope: !2260)
!2346 = !DILocation(line: 1619, column: 9, scope: !2272)
!2347 = !DILocation(line: 1620, column: 29, scope: !2272)
!2348 = !DILocation(line: 1621, column: 49, scope: !2272)
!2349 = !DILocation(line: 1621, column: 57, scope: !2272)
!2350 = !DILocation(line: 1621, column: 29, scope: !2272)
!2351 = !DILocation(line: 1622, column: 16, scope: !2272)
!2352 = !DILocation(line: 1623, column: 7, scope: !2261)
!2353 = !DILocation(line: 0, scope: !2265)
!2354 = !DILocation(line: 1625, column: 1, scope: !2254)
!2355 = distinct !DISubprogram(name: "gsl_sf_fact", scope: !2, file: !2, line: 1632, type: !2356, scopeLine: 1633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!76, !682}
!2358 = !{!2359, !2360, !2361}
!2359 = !DILocalVariable(name: "n", arg: 1, scope: !2355, file: !2, line: 1632, type: !682)
!2360 = !DILocalVariable(name: "result", scope: !2355, file: !2, line: 1634, type: !191)
!2361 = !DILocalVariable(name: "status", scope: !2355, file: !2, line: 1634, type: !38)
!2362 = !DILocation(line: 0, scope: !2355)
!2363 = !DILocation(line: 0, scope: !1995, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 1634, column: 3, scope: !2355)
!2365 = !DILocation(line: 1478, column: 8, scope: !2001, inlinedAt: !2364)
!2366 = !DILocation(line: 1478, column: 6, scope: !1995, inlinedAt: !2364)
!2367 = !DILocation(line: 1479, column: 19, scope: !2004, inlinedAt: !2364)
!2368 = !DILocation(line: 1479, column: 33, scope: !2004, inlinedAt: !2364)
!2369 = !DILocation(line: 1481, column: 5, scope: !2004, inlinedAt: !2364)
!2370 = !DILocation(line: 1483, column: 13, scope: !2011, inlinedAt: !2364)
!2371 = !DILocation(line: 1483, column: 11, scope: !2001, inlinedAt: !2364)
!2372 = !DILocation(line: 1484, column: 19, scope: !2014, inlinedAt: !2364)
!2373 = !DILocation(line: 1484, column: 33, scope: !2014, inlinedAt: !2364)
!2374 = !DILocation(line: 1486, column: 5, scope: !2014, inlinedAt: !2364)
!2375 = !DILocation(line: 1489, column: 5, scope: !2026, inlinedAt: !2364)
!2376 = !DILocation(line: 1634, column: 3, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !2, line: 1634, column: 3)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 1634, column: 3)
!2379 = distinct !DILexicalBlock(scope: !2355, file: !2, line: 1634, column: 3)
!2380 = !DILocation(line: 1635, column: 1, scope: !2355)
!2381 = distinct !DISubprogram(name: "gsl_sf_lnfact", scope: !2, file: !2, line: 1637, type: !2356, scopeLine: 1638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2382)
!2382 = !{!2383, !2384, !2385}
!2383 = !DILocalVariable(name: "n", arg: 1, scope: !2381, file: !2, line: 1637, type: !682)
!2384 = !DILocalVariable(name: "result", scope: !2381, file: !2, line: 1639, type: !191)
!2385 = !DILocalVariable(name: "status", scope: !2381, file: !2, line: 1639, type: !38)
!2386 = distinct !DIAssignID()
!2387 = !DILocation(line: 0, scope: !2381)
!2388 = !DILocation(line: 1639, column: 3, scope: !2381)
!2389 = !DILocation(line: 0, scope: !679, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 1639, column: 3, scope: !2381)
!2391 = !DILocation(line: 1518, column: 8, scope: !689, inlinedAt: !2390)
!2392 = !DILocation(line: 1518, column: 6, scope: !679, inlinedAt: !2390)
!2393 = !DILocation(line: 1519, column: 23, scope: !692, inlinedAt: !2390)
!2394 = !DILocation(line: 1519, column: 37, scope: !692, inlinedAt: !2390)
!2395 = !DILocation(line: 1519, column: 19, scope: !692, inlinedAt: !2390)
!2396 = distinct !DIAssignID()
!2397 = distinct !DIAssignID()
!2398 = !DILocation(line: 1521, column: 5, scope: !692, inlinedAt: !2390)
!2399 = !DILocation(line: 1524, column: 22, scope: !708, inlinedAt: !2390)
!2400 = !DILocation(line: 1524, column: 23, scope: !708, inlinedAt: !2390)
!2401 = !DILocation(line: 1524, column: 5, scope: !708, inlinedAt: !2390)
!2402 = !DILocation(line: 1525, column: 5, scope: !708, inlinedAt: !2390)
!2403 = !DILocation(line: 1640, column: 1, scope: !2381)
!2404 = distinct !DISubprogram(name: "gsl_sf_doublefact", scope: !2, file: !2, line: 1642, type: !2356, scopeLine: 1643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2405)
!2405 = !{!2406, !2407, !2408}
!2406 = !DILocalVariable(name: "n", arg: 1, scope: !2404, file: !2, line: 1642, type: !682)
!2407 = !DILocalVariable(name: "result", scope: !2404, file: !2, line: 1644, type: !191)
!2408 = !DILocalVariable(name: "status", scope: !2404, file: !2, line: 1644, type: !38)
!2409 = !DILocation(line: 0, scope: !2404)
!2410 = !DILocation(line: 0, scope: !2029, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1644, column: 3, scope: !2404)
!2412 = !DILocation(line: 1498, column: 8, scope: !2035, inlinedAt: !2411)
!2413 = !DILocation(line: 1498, column: 6, scope: !2029, inlinedAt: !2411)
!2414 = !DILocation(line: 1499, column: 19, scope: !2038, inlinedAt: !2411)
!2415 = !DILocation(line: 1499, column: 38, scope: !2038, inlinedAt: !2411)
!2416 = !DILocation(line: 1501, column: 5, scope: !2038, inlinedAt: !2411)
!2417 = !DILocation(line: 1503, column: 13, scope: !2045, inlinedAt: !2411)
!2418 = !DILocation(line: 1503, column: 11, scope: !2035, inlinedAt: !2411)
!2419 = !DILocation(line: 1504, column: 19, scope: !2048, inlinedAt: !2411)
!2420 = !DILocation(line: 1504, column: 38, scope: !2048, inlinedAt: !2411)
!2421 = !DILocation(line: 1506, column: 5, scope: !2048, inlinedAt: !2411)
!2422 = !DILocation(line: 1509, column: 5, scope: !2060, inlinedAt: !2411)
!2423 = !DILocation(line: 1644, column: 3, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !2, line: 1644, column: 3)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !2, line: 1644, column: 3)
!2426 = distinct !DILexicalBlock(scope: !2404, file: !2, line: 1644, column: 3)
!2427 = !DILocation(line: 1645, column: 1, scope: !2404)
!2428 = distinct !DISubprogram(name: "gsl_sf_lndoublefact", scope: !2, file: !2, line: 1647, type: !2356, scopeLine: 1648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2429)
!2429 = !{!2430, !2431, !2432}
!2430 = !DILocalVariable(name: "n", arg: 1, scope: !2428, file: !2, line: 1647, type: !682)
!2431 = !DILocalVariable(name: "result", scope: !2428, file: !2, line: 1649, type: !191)
!2432 = !DILocalVariable(name: "status", scope: !2428, file: !2, line: 1649, type: !38)
!2433 = distinct !DIAssignID()
!2434 = !DILocation(line: 0, scope: !2428)
!2435 = !DILocation(line: 1649, column: 3, scope: !2428)
!2436 = !DILocation(line: 1650, column: 1, scope: !2428)
!2437 = distinct !DISubprogram(name: "gsl_sf_lngamma", scope: !2, file: !2, line: 1652, type: !2438, scopeLine: 1653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!76, !239}
!2440 = !{!2441, !2442, !2443}
!2441 = !DILocalVariable(name: "x", arg: 1, scope: !2437, file: !2, line: 1652, type: !239)
!2442 = !DILocalVariable(name: "result", scope: !2437, file: !2, line: 1654, type: !191)
!2443 = !DILocalVariable(name: "status", scope: !2437, file: !2, line: 1654, type: !38)
!2444 = distinct !DIAssignID()
!2445 = !DILocation(line: 0, scope: !2437)
!2446 = !DILocation(line: 1654, column: 3, scope: !2437)
!2447 = !DILocation(line: 1654, column: 3, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2437, file: !2, line: 1654, column: 3)
!2449 = !DILocation(line: 1654, column: 3, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !2, line: 1654, column: 3)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !2, line: 1654, column: 3)
!2452 = !DILocation(line: 1655, column: 1, scope: !2437)
!2453 = distinct !DISubprogram(name: "gsl_sf_gamma", scope: !2, file: !2, line: 1657, type: !2438, scopeLine: 1658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2454)
!2454 = !{!2455, !2456, !2457}
!2455 = !DILocalVariable(name: "x", arg: 1, scope: !2453, file: !2, line: 1657, type: !239)
!2456 = !DILocalVariable(name: "result", scope: !2453, file: !2, line: 1659, type: !191)
!2457 = !DILocalVariable(name: "status", scope: !2453, file: !2, line: 1659, type: !38)
!2458 = distinct !DIAssignID()
!2459 = !DILocation(line: 0, scope: !2453)
!2460 = !DILocation(line: 1659, column: 3, scope: !2453)
!2461 = !DILocation(line: 1659, column: 3, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2453, file: !2, line: 1659, column: 3)
!2463 = !DILocation(line: 1659, column: 3, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !2, line: 1659, column: 3)
!2465 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 1659, column: 3)
!2466 = !DILocation(line: 1660, column: 1, scope: !2453)
!2467 = distinct !DISubprogram(name: "gsl_sf_gammastar", scope: !2, file: !2, line: 1662, type: !2438, scopeLine: 1663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2468)
!2468 = !{!2469, !2470, !2471}
!2469 = !DILocalVariable(name: "x", arg: 1, scope: !2467, file: !2, line: 1662, type: !239)
!2470 = !DILocalVariable(name: "result", scope: !2467, file: !2, line: 1664, type: !191)
!2471 = !DILocalVariable(name: "status", scope: !2467, file: !2, line: 1664, type: !38)
!2472 = distinct !DIAssignID()
!2473 = !DILocation(line: 0, scope: !2467)
!2474 = !DILocation(line: 1664, column: 3, scope: !2467)
!2475 = !DILocation(line: 1664, column: 3, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2467, file: !2, line: 1664, column: 3)
!2477 = !DILocation(line: 1664, column: 3, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !2, line: 1664, column: 3)
!2479 = distinct !DILexicalBlock(scope: !2476, file: !2, line: 1664, column: 3)
!2480 = !DILocation(line: 1665, column: 1, scope: !2467)
!2481 = distinct !DISubprogram(name: "gsl_sf_gammainv", scope: !2, file: !2, line: 1667, type: !2438, scopeLine: 1668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2482)
!2482 = !{!2483, !2484, !2485}
!2483 = !DILocalVariable(name: "x", arg: 1, scope: !2481, file: !2, line: 1667, type: !239)
!2484 = !DILocalVariable(name: "result", scope: !2481, file: !2, line: 1669, type: !191)
!2485 = !DILocalVariable(name: "status", scope: !2481, file: !2, line: 1669, type: !38)
!2486 = distinct !DIAssignID()
!2487 = !DILocation(line: 0, scope: !2481)
!2488 = !DILocation(line: 1669, column: 3, scope: !2481)
!2489 = !DILocation(line: 1669, column: 3, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 1669, column: 3)
!2491 = !DILocation(line: 1669, column: 3, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !2, line: 1669, column: 3)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 1669, column: 3)
!2494 = !DILocation(line: 1670, column: 1, scope: !2481)
!2495 = distinct !DISubprogram(name: "gsl_sf_taylorcoeff", scope: !2, file: !2, line: 1672, type: !2496, scopeLine: 1673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!76, !1335, !239}
!2498 = !{!2499, !2500, !2501, !2502}
!2499 = !DILocalVariable(name: "n", arg: 1, scope: !2495, file: !2, line: 1672, type: !1335)
!2500 = !DILocalVariable(name: "x", arg: 2, scope: !2495, file: !2, line: 1672, type: !239)
!2501 = !DILocalVariable(name: "result", scope: !2495, file: !2, line: 1674, type: !191)
!2502 = !DILocalVariable(name: "status", scope: !2495, file: !2, line: 1674, type: !38)
!2503 = distinct !DIAssignID()
!2504 = !DILocation(line: 0, scope: !2495)
!2505 = !DILocation(line: 1674, column: 3, scope: !2495)
!2506 = !DILocation(line: 1674, column: 3, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 1674, column: 3)
!2508 = !DILocation(line: 1674, column: 3, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 1674, column: 3)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 1674, column: 3)
!2511 = !DILocation(line: 1675, column: 1, scope: !2495)
!2512 = distinct !DISubprogram(name: "gsl_sf_choose", scope: !2, file: !2, line: 1677, type: !2513, scopeLine: 1678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!76, !683, !683}
!2515 = !{!2516, !2517, !2518, !2519}
!2516 = !DILocalVariable(name: "n", arg: 1, scope: !2512, file: !2, line: 1677, type: !683)
!2517 = !DILocalVariable(name: "m", arg: 2, scope: !2512, file: !2, line: 1677, type: !683)
!2518 = !DILocalVariable(name: "result", scope: !2512, file: !2, line: 1679, type: !191)
!2519 = !DILocalVariable(name: "status", scope: !2512, file: !2, line: 1679, type: !38)
!2520 = distinct !DIAssignID()
!2521 = !DILocation(line: 0, scope: !2512)
!2522 = !DILocation(line: 1679, column: 3, scope: !2512)
!2523 = !DILocation(line: 1679, column: 3, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 1679, column: 3)
!2525 = !DILocation(line: 1679, column: 3, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !2, line: 1679, column: 3)
!2527 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 1679, column: 3)
!2528 = !DILocation(line: 1680, column: 1, scope: !2512)
!2529 = distinct !DISubprogram(name: "gsl_sf_lnchoose", scope: !2, file: !2, line: 1682, type: !2513, scopeLine: 1683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2530)
!2530 = !{!2531, !2532, !2533, !2534}
!2531 = !DILocalVariable(name: "n", arg: 1, scope: !2529, file: !2, line: 1682, type: !683)
!2532 = !DILocalVariable(name: "m", arg: 2, scope: !2529, file: !2, line: 1682, type: !683)
!2533 = !DILocalVariable(name: "result", scope: !2529, file: !2, line: 1684, type: !191)
!2534 = !DILocalVariable(name: "status", scope: !2529, file: !2, line: 1684, type: !38)
!2535 = distinct !DIAssignID()
!2536 = !DILocation(line: 0, scope: !2529)
!2537 = !DILocation(line: 1684, column: 3, scope: !2529)
!2538 = !DILocation(line: 1684, column: 3, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 1684, column: 3)
!2540 = !DILocation(line: 1684, column: 3, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !2, line: 1684, column: 3)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !2, line: 1684, column: 3)
!2543 = !DILocation(line: 1685, column: 1, scope: !2529)
!2544 = !DISubprogram(name: "gsl_sf_psi_int_e", scope: !2545, file: !2545, line: 51, type: !2546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2545 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!38, !1335, !190}
!2548 = !DISubprogram(name: "gsl_sf_psi_1_int_e", scope: !2545, file: !2545, line: 89, type: !2546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2549 = !DISubprogram(name: "gsl_sf_psi_n_e", scope: !2545, file: !2545, line: 107, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2550 = !DISubprogram(name: "exp", scope: !536, file: !536, line: 95, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2551 = !DISubprogram(name: "pow", scope: !536, file: !536, line: 140, type: !1544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2552 = !DISubprogram(name: "sqrt", scope: !536, file: !536, line: 143, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2553 = !DISubprogram(name: "gsl_sf_complex_log_e", scope: !2554, file: !2554, line: 62, type: !1896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2554 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!2555 = !DISubprogram(name: "gsl_sf_angle_restrict_symm_err_e", scope: !1895, file: !1895, line: 145, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
