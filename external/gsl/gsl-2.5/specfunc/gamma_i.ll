; ModuleID = 'gamma.ll'
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
  %handler_result = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !231
  %5 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !231
  %6 = fcmp olt double %5, 1.000000e-02, !dbg !232
  br i1 %6, label %7, label %27, !dbg !233

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata double %handler_result, metadata !234, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double 0xBFF007228B4CD147, metadata !241, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double 0x3FFBC8A35D2B114E, metadata !242, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double 0x3FF3E48F2C0326B5, metadata !243, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double 0x40142EB8F3A779B9, metadata !244, metadata !DIExpression()), !dbg !255
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double 0xBFF007228B4CD147), !dbg !257
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result, double 0x3FFBC8A35D2B114E), !dbg !258
  %8 = fmul double %handler_result1, %handler_result2, !dbg !258
  call void @llvm.dbg.value(metadata double %8, metadata !245, metadata !DIExpression()), !dbg !255
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result, double 0x3FF3E48F2C0326B5), !dbg !259
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result, double 0x40142EB8F3A779B9), !dbg !260
  %9 = fmul double %handler_result3, %handler_result4, !dbg !260
  call void @llvm.dbg.value(metadata double %9, metadata !246, metadata !DIExpression()), !dbg !255
  %10 = fmul double %8, 0x4000A72BCDE822B8, !dbg !261
  %11 = fdiv double %10, %9, !dbg !262
  call void @llvm.dbg.value(metadata double %11, metadata !247, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double 0x3F7399C6B2FE3C2E, metadata !248, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double 0xBF886BE8CE175C95, metadata !249, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double 0x3F93C8855B9A90B0, metadata !250, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double 0xBF9A901651B2B525, metadata !251, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double 0x3FA0163058FBCC17, metadata !252, metadata !DIExpression()), !dbg !255
  %12 = fmul double %handler_result, %handler_result, !dbg !263
  %13 = fmul double %handler_result, %12, !dbg !264
  %14 = fmul double %handler_result, %13, !dbg !265
  %15 = fmul double %handler_result, %14, !dbg !266
  call void @llvm.dbg.value(metadata double %15, metadata !253, metadata !DIExpression()), !dbg !255
  %16 = fmul double %handler_result, 0x3FA0163058FBCC17, !dbg !267
  %handler_result5 = call double @fAddHandlerDouble(double %16, double 0xBF9A901651B2B525), !dbg !268
  %17 = fmul double %handler_result, %handler_result5, !dbg !268
  %handler_result6 = call double @fAddHandlerDouble(double %17, double 0x3F93C8855B9A90B0), !dbg !269
  %18 = fmul double %handler_result, %handler_result6, !dbg !269
  %handler_result7 = call double @fAddHandlerDouble(double %18, double 0xBF886BE8CE175C95), !dbg !270
  %19 = fmul double %handler_result, %handler_result7, !dbg !270
  %handler_result8 = call double @fAddHandlerDouble(double %19, double 0x3F7399C6B2FE3C2E), !dbg !271
  %20 = fmul double %15, %handler_result8, !dbg !271
  call void @llvm.dbg.value(metadata double %20, metadata !254, metadata !DIExpression()), !dbg !255
  %handler_result9 = call double @fAddHandlerDouble(double %11, double %20), !dbg !272
  %21 = fmul double %handler_result, %handler_result9, !dbg !272
  store double %21, ptr %1, align 8, !dbg !273, !tbaa !274
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !279
  %23 = fmul double %22, 0x3CC0000000000000, !dbg !280
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !281
  tail call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()), !dbg !282
  %handler_result10 = call double @fAddHandlerDouble(double %5, double 0x3CB0000000000000), !dbg !283
  %25 = fdiv double 1.000000e+00, %handler_result10, !dbg !283
  %26 = fmul double %25, %23, !dbg !284
  store double %26, ptr %24, align 8, !dbg !284, !tbaa !285
  br label %119

27:                                               ; preds = %2
  %handler_result11 = call double @fAddHandlerDouble(double %0, double -2.000000e+00), !dbg !286
  %28 = tail call double @llvm.fabs.f64(double %handler_result11), !dbg !286
  %29 = fcmp olt double %28, 1.000000e-02, !dbg !287
  br i1 %29, label %30, label %50, !dbg !288

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !289, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata double 0x3FF003AB59D1C825, metadata !293, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata double 0x4010D666DADA6AA8, metadata !294, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata double 0x4004F368A0A50351, metadata !295, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata double 0x4025B71FF2054D90, metadata !296, metadata !DIExpression()), !dbg !307
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FF003AB59D1C825), !dbg !309
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result11, double 0x4010D666DADA6AA8), !dbg !310
  %31 = fmul double %handler_result12, %handler_result13, !dbg !310
  call void @llvm.dbg.value(metadata double %31, metadata !297, metadata !DIExpression()), !dbg !307
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result11, double 0x4004F368A0A50351), !dbg !311
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result11, double 0x4025B71FF2054D90), !dbg !312
  %32 = fmul double %handler_result14, %handler_result15, !dbg !312
  call void @llvm.dbg.value(metadata double %32, metadata !298, metadata !DIExpression()), !dbg !307
  %33 = fmul double %31, 0x4006D3B8E31068E4, !dbg !313
  %34 = fdiv double %33, %32, !dbg !314
  call void @llvm.dbg.value(metadata double %34, metadata !299, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata double 0x3F1DDE6D37545B3B, metadata !300, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata double 0xBF21E5A3F738F3CA, metadata !301, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata double 0x3F1BFA716513D256, metadata !302, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata double 0xBF122C77E28883CE, metadata !303, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata double 0x3F0559A074362DA9, metadata !304, metadata !DIExpression()), !dbg !307
  %35 = fmul double %handler_result11, %handler_result11, !dbg !315
  %36 = fmul double %handler_result11, %35, !dbg !316
  %37 = fmul double %handler_result11, %36, !dbg !317
  %38 = fmul double %handler_result11, %37, !dbg !318
  call void @llvm.dbg.value(metadata double %38, metadata !305, metadata !DIExpression()), !dbg !307
  %39 = fmul double %handler_result11, 0x3F0559A074362DA9, !dbg !319
  %handler_result16 = call double @fAddHandlerDouble(double %39, double 0xBF122C77E28883CE), !dbg !320
  %40 = fmul double %handler_result11, %handler_result16, !dbg !320
  %handler_result17 = call double @fAddHandlerDouble(double %40, double 0x3F1BFA716513D256), !dbg !321
  %41 = fmul double %handler_result11, %handler_result17, !dbg !321
  %handler_result18 = call double @fAddHandlerDouble(double %41, double 0xBF21E5A3F738F3CA), !dbg !322
  %42 = fmul double %handler_result11, %handler_result18, !dbg !322
  %handler_result19 = call double @fAddHandlerDouble(double %42, double 0x3F1DDE6D37545B3B), !dbg !323
  %43 = fmul double %38, %handler_result19, !dbg !323
  call void @llvm.dbg.value(metadata double %43, metadata !306, metadata !DIExpression()), !dbg !307
  %handler_result20 = call double @fAddHandlerDouble(double %34, double %43), !dbg !324
  %44 = fmul double %handler_result11, %handler_result20, !dbg !324
  store double %44, ptr %1, align 8, !dbg !325, !tbaa !274
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !326
  %46 = fmul double %45, 0x3CC0000000000000, !dbg !327
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !328
  tail call void @llvm.dbg.value(metadata i32 0, metadata !203, metadata !DIExpression()), !dbg !329
  %handler_result21 = call double @fAddHandlerDouble(double %28, double 0x3CB0000000000000), !dbg !330
  %48 = fdiv double 1.000000e+00, %handler_result21, !dbg !330
  %49 = fmul double %48, %46, !dbg !331
  store double %49, ptr %47, align 8, !dbg !331, !tbaa !285
  br label %119

50:                                               ; preds = %27
  %51 = fcmp ult double %0, 5.000000e-01, !dbg !332
  br i1 %51, label %69, label %52, !dbg !333

52:                                               ; preds = %50
  call void @llvm.dbg.value(metadata double %0, metadata !334, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %1, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata double %handler_result, metadata !334, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i64 1, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !340, metadata !DIExpression()), !dbg !343
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result, double 1.000000e+00), !dbg !346
  %53 = fdiv double 0x40852429B6C30B05, %handler_result22, !dbg !346
  %handler_result23 = call double @fAddHandlerDouble(double %53, double 0x3FEFFFFFFFFFF950), !dbg !350
  call void @llvm.dbg.value(metadata i64 2, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !340, metadata !DIExpression()), !dbg !343
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result, double 2.000000e+00), !dbg !346
  %54 = fdiv double 0x4093AC8E8ED4171B, %handler_result24, !dbg !346
  %handler_result25 = call double @fSubHandlerDouble(double %handler_result23, double %54), !dbg !350
  call void @llvm.dbg.value(metadata i64 3, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !340, metadata !DIExpression()), !dbg !343
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result, double 3.000000e+00), !dbg !346
  %55 = fdiv double 0x40881A9661D3B4D8, %handler_result26, !dbg !346
  %handler_result27 = call double @fAddHandlerDouble(double %55, double %handler_result25), !dbg !350
  call void @llvm.dbg.value(metadata i64 4, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !340, metadata !DIExpression()), !dbg !343
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result, double 4.000000e+00), !dbg !346
  %56 = fdiv double 0x406613AE51A32F5D, %handler_result28, !dbg !346
  %handler_result29 = call double @fSubHandlerDouble(double %handler_result27, double %56), !dbg !350
  call void @llvm.dbg.value(metadata i64 5, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !340, metadata !DIExpression()), !dbg !343
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e+00), !dbg !346
  %57 = fdiv double 0x402903C27F8B9C81, %handler_result30, !dbg !346
  %handler_result31 = call double @fAddHandlerDouble(double %57, double %handler_result29), !dbg !350
  call void @llvm.dbg.value(metadata i64 6, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !340, metadata !DIExpression()), !dbg !343
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result, double 6.000000e+00), !dbg !346
  %58 = fdiv double 0x3FC1BCB2992B2855, %handler_result32, !dbg !346
  %handler_result33 = call double @fSubHandlerDouble(double %handler_result31, double %58), !dbg !350
  call void @llvm.dbg.value(metadata i64 7, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !340, metadata !DIExpression()), !dbg !343
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result, double 7.000000e+00), !dbg !346
  %59 = fdiv double 0x3EE4F0514E4E324F, %handler_result34, !dbg !346
  %handler_result35 = call double @fAddHandlerDouble(double %59, double %handler_result33), !dbg !350
  call void @llvm.dbg.value(metadata i64 8, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !340, metadata !DIExpression()), !dbg !343
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result, double 8.000000e+00), !dbg !346
  %60 = fdiv double 0x3E8435508F3FAEEF, %handler_result36, !dbg !346
  %handler_result37 = call double @fAddHandlerDouble(double %60, double %handler_result35), !dbg !351
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !340, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i64 9, metadata !339, metadata !DIExpression()), !dbg !343
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e-01), !dbg !352
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result, double 7.500000e+00), !dbg !353
  %61 = fdiv double %handler_result39, 0x4005BF0A8B145769, !dbg !353
  %handler_result64 = call double @callHandler(i32 12, double %61, double %61), !dbg !354
  %62 = fmul double %handler_result38, %handler_result64, !dbg !354
  call void @llvm.dbg.value(metadata double %62, metadata !341, metadata !DIExpression()), !dbg !343
  %handler_result65 = call double @callHandler(i32 12, double %handler_result37, double %handler_result37), !dbg !355
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result65, double 0x3FED67F1C864BEB5), !dbg !355
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !342, metadata !DIExpression()), !dbg !343
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double -7.000000e+00), !dbg !356
  %handler_result42 = call double @fAddHandlerDouble(double %62, double %handler_result41), !dbg !357
  store double %handler_result42, ptr %1, align 8, !dbg !357, !tbaa !274
  %63 = tail call double @llvm.fabs.f64(double %62), !dbg !358
  %64 = tail call double @llvm.fabs.f64(double %handler_result40), !dbg !359
  %handler_result43 = call double @fAddHandlerDouble(double %63, double %64), !dbg !360
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 7.000000e+00), !dbg !361
  %65 = fmul double %handler_result44, 0x3CC0000000000000, !dbg !361
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !362
  %67 = tail call double @llvm.fabs.f64(double %handler_result42), !dbg !363
  %68 = fmul double %67, 0x3CB0000000000000, !dbg !364
  %handler_result45 = call double @fAddHandlerDouble(double %65, double %68), !dbg !365
  store double %handler_result45, ptr %66, align 8, !dbg !365, !tbaa !285
  br label %119, !dbg !366

69:                                               ; preds = %50
  %70 = fcmp oeq double %0, 0.000000e+00, !dbg !367
  br i1 %70, label %71, label %73, !dbg !368

71:                                               ; preds = %69
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !369, !tbaa !274
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !369
  store double 0x7FF8000000000000, ptr %72, align 8, !dbg !369, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1138, i32 noundef 1) #8, !dbg !372
  br label %119, !dbg !372

73:                                               ; preds = %69
  %74 = tail call double @llvm.fabs.f64(double %0), !dbg !374
  %75 = fcmp olt double %74, 2.000000e-02, !dbg !375
  br i1 %75, label %76, label %93, !dbg !376

76:                                               ; preds = %73
  call void @llvm.dbg.value(metadata double %0, metadata !377, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata ptr %1, metadata !382, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata ptr undef, metadata !383, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 0xBFB3C467E37DB0C8, metadata !384, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 0xBF8669CF713AA1E2, metadata !385, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 0x3FB7AF73866DA4E8, metadata !386, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 0xBF92B5DF55ED2958, metadata !387, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 0x3F926FE278E930AE, metadata !388, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 0xBF7C0FAC8A677A84, metadata !389, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 0x3F7060754242E352, metadata !390, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 0xBF5F094BD00128CE, metadata !391, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 0x3F4FF0A5D7D0B01E, metadata !392, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 0xBF3FBDF153D2EADD, metadata !393, metadata !DIExpression()), !dbg !397
  %77 = fmul double %0, 0x3F3FBDF153D2EADD, !dbg !399
  %handler_result46 = call double @fSubHandlerDouble(double 0x3F4FF0A5D7D0B01E, double %77), !dbg !400
  %78 = fmul double %handler_result46, %0, !dbg !400
  %handler_result47 = call double @fAddHandlerDouble(double %78, double 0xBF5F094BD00128CE), !dbg !401
  %79 = fmul double %handler_result47, %0, !dbg !401
  %handler_result48 = call double @fAddHandlerDouble(double %79, double 0x3F7060754242E352), !dbg !402
  %80 = fmul double %handler_result48, %0, !dbg !402
  %handler_result49 = call double @fAddHandlerDouble(double %80, double 0xBF7C0FAC8A677A84), !dbg !403
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !394, metadata !DIExpression()), !dbg !397
  %81 = fmul double %handler_result49, %0, !dbg !403
  %handler_result50 = call double @fAddHandlerDouble(double %81, double 0x3F926FE278E930AE), !dbg !404
  %82 = fmul double %handler_result50, %0, !dbg !404
  %handler_result51 = call double @fAddHandlerDouble(double %82, double 0xBF92B5DF55ED2958), !dbg !405
  %83 = fmul double %handler_result51, %0, !dbg !405
  %handler_result52 = call double @fAddHandlerDouble(double %83, double 0x3FB7AF73866DA4E8), !dbg !406
  %84 = fmul double %handler_result52, %0, !dbg !406
  %handler_result53 = call double @fAddHandlerDouble(double %84, double 0xBF8669CF713AA1E2), !dbg !407
  %85 = fmul double %handler_result53, %0, !dbg !407
  %handler_result54 = call double @fAddHandlerDouble(double %85, double 0xBFB3C467E37DB0C8), !dbg !408
  %86 = fmul double %handler_result54, %0, !dbg !408
  call void @llvm.dbg.value(metadata double %86, metadata !395, metadata !DIExpression()), !dbg !397
  %handler_result55 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !409
  %87 = fdiv double 1.000000e+00, %handler_result55, !dbg !409
  %handler_result56 = call double @fAddHandlerDouble(double %87, double %86), !dbg !410
  %88 = fmul double %0, 5.000000e-01, !dbg !410
  %handler_result57 = call double @fAddHandlerDouble(double %88, double %handler_result56), !dbg !411
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !396, metadata !DIExpression()), !dbg !397
  %89 = fdiv double %handler_result57, %74, !dbg !411
  %handler_result66 = call double @callHandler(i32 12, double %89, double %89), !dbg !412
  store double %handler_result66, ptr %1, align 8, !dbg !412, !tbaa !274
  %90 = tail call double @llvm.fabs.f64(double %handler_result66), !dbg !413
  %91 = fmul double %90, 0x3CD0000000000000, !dbg !414
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !415
  store double %91, ptr %92, align 8, !dbg !416, !tbaa !285
  tail call void @llvm.dbg.value(metadata double poison, metadata !206, metadata !DIExpression()), !dbg !417
  br label %119

93:                                               ; preds = %73
  %94 = fcmp ogt double %0, 0xC3045F306DC9C883, !dbg !418
  br i1 %94, label %95, label %118, !dbg !419

95:                                               ; preds = %93
  %handler_result58 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !420
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !211, metadata !DIExpression()), !dbg !421
  %96 = fmul double %handler_result58, 0x400921FB54442D18, !dbg !420
  %handler_result67 = call double @callHandler(i32 1, double %96, double %96), !dbg !422
  tail call void @llvm.dbg.value(metadata double %handler_result67, metadata !214, metadata !DIExpression()), !dbg !421
  %97 = tail call double @llvm.fabs.f64(double %handler_result67), !dbg !422
  tail call void @llvm.dbg.value(metadata double %97, metadata !215, metadata !DIExpression()), !dbg !421
  %98 = fcmp oeq double %handler_result67, 0.000000e+00, !dbg !423
  br i1 %98, label %99, label %101, !dbg !424

99:                                               ; preds = %95
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !425, !tbaa !274
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !425
  store double 0x7FF8000000000000, ptr %100, align 8, !dbg !425, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1152, i32 noundef 1) #8, !dbg !428
  br label %119, !dbg !428

101:                                              ; preds = %95
  %102 = fcmp olt double %97, 0x3FA8209F5B22BAA6, !dbg !430
  br i1 %102, label %103, label %111, !dbg !431

103:                                              ; preds = %101
  %104 = fcmp olt double %0, 0xC1DFFFFFFF800000, !dbg !432
  br i1 %104, label %105, label %106, !dbg !433

105:                                              ; preds = %103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !434
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1159, i32 noundef 18) #8, !dbg !436
  br label %119, !dbg !436

106:                                              ; preds = %103
  %handler_result59 = call double @fAddHandlerDouble(double %0, double -5.000000e-01), !dbg !438
  %107 = fptosi double %handler_result59 to i32, !dbg !438
  %108 = sub nsw i32 0, %107, !dbg !439
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !216, metadata !DIExpression()), !dbg !227
  %109 = sitofp i32 %108 to double, !dbg !440
  %handler_result60 = call double @fAddHandlerDouble(double %109, double %0), !dbg !441
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !222, metadata !DIExpression()), !dbg !227
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8, !dbg !441
  %110 = call fastcc i32 @lngamma_sgn_sing(i32 noundef %108, double noundef %handler_result60, ptr noundef %1, ptr noundef nonnull %3), !dbg !442, !range !443
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8, !dbg !444
  br label %119

111:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !445
  call fastcc void @lngamma_lanczos(double noundef %handler_result58, ptr noundef nonnull %4), !dbg !446
  %handler_result68 = call double @callHandler(i32 12, double %97, double %97), !dbg !447
  %112 = load double, ptr %4, align 8, !dbg !447, !tbaa !274
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result68, double %112), !dbg !448
  %handler_result62 = call double @fSubHandlerDouble(double 0x3FF250D048E7A1BD, double %handler_result61), !dbg !449
  store double %handler_result62, ptr %1, align 8, !dbg !449, !tbaa !274
  %113 = tail call double @llvm.fabs.f64(double %handler_result62), !dbg !450
  %114 = fmul double %113, 0x3CC0000000000000, !dbg !451
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !452
  %116 = load double, ptr %115, align 8, !dbg !452, !tbaa !285
  %handler_result63 = call double @fAddHandlerDouble(double %116, double %114), !dbg !453
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !453
  store double %handler_result63, ptr %117, align 8, !dbg !454, !tbaa !285
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !455
  br label %119

118:                                              ; preds = %93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !456
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1180, i32 noundef 18) #8, !dbg !458
  br label %119, !dbg !458

119:                                              ; preds = %118, %111, %106, %105, %99, %76, %71, %52, %30, %7
  %120 = phi i32 [ 0, %7 ], [ 0, %30 ], [ 0, %52 ], [ 1, %71 ], [ 0, %76 ], [ 18, %118 ], [ 1, %99 ], [ 18, %105 ], [ %110, %106 ], [ 0, %111 ], !dbg !460
  ret i32 %120, !dbg !461
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc void @lngamma_lanczos(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !dbg !335 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !334, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !338, metadata !DIExpression()), !dbg !462
  %handler_result = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !463
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !334, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !340, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i32 1, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 1, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !340, metadata !DIExpression()), !dbg !462
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double 1.000000e+00), !dbg !464
  %3 = fdiv double 0x40852429B6C30B05, %handler_result1, !dbg !464
  %handler_result2 = call double @fAddHandlerDouble(double %3, double 0x3FEFFFFFFFFFF950), !dbg !463
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !340, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 2, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 2, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !340, metadata !DIExpression()), !dbg !462
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result, double 2.000000e+00), !dbg !464
  %4 = fdiv double 0xC093AC8E8ED4171B, %handler_result3, !dbg !464
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result2, double %4), !dbg !463
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !340, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 3, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 3, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !340, metadata !DIExpression()), !dbg !462
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result, double 3.000000e+00), !dbg !464
  %5 = fdiv double 0x40881A9661D3B4D8, %handler_result5, !dbg !464
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result4, double %5), !dbg !463
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !340, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 4, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 4, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !340, metadata !DIExpression()), !dbg !462
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result, double 4.000000e+00), !dbg !464
  %6 = fdiv double 0xC06613AE51A32F5D, %handler_result7, !dbg !464
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result6, double %6), !dbg !463
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !340, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 5, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 5, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !340, metadata !DIExpression()), !dbg !462
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e+00), !dbg !464
  %7 = fdiv double 0x402903C27F8B9C81, %handler_result9, !dbg !464
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result8, double %7), !dbg !463
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !340, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 6, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 6, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !340, metadata !DIExpression()), !dbg !462
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result, double 6.000000e+00), !dbg !464
  %8 = fdiv double 0xBFC1BCB2992B2855, %handler_result11, !dbg !464
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result10, double %8), !dbg !463
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !340, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 7, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 7, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !340, metadata !DIExpression()), !dbg !462
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result, double 7.000000e+00), !dbg !464
  %9 = fdiv double 0x3EE4F0514E4E324F, %handler_result13, !dbg !464
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result12, double %9), !dbg !463
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !340, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 8, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 8, metadata !339, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !340, metadata !DIExpression()), !dbg !462
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result, double 8.000000e+00), !dbg !464
  %10 = fdiv double 0x3E8435508F3FAEEF, %handler_result15, !dbg !464
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result14, double %10), !dbg !465
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !340, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 9, metadata !339, metadata !DIExpression()), !dbg !462
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e-01), !dbg !466
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result, double 7.500000e+00), !dbg !467
  %11 = fdiv double %handler_result18, 0x4005BF0A8B145769, !dbg !467
  %handler_result25 = call double @callHandler(i32 12, double %11, double %11), !dbg !468
  %12 = fmul double %handler_result17, %handler_result25, !dbg !468
  tail call void @llvm.dbg.value(metadata double %12, metadata !341, metadata !DIExpression()), !dbg !462
  %handler_result26 = call double @callHandler(i32 12, double %handler_result16, double %handler_result16), !dbg !469
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result26, double 0x3FED67F1C864BEB5), !dbg !469
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !342, metadata !DIExpression()), !dbg !462
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double -7.000000e+00), !dbg !470
  %handler_result21 = call double @fAddHandlerDouble(double %12, double %handler_result20), !dbg !471
  store double %handler_result21, ptr %1, align 8, !dbg !471, !tbaa !274
  %13 = tail call double @llvm.fabs.f64(double %12), !dbg !472
  %14 = tail call double @llvm.fabs.f64(double %handler_result19), !dbg !473
  %handler_result22 = call double @fAddHandlerDouble(double %13, double %14), !dbg !474
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double 7.000000e+00), !dbg !475
  %15 = fmul double %handler_result23, 0x3CC0000000000000, !dbg !475
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !476
  %17 = tail call double @llvm.fabs.f64(double %handler_result21), !dbg !477
  %18 = fmul double %17, 0x3CB0000000000000, !dbg !478
  %handler_result24 = call double @fAddHandlerDouble(double %15, double %18), !dbg !479
  store double %handler_result24, ptr %16, align 8, !dbg !479, !tbaa !285
  ret void, !dbg !480
}

declare !dbg !481 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !486 double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @lngamma_sgn_sing(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !490 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !540
  call void @llvm.dbg.assign(metadata i1 undef, metadata !532, metadata !DIExpression(), metadata !540, metadata ptr %5, metadata !DIExpression()), !dbg !541
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !542
  call void @llvm.dbg.assign(metadata i1 undef, metadata !533, metadata !DIExpression(), metadata !542, metadata ptr %6, metadata !DIExpression()), !dbg !541
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !543
  call void @llvm.dbg.assign(metadata i1 undef, metadata !534, metadata !DIExpression(), metadata !543, metadata ptr %7, metadata !DIExpression()), !dbg !541
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !544
  call void @llvm.dbg.assign(metadata i1 undef, metadata !535, metadata !DIExpression(), metadata !544, metadata ptr %8, metadata !DIExpression()), !dbg !541
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !545
  call void @llvm.dbg.assign(metadata i1 undef, metadata !536, metadata !DIExpression(), metadata !545, metadata ptr %9, metadata !DIExpression()), !dbg !541
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !537, metadata !DIExpression(), metadata !546, metadata ptr %10, metadata !DIExpression()), !dbg !541
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !547
  call void @llvm.dbg.assign(metadata i1 undef, metadata !538, metadata !DIExpression(), metadata !547, metadata ptr %11, metadata !DIExpression()), !dbg !541
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !539, metadata !DIExpression(), metadata !548, metadata ptr %12, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !494, metadata !DIExpression()), !dbg !549
  tail call void @llvm.dbg.value(metadata double %1, metadata !495, metadata !DIExpression()), !dbg !549
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !496, metadata !DIExpression()), !dbg !549
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !497, metadata !DIExpression()), !dbg !549
  %13 = fcmp oeq double %1, 0.000000e+00, !dbg !550
  br i1 %13, label %14, label %15, !dbg !551

14:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !552
  store double 0.000000e+00, ptr %3, align 8, !dbg !554, !tbaa !555
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 769, i32 noundef 1) #8, !dbg !556
  br label %123, !dbg !556

15:                                               ; preds = %4
  %16 = icmp eq i32 %0, 1, !dbg !558
  br i1 %16, label %17, label %40, !dbg !559

17:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata double 0x3FB3C467E37DB0C8, metadata !498, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3FB691A1D1A50504, metadata !502, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0xBF71DD1B4C89FE46, metadata !503, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3F8C7D310595538D, metadata !504, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0xBF70C527D87A1B9F, metadata !505, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3F66950963DABDCA, metadata !506, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0xBF5457C2415611B5, metadata !507, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3F4563131D562E32, metadata !508, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0xBF351B2574F503D9, metadata !509, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double 0x3F254597BDBBCE0A, metadata !510, metadata !DIExpression()), !dbg !560
  %18 = fmul double %1, 0x3F254597BDBBCE0A, !dbg !561
  %handler_result = call double @fAddHandlerDouble(double %18, double 0xBF351B2574F503D9), !dbg !562
  %19 = fmul double %handler_result, %1, !dbg !562
  %handler_result1 = call double @fAddHandlerDouble(double %19, double 0x3F4563131D562E32), !dbg !563
  %20 = fmul double %handler_result1, %1, !dbg !563
  %handler_result2 = call double @fAddHandlerDouble(double %20, double 0xBF5457C2415611B5), !dbg !564
  %21 = fmul double %handler_result2, %1, !dbg !564
  %handler_result3 = call double @fAddHandlerDouble(double %21, double 0x3F66950963DABDCA), !dbg !565
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !511, metadata !DIExpression()), !dbg !560
  %22 = fmul double %handler_result3, %1, !dbg !565
  %handler_result4 = call double @fAddHandlerDouble(double %22, double 0xBF70C527D87A1B9F), !dbg !566
  %23 = fmul double %handler_result4, %1, !dbg !566
  %handler_result5 = call double @fAddHandlerDouble(double %23, double 0x3F8C7D310595538D), !dbg !567
  %24 = fmul double %handler_result5, %1, !dbg !567
  %handler_result6 = call double @fAddHandlerDouble(double %24, double 0xBF71DD1B4C89FE46), !dbg !568
  %25 = fmul double %handler_result6, %1, !dbg !568
  %handler_result7 = call double @fAddHandlerDouble(double %25, double 0x3FB691A1D1A50504), !dbg !569
  %26 = fmul double %handler_result7, %1, !dbg !569
  %handler_result8 = call double @fAddHandlerDouble(double %26, double 0x3FB3C467E37DB0C8), !dbg !570
  %27 = fmul double %handler_result8, %1, !dbg !570
  tail call void @llvm.dbg.value(metadata double %27, metadata !512, metadata !DIExpression()), !dbg !560
  %handler_result9 = call double @fAddHandlerDouble(double %27, double -1.000000e+00), !dbg !571
  %28 = fmul double %1, 5.000000e-01, !dbg !571
  %29 = fmul double %1, 3.000000e+00, !dbg !572
  %handler_result10 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !573
  %30 = fmul double %28, %handler_result10, !dbg !573
  %31 = fmul double %1, %1, !dbg !574
  %handler_result11 = call double @fSubHandlerDouble(double 1.000000e+00, double %31), !dbg !575
  %32 = fdiv double %30, %handler_result11, !dbg !575
  %handler_result12 = call double @fSubHandlerDouble(double %handler_result9, double %32), !dbg !576
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !513, metadata !DIExpression()), !dbg !560
  %33 = fdiv double %handler_result12, %1, !dbg !576
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !576
  %handler_result35 = call double @callHandler(i32 12, double %34, double %34), !dbg !577
  store double %handler_result35, ptr %2, align 8, !dbg !577, !tbaa !274
  %35 = tail call double @llvm.fabs.f64(double %handler_result35), !dbg !578
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !579
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !580
  store double %36, ptr %37, align 8, !dbg !581, !tbaa !285
  %38 = fcmp ogt double %1, 0.000000e+00, !dbg !582
  %39 = select i1 %38, double -1.000000e+00, double 1.000000e+00, !dbg !583
  store double %39, ptr %3, align 8, !dbg !584, !tbaa !555
  br label %123

40:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata double 0xBFFA51A6625307D3, metadata !516, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata double 0x3FE9F9CB402BC46C, metadata !517, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata double 0xBFC86A8E4720DB67, metadata !518, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata double 0x3F9AC6805CF350A6, metadata !519, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata double 0xBF633816AA4607AB, metadata !520, metadata !DIExpression()), !dbg !541
  %41 = fmul double %1, %1, !dbg !585
  tail call void @llvm.dbg.value(metadata double %41, metadata !521, metadata !DIExpression()), !dbg !541
  %42 = fmul double %41, 0x3F633816AA4607AB, !dbg !586
  %handler_result13 = call double @fSubHandlerDouble(double 0x3F9AC6805CF350A6, double %42), !dbg !587
  %43 = fmul double %41, %handler_result13, !dbg !587
  %handler_result14 = call double @fAddHandlerDouble(double %43, double 0xBFC86A8E4720DB67), !dbg !588
  %44 = fmul double %41, %handler_result14, !dbg !588
  %handler_result15 = call double @fAddHandlerDouble(double %44, double 0x3FE9F9CB402BC46C), !dbg !589
  %45 = fmul double %41, %handler_result15, !dbg !589
  %handler_result16 = call double @fAddHandlerDouble(double %45, double 0xBFFA51A6625307D3), !dbg !590
  %46 = fmul double %41, %handler_result16, !dbg !590
  %handler_result17 = call double @fAddHandlerDouble(double %46, double 1.000000e+00), !dbg !591
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !522, metadata !DIExpression()), !dbg !541
  %47 = tail call double @llvm.fabs.f64(double %1), !dbg !591
  tail call void @llvm.dbg.value(metadata double %47, metadata !523, metadata !DIExpression()), !dbg !541
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !592
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !593
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !594
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !595
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !596
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !597
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !598
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !599
  store double 0.000000e+00, ptr %8, align 8, !dbg !600, !tbaa !274, !DIAssignID !601
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !535, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !601, metadata ptr %8, metadata !DIExpression()), !dbg !541
  store double 0.000000e+00, ptr %9, align 8, !dbg !602, !tbaa !274, !DIAssignID !603
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !536, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !603, metadata ptr %9, metadata !DIExpression()), !dbg !541
  store double 0.000000e+00, ptr %10, align 8, !dbg !604, !tbaa !274, !DIAssignID !605
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !537, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !605, metadata ptr %10, metadata !DIExpression()), !dbg !541
  store double 0.000000e+00, ptr %11, align 8, !dbg !606, !tbaa !274, !DIAssignID !607
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !538, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !607, metadata ptr %11, metadata !DIExpression()), !dbg !541
  store double 0.000000e+00, ptr %12, align 8, !dbg !608, !tbaa !274, !DIAssignID !609
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !539, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !609, metadata ptr %12, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 %0, metadata !610, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata ptr %5, metadata !617, metadata !DIExpression()), !dbg !618
  %48 = icmp ult i32 %0, 171, !dbg !620
  br i1 %48, label %49, label %56, !dbg !622

49:                                               ; preds = %40
  %50 = zext nneg i32 %0 to i64, !dbg !623
  %51 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %50, i32 1, !dbg !625
  %52 = load double, ptr %51, align 8, !dbg !625, !tbaa !626
  %handler_result36 = call double @callHandler(i32 12, double %52, double %52), !dbg !630
  store double %handler_result36, ptr %5, align 8, !dbg !630, !tbaa !274, !DIAssignID !631
  call void @llvm.dbg.assign(metadata double %handler_result36, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !631, metadata ptr %5, metadata !DIExpression()), !dbg !541
  %53 = tail call double @llvm.fabs.f64(double %handler_result36), !dbg !632
  %54 = fmul double %53, 0x3CC0000000000000, !dbg !633
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !634
  store double %54, ptr %55, align 8, !dbg !635, !tbaa !285, !DIAssignID !636
  call void @llvm.dbg.assign(metadata double %54, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !636, metadata ptr %55, metadata !DIExpression()), !dbg !541
  br label %59, !dbg !637

56:                                               ; preds = %40
  %57 = uitofp i32 %0 to double, !dbg !638
  %handler_result18 = call double @fAddHandlerDouble(double %57, double 1.000000e+00), !dbg !640
  %58 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result18, ptr noundef nonnull %5), !dbg !640, !range !641
  br label %59, !dbg !642

59:                                               ; preds = %56, %49
  %60 = add nsw i32 %0, 1, !dbg !643
  %61 = call i32 @gsl_sf_psi_int_e(i32 noundef %60, ptr noundef nonnull %6) #8, !dbg !644
  %62 = call i32 @gsl_sf_psi_1_int_e(i32 noundef %60, ptr noundef nonnull %7) #8, !dbg !645
  %63 = fcmp ogt double %47, 1.000000e-05, !dbg !646
  br i1 %63, label %64, label %67, !dbg !648

64:                                               ; preds = %59
  %65 = sitofp i32 %0 to double, !dbg !649
  %handler_result19 = call double @fAddHandlerDouble(double %65, double 1.000000e+00), !dbg !650
  %66 = call i32 @gsl_sf_psi_n_e(i32 noundef 2, double noundef %handler_result19, ptr noundef nonnull %8) #8, !dbg !650
  br label %67, !dbg !650

67:                                               ; preds = %64, %59
  %68 = fcmp ogt double %47, 2.000000e-04, !dbg !651
  br i1 %68, label %69, label %72, !dbg !653

69:                                               ; preds = %67
  %70 = sitofp i32 %0 to double, !dbg !654
  %handler_result20 = call double @fAddHandlerDouble(double %70, double 1.000000e+00), !dbg !655
  %71 = call i32 @gsl_sf_psi_n_e(i32 noundef 3, double noundef %handler_result20, ptr noundef nonnull %9) #8, !dbg !655
  br label %72, !dbg !655

72:                                               ; preds = %69, %67
  %73 = fcmp ogt double %47, 1.000000e-03, !dbg !656
  br i1 %73, label %74, label %77, !dbg !658

74:                                               ; preds = %72
  %75 = sitofp i32 %0 to double, !dbg !659
  %handler_result21 = call double @fAddHandlerDouble(double %75, double 1.000000e+00), !dbg !660
  %76 = call i32 @gsl_sf_psi_n_e(i32 noundef 4, double noundef %handler_result21, ptr noundef nonnull %10) #8, !dbg !660
  br label %77, !dbg !660

77:                                               ; preds = %74, %72
  %78 = fcmp ogt double %47, 5.000000e-03, !dbg !661
  br i1 %78, label %79, label %82, !dbg !663

79:                                               ; preds = %77
  %80 = sitofp i32 %0 to double, !dbg !664
  %handler_result22 = call double @fAddHandlerDouble(double %80, double 1.000000e+00), !dbg !665
  %81 = call i32 @gsl_sf_psi_n_e(i32 noundef 5, double noundef %handler_result22, ptr noundef nonnull %11) #8, !dbg !665
  br label %82, !dbg !665

82:                                               ; preds = %79, %77
  %83 = fcmp ogt double %47, 1.000000e-02, !dbg !666
  br i1 %83, label %84, label %88, !dbg !668

84:                                               ; preds = %82
  %85 = sitofp i32 %0 to double, !dbg !669
  %handler_result23 = call double @fAddHandlerDouble(double %85, double 1.000000e+00), !dbg !670
  %86 = call i32 @gsl_sf_psi_n_e(i32 noundef 6, double noundef %handler_result23, ptr noundef nonnull %12) #8, !dbg !670
  %87 = load double, ptr %12, align 8, !dbg !671, !tbaa !274
  br label %88, !dbg !670

88:                                               ; preds = %84, %82
  %89 = phi double [ %87, %84 ], [ 0.000000e+00, %82 ], !dbg !671
  %90 = load double, ptr %6, align 8, !dbg !672, !tbaa !274
  tail call void @llvm.dbg.value(metadata double %90, metadata !524, metadata !DIExpression()), !dbg !541
  %91 = load double, ptr %7, align 8, !dbg !673, !tbaa !274
  %92 = fmul double %91, 5.000000e-01, !dbg !674
  tail call void @llvm.dbg.value(metadata double %92, metadata !525, metadata !DIExpression()), !dbg !541
  %93 = load double, ptr %8, align 8, !dbg !675, !tbaa !274
  %94 = fdiv double %93, 6.000000e+00, !dbg !676
  tail call void @llvm.dbg.value(metadata double %94, metadata !526, metadata !DIExpression()), !dbg !541
  %95 = load double, ptr %9, align 8, !dbg !677, !tbaa !274
  %96 = fdiv double %95, 2.400000e+01, !dbg !678
  tail call void @llvm.dbg.value(metadata double %96, metadata !527, metadata !DIExpression()), !dbg !541
  %97 = load double, ptr %10, align 8, !dbg !679, !tbaa !274
  %98 = fdiv double %97, 1.200000e+02, !dbg !680
  tail call void @llvm.dbg.value(metadata double %98, metadata !528, metadata !DIExpression()), !dbg !541
  %99 = load double, ptr %11, align 8, !dbg !681, !tbaa !274
  %100 = fdiv double %99, 7.200000e+02, !dbg !682
  tail call void @llvm.dbg.value(metadata double %100, metadata !529, metadata !DIExpression()), !dbg !541
  %101 = fdiv double %89, 5.040000e+03, !dbg !683
  tail call void @llvm.dbg.value(metadata double %101, metadata !530, metadata !DIExpression()), !dbg !541
  %102 = load double, ptr %5, align 8, !dbg !684, !tbaa !274
  %103 = fmul double %101, %1, !dbg !685
  %handler_result24 = call double @fSubHandlerDouble(double %100, double %103), !dbg !686
  %104 = fmul double %handler_result24, %1, !dbg !686
  %handler_result25 = call double @fSubHandlerDouble(double %98, double %104), !dbg !687
  %105 = fmul double %handler_result25, %1, !dbg !687
  %handler_result26 = call double @fSubHandlerDouble(double %96, double %105), !dbg !688
  %106 = fmul double %handler_result26, %1, !dbg !688
  %handler_result27 = call double @fSubHandlerDouble(double %94, double %106), !dbg !689
  %107 = fmul double %handler_result27, %1, !dbg !689
  %handler_result28 = call double @fSubHandlerDouble(double %92, double %107), !dbg !690
  %108 = fmul double %handler_result28, %1, !dbg !690
  %handler_result29 = call double @fSubHandlerDouble(double %90, double %108), !dbg !691
  %109 = fmul double %handler_result29, %1, !dbg !691
  %handler_result30 = call double @fSubHandlerDouble(double %102, double %109), !dbg !692
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !531, metadata !DIExpression()), !dbg !541
  %110 = fneg double %handler_result30, !dbg !692
  %handler_result37 = call double @callHandler(i32 12, double %handler_result17, double %handler_result17), !dbg !693
  %handler_result31 = call double @fSubHandlerDouble(double %110, double %handler_result37), !dbg !693
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !514, metadata !DIExpression()), !dbg !541
  %handler_result38 = call double @callHandler(i32 12, double %47, double %47), !dbg !694
  %handler_result32 = call double @fSubHandlerDouble(double %handler_result31, double %handler_result38), !dbg !694
  store double %handler_result32, ptr %2, align 8, !dbg !694, !tbaa !274
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !695
  %112 = load double, ptr %111, align 8, !dbg !695, !tbaa !285
  %113 = call double @llvm.fabs.f64(double %handler_result31), !dbg !696
  %114 = call double @llvm.fabs.f64(double %handler_result32), !dbg !697
  %handler_result33 = call double @fAddHandlerDouble(double %113, double %114), !dbg !698
  %115 = fmul double %handler_result33, 0x3CC0000000000000, !dbg !698
  %handler_result34 = call double @fAddHandlerDouble(double %112, double %115), !dbg !699
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !699
  store double %handler_result34, ptr %116, align 8, !dbg !700, !tbaa !285
  %117 = and i32 %0, 1, !dbg !701
  %118 = icmp eq i32 %117, 0, !dbg !701
  %119 = fcmp ogt double %1, 0.000000e+00, !dbg !702
  %120 = select i1 %119, double 1.000000e+00, double -1.000000e+00, !dbg !703
  %121 = fneg double %120, !dbg !704
  %122 = select i1 %118, double %120, double %121, !dbg !704
  store double %122, ptr %3, align 8, !dbg !705, !tbaa !555
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !706
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !706
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !706
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !706
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !706
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !706
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !706
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !706
  br label %123

123:                                              ; preds = %88, %17, %14
  %124 = phi i32 [ 1, %14 ], [ 0, %17 ], [ 0, %88 ], !dbg !707
  ret i32 %124, !dbg !708
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !709 double @log(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !710 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !738
  call void @llvm.dbg.assign(metadata i1 undef, metadata !736, metadata !DIExpression(), metadata !738, metadata ptr %4, metadata !DIExpression()), !dbg !739
  tail call void @llvm.dbg.value(metadata double %0, metadata !712, metadata !DIExpression()), !dbg !740
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !713, metadata !DIExpression()), !dbg !740
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !714, metadata !DIExpression()), !dbg !740
  %handler_result = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !741
  %5 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !741
  %6 = fcmp olt double %5, 1.000000e-02, !dbg !742
  br i1 %6, label %7, label %27, !dbg !743

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata double %handler_result, metadata !234, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata double 0xBFF007228B4CD147, metadata !241, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata double 0x3FFBC8A35D2B114E, metadata !242, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata double 0x3FF3E48F2C0326B5, metadata !243, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata double 0x40142EB8F3A779B9, metadata !244, metadata !DIExpression()), !dbg !744
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double 0xBFF007228B4CD147), !dbg !746
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result, double 0x3FFBC8A35D2B114E), !dbg !747
  %8 = fmul double %handler_result1, %handler_result2, !dbg !747
  call void @llvm.dbg.value(metadata double %8, metadata !245, metadata !DIExpression()), !dbg !744
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result, double 0x3FF3E48F2C0326B5), !dbg !748
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result, double 0x40142EB8F3A779B9), !dbg !749
  %9 = fmul double %handler_result3, %handler_result4, !dbg !749
  call void @llvm.dbg.value(metadata double %9, metadata !246, metadata !DIExpression()), !dbg !744
  %10 = fmul double %8, 0x4000A72BCDE822B8, !dbg !750
  %11 = fdiv double %10, %9, !dbg !751
  call void @llvm.dbg.value(metadata double %11, metadata !247, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata double 0x3F7399C6B2FE3C2E, metadata !248, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata double 0xBF886BE8CE175C95, metadata !249, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata double 0x3F93C8855B9A90B0, metadata !250, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata double 0xBF9A901651B2B525, metadata !251, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata double 0x3FA0163058FBCC17, metadata !252, metadata !DIExpression()), !dbg !744
  %12 = fmul double %handler_result, %handler_result, !dbg !752
  %13 = fmul double %handler_result, %12, !dbg !753
  %14 = fmul double %handler_result, %13, !dbg !754
  %15 = fmul double %handler_result, %14, !dbg !755
  call void @llvm.dbg.value(metadata double %15, metadata !253, metadata !DIExpression()), !dbg !744
  %16 = fmul double %handler_result, 0x3FA0163058FBCC17, !dbg !756
  %handler_result5 = call double @fAddHandlerDouble(double %16, double 0xBF9A901651B2B525), !dbg !757
  %17 = fmul double %handler_result, %handler_result5, !dbg !757
  %handler_result6 = call double @fAddHandlerDouble(double %17, double 0x3F93C8855B9A90B0), !dbg !758
  %18 = fmul double %handler_result, %handler_result6, !dbg !758
  %handler_result7 = call double @fAddHandlerDouble(double %18, double 0xBF886BE8CE175C95), !dbg !759
  %19 = fmul double %handler_result, %handler_result7, !dbg !759
  %handler_result8 = call double @fAddHandlerDouble(double %19, double 0x3F7399C6B2FE3C2E), !dbg !760
  %20 = fmul double %15, %handler_result8, !dbg !760
  call void @llvm.dbg.value(metadata double %20, metadata !254, metadata !DIExpression()), !dbg !744
  %handler_result9 = call double @fAddHandlerDouble(double %11, double %20), !dbg !761
  %21 = fmul double %handler_result, %handler_result9, !dbg !761
  store double %21, ptr %1, align 8, !dbg !762, !tbaa !274
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !763
  %23 = fmul double %22, 0x3CC0000000000000, !dbg !764
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !765
  tail call void @llvm.dbg.value(metadata i32 0, metadata !715, metadata !DIExpression()), !dbg !766
  %handler_result10 = call double @fAddHandlerDouble(double %5, double 0x3CB0000000000000), !dbg !767
  %25 = fdiv double 1.000000e+00, %handler_result10, !dbg !767
  %26 = fmul double %25, %23, !dbg !768
  store double %26, ptr %24, align 8, !dbg !768, !tbaa !285
  store double 1.000000e+00, ptr %2, align 8, !dbg !769, !tbaa !555
  br label %123

27:                                               ; preds = %3
  %handler_result11 = call double @fAddHandlerDouble(double %0, double -2.000000e+00), !dbg !770
  %28 = tail call double @llvm.fabs.f64(double %handler_result11), !dbg !770
  %29 = fcmp olt double %28, 1.000000e-02, !dbg !771
  br i1 %29, label %30, label %50, !dbg !772

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !289, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata double 0x3FF003AB59D1C825, metadata !293, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata double 0x4010D666DADA6AA8, metadata !294, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata double 0x4004F368A0A50351, metadata !295, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata double 0x4025B71FF2054D90, metadata !296, metadata !DIExpression()), !dbg !773
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FF003AB59D1C825), !dbg !775
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result11, double 0x4010D666DADA6AA8), !dbg !776
  %31 = fmul double %handler_result12, %handler_result13, !dbg !776
  call void @llvm.dbg.value(metadata double %31, metadata !297, metadata !DIExpression()), !dbg !773
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result11, double 0x4004F368A0A50351), !dbg !777
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result11, double 0x4025B71FF2054D90), !dbg !778
  %32 = fmul double %handler_result14, %handler_result15, !dbg !778
  call void @llvm.dbg.value(metadata double %32, metadata !298, metadata !DIExpression()), !dbg !773
  %33 = fmul double %31, 0x4006D3B8E31068E4, !dbg !779
  %34 = fdiv double %33, %32, !dbg !780
  call void @llvm.dbg.value(metadata double %34, metadata !299, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata double 0x3F1DDE6D37545B3B, metadata !300, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata double 0xBF21E5A3F738F3CA, metadata !301, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata double 0x3F1BFA716513D256, metadata !302, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata double 0xBF122C77E28883CE, metadata !303, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata double 0x3F0559A074362DA9, metadata !304, metadata !DIExpression()), !dbg !773
  %35 = fmul double %handler_result11, %handler_result11, !dbg !781
  %36 = fmul double %handler_result11, %35, !dbg !782
  %37 = fmul double %handler_result11, %36, !dbg !783
  %38 = fmul double %handler_result11, %37, !dbg !784
  call void @llvm.dbg.value(metadata double %38, metadata !305, metadata !DIExpression()), !dbg !773
  %39 = fmul double %handler_result11, 0x3F0559A074362DA9, !dbg !785
  %handler_result16 = call double @fAddHandlerDouble(double %39, double 0xBF122C77E28883CE), !dbg !786
  %40 = fmul double %handler_result11, %handler_result16, !dbg !786
  %handler_result17 = call double @fAddHandlerDouble(double %40, double 0x3F1BFA716513D256), !dbg !787
  %41 = fmul double %handler_result11, %handler_result17, !dbg !787
  %handler_result18 = call double @fAddHandlerDouble(double %41, double 0xBF21E5A3F738F3CA), !dbg !788
  %42 = fmul double %handler_result11, %handler_result18, !dbg !788
  %handler_result19 = call double @fAddHandlerDouble(double %42, double 0x3F1DDE6D37545B3B), !dbg !789
  %43 = fmul double %38, %handler_result19, !dbg !789
  call void @llvm.dbg.value(metadata double %43, metadata !306, metadata !DIExpression()), !dbg !773
  %handler_result20 = call double @fAddHandlerDouble(double %34, double %43), !dbg !790
  %44 = fmul double %handler_result11, %handler_result20, !dbg !790
  store double %44, ptr %1, align 8, !dbg !791, !tbaa !274
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !792
  %46 = fmul double %45, 0x3CC0000000000000, !dbg !793
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !794
  tail call void @llvm.dbg.value(metadata i32 0, metadata !718, metadata !DIExpression()), !dbg !795
  %handler_result21 = call double @fAddHandlerDouble(double %28, double 0x3CB0000000000000), !dbg !796
  %48 = fdiv double 1.000000e+00, %handler_result21, !dbg !796
  %49 = fmul double %48, %46, !dbg !797
  store double %49, ptr %47, align 8, !dbg !797, !tbaa !285
  store double 1.000000e+00, ptr %2, align 8, !dbg !798, !tbaa !555
  br label %123

50:                                               ; preds = %27
  %51 = fcmp ult double %0, 5.000000e-01, !dbg !799
  br i1 %51, label %69, label %52, !dbg !800

52:                                               ; preds = %50
  store double 1.000000e+00, ptr %2, align 8, !dbg !801, !tbaa !555
  call void @llvm.dbg.value(metadata double %0, metadata !334, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %1, metadata !338, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %handler_result, metadata !334, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !340, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i32 1, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 1, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !340, metadata !DIExpression()), !dbg !803
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result, double 1.000000e+00), !dbg !805
  %53 = fdiv double 0x40852429B6C30B05, %handler_result22, !dbg !805
  %handler_result23 = call double @fAddHandlerDouble(double %53, double 0x3FEFFFFFFFFFF950), !dbg !806
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !340, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 2, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 2, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !340, metadata !DIExpression()), !dbg !803
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result, double 2.000000e+00), !dbg !805
  %54 = fdiv double 0x4093AC8E8ED4171B, %handler_result24, !dbg !805
  %handler_result25 = call double @fSubHandlerDouble(double %handler_result23, double %54), !dbg !806
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !340, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 3, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 3, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !340, metadata !DIExpression()), !dbg !803
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result, double 3.000000e+00), !dbg !805
  %55 = fdiv double 0x40881A9661D3B4D8, %handler_result26, !dbg !805
  %handler_result27 = call double @fAddHandlerDouble(double %55, double %handler_result25), !dbg !806
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !340, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 4, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 4, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !340, metadata !DIExpression()), !dbg !803
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result, double 4.000000e+00), !dbg !805
  %56 = fdiv double 0x406613AE51A32F5D, %handler_result28, !dbg !805
  %handler_result29 = call double @fSubHandlerDouble(double %handler_result27, double %56), !dbg !806
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !340, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 5, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 5, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !340, metadata !DIExpression()), !dbg !803
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e+00), !dbg !805
  %57 = fdiv double 0x402903C27F8B9C81, %handler_result30, !dbg !805
  %handler_result31 = call double @fAddHandlerDouble(double %57, double %handler_result29), !dbg !806
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !340, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 6, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 6, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !340, metadata !DIExpression()), !dbg !803
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result, double 6.000000e+00), !dbg !805
  %58 = fdiv double 0x3FC1BCB2992B2855, %handler_result32, !dbg !805
  %handler_result33 = call double @fSubHandlerDouble(double %handler_result31, double %58), !dbg !806
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !340, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 7, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 7, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !340, metadata !DIExpression()), !dbg !803
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result, double 7.000000e+00), !dbg !805
  %59 = fdiv double 0x3EE4F0514E4E324F, %handler_result34, !dbg !805
  %handler_result35 = call double @fAddHandlerDouble(double %59, double %handler_result33), !dbg !806
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !340, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 8, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 8, metadata !339, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !340, metadata !DIExpression()), !dbg !803
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result, double 8.000000e+00), !dbg !805
  %60 = fdiv double 0x3E8435508F3FAEEF, %handler_result36, !dbg !805
  %handler_result37 = call double @fAddHandlerDouble(double %60, double %handler_result35), !dbg !807
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !340, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 9, metadata !339, metadata !DIExpression()), !dbg !803
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e-01), !dbg !808
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result, double 7.500000e+00), !dbg !809
  %61 = fdiv double %handler_result39, 0x4005BF0A8B145769, !dbg !809
  %handler_result64 = call double @callHandler(i32 12, double %61, double %61), !dbg !810
  %62 = fmul double %handler_result38, %handler_result64, !dbg !810
  call void @llvm.dbg.value(metadata double %62, metadata !341, metadata !DIExpression()), !dbg !803
  %handler_result65 = call double @callHandler(i32 12, double %handler_result37, double %handler_result37), !dbg !811
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result65, double 0x3FED67F1C864BEB5), !dbg !811
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !342, metadata !DIExpression()), !dbg !803
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double -7.000000e+00), !dbg !812
  %handler_result42 = call double @fAddHandlerDouble(double %62, double %handler_result41), !dbg !813
  store double %handler_result42, ptr %1, align 8, !dbg !813, !tbaa !274
  %63 = tail call double @llvm.fabs.f64(double %62), !dbg !814
  %64 = tail call double @llvm.fabs.f64(double %handler_result40), !dbg !815
  %handler_result43 = call double @fAddHandlerDouble(double %63, double %64), !dbg !816
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 7.000000e+00), !dbg !817
  %65 = fmul double %handler_result44, 0x3CC0000000000000, !dbg !817
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !818
  %67 = tail call double @llvm.fabs.f64(double %handler_result42), !dbg !819
  %68 = fmul double %67, 0x3CB0000000000000, !dbg !820
  %handler_result45 = call double @fAddHandlerDouble(double %65, double %68), !dbg !821
  store double %handler_result45, ptr %66, align 8, !dbg !821, !tbaa !285
  br label %123, !dbg !822

69:                                               ; preds = %50
  %70 = fcmp oeq double %0, 0.000000e+00, !dbg !823
  br i1 %70, label %71, label %73, !dbg !824

71:                                               ; preds = %69
  store double 0.000000e+00, ptr %2, align 8, !dbg !825, !tbaa !555
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !827, !tbaa !274
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !827
  store double 0x7FF8000000000000, ptr %72, align 8, !dbg !827, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1205, i32 noundef 1) #8, !dbg !829
  br label %123, !dbg !829

73:                                               ; preds = %69
  %74 = tail call double @llvm.fabs.f64(double %0), !dbg !831
  %75 = fcmp olt double %74, 2.000000e-02, !dbg !832
  br i1 %75, label %76, label %95, !dbg !833

76:                                               ; preds = %73
  call void @llvm.dbg.value(metadata double %0, metadata !377, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr %1, metadata !382, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0xBFB3C467E37DB0C8, metadata !384, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0xBF8669CF713AA1E2, metadata !385, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0x3FB7AF73866DA4E8, metadata !386, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0xBF92B5DF55ED2958, metadata !387, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0x3F926FE278E930AE, metadata !388, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0xBF7C0FAC8A677A84, metadata !389, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0x3F7060754242E352, metadata !390, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0xBF5F094BD00128CE, metadata !391, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0x3F4FF0A5D7D0B01E, metadata !392, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0xBF3FBDF153D2EADD, metadata !393, metadata !DIExpression()), !dbg !834
  %77 = fmul double %0, 0x3F3FBDF153D2EADD, !dbg !837
  %handler_result46 = call double @fSubHandlerDouble(double 0x3F4FF0A5D7D0B01E, double %77), !dbg !838
  %78 = fmul double %handler_result46, %0, !dbg !838
  %handler_result47 = call double @fAddHandlerDouble(double %78, double 0xBF5F094BD00128CE), !dbg !839
  %79 = fmul double %handler_result47, %0, !dbg !839
  %handler_result48 = call double @fAddHandlerDouble(double %79, double 0x3F7060754242E352), !dbg !840
  %80 = fmul double %handler_result48, %0, !dbg !840
  %handler_result49 = call double @fAddHandlerDouble(double %80, double 0xBF7C0FAC8A677A84), !dbg !841
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !394, metadata !DIExpression()), !dbg !834
  %81 = fmul double %handler_result49, %0, !dbg !841
  %handler_result50 = call double @fAddHandlerDouble(double %81, double 0x3F926FE278E930AE), !dbg !842
  %82 = fmul double %handler_result50, %0, !dbg !842
  %handler_result51 = call double @fAddHandlerDouble(double %82, double 0xBF92B5DF55ED2958), !dbg !843
  %83 = fmul double %handler_result51, %0, !dbg !843
  %handler_result52 = call double @fAddHandlerDouble(double %83, double 0x3FB7AF73866DA4E8), !dbg !844
  %84 = fmul double %handler_result52, %0, !dbg !844
  %handler_result53 = call double @fAddHandlerDouble(double %84, double 0xBF8669CF713AA1E2), !dbg !845
  %85 = fmul double %handler_result53, %0, !dbg !845
  %handler_result54 = call double @fAddHandlerDouble(double %85, double 0xBFB3C467E37DB0C8), !dbg !846
  %86 = fmul double %handler_result54, %0, !dbg !846
  call void @llvm.dbg.value(metadata double %86, metadata !395, metadata !DIExpression()), !dbg !834
  %handler_result55 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !847
  %87 = fdiv double 1.000000e+00, %handler_result55, !dbg !847
  %handler_result56 = call double @fAddHandlerDouble(double %87, double %86), !dbg !848
  %88 = fmul double %0, 5.000000e-01, !dbg !848
  %handler_result57 = call double @fAddHandlerDouble(double %88, double %handler_result56), !dbg !849
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !396, metadata !DIExpression()), !dbg !834
  %89 = fdiv double %handler_result57, %74, !dbg !849
  %handler_result66 = call double @callHandler(i32 12, double %89, double %89), !dbg !850
  store double %handler_result66, ptr %1, align 8, !dbg !850, !tbaa !274
  %90 = tail call double @llvm.fabs.f64(double %handler_result66), !dbg !851
  %91 = fmul double %90, 0x3CD0000000000000, !dbg !852
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !853
  store double %91, ptr %92, align 8, !dbg !854, !tbaa !285
  %93 = fcmp oge double %0, 0.000000e+00, !dbg !855
  %94 = select i1 %93, double 1.000000e+00, double -1.000000e+00, !dbg !855
  store double %94, ptr %2, align 8, !dbg !856, !tbaa !555
  br label %123, !dbg !857

95:                                               ; preds = %73
  %96 = fcmp ogt double %0, 0xC3045F306DC9C883, !dbg !858
  br i1 %96, label %97, label %122, !dbg !859

97:                                               ; preds = %95
  %handler_result58 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !860
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !721, metadata !DIExpression()), !dbg !861
  %98 = fmul double %0, 0x400921FB54442D18, !dbg !860
  %handler_result67 = call double @callHandler(i32 1, double %98, double %98), !dbg !862
  tail call void @llvm.dbg.value(metadata double %handler_result67, metadata !727, metadata !DIExpression()), !dbg !861
  %99 = tail call double @llvm.fabs.f64(double %handler_result67), !dbg !862
  tail call void @llvm.dbg.value(metadata double %99, metadata !728, metadata !DIExpression()), !dbg !861
  %100 = fcmp oeq double %handler_result67, 0.000000e+00, !dbg !863
  br i1 %100, label %101, label %103, !dbg !864

101:                                              ; preds = %97
  store double 0.000000e+00, ptr %2, align 8, !dbg !865, !tbaa !555
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !867, !tbaa !274
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !867
  store double 0x7FF8000000000000, ptr %102, align 8, !dbg !867, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1219, i32 noundef 1) #8, !dbg !869
  br label %123, !dbg !869

103:                                              ; preds = %97
  %104 = fcmp olt double %99, 0x3FA8209F5B22BAA6, !dbg !871
  br i1 %104, label %105, label %113, !dbg !872

105:                                              ; preds = %103
  %106 = fcmp olt double %0, 0xC1DFFFFFFF800000, !dbg !873
  br i1 %106, label %107, label %108, !dbg !874

107:                                              ; preds = %105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !875
  store double 0.000000e+00, ptr %2, align 8, !dbg !877, !tbaa !555
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1227, i32 noundef 18) #8, !dbg !878
  br label %123, !dbg !878

108:                                              ; preds = %105
  %handler_result59 = call double @fAddHandlerDouble(double %0, double -5.000000e-01), !dbg !880
  %109 = fptosi double %handler_result59 to i32, !dbg !880
  %110 = sub nsw i32 0, %109, !dbg !881
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !729, metadata !DIExpression()), !dbg !882
  %111 = sitofp i32 %110 to double, !dbg !883
  %handler_result60 = call double @fAddHandlerDouble(double %111, double %0), !dbg !884
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !735, metadata !DIExpression()), !dbg !882
  %112 = tail call fastcc i32 @lngamma_sgn_sing(i32 noundef %110, double noundef %handler_result60, ptr noundef %1, ptr noundef %2), !dbg !884, !range !443
  br label %123

113:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !885
  call fastcc void @lngamma_lanczos(double noundef %handler_result58, ptr noundef nonnull %4), !dbg !886
  %114 = fcmp ogt double %handler_result67, 0.000000e+00, !dbg !887
  %115 = select i1 %114, double 1.000000e+00, double -1.000000e+00, !dbg !888
  store double %115, ptr %2, align 8, !dbg !889, !tbaa !555
  %handler_result68 = call double @callHandler(i32 12, double %99, double %99), !dbg !890
  %116 = load double, ptr %4, align 8, !dbg !890, !tbaa !274
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result68, double %116), !dbg !891
  %handler_result62 = call double @fSubHandlerDouble(double 0x3FF250D048E7A1BD, double %handler_result61), !dbg !892
  store double %handler_result62, ptr %1, align 8, !dbg !892, !tbaa !274
  %117 = tail call double @llvm.fabs.f64(double %handler_result62), !dbg !893
  %118 = fmul double %117, 0x3CC0000000000000, !dbg !894
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !895
  %120 = load double, ptr %119, align 8, !dbg !895, !tbaa !285
  %handler_result63 = call double @fAddHandlerDouble(double %120, double %118), !dbg !896
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !896
  store double %handler_result63, ptr %121, align 8, !dbg !897, !tbaa !285
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !898
  br label %123

122:                                              ; preds = %95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !899
  store double 0.000000e+00, ptr %2, align 8, !dbg !901, !tbaa !555
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1249, i32 noundef 18) #8, !dbg !902
  br label %123, !dbg !902

123:                                              ; preds = %122, %113, %108, %107, %101, %76, %71, %52, %30, %7
  %124 = phi i32 [ 0, %7 ], [ 0, %30 ], [ 0, %52 ], [ 1, %71 ], [ 0, %76 ], [ 18, %122 ], [ 1, %101 ], [ 18, %107 ], [ %112, %108 ], [ 0, %113 ], !dbg !904
  ret i32 %124, !dbg !905
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !906 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !925
  call void @llvm.dbg.assign(metadata i1 undef, metadata !916, metadata !DIExpression(), metadata !925, metadata ptr %3, metadata !DIExpression()), !dbg !926
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !927
  call void @llvm.dbg.assign(metadata i1 undef, metadata !920, metadata !DIExpression(), metadata !927, metadata ptr %4, metadata !DIExpression()), !dbg !928
  %5 = alloca double, align 8, !DIAssignID !929
  call void @llvm.dbg.assign(metadata i1 undef, metadata !922, metadata !DIExpression(), metadata !929, metadata ptr %5, metadata !DIExpression()), !dbg !928
  tail call void @llvm.dbg.value(metadata double %0, metadata !908, metadata !DIExpression()), !dbg !930
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !909, metadata !DIExpression()), !dbg !930
  %6 = fcmp olt double %0, 5.000000e-01, !dbg !931
  br i1 %6, label %7, label %53, !dbg !932

7:                                                ; preds = %2
  %handler_result = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !933
  %8 = tail call double @llvm.floor.f64(double %handler_result), !dbg !933
  %9 = fptosi double %8 to i32, !dbg !934
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !910, metadata !DIExpression()), !dbg !935
  %10 = sitofp i32 %9 to double, !dbg !936
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %10), !dbg !937
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !913, metadata !DIExpression()), !dbg !935
  %11 = and i32 %9, 1, !dbg !937
  %12 = icmp eq i32 %11, 0, !dbg !937
  tail call void @llvm.dbg.value(metadata double poison, metadata !914, metadata !DIExpression()), !dbg !935
  %13 = fmul double %handler_result1, 0x400921FB54442D18, !dbg !938
  %handler_result4 = call double @callHandler(i32 1, double %13, double %13), !dbg !939
  %14 = fneg double %handler_result4, !dbg !939
  %15 = select i1 %12, double %handler_result4, double %14, !dbg !939
  %16 = fdiv double %15, 0x400921FB54442D18, !dbg !940
  tail call void @llvm.dbg.value(metadata double %16, metadata !915, metadata !DIExpression()), !dbg !935
  %17 = fcmp oeq double %16, 0.000000e+00, !dbg !941
  br i1 %17, label %18, label %20, !dbg !942

18:                                               ; preds = %7
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !943, !tbaa !274
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !943
  store double 0x7FF8000000000000, ptr %19, align 8, !dbg !943, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1264, i32 noundef 1) #8, !dbg !946
  br label %55, !dbg !946

20:                                               ; preds = %7
  %21 = fcmp ogt double %0, -1.690000e+02, !dbg !948
  br i1 %21, label %22, label %44, !dbg !949

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !950
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !951
  %23 = call fastcc i32 @gamma_xgthalf(double noundef %handler_result2, ptr noundef nonnull %3), !dbg !951, !range !952
  %24 = tail call double @llvm.fabs.f64(double %16), !dbg !953
  %25 = load double, ptr %3, align 8, !dbg !955, !tbaa !274
  %26 = fmul double %24, %25, !dbg !956
  %27 = fmul double %26, 0x10000000000000, !dbg !957
  %28 = fcmp olt double %27, 1.000000e+00, !dbg !958
  br i1 %28, label %29, label %40, !dbg !959

29:                                               ; preds = %22
  %30 = fmul double %16, %25, !dbg !960
  %31 = fdiv double 1.000000e+00, %30, !dbg !962
  store double %31, ptr %1, align 8, !dbg !963, !tbaa !274
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !964
  %33 = load double, ptr %32, align 8, !dbg !964, !tbaa !285
  %34 = fdiv double %33, %25, !dbg !965
  %35 = fmul double %31, %34, !dbg !966
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !966
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !967
  %38 = tail call double @llvm.fabs.f64(double %31), !dbg !968
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !969
  %handler_result3 = call double @fAddHandlerDouble(double %39, double %36), !dbg !970
  store double %handler_result3, ptr %37, align 8, !dbg !970, !tbaa !285
  br label %42, !dbg !971

40:                                               ; preds = %22
  store double 0.000000e+00, ptr %1, align 8, !dbg !972, !tbaa !274
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !972
  store double 0x10000000000000, ptr %41, align 8, !dbg !972, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1276, i32 noundef 15) #8, !dbg !975
  br label %42, !dbg !975

42:                                               ; preds = %40, %29
  %43 = phi i32 [ 0, %29 ], [ 15, %40 ], !dbg !977
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !978
  br label %55

44:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !979
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8, !dbg !980
  %45 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !981, !range !641
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !923, metadata !DIExpression()), !dbg !928
  %46 = load double, ptr %4, align 8, !dbg !982, !tbaa !274
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !983
  %48 = load double, ptr %47, align 8, !dbg !983, !tbaa !285
  %49 = load double, ptr %5, align 8, !dbg !984, !tbaa !555
  %50 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %46, double noundef %48, double noundef %49, double noundef 0.000000e+00, ptr noundef %1) #8, !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !924, metadata !DIExpression()), !dbg !928
  %51 = icmp eq i32 %50, 0, !dbg !986
  %52 = select i1 %51, i32 %45, i32 %50, !dbg !986
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8, !dbg !987
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !987
  br label %55

53:                                               ; preds = %2
  %54 = tail call fastcc i32 @gamma_xgthalf(double noundef %0, ptr noundef %1), !dbg !988, !range !952
  br label %55, !dbg !990

55:                                               ; preds = %53, %44, %42, %18
  %56 = phi i32 [ %54, %53 ], [ 1, %18 ], [ %43, %42 ], [ %52, %44 ], !dbg !991
  ret i32 %56, !dbg !992
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gamma_xgthalf(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !dbg !993 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1038
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1029, metadata !DIExpression(), metadata !1038, metadata ptr %3, metadata !DIExpression()), !dbg !1039
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1040
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1036, metadata !DIExpression(), metadata !1040, metadata ptr %4, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata double %0, metadata !995, metadata !DIExpression()), !dbg !1042
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !996, metadata !DIExpression()), !dbg !1042
  %5 = fcmp oeq double %0, 5.000000e-01, !dbg !1043
  br i1 %5, label %6, label %8, !dbg !1044

6:                                                ; preds = %2
  store double 0x3FFC5BF891B4EF6B, ptr %1, align 8, !dbg !1045, !tbaa !274
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1047
  store double 0x3CBC5BF891B4EF6B, ptr %7, align 8, !dbg !1048, !tbaa !285
  br label %100, !dbg !1049

8:                                                ; preds = %2
  %9 = fcmp ugt double %0, 1.710000e+02, !dbg !1050
  br i1 %9, label %21, label %10, !dbg !1051

10:                                               ; preds = %8
  %11 = tail call double @llvm.floor.f64(double %0), !dbg !1052
  %12 = fcmp oeq double %11, %0, !dbg !1053
  br i1 %12, label %13, label %21, !dbg !1054

13:                                               ; preds = %10
  %14 = fptosi double %11 to i32, !dbg !1055
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !997, metadata !DIExpression()), !dbg !1056
  %15 = add nsw i32 %14, -1, !dbg !1057
  %16 = sext i32 %15 to i64, !dbg !1058
  %17 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %16, i32 1, !dbg !1059
  %18 = load double, ptr %17, align 8, !dbg !1059, !tbaa !626
  store double %18, ptr %1, align 8, !dbg !1060, !tbaa !274
  %19 = fmul double %18, 0x3CB0000000000000, !dbg !1061
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1062
  store double %19, ptr %20, align 8, !dbg !1063, !tbaa !285
  br label %100

21:                                               ; preds = %10, %8
  %handler_result = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !1064
  %22 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !1064
  %23 = fcmp olt double %22, 1.000000e-02, !dbg !1065
  br i1 %23, label %24, label %34, !dbg !1066

24:                                               ; preds = %21
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1001, metadata !DIExpression()), !dbg !1067
  tail call void @llvm.dbg.value(metadata double 0x3FDB0EE6072093CE, metadata !1004, metadata !DIExpression()), !dbg !1067
  tail call void @llvm.dbg.value(metadata double 0xBF8669CF713AA1E2, metadata !1005, metadata !DIExpression()), !dbg !1067
  tail call void @llvm.dbg.value(metadata double 0x3FB7AF73866DA4E8, metadata !1006, metadata !DIExpression()), !dbg !1067
  tail call void @llvm.dbg.value(metadata double 0xBF92B5DF55ED2958, metadata !1007, metadata !DIExpression()), !dbg !1067
  tail call void @llvm.dbg.value(metadata double 0x3F926FE278E930AE, metadata !1008, metadata !DIExpression()), !dbg !1067
  tail call void @llvm.dbg.value(metadata double 0xBF7C0FAC8A677A84, metadata !1009, metadata !DIExpression()), !dbg !1067
  tail call void @llvm.dbg.value(metadata double 0x3F7060754242E352, metadata !1010, metadata !DIExpression()), !dbg !1067
  %25 = fdiv double 1.000000e+00, %0, !dbg !1068
  %26 = fmul double %handler_result, 0x3F7060754242E352, !dbg !1069
  %handler_result1 = call double @fAddHandlerDouble(double %26, double 0xBF7C0FAC8A677A84), !dbg !1070
  %27 = fmul double %handler_result, %handler_result1, !dbg !1070
  %handler_result2 = call double @fAddHandlerDouble(double %27, double 0x3F926FE278E930AE), !dbg !1071
  %28 = fmul double %handler_result, %handler_result2, !dbg !1071
  %handler_result3 = call double @fAddHandlerDouble(double %28, double 0xBF92B5DF55ED2958), !dbg !1072
  %29 = fmul double %handler_result, %handler_result3, !dbg !1072
  %handler_result4 = call double @fAddHandlerDouble(double %29, double 0x3FB7AF73866DA4E8), !dbg !1073
  %30 = fmul double %handler_result, %handler_result4, !dbg !1073
  %handler_result5 = call double @fAddHandlerDouble(double %30, double 0xBF8669CF713AA1E2), !dbg !1074
  %31 = fmul double %handler_result, %handler_result5, !dbg !1074
  %handler_result6 = call double @fAddHandlerDouble(double %31, double 0x3FDB0EE6072093CE), !dbg !1075
  %32 = fmul double %handler_result, %handler_result6, !dbg !1075
  %handler_result7 = call double @fAddHandlerDouble(double %25, double %32), !dbg !1076
  store double %handler_result7, ptr %1, align 8, !dbg !1076, !tbaa !274
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1077
  store double 0x3CB0000000000000, ptr %33, align 8, !dbg !1078, !tbaa !285
  br label %100

34:                                               ; preds = %21
  %handler_result8 = call double @fAddHandlerDouble(double %0, double -2.000000e+00), !dbg !1079
  %35 = tail call double @llvm.fabs.f64(double %handler_result8), !dbg !1079
  %36 = fcmp olt double %35, 1.000000e-02, !dbg !1080
  br i1 %36, label %37, label %47, !dbg !1081

37:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1011, metadata !DIExpression()), !dbg !1082
  tail call void @llvm.dbg.value(metadata double 0x3FDB0EE6072093CE, metadata !1014, metadata !DIExpression()), !dbg !1082
  tail call void @llvm.dbg.value(metadata double 0x3FDA5B978B96BEBF, metadata !1015, metadata !DIExpression()), !dbg !1082
  tail call void @llvm.dbg.value(metadata double 0x3FB4E239984650AC, metadata !1016, metadata !DIExpression()), !dbg !1082
  tail call void @llvm.dbg.value(metadata double 0x3FB301FBB0F25A92, metadata !1017, metadata !DIExpression()), !dbg !1082
  tail call void @llvm.dbg.value(metadata double 0xBF317F3740FE2A71, metadata !1018, metadata !DIExpression()), !dbg !1082
  tail call void @llvm.dbg.value(metadata double 0x3F86D7EEAC9EA41B, metadata !1019, metadata !DIExpression()), !dbg !1082
  tail call void @llvm.dbg.value(metadata double 0xBF675E6E90492E64, metadata !1020, metadata !DIExpression()), !dbg !1082
  tail call void @llvm.dbg.value(metadata double 0x3F613C449C85323D, metadata !1021, metadata !DIExpression()), !dbg !1082
  %38 = fmul double %handler_result8, 0x3F613C449C85323D, !dbg !1083
  %handler_result9 = call double @fAddHandlerDouble(double %38, double 0xBF675E6E90492E64), !dbg !1084
  %39 = fmul double %handler_result8, %handler_result9, !dbg !1084
  %handler_result10 = call double @fAddHandlerDouble(double %39, double 0x3F86D7EEAC9EA41B), !dbg !1085
  %40 = fmul double %handler_result8, %handler_result10, !dbg !1085
  %handler_result11 = call double @fAddHandlerDouble(double %40, double 0xBF317F3740FE2A71), !dbg !1086
  %41 = fmul double %handler_result8, %handler_result11, !dbg !1086
  %handler_result12 = call double @fAddHandlerDouble(double %41, double 0x3FB301FBB0F25A92), !dbg !1087
  %42 = fmul double %handler_result8, %handler_result12, !dbg !1087
  %handler_result13 = call double @fAddHandlerDouble(double %42, double 0x3FB4E239984650AC), !dbg !1088
  %43 = fmul double %handler_result8, %handler_result13, !dbg !1088
  %handler_result14 = call double @fAddHandlerDouble(double %43, double 0x3FDA5B978B96BEBF), !dbg !1089
  %44 = fmul double %handler_result8, %handler_result14, !dbg !1089
  %handler_result15 = call double @fAddHandlerDouble(double %44, double 0x3FDB0EE6072093CE), !dbg !1090
  %45 = fmul double %handler_result8, %handler_result15, !dbg !1090
  %handler_result16 = call double @fAddHandlerDouble(double %45, double 1.000000e+00), !dbg !1091
  store double %handler_result16, ptr %1, align 8, !dbg !1091, !tbaa !274
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1092
  store double 0x3CB0000000000000, ptr %46, align 8, !dbg !1093, !tbaa !285
  br label %100

47:                                               ; preds = %34
  %48 = fcmp olt double %0, 5.000000e+00, !dbg !1094
  br i1 %48, label %49, label %68, !dbg !1095

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata double %0, metadata !334, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata ptr undef, metadata !338, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata double %handler_result, metadata !334, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 1, metadata !339, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !340, metadata !DIExpression()), !dbg !1096
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result, double 1.000000e+00), !dbg !1098
  %50 = fdiv double 0x40852429B6C30B05, %handler_result17, !dbg !1098
  %handler_result18 = call double @fAddHandlerDouble(double %50, double 0x3FEFFFFFFFFFF950), !dbg !1099
  call void @llvm.dbg.value(metadata i64 2, metadata !339, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !340, metadata !DIExpression()), !dbg !1096
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result, double 2.000000e+00), !dbg !1098
  %51 = fdiv double 0x4093AC8E8ED4171B, %handler_result19, !dbg !1098
  %handler_result20 = call double @fSubHandlerDouble(double %handler_result18, double %51), !dbg !1099
  call void @llvm.dbg.value(metadata i64 3, metadata !339, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !340, metadata !DIExpression()), !dbg !1096
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result, double 3.000000e+00), !dbg !1098
  %52 = fdiv double 0x40881A9661D3B4D8, %handler_result21, !dbg !1098
  %handler_result22 = call double @fAddHandlerDouble(double %52, double %handler_result20), !dbg !1099
  call void @llvm.dbg.value(metadata i64 4, metadata !339, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !340, metadata !DIExpression()), !dbg !1096
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result, double 4.000000e+00), !dbg !1098
  %53 = fdiv double 0x406613AE51A32F5D, %handler_result23, !dbg !1098
  %handler_result24 = call double @fSubHandlerDouble(double %handler_result22, double %53), !dbg !1099
  call void @llvm.dbg.value(metadata i64 5, metadata !339, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !340, metadata !DIExpression()), !dbg !1096
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e+00), !dbg !1098
  %54 = fdiv double 0x402903C27F8B9C81, %handler_result25, !dbg !1098
  %handler_result26 = call double @fAddHandlerDouble(double %54, double %handler_result24), !dbg !1099
  call void @llvm.dbg.value(metadata i64 6, metadata !339, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !340, metadata !DIExpression()), !dbg !1096
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result, double 6.000000e+00), !dbg !1098
  %55 = fdiv double 0x3FC1BCB2992B2855, %handler_result27, !dbg !1098
  %handler_result28 = call double @fSubHandlerDouble(double %handler_result26, double %55), !dbg !1099
  call void @llvm.dbg.value(metadata i64 7, metadata !339, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !340, metadata !DIExpression()), !dbg !1096
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result, double 7.000000e+00), !dbg !1098
  %56 = fdiv double 0x3EE4F0514E4E324F, %handler_result29, !dbg !1098
  %handler_result30 = call double @fAddHandlerDouble(double %56, double %handler_result28), !dbg !1099
  call void @llvm.dbg.value(metadata i64 8, metadata !339, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !340, metadata !DIExpression()), !dbg !1096
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result, double 8.000000e+00), !dbg !1098
  %57 = fdiv double 0x3E8435508F3FAEEF, %handler_result31, !dbg !1098
  %handler_result32 = call double @fAddHandlerDouble(double %57, double %handler_result30), !dbg !1100
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !340, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 9, metadata !339, metadata !DIExpression()), !dbg !1096
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e-01), !dbg !1101
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result, double 7.500000e+00), !dbg !1102
  %58 = fdiv double %handler_result34, 0x4005BF0A8B145769, !dbg !1102
  %handler_result45 = call double @callHandler(i32 12, double %58, double %58), !dbg !1103
  %59 = fmul double %handler_result33, %handler_result45, !dbg !1103
  call void @llvm.dbg.value(metadata double %59, metadata !341, metadata !DIExpression()), !dbg !1096
  %handler_result46 = call double @callHandler(i32 12, double %handler_result32, double %handler_result32), !dbg !1104
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result46, double 0x3FED67F1C864BEB5), !dbg !1104
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !342, metadata !DIExpression()), !dbg !1096
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double -7.000000e+00), !dbg !1105
  %handler_result37 = call double @fAddHandlerDouble(double %59, double %handler_result36), !dbg !1106
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !1022, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1107
  %60 = tail call double @llvm.fabs.f64(double %59), !dbg !1106
  %61 = tail call double @llvm.fabs.f64(double %handler_result35), !dbg !1108
  %handler_result38 = call double @fAddHandlerDouble(double %60, double %61), !dbg !1109
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double 7.000000e+00), !dbg !1110
  %62 = fmul double %handler_result39, 0x3CC0000000000000, !dbg !1110
  %63 = tail call double @llvm.fabs.f64(double %handler_result37), !dbg !1111
  %64 = fmul double %63, 0x3CB0000000000000, !dbg !1112
  %handler_result40 = call double @fAddHandlerDouble(double %62, double %64), !dbg !1113
  tail call void @llvm.dbg.value(metadata double %handler_result40, metadata !1022, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1107
  %65 = tail call double @exp(double noundef %handler_result37) #8, !dbg !1113
  store double %65, ptr %1, align 8, !dbg !1114, !tbaa !274
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double 0x3CC0000000000000), !dbg !1115
  %66 = fmul double %65, %handler_result41, !dbg !1115
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1116
  store double %66, ptr %67, align 8, !dbg !1117, !tbaa !285
  br label %100

68:                                               ; preds = %47
  %69 = fcmp olt double %0, 1.000000e+01, !dbg !1118
  br i1 %69, label %70, label %81, !dbg !1119

70:                                               ; preds = %68
  tail call void @llvm.dbg.value(metadata double 5.040000e+03, metadata !1025, metadata !DIExpression()), !dbg !1039
  %71 = fmul double %0, 2.000000e+00, !dbg !1120
  %handler_result42 = call double @fAddHandlerDouble(double %71, double -1.500000e+01), !dbg !1121
  %72 = fdiv double %handler_result42, 5.000000e+00, !dbg !1121
  tail call void @llvm.dbg.value(metadata double %72, metadata !1028, metadata !DIExpression()), !dbg !1039
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1122
  call fastcc void @cheb_eval_e(ptr noundef nonnull @gamma_5_10_cs, double noundef %72, ptr noundef nonnull %3), !dbg !1123
  %73 = load double, ptr %3, align 8, !dbg !1124, !tbaa !274
  %74 = tail call double @exp(double noundef %73) #8, !dbg !1125
  %75 = fmul double %74, 5.040000e+03, !dbg !1126
  store double %75, ptr %1, align 8, !dbg !1127, !tbaa !274
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1128
  %77 = load double, ptr %76, align 8, !dbg !1128, !tbaa !285
  %78 = fmul double %75, %77, !dbg !1129
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1130
  %80 = fmul double %75, 0x3CC0000000000000, !dbg !1131
  %handler_result43 = call double @fAddHandlerDouble(double %80, double %78), !dbg !1132
  store double %handler_result43, ptr %79, align 8, !dbg !1132, !tbaa !285
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1133
  br label %100

81:                                               ; preds = %68
  %82 = fcmp olt double %0, 1.710000e+02, !dbg !1134
  br i1 %82, label %83, label %98, !dbg !1135

83:                                               ; preds = %81
  %84 = fmul double %0, 5.000000e-01, !dbg !1136
  %85 = tail call double @pow(double noundef %0, double noundef %84) #8, !dbg !1137
  tail call void @llvm.dbg.value(metadata double %85, metadata !1030, metadata !DIExpression()), !dbg !1041
  %86 = fneg double %0, !dbg !1138
  %87 = tail call double @exp(double noundef %86) #8, !dbg !1139
  tail call void @llvm.dbg.value(metadata double %87, metadata !1033, metadata !DIExpression()), !dbg !1041
  %88 = fmul double %85, %87, !dbg !1140
  %89 = fmul double %85, %88, !dbg !1141
  tail call void @llvm.dbg.value(metadata double %89, metadata !1034, metadata !DIExpression()), !dbg !1041
  %90 = fmul double %89, 0x40040D931FF62706, !dbg !1142
  %91 = tail call double @sqrt(double noundef %0) #8, !dbg !1143
  %92 = fdiv double %90, %91, !dbg !1144
  tail call void @llvm.dbg.value(metadata double %92, metadata !1035, metadata !DIExpression()), !dbg !1041
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1145
  call fastcc void @gammastar_ser(double noundef %0, ptr noundef nonnull %4), !dbg !1146
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1037, metadata !DIExpression()), !dbg !1041
  %93 = load double, ptr %4, align 8, !dbg !1147, !tbaa !274
  %94 = fmul double %92, %93, !dbg !1148
  store double %94, ptr %1, align 8, !dbg !1149, !tbaa !274
  %handler_result44 = call double @fAddHandlerDouble(double %0, double 2.500000e+00), !dbg !1150
  %95 = fmul double %handler_result44, 0x3CB0000000000000, !dbg !1150
  %96 = fmul double %95, %94, !dbg !1151
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1152
  store double %96, ptr %97, align 8, !dbg !1153, !tbaa !285
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1154
  br label %100

98:                                               ; preds = %81
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !1155, !tbaa !274
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1155
  store double 0x7FF0000000000000, ptr %99, align 8, !dbg !1155, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1106, i32 noundef 16) #8, !dbg !1158
  br label %100, !dbg !1158

100:                                              ; preds = %98, %83, %70, %49, %37, %24, %13, %6
  %101 = phi i32 [ 0, %6 ], [ 0, %13 ], [ 0, %24 ], [ 0, %37 ], [ 0, %49 ], [ 0, %70 ], [ 0, %83 ], [ 16, %98 ], !dbg !1160
  ret i32 %101, !dbg !1161
}

declare !dbg !1162 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gammastar_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1166 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1192
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1170, metadata !DIExpression(), metadata !1192, metadata ptr %3, metadata !DIExpression()), !dbg !1193
  tail call void @llvm.dbg.value(metadata double %0, metadata !1168, metadata !DIExpression()), !dbg !1194
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1169, metadata !DIExpression()), !dbg !1194
  %4 = fcmp ugt double %0, 0.000000e+00, !dbg !1195
  br i1 %4, label %7, label %5, !dbg !1196

5:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !1197, !tbaa !274
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1197
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !1197, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1304, i32 noundef 1) #8, !dbg !1200
  br label %115, !dbg !1200

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 5.000000e-01, !dbg !1202
  br i1 %8, label %9, label %21, !dbg !1203

9:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1204
  %10 = call i32 @gsl_sf_lngamma_e(double noundef %0, ptr noundef nonnull %3), !dbg !1205, !range !641
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1174, metadata !DIExpression()), !dbg !1193
  %handler_result51 = call double @callHandler(i32 12, double %0, double %0), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %handler_result51, metadata !1176, metadata !DIExpression()), !dbg !1193
  tail call void @llvm.dbg.value(metadata double 0x3FED67F1C864BEB4, metadata !1177, metadata !DIExpression()), !dbg !1193
  %11 = load double, ptr %3, align 8, !dbg !1206, !tbaa !274
  %handler_result = call double @fAddHandlerDouble(double %0, double -5.000000e-01), !dbg !1207
  %12 = fmul double %handler_result, %handler_result51, !dbg !1207
  %handler_result1 = call double @fSubHandlerDouble(double %11, double %12), !dbg !1208
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %0), !dbg !1209
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 0xBFED67F1C864BEB4), !dbg !1210
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1178, metadata !DIExpression()), !dbg !1193
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1210
  %14 = load double, ptr %13, align 8, !dbg !1210, !tbaa !285
  %handler_result4 = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !1211
  %15 = tail call double @llvm.fabs.f64(double %handler_result51), !dbg !1211
  %16 = fmul double %handler_result4, %15, !dbg !1212
  %handler_result5 = call double @fAddHandlerDouble(double %16, double 0x3FED67F1C864BEB4), !dbg !1213
  %17 = fmul double %handler_result5, 0x3CC0000000000000, !dbg !1213
  %handler_result6 = call double @fAddHandlerDouble(double %14, double %17), !dbg !1214
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1179, metadata !DIExpression()), !dbg !1193
  %18 = tail call i32 @gsl_sf_exp_err_e(double noundef %handler_result3, double noundef %handler_result6, ptr noundef %1) #8, !dbg !1214
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1180, metadata !DIExpression()), !dbg !1193
  %19 = icmp eq i32 %10, 0, !dbg !1215
  %20 = select i1 %19, i32 %18, i32 %10, !dbg !1215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1216
  br label %115

21:                                               ; preds = %7
  %22 = fcmp olt double %0, 2.000000e+00, !dbg !1217
  br i1 %22, label %23, label %47, !dbg !1218

23:                                               ; preds = %21
  %handler_result7 = call double @fAddHandlerDouble(double %0, double -5.000000e-01), !dbg !1219
  %24 = fmul double %handler_result7, 0x3FF5555555555555, !dbg !1219
  %handler_result8 = call double @fAddHandlerDouble(double %24, double -1.000000e+00), !dbg !1220
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1181, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata !1244, metadata !1227, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !1228, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata ptr %1, metadata !1229, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1231, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1232, metadata !DIExpression()), !dbg !1245
  %25 = fmul double %handler_result8, 2.000000e+00, !dbg !1220
  %handler_result9 = call double @fAddHandlerDouble(double %25, double 1.000000e+00), !dbg !1246
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double -1.000000e+00), !dbg !1247
  %26 = fmul double %handler_result10, 5.000000e-01, !dbg !1247
  call void @llvm.dbg.value(metadata double %26, metadata !1233, metadata !DIExpression()), !dbg !1245
  %27 = fmul double %26, 2.000000e+00, !dbg !1248
  call void @llvm.dbg.value(metadata double %27, metadata !1234, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1235, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 29, metadata !1230, metadata !DIExpression()), !dbg !1245
  br label %28, !dbg !1249

28:                                               ; preds = %28, %23
  %29 = phi i64 [ 29, %23 ], [ %39, %28 ]
  %30 = phi double [ 0.000000e+00, %23 ], [ %handler_result12, %28 ]
  %31 = phi double [ 0.000000e+00, %23 ], [ %handler_result15, %28 ]
  %32 = phi double [ 0.000000e+00, %23 ], [ %30, %28 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !1230, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata double %30, metadata !1231, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata double %31, metadata !1235, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata double %32, metadata !1232, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata double %30, metadata !1236, metadata !DIExpression()), !dbg !1250
  %33 = fmul double %27, %30, !dbg !1251
  %handler_result11 = call double @fSubHandlerDouble(double %33, double %32), !dbg !1252
  %34 = getelementptr inbounds double, ptr @gstar_a_data, i64 %29, !dbg !1252
  %35 = load double, ptr %34, align 8, !dbg !1252, !tbaa !555
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double %35), !dbg !1253
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !1231, metadata !DIExpression()), !dbg !1245
  %36 = tail call double @llvm.fabs.f64(double %33), !dbg !1253
  %37 = tail call double @llvm.fabs.f64(double %32), !dbg !1254
  %handler_result13 = call double @fAddHandlerDouble(double %36, double %37), !dbg !1255
  %38 = tail call double @llvm.fabs.f64(double %35), !dbg !1255
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double %38), !dbg !1256
  %handler_result15 = call double @fAddHandlerDouble(double %31, double %handler_result14), !dbg !1257
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !1235, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata double %30, metadata !1232, metadata !DIExpression()), !dbg !1245
  %39 = add nsw i64 %29, -1, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %39, metadata !1230, metadata !DIExpression()), !dbg !1245
  %40 = icmp ugt i64 %29, 1, !dbg !1258
  br i1 %40, label %28, label %41, !dbg !1249, !llvm.loop !1259

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !1240, metadata !DIExpression()), !dbg !1262
  %42 = fmul double %26, %handler_result12, !dbg !1263
  %handler_result16 = call double @fSubHandlerDouble(double %42, double %30), !dbg !1264
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double 0x3FF157C954F0328A), !dbg !1265
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !1231, metadata !DIExpression()), !dbg !1245
  %43 = tail call double @llvm.fabs.f64(double %42), !dbg !1265
  %44 = tail call double @llvm.fabs.f64(double %30), !dbg !1266
  %handler_result18 = call double @fAddHandlerDouble(double %44, double %43), !dbg !1267
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3FF157C954F0328A), !dbg !1268
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result15, double %handler_result19), !dbg !1269
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !1235, metadata !DIExpression()), !dbg !1245
  store double %handler_result17, ptr %1, align 8, !dbg !1269, !tbaa !274
  %45 = fmul double %handler_result20, 0x3CB0000000000000, !dbg !1270
  %handler_result21 = call double @fAddHandlerDouble(double %45, double 0x3CD238CA994778F3), !dbg !1271
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1271
  store double %handler_result21, ptr %46, align 8, !dbg !1272, !tbaa !285
  br label %115

47:                                               ; preds = %21
  %48 = fcmp olt double %0, 1.000000e+01, !dbg !1273
  br i1 %48, label %49, label %80, !dbg !1274

49:                                               ; preds = %47
  %handler_result22 = call double @fAddHandlerDouble(double %0, double -2.000000e+00), !dbg !1275
  %50 = fmul double %handler_result22, 2.500000e-01, !dbg !1275
  %handler_result23 = call double @fAddHandlerDouble(double %50, double -1.000000e+00), !dbg !1276
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !1184, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata !1244, metadata !1227, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !1228, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata ptr undef, metadata !1229, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1231, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1232, metadata !DIExpression()), !dbg !1279
  %51 = fmul double %handler_result23, 2.000000e+00, !dbg !1276
  %handler_result24 = call double @fAddHandlerDouble(double %51, double 1.000000e+00), !dbg !1280
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double -1.000000e+00), !dbg !1281
  %52 = fmul double %handler_result25, 5.000000e-01, !dbg !1281
  call void @llvm.dbg.value(metadata double %52, metadata !1233, metadata !DIExpression()), !dbg !1279
  %53 = fmul double %52, 2.000000e+00, !dbg !1282
  call void @llvm.dbg.value(metadata double %53, metadata !1234, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1235, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i32 29, metadata !1230, metadata !DIExpression()), !dbg !1279
  br label %54, !dbg !1283

54:                                               ; preds = %54, %49
  %55 = phi i64 [ 29, %49 ], [ %65, %54 ]
  %56 = phi double [ 0.000000e+00, %49 ], [ %handler_result27, %54 ]
  %57 = phi double [ 0.000000e+00, %49 ], [ %handler_result30, %54 ]
  %58 = phi double [ 0.000000e+00, %49 ], [ %56, %54 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !1230, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata double %56, metadata !1231, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata double %57, metadata !1235, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata double %58, metadata !1232, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata double %56, metadata !1236, metadata !DIExpression()), !dbg !1284
  %59 = fmul double %53, %56, !dbg !1285
  %handler_result26 = call double @fSubHandlerDouble(double %59, double %58), !dbg !1286
  %60 = getelementptr inbounds double, ptr @gstar_b_data, i64 %55, !dbg !1286
  %61 = load double, ptr %60, align 8, !dbg !1286, !tbaa !555
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %61), !dbg !1287
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !1231, metadata !DIExpression()), !dbg !1279
  %62 = tail call double @llvm.fabs.f64(double %59), !dbg !1287
  %63 = tail call double @llvm.fabs.f64(double %58), !dbg !1288
  %handler_result28 = call double @fAddHandlerDouble(double %62, double %63), !dbg !1289
  %64 = tail call double @llvm.fabs.f64(double %61), !dbg !1289
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double %64), !dbg !1290
  %handler_result30 = call double @fAddHandlerDouble(double %57, double %handler_result29), !dbg !1291
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !1235, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata double %56, metadata !1232, metadata !DIExpression()), !dbg !1279
  %65 = add nsw i64 %55, -1, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %65, metadata !1230, metadata !DIExpression()), !dbg !1279
  %66 = icmp ugt i64 %55, 1, !dbg !1292
  br i1 %66, label %54, label %67, !dbg !1283, !llvm.loop !1293

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !1240, metadata !DIExpression()), !dbg !1295
  %68 = fmul double %52, %handler_result27, !dbg !1296
  %handler_result31 = call double @fSubHandlerDouble(double %68, double %56), !dbg !1297
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0x3F678D8D00889F45), !dbg !1298
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !1231, metadata !DIExpression()), !dbg !1279
  %69 = tail call double @llvm.fabs.f64(double %68), !dbg !1298
  %70 = tail call double @llvm.fabs.f64(double %56), !dbg !1299
  %handler_result33 = call double @fAddHandlerDouble(double %70, double %69), !dbg !1300
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3F678D8D00889F45), !dbg !1301
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result30, double %handler_result34), !dbg !1302
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !1235, metadata !DIExpression()), !dbg !1279
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !1187, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1278
  %71 = fmul double %handler_result35, 0x3CB0000000000000, !dbg !1302
  %handler_result36 = call double @fAddHandlerDouble(double %71, double 0x3C916EDE756B86EF), !dbg !1303
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !1187, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1278
  %72 = fmul double %0, %0, !dbg !1303
  %73 = fdiv double %handler_result32, %72, !dbg !1304
  %handler_result37 = call double @fAddHandlerDouble(double %73, double 1.000000e+00), !dbg !1305
  %74 = fmul double %0, 1.200000e+01, !dbg !1305
  %75 = fdiv double 1.000000e+00, %74, !dbg !1306
  %handler_result38 = call double @fAddHandlerDouble(double %75, double %handler_result37), !dbg !1307
  store double %handler_result38, ptr %1, align 8, !dbg !1307, !tbaa !274
  %76 = fdiv double %handler_result36, %72, !dbg !1308
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1309
  %78 = tail call double @llvm.fabs.f64(double %handler_result38), !dbg !1310
  %79 = fmul double %78, 0x3CC0000000000000, !dbg !1311
  %handler_result39 = call double @fAddHandlerDouble(double %76, double %79), !dbg !1312
  store double %handler_result39, ptr %77, align 8, !dbg !1312, !tbaa !285
  br label %115

80:                                               ; preds = %47
  %81 = fcmp olt double %0, 8.192000e+03, !dbg !1313
  br i1 %81, label %82, label %99, !dbg !1314

82:                                               ; preds = %80
  call void @llvm.dbg.value(metadata double %0, metadata !1315, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %1, metadata !1319, metadata !DIExpression()), !dbg !1330
  %83 = fmul double %0, %0, !dbg !1333
  %84 = fdiv double 1.000000e+00, %83, !dbg !1334
  call void @llvm.dbg.value(metadata double %84, metadata !1320, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata double 0x3FB5555555555555, metadata !1321, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata double 0xBF66C16C16C16C17, metadata !1322, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata double 0x3F4A01A01A01A01A, metadata !1323, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata double 0xBF43813813813814, metadata !1324, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata double 0x3F4B951E2B18FF23, metadata !1325, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata double 0xBF5F6AB0D9993C7D, metadata !1326, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata double 0x3F7A41A41A41A41A, metadata !1327, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata double 0xBF9E4286CB0F5398, metadata !1328, metadata !DIExpression()), !dbg !1330
  %85 = fmul double %84, 0x3F9E4286CB0F5398, !dbg !1335
  %handler_result40 = call double @fSubHandlerDouble(double 0x3F7A41A41A41A41A, double %85), !dbg !1336
  %86 = fmul double %84, %handler_result40, !dbg !1336
  %handler_result41 = call double @fAddHandlerDouble(double %86, double 0xBF5F6AB0D9993C7D), !dbg !1337
  %87 = fmul double %84, %handler_result41, !dbg !1337
  %handler_result42 = call double @fAddHandlerDouble(double %87, double 0x3F4B951E2B18FF23), !dbg !1338
  %88 = fmul double %84, %handler_result42, !dbg !1338
  %handler_result43 = call double @fAddHandlerDouble(double %88, double 0xBF43813813813814), !dbg !1339
  %89 = fmul double %84, %handler_result43, !dbg !1339
  %handler_result44 = call double @fAddHandlerDouble(double %89, double 0x3F4A01A01A01A01A), !dbg !1340
  %90 = fmul double %84, %handler_result44, !dbg !1340
  %handler_result45 = call double @fAddHandlerDouble(double %90, double 0xBF66C16C16C16C17), !dbg !1341
  %91 = fmul double %84, %handler_result45, !dbg !1341
  %handler_result46 = call double @fAddHandlerDouble(double %91, double 0x3FB5555555555555), !dbg !1342
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !1329, metadata !DIExpression()), !dbg !1330
  %92 = fdiv double %handler_result46, %0, !dbg !1342
  %93 = tail call double @exp(double noundef %92) #8, !dbg !1343
  store double %93, ptr %1, align 8, !dbg !1344, !tbaa !274
  %94 = fmul double %93, 0x3CC0000000000000, !dbg !1345
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1346, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata double %92, metadata !1352, metadata !DIExpression()), !dbg !1353
  %95 = fcmp olt double %92, 1.000000e+00, !dbg !1355
  %96 = select i1 %95, double 1.000000e+00, double %92, !dbg !1355
  %97 = fmul double %96, %94, !dbg !1356
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1357
  store double %97, ptr %98, align 8, !dbg !1358, !tbaa !285
  br label %115, !dbg !1359

99:                                               ; preds = %80
  %100 = fcmp olt double %0, 0x4330000000000000, !dbg !1360
  br i1 %100, label %101, label %112, !dbg !1361

101:                                              ; preds = %99
  %102 = fdiv double 1.000000e+00, %0, !dbg !1362
  tail call void @llvm.dbg.value(metadata double %102, metadata !1188, metadata !DIExpression()), !dbg !1363
  %103 = fdiv double %102, 1.200000e+01, !dbg !1364
  %104 = fdiv double %102, 2.400000e+01, !dbg !1365
  %105 = fmul double %102, 0x3FB0EB240795CEB2, !dbg !1366
  %handler_result47 = call double @fAddHandlerDouble(double %105, double 0x3FE8B60B60B60B61), !dbg !1367
  %106 = fmul double %102, %handler_result47, !dbg !1367
  %handler_result48 = call double @fSubHandlerDouble(double 1.000000e+00, double %106), !dbg !1368
  %107 = fmul double %104, %handler_result48, !dbg !1368
  %handler_result49 = call double @fAddHandlerDouble(double %107, double 1.000000e+00), !dbg !1369
  %108 = fmul double %103, %handler_result49, !dbg !1369
  %handler_result50 = call double @fAddHandlerDouble(double %108, double 1.000000e+00), !dbg !1370
  store double %handler_result50, ptr %1, align 8, !dbg !1370, !tbaa !274
  %109 = tail call double @llvm.fabs.f64(double %handler_result50), !dbg !1371
  %110 = fmul double %109, 0x3CC0000000000000, !dbg !1372
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1373
  store double %110, ptr %111, align 8, !dbg !1374, !tbaa !285
  br label %115

112:                                              ; preds = %99
  store double 1.000000e+00, ptr %1, align 8, !dbg !1375, !tbaa !274
  %113 = fdiv double 1.000000e+00, %0, !dbg !1377
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1378
  store double %113, ptr %114, align 8, !dbg !1379, !tbaa !285
  br label %115, !dbg !1380

115:                                              ; preds = %112, %101, %82, %67, %41, %9, %5
  %116 = phi i32 [ 1, %5 ], [ %20, %9 ], [ 0, %41 ], [ 0, %67 ], [ 0, %82 ], [ 0, %101 ], [ 0, %112 ], !dbg !1381
  ret i32 %116, !dbg !1382
}

declare !dbg !1383 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cheb_eval_e(ptr nocapture noundef readonly %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !dbg !1221 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1227, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double %1, metadata !1228, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1229, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1231, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1232, metadata !DIExpression()), !dbg !1386
  %4 = fmul double %1, 2.000000e+00, !dbg !1387
  %5 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 2, !dbg !1388
  %6 = load double, ptr %5, align 8, !dbg !1388, !tbaa !1389
  %handler_result = call double @fSubHandlerDouble(double %4, double %6), !dbg !1392
  %7 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 3, !dbg !1392
  %8 = load double, ptr %7, align 8, !dbg !1392, !tbaa !1393
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %8), !dbg !1394
  %handler_result2 = call double @fSubHandlerDouble(double %8, double %6), !dbg !1395
  %9 = fdiv double %handler_result1, %handler_result2, !dbg !1395
  tail call void @llvm.dbg.value(metadata double %9, metadata !1233, metadata !DIExpression()), !dbg !1386
  %10 = fmul double %9, 2.000000e+00, !dbg !1396
  tail call void @llvm.dbg.value(metadata double %10, metadata !1234, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1235, metadata !DIExpression()), !dbg !1386
  %11 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 1, !dbg !1397
  %12 = load i32, ptr %11, align 8, !dbg !1397, !tbaa !1398
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1230, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1231, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1235, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1232, metadata !DIExpression()), !dbg !1386
  %13 = icmp sgt i32 %12, 0, !dbg !1399
  %14 = load ptr, ptr %0, align 8, !dbg !1400, !tbaa !1401
  br i1 %13, label %15, label %30, !dbg !1402

15:                                               ; preds = %3
  %16 = zext nneg i32 %12 to i64, !dbg !1402
  br label %17, !dbg !1402

17:                                               ; preds = %17, %15
  %18 = phi i64 [ %16, %15 ], [ %28, %17 ]
  %19 = phi double [ 0.000000e+00, %15 ], [ %handler_result4, %17 ]
  %20 = phi double [ 0.000000e+00, %15 ], [ %handler_result7, %17 ]
  %21 = phi double [ 0.000000e+00, %15 ], [ %19, %17 ]
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1230, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double %19, metadata !1231, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double %20, metadata !1235, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double %21, metadata !1232, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double %19, metadata !1236, metadata !DIExpression()), !dbg !1403
  %22 = fmul double %10, %19, !dbg !1404
  %handler_result3 = call double @fSubHandlerDouble(double %22, double %21), !dbg !1405
  %23 = getelementptr inbounds double, ptr %14, i64 %18, !dbg !1405
  %24 = load double, ptr %23, align 8, !dbg !1405, !tbaa !555
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %24), !dbg !1406
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1231, metadata !DIExpression()), !dbg !1386
  %25 = tail call double @llvm.fabs.f64(double %22), !dbg !1406
  %26 = tail call double @llvm.fabs.f64(double %21), !dbg !1407
  %handler_result5 = call double @fAddHandlerDouble(double %26, double %25), !dbg !1408
  %27 = tail call double @llvm.fabs.f64(double %24), !dbg !1408
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %27), !dbg !1409
  %handler_result7 = call double @fAddHandlerDouble(double %20, double %handler_result6), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1235, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata double %19, metadata !1232, metadata !DIExpression()), !dbg !1386
  %28 = add nsw i64 %18, -1, !dbg !1410
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !1230, metadata !DIExpression()), !dbg !1386
  %29 = icmp ugt i64 %18, 1, !dbg !1399
  br i1 %29, label %17, label %30, !dbg !1402, !llvm.loop !1411

30:                                               ; preds = %17, %3
  %31 = phi double [ 0.000000e+00, %3 ], [ %19, %17 ], !dbg !1386
  %32 = phi double [ 0.000000e+00, %3 ], [ %handler_result7, %17 ], !dbg !1386
  %33 = phi double [ 0.000000e+00, %3 ], [ %handler_result4, %17 ], !dbg !1386
  tail call void @llvm.dbg.value(metadata double %33, metadata !1240, metadata !DIExpression()), !dbg !1413
  %34 = fmul double %9, %33, !dbg !1414
  %handler_result8 = call double @fSubHandlerDouble(double %34, double %31), !dbg !1415
  %35 = load double, ptr %14, align 8, !dbg !1415, !tbaa !555
  %36 = fmul double %35, 5.000000e-01, !dbg !1416
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %36), !dbg !1417
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1231, metadata !DIExpression()), !dbg !1386
  %37 = tail call double @llvm.fabs.f64(double %34), !dbg !1417
  %38 = tail call double @llvm.fabs.f64(double %31), !dbg !1418
  %handler_result10 = call double @fAddHandlerDouble(double %38, double %37), !dbg !1419
  %39 = tail call double @llvm.fabs.f64(double %35), !dbg !1419
  %40 = fmul double %39, 5.000000e-01, !dbg !1420
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double %40), !dbg !1421
  %handler_result12 = call double @fAddHandlerDouble(double %32, double %handler_result11), !dbg !1422
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !1235, metadata !DIExpression()), !dbg !1386
  store double %handler_result9, ptr %2, align 8, !dbg !1422, !tbaa !274
  %41 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !1423
  %42 = sext i32 %12 to i64, !dbg !1424
  %43 = getelementptr inbounds double, ptr %14, i64 %42, !dbg !1424
  %44 = load double, ptr %43, align 8, !dbg !1424, !tbaa !555
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !1425
  %handler_result13 = call double @fAddHandlerDouble(double %45, double %41), !dbg !1426
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1426
  store double %handler_result13, ptr %46, align 8, !dbg !1427, !tbaa !285
  ret void, !dbg !1428
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc void @gammastar_ser(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !dbg !1316 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1315, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1319, metadata !DIExpression()), !dbg !1429
  %3 = fmul double %0, %0, !dbg !1430
  %4 = fdiv double 1.000000e+00, %3, !dbg !1431
  tail call void @llvm.dbg.value(metadata double %4, metadata !1320, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double 0x3FB5555555555555, metadata !1321, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double 0xBF66C16C16C16C17, metadata !1322, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double 0x3F4A01A01A01A01A, metadata !1323, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double 0xBF43813813813814, metadata !1324, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double 0x3F4B951E2B18FF23, metadata !1325, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double 0xBF5F6AB0D9993C7D, metadata !1326, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double 0x3F7A41A41A41A41A, metadata !1327, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double 0xBF9E4286CB0F5398, metadata !1328, metadata !DIExpression()), !dbg !1429
  %5 = fmul double %4, 0x3F9E4286CB0F5398, !dbg !1432
  %handler_result = call double @fSubHandlerDouble(double 0x3F7A41A41A41A41A, double %5), !dbg !1433
  %6 = fmul double %4, %handler_result, !dbg !1433
  %handler_result1 = call double @fAddHandlerDouble(double %6, double 0xBF5F6AB0D9993C7D), !dbg !1434
  %7 = fmul double %4, %handler_result1, !dbg !1434
  %handler_result2 = call double @fAddHandlerDouble(double %7, double 0x3F4B951E2B18FF23), !dbg !1435
  %8 = fmul double %4, %handler_result2, !dbg !1435
  %handler_result3 = call double @fAddHandlerDouble(double %8, double 0xBF43813813813814), !dbg !1436
  %9 = fmul double %4, %handler_result3, !dbg !1436
  %handler_result4 = call double @fAddHandlerDouble(double %9, double 0x3F4A01A01A01A01A), !dbg !1437
  %10 = fmul double %4, %handler_result4, !dbg !1437
  %handler_result5 = call double @fAddHandlerDouble(double %10, double 0xBF66C16C16C16C17), !dbg !1438
  %11 = fmul double %4, %handler_result5, !dbg !1438
  %handler_result6 = call double @fAddHandlerDouble(double %11, double 0x3FB5555555555555), !dbg !1439
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1329, metadata !DIExpression()), !dbg !1429
  %12 = fdiv double %handler_result6, %0, !dbg !1439
  %13 = tail call double @exp(double noundef %12) #8, !dbg !1440
  store double %13, ptr %1, align 8, !dbg !1441, !tbaa !274
  %14 = fmul double %13, 0x3CC0000000000000, !dbg !1442
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1346, metadata !DIExpression()), !dbg !1443
  tail call void @llvm.dbg.value(metadata double %12, metadata !1352, metadata !DIExpression()), !dbg !1443
  %15 = fcmp olt double %12, 1.000000e+00, !dbg !1445
  %16 = select i1 %15, double 1.000000e+00, double %12, !dbg !1445
  %17 = fmul double %16, %14, !dbg !1446
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1447
  store double %17, ptr %18, align 8, !dbg !1448, !tbaa !285
  ret void, !dbg !1449
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gammainv_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1450 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1463
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1454, metadata !DIExpression(), metadata !1463, metadata ptr %3, metadata !DIExpression()), !dbg !1464
  %4 = alloca double, align 8, !DIAssignID !1465
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1458, metadata !DIExpression(), metadata !1465, metadata ptr %4, metadata !DIExpression()), !dbg !1464
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1466
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1460, metadata !DIExpression(), metadata !1466, metadata ptr %5, metadata !DIExpression()), !dbg !1467
  tail call void @llvm.dbg.value(metadata double %0, metadata !1452, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1453, metadata !DIExpression()), !dbg !1468
  %6 = fcmp ole double %0, 0.000000e+00, !dbg !1469
  %7 = tail call double @llvm.floor.f64(double %0)
  %8 = fcmp oeq double %7, %0
  %9 = and i1 %6, %8, !dbg !1470
  br i1 %9, label %10, label %11, !dbg !1470

10:                                               ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1471
  br label %47, !dbg !1473

11:                                               ; preds = %2
  %12 = fcmp olt double %0, 5.000000e-01, !dbg !1474
  br i1 %12, label %13, label %26, !dbg !1475

13:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1476
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8, !dbg !1477
  %14 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !1478, !range !641
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1459, metadata !DIExpression()), !dbg !1464
  switch i32 %14, label %16 [
    i32 1, label %15
    i32 0, label %17
  ], !dbg !1479

15:                                               ; preds = %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1480
  br label %24, !dbg !1483

16:                                               ; preds = %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1484
  br label %24, !dbg !1487

17:                                               ; preds = %13
  %18 = load double, ptr %3, align 8, !dbg !1488, !tbaa !274
  %19 = fneg double %18, !dbg !1490
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1491
  %21 = load double, ptr %20, align 8, !dbg !1491, !tbaa !285
  %22 = load double, ptr %4, align 8, !dbg !1492, !tbaa !555
  %23 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %19, double noundef %21, double noundef %22, double noundef 0.000000e+00, ptr noundef %1) #8, !dbg !1493
  br label %24, !dbg !1494

24:                                               ; preds = %17, %16, %15
  %25 = phi i32 [ 0, %15 ], [ %14, %16 ], [ %23, %17 ], !dbg !1495
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8, !dbg !1496
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1496
  br label %47

26:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1497
  %27 = call fastcc i32 @gamma_xgthalf(double noundef %0, ptr noundef nonnull %5), !dbg !1498, !range !952
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1462, metadata !DIExpression()), !dbg !1467
  %28 = icmp eq i32 %27, 16, !dbg !1499
  br i1 %28, label %29, label %31, !dbg !1501

29:                                               ; preds = %26
  store double 0.000000e+00, ptr %1, align 8, !dbg !1502, !tbaa !274
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1502
  store double 0x10000000000000, ptr %30, align 8, !dbg !1502, !tbaa !285
  br label %43, !dbg !1505

31:                                               ; preds = %26
  %32 = load double, ptr %5, align 8, !dbg !1507, !tbaa !274
  %33 = fdiv double 1.000000e+00, %32, !dbg !1509
  store double %33, ptr %1, align 8, !dbg !1510, !tbaa !274
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1511
  %35 = load double, ptr %34, align 8, !dbg !1511, !tbaa !285
  %36 = fdiv double %35, %32, !dbg !1512
  %37 = fmul double %33, %36, !dbg !1513
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !1513
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1514
  %40 = tail call double @llvm.fabs.f64(double %33), !dbg !1515
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !1516
  %handler_result = call double @fAddHandlerDouble(double %41, double %38), !dbg !1517
  store double %handler_result, ptr %39, align 8, !dbg !1517, !tbaa !285
  %42 = fcmp olt double %40, 0x10000000000000, !dbg !1518
  br i1 %42, label %43, label %45, !dbg !1520

43:                                               ; preds = %31, %29
  %44 = phi i32 [ 1379, %29 ], [ 1385, %31 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %44, i32 noundef 15) #8, !dbg !1521
  br label %45, !dbg !1522

45:                                               ; preds = %43, %31
  %46 = phi i32 [ 0, %31 ], [ 15, %43 ], !dbg !1521
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1522
  br label %47

47:                                               ; preds = %45, %24, %10
  %48 = phi i32 [ 0, %10 ], [ %25, %24 ], [ %46, %45 ], !dbg !1523
  ret i32 %48, !dbg !1524
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lngamma_complex_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1525 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1537, metadata !DIExpression(), metadata !1546, metadata ptr %5, metadata !DIExpression()), !dbg !1547
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1538, metadata !DIExpression(), metadata !1548, metadata ptr %6, metadata !DIExpression()), !dbg !1547
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1549
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1539, metadata !DIExpression(), metadata !1549, metadata ptr %7, metadata !DIExpression()), !dbg !1547
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1550
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1540, metadata !DIExpression(), metadata !1550, metadata ptr %8, metadata !DIExpression()), !dbg !1547
  tail call void @llvm.dbg.value(metadata double %0, metadata !1529, metadata !DIExpression()), !dbg !1551
  tail call void @llvm.dbg.value(metadata double %1, metadata !1530, metadata !DIExpression()), !dbg !1551
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1531, metadata !DIExpression()), !dbg !1551
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1532, metadata !DIExpression()), !dbg !1551
  %9 = fcmp ugt double %0, 5.000000e-01, !dbg !1552
  br i1 %9, label %42, label %10, !dbg !1553

10:                                               ; preds = %4
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !1554
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1533, metadata !DIExpression()), !dbg !1547
  %11 = fneg double %1, !dbg !1554
  tail call void @llvm.dbg.value(metadata double %11, metadata !1536, metadata !DIExpression()), !dbg !1547
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1555
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1555
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1556
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1556
  call fastcc void @lngamma_lanczos_complex(double noundef %handler_result, double noundef %11, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !1557
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1541, metadata !DIExpression()), !dbg !1547
  %12 = fmul double %0, 0x400921FB54442D18, !dbg !1558
  %13 = fmul double %1, 0x400921FB54442D18, !dbg !1559
  %14 = call i32 @gsl_sf_complex_logsin_e(double noundef %12, double noundef %13, ptr noundef nonnull %7, ptr noundef nonnull %8) #8, !dbg !1560
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1542, metadata !DIExpression()), !dbg !1547
  %15 = icmp eq i32 %14, 0, !dbg !1561
  br i1 %15, label %16, label %37, !dbg !1562

16:                                               ; preds = %10
  %17 = load double, ptr %7, align 8, !dbg !1563, !tbaa !274
  %handler_result1 = call double @fSubHandlerDouble(double 0x3FF250D048E7A1BD, double %17), !dbg !1564
  %18 = load double, ptr %5, align 8, !dbg !1564, !tbaa !274
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %18), !dbg !1565
  store double %handler_result2, ptr %2, align 8, !dbg !1565, !tbaa !274
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1566
  %20 = load double, ptr %19, align 8, !dbg !1566, !tbaa !285
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1567
  %22 = load double, ptr %21, align 8, !dbg !1567, !tbaa !285
  %handler_result3 = call double @fAddHandlerDouble(double %20, double %22), !dbg !1568
  %23 = call double @llvm.fabs.f64(double %handler_result2), !dbg !1568
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !1569
  %handler_result4 = call double @fAddHandlerDouble(double %24, double %handler_result3), !dbg !1570
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1570
  store double %handler_result4, ptr %25, align 8, !dbg !1571, !tbaa !285
  %26 = load double, ptr %8, align 8, !dbg !1572, !tbaa !274
  %27 = fneg double %26, !dbg !1573
  %28 = load double, ptr %6, align 8, !dbg !1574, !tbaa !274
  %handler_result5 = call double @fSubHandlerDouble(double %27, double %28), !dbg !1575
  store double %handler_result5, ptr %3, align 8, !dbg !1575, !tbaa !274
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1576
  %30 = load double, ptr %29, align 8, !dbg !1576, !tbaa !285
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1577
  %32 = load double, ptr %31, align 8, !dbg !1577, !tbaa !285
  %handler_result6 = call double @fAddHandlerDouble(double %30, double %32), !dbg !1578
  %33 = call double @llvm.fabs.f64(double %handler_result5), !dbg !1578
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !1579
  %handler_result7 = call double @fAddHandlerDouble(double %34, double %handler_result6), !dbg !1580
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1580
  store double %handler_result7, ptr %35, align 8, !dbg !1581, !tbaa !285
  %36 = call i32 @gsl_sf_angle_restrict_symm_e(ptr noundef nonnull %3) #8, !dbg !1582
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1543, metadata !DIExpression()), !dbg !1583
  br label %40

37:                                               ; preds = %10
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1584, !tbaa !274
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1584
  store double 0x7FF8000000000000, ptr %38, align 8, !dbg !1584, !tbaa !285
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1584, !tbaa !274
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1584
  store double 0x7FF8000000000000, ptr %39, align 8, !dbg !1584, !tbaa !285
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1417, i32 noundef 1) #8, !dbg !1587
  br label %40, !dbg !1587

40:                                               ; preds = %37, %16
  %41 = phi i32 [ %36, %16 ], [ 1, %37 ], !dbg !1589
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1590
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1590
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1590
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1590
  br label %43

42:                                               ; preds = %4
  tail call fastcc void @lngamma_lanczos_complex(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1591
  br label %43, !dbg !1593

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ], !dbg !1594
  ret i32 %44, !dbg !1595
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lngamma_lanczos_complex(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1596 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1618
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1604, metadata !DIExpression(), metadata !1618, metadata ptr %5, metadata !DIExpression()), !dbg !1619
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1620
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1605, metadata !DIExpression(), metadata !1620, metadata ptr %6, metadata !DIExpression()), !dbg !1619
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1621
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1606, metadata !DIExpression(), metadata !1621, metadata ptr %7, metadata !DIExpression()), !dbg !1619
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1622
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1607, metadata !DIExpression(), metadata !1622, metadata ptr %8, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %0, metadata !1599, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %1, metadata !1600, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1601, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1602, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1623
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1623
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1624
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1624
  %handler_result = call double @fAddHandlerDouble(double %0, double -1.000000e+00)
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1599, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !1608, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1609, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1603, metadata !DIExpression()), !dbg !1619
  %9 = fmul double %1, %1
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !1608, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1609, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double 0x3FEFFFFFFFFFF950, metadata !1608, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1609, metadata !DIExpression()), !dbg !1619
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double 1.000000e+00), !dbg !1625
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1612, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %1, metadata !1616, metadata !DIExpression()), !dbg !1626
  %10 = fmul double %handler_result1, %handler_result1, !dbg !1625
  %handler_result2 = call double @fAddHandlerDouble(double %9, double %10), !dbg !1627
  %11 = fdiv double 0x40852429B6C30B05, %handler_result2, !dbg !1627
  tail call void @llvm.dbg.value(metadata double %11, metadata !1617, metadata !DIExpression()), !dbg !1626
  %12 = fmul double %handler_result1, %11, !dbg !1628
  %handler_result3 = call double @fAddHandlerDouble(double %12, double 0x3FEFFFFFFFFFF950), !dbg !1629
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1608, metadata !DIExpression()), !dbg !1619
  %13 = fmul double %11, %1, !dbg !1629
  %handler_result4 = call double @fSubHandlerDouble(double 0.000000e+00, double %13), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1609, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1608, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1609, metadata !DIExpression()), !dbg !1619
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result, double 2.000000e+00), !dbg !1625
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !1612, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %1, metadata !1616, metadata !DIExpression()), !dbg !1626
  %14 = fmul double %handler_result5, %handler_result5, !dbg !1625
  %handler_result6 = call double @fAddHandlerDouble(double %9, double %14), !dbg !1627
  %15 = fdiv double 0xC093AC8E8ED4171B, %handler_result6, !dbg !1627
  tail call void @llvm.dbg.value(metadata double %15, metadata !1617, metadata !DIExpression()), !dbg !1626
  %16 = fmul double %handler_result5, %15, !dbg !1628
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result3, double %16), !dbg !1629
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1608, metadata !DIExpression()), !dbg !1619
  %17 = fmul double %15, %1, !dbg !1629
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result4, double %17), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1609, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1608, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1609, metadata !DIExpression()), !dbg !1619
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result, double 3.000000e+00), !dbg !1625
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1612, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %1, metadata !1616, metadata !DIExpression()), !dbg !1626
  %18 = fmul double %handler_result9, %handler_result9, !dbg !1625
  %handler_result10 = call double @fAddHandlerDouble(double %9, double %18), !dbg !1627
  %19 = fdiv double 0x40881A9661D3B4D8, %handler_result10, !dbg !1627
  tail call void @llvm.dbg.value(metadata double %19, metadata !1617, metadata !DIExpression()), !dbg !1626
  %20 = fmul double %handler_result9, %19, !dbg !1628
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result7, double %20), !dbg !1629
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1608, metadata !DIExpression()), !dbg !1619
  %21 = fmul double %19, %1, !dbg !1629
  %handler_result12 = call double @fSubHandlerDouble(double %handler_result8, double %21), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !1609, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1608, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !1609, metadata !DIExpression()), !dbg !1619
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result, double 4.000000e+00), !dbg !1625
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !1612, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %1, metadata !1616, metadata !DIExpression()), !dbg !1626
  %22 = fmul double %handler_result13, %handler_result13, !dbg !1625
  %handler_result14 = call double @fAddHandlerDouble(double %9, double %22), !dbg !1627
  %23 = fdiv double 0xC06613AE51A32F5D, %handler_result14, !dbg !1627
  tail call void @llvm.dbg.value(metadata double %23, metadata !1617, metadata !DIExpression()), !dbg !1626
  %24 = fmul double %handler_result13, %23, !dbg !1628
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result11, double %24), !dbg !1629
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !1608, metadata !DIExpression()), !dbg !1619
  %25 = fmul double %23, %1, !dbg !1629
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result12, double %25), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !1609, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 5, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !1608, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !1609, metadata !DIExpression()), !dbg !1619
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e+00), !dbg !1625
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !1612, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %1, metadata !1616, metadata !DIExpression()), !dbg !1626
  %26 = fmul double %handler_result17, %handler_result17, !dbg !1625
  %handler_result18 = call double @fAddHandlerDouble(double %9, double %26), !dbg !1627
  %27 = fdiv double 0x402903C27F8B9C81, %handler_result18, !dbg !1627
  tail call void @llvm.dbg.value(metadata double %27, metadata !1617, metadata !DIExpression()), !dbg !1626
  %28 = fmul double %handler_result17, %27, !dbg !1628
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result15, double %28), !dbg !1629
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !1608, metadata !DIExpression()), !dbg !1619
  %29 = fmul double %27, %1, !dbg !1629
  %handler_result20 = call double @fSubHandlerDouble(double %handler_result16, double %29), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !1609, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 6, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !1608, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !1609, metadata !DIExpression()), !dbg !1619
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result, double 6.000000e+00), !dbg !1625
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !1612, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %1, metadata !1616, metadata !DIExpression()), !dbg !1626
  %30 = fmul double %handler_result21, %handler_result21, !dbg !1625
  %handler_result22 = call double @fAddHandlerDouble(double %9, double %30), !dbg !1627
  %31 = fdiv double 0xBFC1BCB2992B2855, %handler_result22, !dbg !1627
  tail call void @llvm.dbg.value(metadata double %31, metadata !1617, metadata !DIExpression()), !dbg !1626
  %32 = fmul double %handler_result21, %31, !dbg !1628
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result19, double %32), !dbg !1629
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !1608, metadata !DIExpression()), !dbg !1619
  %33 = fmul double %31, %1, !dbg !1629
  %handler_result24 = call double @fSubHandlerDouble(double %handler_result20, double %33), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !1609, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 7, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !1608, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !1609, metadata !DIExpression()), !dbg !1619
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result, double 7.000000e+00), !dbg !1625
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !1612, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %1, metadata !1616, metadata !DIExpression()), !dbg !1626
  %34 = fmul double %handler_result25, %handler_result25, !dbg !1625
  %handler_result26 = call double @fAddHandlerDouble(double %9, double %34), !dbg !1627
  %35 = fdiv double 0x3EE4F0514E4E324F, %handler_result26, !dbg !1627
  tail call void @llvm.dbg.value(metadata double %35, metadata !1617, metadata !DIExpression()), !dbg !1626
  %36 = fmul double %handler_result25, %35, !dbg !1628
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result23, double %36), !dbg !1629
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !1608, metadata !DIExpression()), !dbg !1619
  %37 = fmul double %35, %1, !dbg !1629
  %handler_result28 = call double @fSubHandlerDouble(double %handler_result24, double %37), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !1609, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1603, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !1608, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !1609, metadata !DIExpression()), !dbg !1619
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result, double 8.000000e+00), !dbg !1625
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !1612, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %1, metadata !1616, metadata !DIExpression()), !dbg !1626
  %38 = fmul double %handler_result29, %handler_result29, !dbg !1625
  %handler_result30 = call double @fAddHandlerDouble(double %9, double %38), !dbg !1627
  %39 = fdiv double 0x3E8435508F3FAEEF, %handler_result30, !dbg !1627
  tail call void @llvm.dbg.value(metadata double %39, metadata !1617, metadata !DIExpression()), !dbg !1626
  %40 = fmul double %handler_result29, %39, !dbg !1628
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result27, double %40), !dbg !1629
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !1608, metadata !DIExpression()), !dbg !1619
  %41 = fmul double %39, %1, !dbg !1629
  %handler_result32 = call double @fSubHandlerDouble(double %handler_result28, double %41), !dbg !1631
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !1609, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i64 9, metadata !1603, metadata !DIExpression()), !dbg !1619
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result, double 7.500000e+00), !dbg !1632
  %42 = call i32 @gsl_sf_complex_log_e(double noundef %handler_result33, double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #8, !dbg !1632
  %43 = call i32 @gsl_sf_complex_log_e(double noundef %handler_result31, double noundef %handler_result32, ptr noundef nonnull %7, ptr noundef nonnull %8) #8, !dbg !1633
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e-01), !dbg !1634
  %44 = load double, ptr %5, align 8, !dbg !1634, !tbaa !274
  %45 = fmul double %handler_result34, %44, !dbg !1635
  %46 = load double, ptr %6, align 8, !dbg !1636, !tbaa !274
  %47 = fmul double %46, %1, !dbg !1637
  %handler_result35 = call double @fSubHandlerDouble(double %45, double %47), !dbg !1638
  %handler_result36 = call double @fSubHandlerDouble(double %handler_result35, double %handler_result33), !dbg !1639
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double 0x3FED67F1C864BEB5), !dbg !1640
  %48 = load double, ptr %7, align 8, !dbg !1640, !tbaa !274
  %handler_result38 = call double @fAddHandlerDouble(double %48, double %handler_result37), !dbg !1641
  store double %handler_result38, ptr %2, align 8, !dbg !1641, !tbaa !274
  %49 = fmul double %44, %1, !dbg !1642
  %50 = fmul double %handler_result34, %46, !dbg !1643
  %handler_result39 = call double @fAddHandlerDouble(double %49, double %50), !dbg !1644
  %handler_result40 = call double @fSubHandlerDouble(double %handler_result39, double %1), !dbg !1645
  %51 = load double, ptr %8, align 8, !dbg !1645, !tbaa !274
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double %51), !dbg !1646
  store double %handler_result41, ptr %3, align 8, !dbg !1646, !tbaa !274
  %52 = load double, ptr %2, align 8, !dbg !1647, !tbaa !274
  %53 = call double @llvm.fabs.f64(double %52), !dbg !1648
  %54 = fmul double %53, 0x3CD0000000000000, !dbg !1649
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1650
  store double %54, ptr %55, align 8, !dbg !1651, !tbaa !285
  %56 = call double @llvm.fabs.f64(double %handler_result41), !dbg !1652
  %57 = fmul double %56, 0x3CD0000000000000, !dbg !1653
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1654
  store double %57, ptr %58, align 8, !dbg !1655, !tbaa !285
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !1610, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %57, metadata !1611, metadata !DIExpression()), !dbg !1619
  %59 = call i32 @gsl_sf_angle_restrict_symm_err_e(double noundef %handler_result41, ptr noundef nonnull %3) #8, !dbg !1656
  %60 = load double, ptr %58, align 8, !dbg !1657, !tbaa !285
  %handler_result42 = call double @fAddHandlerDouble(double %57, double %60), !dbg !1657
  store double %handler_result42, ptr %58, align 8, !dbg !1657, !tbaa !285
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1658
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1658
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1658
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1658
  ret void, !dbg !1659
}

declare !dbg !1660 i32 @gsl_sf_complex_logsin_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1664 i32 @gsl_sf_angle_restrict_symm_e(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_taylorcoeff_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1667 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1671, metadata !DIExpression()), !dbg !1686
  tail call void @llvm.dbg.value(metadata double %1, metadata !1672, metadata !DIExpression()), !dbg !1686
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1673, metadata !DIExpression()), !dbg !1686
  %4 = fcmp olt double %1, 0.000000e+00, !dbg !1687
  %5 = icmp slt i32 %0, 0
  %6 = or i1 %5, %4, !dbg !1688
  br i1 %6, label %7, label %9, !dbg !1688

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1689, !tbaa !274
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1689
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !1689, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1432, i32 noundef 1) #8, !dbg !1692
  br label %79, !dbg !1692

9:                                                ; preds = %3
  switch i32 %0, label %14 [
    i32 0, label %10
    i32 1, label %12
  ], !dbg !1694

10:                                               ; preds = %9
  store double 1.000000e+00, ptr %2, align 8, !dbg !1695, !tbaa !274
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1697
  store double 0.000000e+00, ptr %11, align 8, !dbg !1698, !tbaa !285
  br label %79, !dbg !1699

12:                                               ; preds = %9
  store double %1, ptr %2, align 8, !dbg !1700, !tbaa !274
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1702
  store double 0.000000e+00, ptr %13, align 8, !dbg !1703, !tbaa !285
  br label %79, !dbg !1704

14:                                               ; preds = %9
  %15 = fcmp oeq double %1, 0.000000e+00, !dbg !1705
  br i1 %15, label %16, label %17, !dbg !1706

16:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1707
  br label %79, !dbg !1709

17:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata double 0x3FFD67F1C864BEB4, metadata !1674, metadata !DIExpression()), !dbg !1710
  %18 = sitofp i32 %0 to double, !dbg !1711
  %handler_result6 = call double @callHandler(i32 12, double %1, double %1), !dbg !1712
  %handler_result = call double @fAddHandlerDouble(double %handler_result6, double 1.000000e+00), !dbg !1712
  %19 = fmul double %handler_result, %18, !dbg !1712
  %handler_result1 = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !1713
  %handler_result2 = call double @fAddHandlerDouble(double %18, double 5.000000e-01), !dbg !1714
  %handler_result3 = call double @fAddHandlerDouble(double %18, double 1.000000e+00), !dbg !1715
  %handler_result7 = call double @callHandler(i32 12, double %handler_result3, double %handler_result3), !dbg !1716
  %20 = fmul double %handler_result2, %handler_result7, !dbg !1716
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result1, double %20), !dbg !1717
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 0x3FED67F1C864BEB4), !dbg !1718
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !1680, metadata !DIExpression()), !dbg !1710
  %21 = fcmp olt double %handler_result5, 0xC0861B2BDD7ABCD2, !dbg !1718
  br i1 %21, label %22, label %24, !dbg !1719

22:                                               ; preds = %17
  store double 0.000000e+00, ptr %2, align 8, !dbg !1720, !tbaa !274
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1720
  store double 0x10000000000000, ptr %23, align 8, !dbg !1720, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1454, i32 noundef 15) #8, !dbg !1723
  br label %79, !dbg !1723

24:                                               ; preds = %17
  %25 = fcmp ogt double %handler_result5, 0x40862642FEFA39EF, !dbg !1725
  br i1 %25, label %32, label %26, !dbg !1726

26:                                               ; preds = %24
  %27 = add i32 %0, -1, !dbg !1727
  %28 = and i32 %0, 3, !dbg !1727
  %29 = icmp ult i32 %27, 3, !dbg !1727
  br i1 %29, label %56, label %30, !dbg !1727

30:                                               ; preds = %26
  %31 = and i32 %0, -4, !dbg !1727
  br label %34, !dbg !1727

32:                                               ; preds = %24
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1729, !tbaa !274
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1729
  store double 0x7FF0000000000000, ptr %33, align 8, !dbg !1729, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1457, i32 noundef 16) #8, !dbg !1732
  br label %79, !dbg !1732

34:                                               ; preds = %34, %30
  %35 = phi i32 [ 1, %30 ], [ %53, %34 ]
  %36 = phi double [ 1.000000e+00, %30 ], [ %52, %34 ]
  %37 = phi i32 [ 0, %30 ], [ %54, %34 ]
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !1685, metadata !DIExpression()), !dbg !1734
  tail call void @llvm.dbg.value(metadata double %36, metadata !1681, metadata !DIExpression()), !dbg !1734
  %38 = sitofp i32 %35 to double, !dbg !1735
  %39 = fdiv double %1, %38, !dbg !1738
  %40 = fmul double %36, %39, !dbg !1739
  tail call void @llvm.dbg.value(metadata double %40, metadata !1681, metadata !DIExpression()), !dbg !1734
  %41 = add nuw nsw i32 %35, 1, !dbg !1740
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !1685, metadata !DIExpression()), !dbg !1734
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !1685, metadata !DIExpression()), !dbg !1734
  tail call void @llvm.dbg.value(metadata double %40, metadata !1681, metadata !DIExpression()), !dbg !1734
  %42 = sitofp i32 %41 to double, !dbg !1735
  %43 = fdiv double %1, %42, !dbg !1738
  %44 = fmul double %40, %43, !dbg !1739
  tail call void @llvm.dbg.value(metadata double %44, metadata !1681, metadata !DIExpression()), !dbg !1734
  %45 = add nuw nsw i32 %35, 2, !dbg !1740
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !1685, metadata !DIExpression()), !dbg !1734
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !1685, metadata !DIExpression()), !dbg !1734
  tail call void @llvm.dbg.value(metadata double %44, metadata !1681, metadata !DIExpression()), !dbg !1734
  %46 = sitofp i32 %45 to double, !dbg !1735
  %47 = fdiv double %1, %46, !dbg !1738
  %48 = fmul double %44, %47, !dbg !1739
  tail call void @llvm.dbg.value(metadata double %48, metadata !1681, metadata !DIExpression()), !dbg !1734
  %49 = add nuw i32 %35, 3, !dbg !1740
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1685, metadata !DIExpression()), !dbg !1734
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1685, metadata !DIExpression()), !dbg !1734
  tail call void @llvm.dbg.value(metadata double %48, metadata !1681, metadata !DIExpression()), !dbg !1734
  %50 = sitofp i32 %49 to double, !dbg !1735
  %51 = fdiv double %1, %50, !dbg !1738
  %52 = fmul double %48, %51, !dbg !1739
  tail call void @llvm.dbg.value(metadata double %52, metadata !1681, metadata !DIExpression()), !dbg !1734
  %53 = add nuw i32 %35, 4, !dbg !1740
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1685, metadata !DIExpression()), !dbg !1734
  %54 = add i32 %37, 4, !dbg !1727
  %55 = icmp eq i32 %54, %31, !dbg !1727
  br i1 %55, label %56, label %34, !dbg !1727, !llvm.loop !1741

56:                                               ; preds = %34, %26
  %57 = phi double [ undef, %26 ], [ %52, %34 ]
  %58 = phi i32 [ 1, %26 ], [ %53, %34 ]
  %59 = phi double [ 1.000000e+00, %26 ], [ %52, %34 ]
  %60 = icmp eq i32 %28, 0, !dbg !1727
  br i1 %60, label %71, label %61, !dbg !1727

61:                                               ; preds = %61, %56
  %62 = phi i32 [ %68, %61 ], [ %58, %56 ]
  %63 = phi double [ %67, %61 ], [ %59, %56 ]
  %64 = phi i32 [ %69, %61 ], [ 0, %56 ]
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !1685, metadata !DIExpression()), !dbg !1734
  tail call void @llvm.dbg.value(metadata double %63, metadata !1681, metadata !DIExpression()), !dbg !1734
  %65 = sitofp i32 %62 to double, !dbg !1735
  %66 = fdiv double %1, %65, !dbg !1738
  %67 = fmul double %63, %66, !dbg !1739
  tail call void @llvm.dbg.value(metadata double %67, metadata !1681, metadata !DIExpression()), !dbg !1734
  %68 = add nuw i32 %62, 1, !dbg !1740
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !1685, metadata !DIExpression()), !dbg !1734
  %69 = add i32 %64, 1, !dbg !1727
  %70 = icmp eq i32 %69, %28, !dbg !1727
  br i1 %70, label %71, label %61, !dbg !1727, !llvm.loop !1743

71:                                               ; preds = %61, %56
  %72 = phi double [ %57, %56 ], [ %67, %61 ], !dbg !1739
  store double %72, ptr %2, align 8, !dbg !1745, !tbaa !274
  %73 = fmul double %18, 0x3CB0000000000000, !dbg !1746
  %74 = fmul double %73, %72, !dbg !1747
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1748
  store double %74, ptr %75, align 8, !dbg !1749, !tbaa !285
  %76 = tail call double @llvm.fabs.f64(double %72), !dbg !1750
  %77 = fcmp olt double %76, 0x10000000000000, !dbg !1750
  br i1 %77, label %78, label %79, !dbg !1752

78:                                               ; preds = %71
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1467, i32 noundef 15) #8, !dbg !1753
  br label %79, !dbg !1753

79:                                               ; preds = %78, %71, %32, %22, %16, %12, %10, %7
  %80 = phi i32 [ 1, %7 ], [ 0, %10 ], [ 0, %12 ], [ 0, %16 ], [ 15, %22 ], [ 16, %32 ], [ 15, %78 ], [ 0, %71 ], !dbg !1755
  ret i32 %80, !dbg !1756
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fact_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1757 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1759, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1760, metadata !DIExpression()), !dbg !1761
  %3 = icmp ult i32 %0, 18, !dbg !1762
  br i1 %3, label %4, label %9, !dbg !1764

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64, !dbg !1765
  %6 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %5, i32 1, !dbg !1767
  %7 = load double, ptr %6, align 8, !dbg !1767, !tbaa !626
  store double %7, ptr %1, align 8, !dbg !1768, !tbaa !274
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1769
  store double 0.000000e+00, ptr %8, align 8, !dbg !1770, !tbaa !285
  br label %20, !dbg !1771

9:                                                ; preds = %2
  %10 = icmp ult i32 %0, 171, !dbg !1772
  br i1 %10, label %11, label %18, !dbg !1774

11:                                               ; preds = %9
  %12 = zext nneg i32 %0 to i64, !dbg !1775
  %13 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %12, i32 1, !dbg !1777
  %14 = load double, ptr %13, align 8, !dbg !1777, !tbaa !626
  store double %14, ptr %1, align 8, !dbg !1778, !tbaa !274
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !1779
  %16 = fmul double %15, 0x3CC0000000000000, !dbg !1780
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1781
  store double %16, ptr %17, align 8, !dbg !1782, !tbaa !285
  br label %20, !dbg !1783

18:                                               ; preds = %9
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !1784, !tbaa !274
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1784
  store double 0x7FF0000000000000, ptr %19, align 8, !dbg !1784, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1489, i32 noundef 16) #8, !dbg !1787
  br label %20, !dbg !1787

20:                                               ; preds = %18, %11, %4
  %21 = phi i32 [ 0, %4 ], [ 0, %11 ], [ 16, %18 ], !dbg !1789
  ret i32 %21, !dbg !1790
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_doublefact_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1791 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1793, metadata !DIExpression()), !dbg !1795
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1794, metadata !DIExpression()), !dbg !1795
  %3 = icmp ult i32 %0, 26, !dbg !1796
  br i1 %3, label %4, label %9, !dbg !1798

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64, !dbg !1799
  %6 = getelementptr inbounds [298 x %struct.anon.0], ptr @doub_fact_table, i64 0, i64 %5, i32 1, !dbg !1801
  %7 = load double, ptr %6, align 8, !dbg !1801, !tbaa !626
  store double %7, ptr %1, align 8, !dbg !1802, !tbaa !274
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1803
  store double 0.000000e+00, ptr %8, align 8, !dbg !1804, !tbaa !285
  br label %20, !dbg !1805

9:                                                ; preds = %2
  %10 = icmp ult i32 %0, 298, !dbg !1806
  br i1 %10, label %11, label %18, !dbg !1808

11:                                               ; preds = %9
  %12 = zext nneg i32 %0 to i64, !dbg !1809
  %13 = getelementptr inbounds [298 x %struct.anon.0], ptr @doub_fact_table, i64 0, i64 %12, i32 1, !dbg !1811
  %14 = load double, ptr %13, align 8, !dbg !1811, !tbaa !626
  store double %14, ptr %1, align 8, !dbg !1812, !tbaa !274
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !1813
  %16 = fmul double %15, 0x3CC0000000000000, !dbg !1814
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1815
  store double %16, ptr %17, align 8, !dbg !1816, !tbaa !285
  br label %20, !dbg !1817

18:                                               ; preds = %9
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !1818, !tbaa !274
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1818
  store double 0x7FF0000000000000, ptr %19, align 8, !dbg !1818, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1509, i32 noundef 16) #8, !dbg !1821
  br label %20, !dbg !1821

20:                                               ; preds = %18, %11, %4
  %21 = phi i32 [ 0, %4 ], [ 0, %11 ], [ 16, %18 ], !dbg !1823
  ret i32 %21, !dbg !1824
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !611 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !610, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !617, metadata !DIExpression()), !dbg !1825
  %3 = icmp ult i32 %0, 171, !dbg !1826
  br i1 %3, label %4, label %11, !dbg !1827

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64, !dbg !1828
  %6 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %5, i32 1, !dbg !1829
  %7 = load double, ptr %6, align 8, !dbg !1829, !tbaa !626
  %handler_result1 = call double @callHandler(i32 12, double %7, double %7), !dbg !1830
  store double %handler_result1, ptr %1, align 8, !dbg !1830, !tbaa !274
  %8 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !1831
  %9 = fmul double %8, 0x3CC0000000000000, !dbg !1832
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1833
  store double %9, ptr %10, align 8, !dbg !1834, !tbaa !285
  br label %14, !dbg !1835

11:                                               ; preds = %2
  %12 = uitofp i32 %0 to double, !dbg !1836
  %handler_result = call double @fAddHandlerDouble(double %12, double 1.000000e+00), !dbg !1837
  %13 = tail call i32 @gsl_sf_lngamma_e(double noundef %handler_result, ptr noundef %1), !dbg !1837, !range !641
  br label %14, !dbg !1838

14:                                               ; preds = %11, %4
  ret i32 0, !dbg !1839
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lndoublefact_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1840 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1850
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1844, metadata !DIExpression(), metadata !1850, metadata ptr %3, metadata !DIExpression()), !dbg !1851
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1852
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1848, metadata !DIExpression(), metadata !1852, metadata ptr %4, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1842, metadata !DIExpression()), !dbg !1854
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1843, metadata !DIExpression()), !dbg !1854
  %5 = icmp ult i32 %0, 298, !dbg !1855
  br i1 %5, label %6, label %13, !dbg !1856

6:                                                ; preds = %2
  %7 = zext nneg i32 %0 to i64, !dbg !1857
  %8 = getelementptr inbounds [298 x %struct.anon.0], ptr @doub_fact_table, i64 0, i64 %7, i32 1, !dbg !1859
  %9 = load double, ptr %8, align 8, !dbg !1859, !tbaa !626
  %handler_result8 = call double @callHandler(i32 12, double %9, double %9), !dbg !1860
  store double %handler_result8, ptr %1, align 8, !dbg !1860, !tbaa !274
  %10 = tail call double @llvm.fabs.f64(double %handler_result8), !dbg !1861
  %11 = fmul double %10, 0x3CC0000000000000, !dbg !1862
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1863
  store double %11, ptr %12, align 8, !dbg !1864, !tbaa !285
  br label %38, !dbg !1865

13:                                               ; preds = %2
  %14 = and i32 %0, 1, !dbg !1866
  %15 = icmp eq i32 %14, 0, !dbg !1866
  %16 = uitofp i32 %0 to double, !dbg !1867
  br i1 %15, label %28, label %17, !dbg !1868

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1869
  %handler_result = call double @fAddHandlerDouble(double %16, double 2.000000e+00), !dbg !1870
  %18 = fmul double %handler_result, 5.000000e-01, !dbg !1870
  %19 = call i32 @gsl_sf_lngamma_e(double noundef %18, ptr noundef nonnull %3), !dbg !1871, !range !641
  %handler_result1 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !1872
  %20 = fmul double %handler_result1, 5.000000e-01, !dbg !1872
  %21 = fmul double %20, 0x3FE62E42FEFA39EF, !dbg !1873
  %handler_result2 = call double @fAddHandlerDouble(double %21, double 0xBFE250D048E7A1BD), !dbg !1874
  %22 = load double, ptr %3, align 8, !dbg !1874, !tbaa !274
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %22), !dbg !1875
  store double %handler_result3, ptr %1, align 8, !dbg !1875, !tbaa !274
  %23 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !1876
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !1877
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1878
  %26 = load double, ptr %25, align 8, !dbg !1878, !tbaa !285
  %handler_result4 = call double @fAddHandlerDouble(double %26, double %24), !dbg !1879
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1879
  store double %handler_result4, ptr %27, align 8, !dbg !1880, !tbaa !285
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1881
  br label %38

28:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1882
  %29 = fmul double %16, 5.000000e-01, !dbg !1883
  %handler_result5 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !1884
  %30 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result5, ptr noundef nonnull %4), !dbg !1884, !range !641
  %31 = fmul double %29, 0x3FE62E42FEFA39EF, !dbg !1885
  %32 = load double, ptr %4, align 8, !dbg !1886, !tbaa !274
  %handler_result6 = call double @fAddHandlerDouble(double %31, double %32), !dbg !1887
  store double %handler_result6, ptr %1, align 8, !dbg !1887, !tbaa !274
  %33 = tail call double @llvm.fabs.f64(double %handler_result6), !dbg !1888
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !1889
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1890
  %36 = load double, ptr %35, align 8, !dbg !1890, !tbaa !285
  %handler_result7 = call double @fAddHandlerDouble(double %36, double %34), !dbg !1891
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1891
  store double %handler_result7, ptr %37, align 8, !dbg !1892, !tbaa !285
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1893
  br label %38

38:                                               ; preds = %28, %17, %6
  ret i32 0, !dbg !1894
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_lnchoose_e(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1895 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1908
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1902, metadata !DIExpression(), metadata !1908, metadata ptr %4, metadata !DIExpression()), !dbg !1909
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1910
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1906, metadata !DIExpression(), metadata !1910, metadata ptr %5, metadata !DIExpression()), !dbg !1909
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1911
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1907, metadata !DIExpression(), metadata !1911, metadata ptr %6, metadata !DIExpression()), !dbg !1909
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1899, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1900, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1901, metadata !DIExpression()), !dbg !1912
  %7 = icmp ugt i32 %1, %0, !dbg !1913
  br i1 %7, label %8, label %10, !dbg !1914

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1915, !tbaa !274
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1915
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !1915, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1561, i32 noundef 1) #8, !dbg !1918
  br label %70, !dbg !1918

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, %0, !dbg !1920
  %12 = icmp eq i32 %1, 0
  %13 = or i1 %11, %12, !dbg !1921
  br i1 %13, label %14, label %15, !dbg !1921

14:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1922
  br label %70, !dbg !1924

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1925
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1926
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1927
  %16 = shl i32 %1, 1, !dbg !1928
  %17 = icmp ugt i32 %16, %0, !dbg !1930
  %18 = sub i32 %0, %1
  %19 = select i1 %17, i32 %18, i32 %1, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1900, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i32 %0, metadata !610, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %4, metadata !617, metadata !DIExpression()), !dbg !1932
  %20 = icmp ult i32 %0, 171, !dbg !1934
  br i1 %20, label %21, label %28, !dbg !1935

21:                                               ; preds = %15
  %22 = zext nneg i32 %0 to i64, !dbg !1936
  %23 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %22, i32 1, !dbg !1937
  %24 = load double, ptr %23, align 8, !dbg !1937, !tbaa !626
  %handler_result8 = call double @callHandler(i32 12, double %24, double %24), !dbg !1938
  store double %handler_result8, ptr %4, align 8, !dbg !1938, !tbaa !274, !DIAssignID !1939
  call void @llvm.dbg.assign(metadata double %handler_result8, metadata !1902, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1939, metadata ptr %4, metadata !DIExpression()), !dbg !1909
  %25 = tail call double @llvm.fabs.f64(double %handler_result8), !dbg !1940
  %26 = fmul double %25, 0x3CC0000000000000, !dbg !1941
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1942
  store double %26, ptr %27, align 8, !dbg !1943, !tbaa !285, !DIAssignID !1944
  call void @llvm.dbg.assign(metadata double %26, metadata !1902, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1944, metadata ptr %27, metadata !DIExpression()), !dbg !1909
  br label %31, !dbg !1945

28:                                               ; preds = %15
  %29 = uitofp i32 %0 to double, !dbg !1946
  %handler_result = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !1947
  %30 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result, ptr noundef nonnull %4), !dbg !1947, !range !641
  br label %31, !dbg !1948

31:                                               ; preds = %28, %21
  call void @llvm.dbg.value(metadata i32 %19, metadata !610, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata ptr %5, metadata !617, metadata !DIExpression()), !dbg !1949
  %32 = icmp ult i32 %19, 171, !dbg !1951
  br i1 %32, label %33, label %40, !dbg !1952

33:                                               ; preds = %31
  %34 = zext nneg i32 %19 to i64, !dbg !1953
  %35 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %34, i32 1, !dbg !1954
  %36 = load double, ptr %35, align 8, !dbg !1954, !tbaa !626
  %handler_result9 = call double @callHandler(i32 12, double %36, double %36), !dbg !1955
  store double %handler_result9, ptr %5, align 8, !dbg !1955, !tbaa !274, !DIAssignID !1956
  call void @llvm.dbg.assign(metadata double %handler_result9, metadata !1906, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1956, metadata ptr %5, metadata !DIExpression()), !dbg !1909
  %37 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !1957
  %38 = fmul double %37, 0x3CC0000000000000, !dbg !1958
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1959
  store double %38, ptr %39, align 8, !dbg !1960, !tbaa !285, !DIAssignID !1961
  call void @llvm.dbg.assign(metadata double %38, metadata !1906, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1961, metadata ptr %39, metadata !DIExpression()), !dbg !1909
  br label %43, !dbg !1962

40:                                               ; preds = %31
  %41 = uitofp i32 %19 to double, !dbg !1963
  %handler_result1 = call double @fAddHandlerDouble(double %41, double 1.000000e+00), !dbg !1964
  %42 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result1, ptr noundef nonnull %5), !dbg !1964, !range !641
  br label %43, !dbg !1965

43:                                               ; preds = %40, %33
  %44 = sub i32 %0, %19, !dbg !1966
  call void @llvm.dbg.value(metadata i32 %44, metadata !610, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata ptr %6, metadata !617, metadata !DIExpression()), !dbg !1967
  %45 = icmp ult i32 %44, 171, !dbg !1969
  br i1 %45, label %46, label %52, !dbg !1970

46:                                               ; preds = %43
  %47 = zext nneg i32 %44 to i64, !dbg !1971
  %48 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %47, i32 1, !dbg !1972
  %49 = load double, ptr %48, align 8, !dbg !1972, !tbaa !626
  %handler_result10 = call double @callHandler(i32 12, double %49, double %49), !dbg !1973
  call void @llvm.dbg.assign(metadata double %handler_result10, metadata !1907, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1974, metadata ptr %6, metadata !DIExpression()), !dbg !1909
  %50 = tail call double @llvm.fabs.f64(double %handler_result10), !dbg !1973
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !1975
  call void @llvm.dbg.assign(metadata double %51, metadata !1907, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1976, metadata ptr %6, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1909
  br label %58, !dbg !1977

52:                                               ; preds = %43
  %53 = uitofp i32 %44 to double, !dbg !1978
  %handler_result2 = call double @fAddHandlerDouble(double %53, double 1.000000e+00), !dbg !1979
  %54 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result2, ptr noundef nonnull %6), !dbg !1979, !range !641
  %55 = load double, ptr %6, align 8, !dbg !1980, !tbaa !274
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1
  %57 = load double, ptr %56, align 8, !dbg !1981, !tbaa !285
  br label %58, !dbg !1982

58:                                               ; preds = %52, %46
  %59 = phi double [ %51, %46 ], [ %57, %52 ], !dbg !1981
  %60 = phi double [ %handler_result10, %46 ], [ %55, %52 ], !dbg !1980
  %61 = load double, ptr %4, align 8, !dbg !1983, !tbaa !274
  %62 = load double, ptr %5, align 8, !dbg !1984, !tbaa !274
  %handler_result3 = call double @fSubHandlerDouble(double %61, double %62), !dbg !1985
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %60), !dbg !1986
  store double %handler_result4, ptr %2, align 8, !dbg !1986, !tbaa !274
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1987
  %64 = load double, ptr %63, align 8, !dbg !1987, !tbaa !285
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1988
  %66 = load double, ptr %65, align 8, !dbg !1988, !tbaa !285
  %handler_result5 = call double @fAddHandlerDouble(double %64, double %66), !dbg !1989
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %59), !dbg !1990
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1990
  %68 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !1991
  %69 = fmul double %68, 0x3CC0000000000000, !dbg !1992
  %handler_result7 = call double @fAddHandlerDouble(double %69, double %handler_result6), !dbg !1993
  store double %handler_result7, ptr %67, align 8, !dbg !1993, !tbaa !285
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1994
  br label %70

70:                                               ; preds = %58, %14, %8
  %71 = phi i32 [ 1, %8 ], [ 0, %14 ], [ 0, %58 ], !dbg !1995
  ret i32 %71, !dbg !1996
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_choose_e(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !1997 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2018
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2014, metadata !DIExpression(), metadata !2018, metadata ptr %4, metadata !DIExpression()), !dbg !2019
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1999, metadata !DIExpression()), !dbg !2020
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2000, metadata !DIExpression()), !dbg !2020
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2001, metadata !DIExpression()), !dbg !2020
  %5 = icmp ugt i32 %1, %0, !dbg !2021
  br i1 %5, label %6, label %8, !dbg !2022

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2023, !tbaa !274
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2023
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !2023, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1587, i32 noundef 1) #8, !dbg !2026
  br label %71, !dbg !2026

8:                                                ; preds = %3
  %9 = icmp eq i32 %1, %0, !dbg !2028
  %10 = icmp eq i32 %1, 0
  %11 = or i1 %9, %10, !dbg !2029
  br i1 %11, label %12, label %14, !dbg !2029

12:                                               ; preds = %8
  store double 1.000000e+00, ptr %2, align 8, !dbg !2030, !tbaa !274
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2032
  store double 0.000000e+00, ptr %13, align 8, !dbg !2033, !tbaa !285
  br label %71, !dbg !2034

14:                                               ; preds = %8
  %15 = icmp ult i32 %0, 171, !dbg !2035
  br i1 %15, label %16, label %32, !dbg !2036

16:                                               ; preds = %14
  %17 = zext nneg i32 %0 to i64, !dbg !2037
  %18 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %17, i32 1, !dbg !2039
  %19 = load double, ptr %18, align 8, !dbg !2039, !tbaa !626
  %20 = zext i32 %1 to i64, !dbg !2040
  %21 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %20, i32 1, !dbg !2041
  %22 = load double, ptr %21, align 8, !dbg !2041, !tbaa !626
  %23 = fdiv double %19, %22, !dbg !2042
  %24 = sub i32 %0, %1, !dbg !2043
  %25 = zext i32 %24 to i64, !dbg !2044
  %26 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %25, i32 1, !dbg !2045
  %27 = load double, ptr %26, align 8, !dbg !2045, !tbaa !626
  %28 = fdiv double %23, %27, !dbg !2046
  store double %28, ptr %2, align 8, !dbg !2047, !tbaa !274
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !2048
  %30 = fmul double %29, 0x3CD8000000000000, !dbg !2049
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2050
  store double %30, ptr %31, align 8, !dbg !2051, !tbaa !285
  br label %71, !dbg !2052

32:                                               ; preds = %14
  %33 = shl i32 %1, 1, !dbg !2053
  %34 = icmp ult i32 %33, %0, !dbg !2055
  %35 = sub i32 %0, %1
  %36 = select i1 %34, i32 %35, i32 %1, !dbg !2056
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !2000, metadata !DIExpression()), !dbg !2020
  %37 = sub i32 %0, %36, !dbg !2057
  %38 = icmp ult i32 %37, 64, !dbg !2058
  br i1 %38, label %39, label %63, !dbg !2059

39:                                               ; preds = %32
  %40 = add i32 %36, 1
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2002, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2009, metadata !DIExpression()), !dbg !2060
  %41 = icmp ugt i32 %40, %0, !dbg !2061
  br i1 %41, label %57, label %42, !dbg !2062

42:                                               ; preds = %53, %39
  %43 = phi double [ %54, %53 ], [ 1.000000e+00, %39 ]
  %44 = phi i32 [ %55, %53 ], [ %0, %39 ]
  tail call void @llvm.dbg.value(metadata double %43, metadata !2002, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !2009, metadata !DIExpression()), !dbg !2060
  %45 = uitofp i32 %44 to double, !dbg !2063
  %46 = sub i32 %44, %36, !dbg !2064
  %47 = uitofp i32 %46 to double, !dbg !2065
  %48 = fdiv double %45, %47, !dbg !2066
  tail call void @llvm.dbg.value(metadata double %48, metadata !2010, metadata !DIExpression()), !dbg !2067
  %49 = fdiv double 0x7FEFFFFFFFFFFFFF, %43, !dbg !2068
  %50 = fcmp ule double %48, %49, !dbg !2070
  br i1 %50, label %53, label %51, !dbg !2071

51:                                               ; preds = %42
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !2072, !tbaa !274
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2072
  store double 0x7FF0000000000000, ptr %52, align 8, !dbg !2072, !tbaa !285
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1609, i32 noundef 16) #8, !dbg !2075
  tail call void @llvm.dbg.value(metadata double undef, metadata !2002, metadata !DIExpression()), !dbg !2060
  br label %71

53:                                               ; preds = %42
  %54 = fmul double %43, %48, !dbg !2077
  tail call void @llvm.dbg.value(metadata double %54, metadata !2002, metadata !DIExpression()), !dbg !2060
  %55 = add i32 %44, -1, !dbg !2078
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !2009, metadata !DIExpression()), !dbg !2060
  %56 = icmp ult i32 %55, %40, !dbg !2061
  br i1 %56, label %57, label %42, !dbg !2062, !llvm.loop !2079

57:                                               ; preds = %53, %39
  %58 = phi double [ 1.000000e+00, %39 ], [ %54, %53 ], !dbg !2081
  store double %58, ptr %2, align 8, !dbg !2082, !tbaa !274
  %59 = fmul double %58, 0x3CC0000000000000, !dbg !2083
  %60 = uitofp i32 %37 to double, !dbg !2084
  %61 = fmul double %59, %60, !dbg !2085
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2086
  store double %61, ptr %62, align 8, !dbg !2087, !tbaa !285
  br label %71, !dbg !2088

63:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !2089
  %64 = call i32 @gsl_sf_lnchoose_e(i32 noundef %0, i32 noundef %36, ptr noundef nonnull %4), !dbg !2090, !range !443
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !2016, metadata !DIExpression()), !dbg !2019
  %65 = load double, ptr %4, align 8, !dbg !2091, !tbaa !274
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2092
  %67 = load double, ptr %66, align 8, !dbg !2092, !tbaa !285
  %68 = tail call i32 @gsl_sf_exp_err_e(double noundef %65, double noundef %67, ptr noundef %2) #8, !dbg !2093
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !2017, metadata !DIExpression()), !dbg !2019
  %69 = icmp eq i32 %64, 0, !dbg !2094
  %70 = select i1 %69, i32 %68, i32 1, !dbg !2094
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !2095
  br label %71

71:                                               ; preds = %63, %57, %51, %16, %12, %6
  %72 = phi i32 [ 1, %6 ], [ 0, %12 ], [ 0, %16 ], [ %70, %63 ], [ 16, %51 ], [ 0, %57 ], !dbg !2096
  ret i32 %72, !dbg !2097
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fact(i32 noundef %0) local_unnamed_addr #0 !dbg !2098 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2102, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 %0, metadata !1759, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata ptr undef, metadata !1760, metadata !DIExpression()), !dbg !2106
  %2 = icmp ult i32 %0, 18, !dbg !2108
  br i1 %2, label %3, label %7, !dbg !2109

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64, !dbg !2110
  %5 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %4, i32 1, !dbg !2111
  %6 = load double, ptr %5, align 8, !dbg !2111, !tbaa !626
  tail call void @llvm.dbg.value(metadata double %6, metadata !2103, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2105
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2103, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2105
  br label %14, !dbg !2112

7:                                                ; preds = %1
  %8 = icmp ult i32 %0, 171, !dbg !2113
  br i1 %8, label %9, label %13, !dbg !2114

9:                                                ; preds = %7
  %10 = zext nneg i32 %0 to i64, !dbg !2115
  %11 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %10, i32 1, !dbg !2116
  %12 = load double, ptr %11, align 8, !dbg !2116, !tbaa !626
  tail call void @llvm.dbg.value(metadata double %12, metadata !2103, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2105
  tail call void @llvm.dbg.value(metadata double poison, metadata !2103, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2105
  br label %14, !dbg !2117

13:                                               ; preds = %7
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2103, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2105
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2103, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2105
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1489, i32 noundef 16) #8, !dbg !2118
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2103, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2105
  tail call void @llvm.dbg.value(metadata i32 16, metadata !2104, metadata !DIExpression()), !dbg !2105
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1634, i32 noundef 16) #8, !dbg !2119
  br label %14, !dbg !2119

14:                                               ; preds = %13, %9, %3
  %15 = phi double [ 0x7FF0000000000000, %13 ], [ %12, %9 ], [ %6, %3 ]
  ret double %15, !dbg !2123
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lnfact(i32 noundef %0) local_unnamed_addr #0 !dbg !2124 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2129
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2127, metadata !DIExpression(), metadata !2129, metadata ptr %2, metadata !DIExpression()), !dbg !2130
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2126, metadata !DIExpression()), !dbg !2130
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %0, metadata !610, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %2, metadata !617, metadata !DIExpression()), !dbg !2132
  %3 = icmp ult i32 %0, 171, !dbg !2134
  br i1 %3, label %4, label %8, !dbg !2135

4:                                                ; preds = %1
  %5 = zext nneg i32 %0 to i64, !dbg !2136
  %6 = getelementptr inbounds [171 x %struct.anon], ptr @fact_table, i64 0, i64 %5, i32 1, !dbg !2137
  %7 = load double, ptr %6, align 8, !dbg !2137, !tbaa !626
  %handler_result1 = call double @callHandler(i32 12, double %7, double %7), !dbg !2138
  call void @llvm.dbg.assign(metadata double %handler_result1, metadata !2127, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2139, metadata ptr %2, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.assign(metadata double poison, metadata !2127, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2140, metadata ptr %2, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !2130
  br label %12, !dbg !2138

8:                                                ; preds = %1
  %9 = uitofp i32 %0 to double, !dbg !2141
  %handler_result = call double @fAddHandlerDouble(double %9, double 1.000000e+00), !dbg !2142
  %10 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result, ptr noundef nonnull %2), !dbg !2142, !range !641
  %11 = load double, ptr %2, align 8, !dbg !2131, !tbaa !274
  br label %12, !dbg !2143

12:                                               ; preds = %8, %4
  %13 = phi double [ %handler_result1, %4 ], [ %11, %8 ], !dbg !2131
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2144
  ret double %13, !dbg !2144
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_doublefact(i32 noundef %0) local_unnamed_addr #0 !dbg !2145 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2147, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 %0, metadata !1793, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata ptr undef, metadata !1794, metadata !DIExpression()), !dbg !2151
  %2 = icmp ult i32 %0, 26, !dbg !2153
  br i1 %2, label %3, label %7, !dbg !2154

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64, !dbg !2155
  %5 = getelementptr inbounds [298 x %struct.anon.0], ptr @doub_fact_table, i64 0, i64 %4, i32 1, !dbg !2156
  %6 = load double, ptr %5, align 8, !dbg !2156, !tbaa !626
  tail call void @llvm.dbg.value(metadata double %6, metadata !2148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2150
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2148, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2150
  br label %14, !dbg !2157

7:                                                ; preds = %1
  %8 = icmp ult i32 %0, 298, !dbg !2158
  br i1 %8, label %9, label %13, !dbg !2159

9:                                                ; preds = %7
  %10 = zext nneg i32 %0 to i64, !dbg !2160
  %11 = getelementptr inbounds [298 x %struct.anon.0], ptr @doub_fact_table, i64 0, i64 %10, i32 1, !dbg !2161
  %12 = load double, ptr %11, align 8, !dbg !2161, !tbaa !626
  tail call void @llvm.dbg.value(metadata double %12, metadata !2148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2150
  tail call void @llvm.dbg.value(metadata double poison, metadata !2148, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2150
  br label %14, !dbg !2162

13:                                               ; preds = %7
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2150
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2148, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2150
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1509, i32 noundef 16) #8, !dbg !2163
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !2148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 16, metadata !2149, metadata !DIExpression()), !dbg !2150
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1644, i32 noundef 16) #8, !dbg !2164
  br label %14, !dbg !2164

14:                                               ; preds = %13, %9, %3
  %15 = phi double [ 0x7FF0000000000000, %13 ], [ %12, %9 ], [ %6, %3 ]
  ret double %15, !dbg !2168
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lndoublefact(i32 noundef %0) local_unnamed_addr #0 !dbg !2169 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2174
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2172, metadata !DIExpression(), metadata !2174, metadata ptr %2, metadata !DIExpression()), !dbg !2175
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2171, metadata !DIExpression()), !dbg !2175
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2176
  %3 = call i32 @gsl_sf_lndoublefact_e(i32 noundef %0, ptr noundef nonnull %2), !dbg !2176
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2173, metadata !DIExpression()), !dbg !2175
  %4 = load double, ptr %2, align 8, !dbg !2176, !tbaa !274
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2177
  ret double %4, !dbg !2177
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lngamma(double noundef %0) local_unnamed_addr #0 !dbg !2178 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2185
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2183, metadata !DIExpression(), metadata !2185, metadata ptr %2, metadata !DIExpression()), !dbg !2186
  tail call void @llvm.dbg.value(metadata double %0, metadata !2182, metadata !DIExpression()), !dbg !2186
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2187
  %3 = call i32 @gsl_sf_lngamma_e(double noundef %0, ptr noundef nonnull %2), !dbg !2187, !range !641
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2184, metadata !DIExpression()), !dbg !2186
  %4 = icmp eq i32 %3, 0, !dbg !2188
  br i1 %4, label %6, label %5, !dbg !2187

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1654, i32 noundef %3) #8, !dbg !2190
  br label %6, !dbg !2190

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !2187, !tbaa !274
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2193
  ret double %7, !dbg !2193
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gamma(double noundef %0) local_unnamed_addr #0 !dbg !2194 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2199
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2197, metadata !DIExpression(), metadata !2199, metadata ptr %2, metadata !DIExpression()), !dbg !2200
  tail call void @llvm.dbg.value(metadata double %0, metadata !2196, metadata !DIExpression()), !dbg !2200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2201
  %3 = call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef nonnull %2), !dbg !2201
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2198, metadata !DIExpression()), !dbg !2200
  %4 = icmp eq i32 %3, 0, !dbg !2202
  br i1 %4, label %6, label %5, !dbg !2201

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1659, i32 noundef %3) #8, !dbg !2204
  br label %6, !dbg !2204

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !2201, !tbaa !274
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2207
  ret double %7, !dbg !2207
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gammastar(double noundef %0) local_unnamed_addr #0 !dbg !2208 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2213
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2211, metadata !DIExpression(), metadata !2213, metadata ptr %2, metadata !DIExpression()), !dbg !2214
  tail call void @llvm.dbg.value(metadata double %0, metadata !2210, metadata !DIExpression()), !dbg !2214
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2215
  %3 = call i32 @gsl_sf_gammastar_e(double noundef %0, ptr noundef nonnull %2), !dbg !2215
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2212, metadata !DIExpression()), !dbg !2214
  %4 = icmp eq i32 %3, 0, !dbg !2216
  br i1 %4, label %6, label %5, !dbg !2215

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1664, i32 noundef %3) #8, !dbg !2218
  br label %6, !dbg !2218

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !2215, !tbaa !274
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2221
  ret double %7, !dbg !2221
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gammainv(double noundef %0) local_unnamed_addr #0 !dbg !2222 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2227
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2225, metadata !DIExpression(), metadata !2227, metadata ptr %2, metadata !DIExpression()), !dbg !2228
  tail call void @llvm.dbg.value(metadata double %0, metadata !2224, metadata !DIExpression()), !dbg !2228
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2229
  %3 = call i32 @gsl_sf_gammainv_e(double noundef %0, ptr noundef nonnull %2), !dbg !2229
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2226, metadata !DIExpression()), !dbg !2228
  %4 = icmp eq i32 %3, 0, !dbg !2230
  br i1 %4, label %6, label %5, !dbg !2229

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1669, i32 noundef %3) #8, !dbg !2232
  br label %6, !dbg !2232

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !2229, !tbaa !274
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2235
  ret double %7, !dbg !2235
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_taylorcoeff(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2236 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2244
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2242, metadata !DIExpression(), metadata !2244, metadata ptr %3, metadata !DIExpression()), !dbg !2245
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2240, metadata !DIExpression()), !dbg !2245
  tail call void @llvm.dbg.value(metadata double %1, metadata !2241, metadata !DIExpression()), !dbg !2245
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2246
  %4 = call i32 @gsl_sf_taylorcoeff_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2246, !range !952
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2243, metadata !DIExpression()), !dbg !2245
  %5 = icmp eq i32 %4, 0, !dbg !2247
  br i1 %5, label %7, label %6, !dbg !2246

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1674, i32 noundef %4) #8, !dbg !2249
  br label %7, !dbg !2249

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !2246, !tbaa !274
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2252
  ret double %8, !dbg !2252
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_choose(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2253 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2261
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2259, metadata !DIExpression(), metadata !2261, metadata ptr %3, metadata !DIExpression()), !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2257, metadata !DIExpression()), !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2258, metadata !DIExpression()), !dbg !2262
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2263
  %4 = call i32 @gsl_sf_choose_e(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !2263
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2260, metadata !DIExpression()), !dbg !2262
  %5 = icmp eq i32 %4, 0, !dbg !2264
  br i1 %5, label %7, label %6, !dbg !2263

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1679, i32 noundef %4) #8, !dbg !2266
  br label %7, !dbg !2266

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !2263, !tbaa !274
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2269
  ret double %8, !dbg !2269
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lnchoose(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2270 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2276
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2274, metadata !DIExpression(), metadata !2276, metadata ptr %3, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2272, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2273, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2278
  %4 = call i32 @gsl_sf_lnchoose_e(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !2278, !range !443
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2275, metadata !DIExpression()), !dbg !2277
  %5 = icmp eq i32 %4, 0, !dbg !2279
  br i1 %5, label %7, label %6, !dbg !2278

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1684, i32 noundef 1) #8, !dbg !2281
  br label %7, !dbg !2281

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !2278, !tbaa !274
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2284
  ret double %8, !dbg !2284
}

declare !dbg !2285 i32 @gsl_sf_psi_int_e(i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2289 i32 @gsl_sf_psi_1_int_e(i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2290 i32 @gsl_sf_psi_n_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2291 double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2292 double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2293 double @sqrt(double noundef) local_unnamed_addr #5

declare !dbg !2294 i32 @gsl_sf_complex_log_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2296 i32 @gsl_sf_angle_restrict_symm_err_e(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!231 = !DILocation(line: 1118, column: 6, scope: !202)
!232 = !DILocation(line: 1118, column: 20, scope: !202)
!233 = !DILocation(line: 1118, column: 6, scope: !187)
!234 = !DILocalVariable(name: "eps", arg: 1, scope: !235, file: !2, line: 897, type: !238)
!235 = distinct !DISubprogram(name: "lngamma_1_pade", scope: !2, file: !2, line: 897, type: !236, scopeLine: 898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !239)
!236 = !DISubroutineType(types: !237)
!237 = !{!38, !238, !190}
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!239 = !{!234, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!240 = !DILocalVariable(name: "result", arg: 2, scope: !235, file: !2, line: 897, type: !190)
!241 = !DILocalVariable(name: "n1", scope: !235, file: !2, line: 902, type: !238)
!242 = !DILocalVariable(name: "n2", scope: !235, file: !2, line: 903, type: !238)
!243 = !DILocalVariable(name: "d1", scope: !235, file: !2, line: 904, type: !238)
!244 = !DILocalVariable(name: "d2", scope: !235, file: !2, line: 905, type: !238)
!245 = !DILocalVariable(name: "num", scope: !235, file: !2, line: 906, type: !238)
!246 = !DILocalVariable(name: "den", scope: !235, file: !2, line: 907, type: !238)
!247 = !DILocalVariable(name: "pade", scope: !235, file: !2, line: 908, type: !238)
!248 = !DILocalVariable(name: "c0", scope: !235, file: !2, line: 909, type: !238)
!249 = !DILocalVariable(name: "c1", scope: !235, file: !2, line: 910, type: !238)
!250 = !DILocalVariable(name: "c2", scope: !235, file: !2, line: 911, type: !238)
!251 = !DILocalVariable(name: "c3", scope: !235, file: !2, line: 912, type: !238)
!252 = !DILocalVariable(name: "c4", scope: !235, file: !2, line: 913, type: !238)
!253 = !DILocalVariable(name: "eps5", scope: !235, file: !2, line: 914, type: !238)
!254 = !DILocalVariable(name: "corr", scope: !235, file: !2, line: 915, type: !238)
!255 = !DILocation(line: 0, scope: !235, inlinedAt: !256)
!256 = distinct !DILocation(line: 1125, column: 16, scope: !201)
!257 = !DILocation(line: 906, column: 40, scope: !235, inlinedAt: !256)
!258 = !DILocation(line: 906, column: 33, scope: !235, inlinedAt: !256)
!259 = !DILocation(line: 907, column: 40, scope: !235, inlinedAt: !256)
!260 = !DILocation(line: 907, column: 33, scope: !235, inlinedAt: !256)
!261 = !DILocation(line: 908, column: 54, scope: !235, inlinedAt: !256)
!262 = !DILocation(line: 908, column: 60, scope: !235, inlinedAt: !256)
!263 = !DILocation(line: 914, column: 26, scope: !235, inlinedAt: !256)
!264 = !DILocation(line: 914, column: 30, scope: !235, inlinedAt: !256)
!265 = !DILocation(line: 914, column: 34, scope: !235, inlinedAt: !256)
!266 = !DILocation(line: 914, column: 38, scope: !235, inlinedAt: !256)
!267 = !DILocation(line: 915, column: 68, scope: !235, inlinedAt: !256)
!268 = !DILocation(line: 915, column: 59, scope: !235, inlinedAt: !256)
!269 = !DILocation(line: 915, column: 49, scope: !235, inlinedAt: !256)
!270 = !DILocation(line: 915, column: 39, scope: !235, inlinedAt: !256)
!271 = !DILocation(line: 915, column: 28, scope: !235, inlinedAt: !256)
!272 = !DILocation(line: 916, column: 21, scope: !235, inlinedAt: !256)
!273 = !DILocation(line: 916, column: 15, scope: !235, inlinedAt: !256)
!274 = !{!275, !276, i64 0}
!275 = !{!"gsl_sf_result_struct", !276, i64 0, !276, i64 8}
!276 = !{!"double", !277, i64 0}
!277 = !{!"omnipotent char", !278, i64 0}
!278 = !{!"Simple C/C++ TBAA"}
!279 = !DILocation(line: 917, column: 41, scope: !235, inlinedAt: !256)
!280 = !DILocation(line: 917, column: 39, scope: !235, inlinedAt: !256)
!281 = !DILocation(line: 917, column: 11, scope: !235, inlinedAt: !256)
!282 = !DILocation(line: 0, scope: !201)
!283 = !DILocation(line: 1126, column: 23, scope: !201)
!284 = !DILocation(line: 1126, column: 17, scope: !201)
!285 = !{!275, !276, i64 8}
!286 = !DILocation(line: 1129, column: 11, scope: !205)
!287 = !DILocation(line: 1129, column: 25, scope: !205)
!288 = !DILocation(line: 1129, column: 11, scope: !202)
!289 = !DILocalVariable(name: "eps", arg: 1, scope: !290, file: !2, line: 924, type: !238)
!290 = distinct !DISubprogram(name: "lngamma_2_pade", scope: !2, file: !2, line: 924, type: !236, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !291)
!291 = !{!289, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!292 = !DILocalVariable(name: "result", arg: 2, scope: !290, file: !2, line: 924, type: !190)
!293 = !DILocalVariable(name: "n1", scope: !290, file: !2, line: 929, type: !238)
!294 = !DILocalVariable(name: "n2", scope: !290, file: !2, line: 930, type: !238)
!295 = !DILocalVariable(name: "d1", scope: !290, file: !2, line: 931, type: !238)
!296 = !DILocalVariable(name: "d2", scope: !290, file: !2, line: 932, type: !238)
!297 = !DILocalVariable(name: "num", scope: !290, file: !2, line: 933, type: !238)
!298 = !DILocalVariable(name: "den", scope: !290, file: !2, line: 934, type: !238)
!299 = !DILocalVariable(name: "pade", scope: !290, file: !2, line: 935, type: !238)
!300 = !DILocalVariable(name: "c0", scope: !290, file: !2, line: 936, type: !238)
!301 = !DILocalVariable(name: "c1", scope: !290, file: !2, line: 937, type: !238)
!302 = !DILocalVariable(name: "c2", scope: !290, file: !2, line: 938, type: !238)
!303 = !DILocalVariable(name: "c3", scope: !290, file: !2, line: 939, type: !238)
!304 = !DILocalVariable(name: "c4", scope: !290, file: !2, line: 940, type: !238)
!305 = !DILocalVariable(name: "eps5", scope: !290, file: !2, line: 941, type: !238)
!306 = !DILocalVariable(name: "corr", scope: !290, file: !2, line: 942, type: !238)
!307 = !DILocation(line: 0, scope: !290, inlinedAt: !308)
!308 = distinct !DILocation(line: 1130, column: 16, scope: !204)
!309 = !DILocation(line: 933, column: 40, scope: !290, inlinedAt: !308)
!310 = !DILocation(line: 933, column: 33, scope: !290, inlinedAt: !308)
!311 = !DILocation(line: 934, column: 40, scope: !290, inlinedAt: !308)
!312 = !DILocation(line: 934, column: 33, scope: !290, inlinedAt: !308)
!313 = !DILocation(line: 935, column: 52, scope: !290, inlinedAt: !308)
!314 = !DILocation(line: 935, column: 57, scope: !290, inlinedAt: !308)
!315 = !DILocation(line: 941, column: 26, scope: !290, inlinedAt: !308)
!316 = !DILocation(line: 941, column: 30, scope: !290, inlinedAt: !308)
!317 = !DILocation(line: 941, column: 34, scope: !290, inlinedAt: !308)
!318 = !DILocation(line: 941, column: 38, scope: !290, inlinedAt: !308)
!319 = !DILocation(line: 942, column: 68, scope: !290, inlinedAt: !308)
!320 = !DILocation(line: 942, column: 59, scope: !290, inlinedAt: !308)
!321 = !DILocation(line: 942, column: 49, scope: !290, inlinedAt: !308)
!322 = !DILocation(line: 942, column: 39, scope: !290, inlinedAt: !308)
!323 = !DILocation(line: 942, column: 28, scope: !290, inlinedAt: !308)
!324 = !DILocation(line: 943, column: 21, scope: !290, inlinedAt: !308)
!325 = !DILocation(line: 943, column: 15, scope: !290, inlinedAt: !308)
!326 = !DILocation(line: 944, column: 41, scope: !290, inlinedAt: !308)
!327 = !DILocation(line: 944, column: 39, scope: !290, inlinedAt: !308)
!328 = !DILocation(line: 944, column: 11, scope: !290, inlinedAt: !308)
!329 = !DILocation(line: 0, scope: !204)
!330 = !DILocation(line: 1131, column: 23, scope: !204)
!331 = !DILocation(line: 1131, column: 17, scope: !204)
!332 = !DILocation(line: 1134, column: 13, scope: !210)
!333 = !DILocation(line: 1134, column: 11, scope: !205)
!334 = !DILocalVariable(name: "x", arg: 1, scope: !335, file: !2, line: 703, type: !76)
!335 = distinct !DISubprogram(name: "lngamma_lanczos", scope: !2, file: !2, line: 703, type: !336, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !337)
!336 = !DISubroutineType(cc: DW_CC_nocall, types: !189)
!337 = !{!334, !338, !339, !340, !341, !342}
!338 = !DILocalVariable(name: "result", arg: 2, scope: !335, file: !2, line: 703, type: !190)
!339 = !DILocalVariable(name: "k", scope: !335, file: !2, line: 705, type: !38)
!340 = !DILocalVariable(name: "Ag", scope: !335, file: !2, line: 706, type: !76)
!341 = !DILocalVariable(name: "term1", scope: !335, file: !2, line: 707, type: !76)
!342 = !DILocalVariable(name: "term2", scope: !335, file: !2, line: 707, type: !76)
!343 = !DILocation(line: 0, scope: !335, inlinedAt: !344)
!344 = distinct !DILocation(line: 1135, column: 12, scope: !345)
!345 = distinct !DILexicalBlock(scope: !210, file: !2, line: 1134, column: 21)
!346 = !DILocation(line: 712, column: 45, scope: !347, inlinedAt: !344)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 712, column: 23)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 712, column: 3)
!349 = distinct !DILexicalBlock(scope: !335, file: !2, line: 712, column: 3)
!350 = !DILocation(line: 712, column: 48, scope: !347, inlinedAt: !344)
!351 = !DILocation(line: 715, column: 13, scope: !335, inlinedAt: !344)
!352 = !DILocation(line: 715, column: 25, scope: !335, inlinedAt: !344)
!353 = !DILocation(line: 715, column: 30, scope: !335, inlinedAt: !344)
!354 = !DILocation(line: 715, column: 18, scope: !335, inlinedAt: !344)
!355 = !DILocation(line: 717, column: 33, scope: !335, inlinedAt: !344)
!356 = !DILocation(line: 717, column: 24, scope: !335, inlinedAt: !344)
!357 = !DILocation(line: 717, column: 16, scope: !335, inlinedAt: !344)
!358 = !DILocation(line: 718, column: 43, scope: !335, inlinedAt: !344)
!359 = !DILocation(line: 718, column: 57, scope: !335, inlinedAt: !344)
!360 = !DILocation(line: 718, column: 69, scope: !335, inlinedAt: !344)
!361 = !DILocation(line: 718, column: 40, scope: !335, inlinedAt: !344)
!362 = !DILocation(line: 718, column: 11, scope: !335, inlinedAt: !344)
!363 = !DILocation(line: 719, column: 36, scope: !335, inlinedAt: !344)
!364 = !DILocation(line: 719, column: 34, scope: !335, inlinedAt: !344)
!365 = !DILocation(line: 719, column: 15, scope: !335, inlinedAt: !344)
!366 = !DILocation(line: 1135, column: 5, scope: !345)
!367 = !DILocation(line: 1137, column: 13, scope: !209)
!368 = !DILocation(line: 1137, column: 11, scope: !210)
!369 = !DILocation(line: 1138, column: 5, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !2, line: 1138, column: 5)
!371 = distinct !DILexicalBlock(scope: !209, file: !2, line: 1137, column: 21)
!372 = !DILocation(line: 1138, column: 5, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !2, line: 1138, column: 5)
!374 = !DILocation(line: 1140, column: 11, scope: !208)
!375 = !DILocation(line: 1140, column: 19, scope: !208)
!376 = !DILocation(line: 1140, column: 11, scope: !209)
!377 = !DILocalVariable(name: "eps", arg: 1, scope: !378, file: !2, line: 729, type: !76)
!378 = distinct !DISubprogram(name: "lngamma_sgn_0", scope: !2, file: !2, line: 729, type: !379, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!38, !76, !190, !141}
!381 = !{!377, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!382 = !DILocalVariable(name: "lng", arg: 2, scope: !378, file: !2, line: 729, type: !190)
!383 = !DILocalVariable(name: "sgn", arg: 3, scope: !378, file: !2, line: 729, type: !141)
!384 = !DILocalVariable(name: "c1", scope: !378, file: !2, line: 732, type: !238)
!385 = !DILocalVariable(name: "c2", scope: !378, file: !2, line: 733, type: !238)
!386 = !DILocalVariable(name: "c3", scope: !378, file: !2, line: 734, type: !238)
!387 = !DILocalVariable(name: "c4", scope: !378, file: !2, line: 735, type: !238)
!388 = !DILocalVariable(name: "c5", scope: !378, file: !2, line: 736, type: !238)
!389 = !DILocalVariable(name: "c6", scope: !378, file: !2, line: 737, type: !238)
!390 = !DILocalVariable(name: "c7", scope: !378, file: !2, line: 738, type: !238)
!391 = !DILocalVariable(name: "c8", scope: !378, file: !2, line: 739, type: !238)
!392 = !DILocalVariable(name: "c9", scope: !378, file: !2, line: 740, type: !238)
!393 = !DILocalVariable(name: "c10", scope: !378, file: !2, line: 741, type: !238)
!394 = !DILocalVariable(name: "g6", scope: !378, file: !2, line: 742, type: !238)
!395 = !DILocalVariable(name: "g", scope: !378, file: !2, line: 743, type: !238)
!396 = !DILocalVariable(name: "gee", scope: !378, file: !2, line: 746, type: !238)
!397 = !DILocation(line: 0, scope: !378, inlinedAt: !398)
!398 = distinct !DILocation(line: 1142, column: 12, scope: !207)
!399 = !DILocation(line: 742, column: 56, scope: !378, inlinedAt: !398)
!400 = !DILocation(line: 742, column: 46, scope: !378, inlinedAt: !398)
!401 = !DILocation(line: 742, column: 36, scope: !378, inlinedAt: !398)
!402 = !DILocation(line: 742, column: 28, scope: !378, inlinedAt: !398)
!403 = !DILocation(line: 743, column: 65, scope: !378, inlinedAt: !398)
!404 = !DILocation(line: 743, column: 57, scope: !378, inlinedAt: !398)
!405 = !DILocation(line: 743, column: 49, scope: !378, inlinedAt: !398)
!406 = !DILocation(line: 743, column: 41, scope: !378, inlinedAt: !398)
!407 = !DILocation(line: 743, column: 33, scope: !378, inlinedAt: !398)
!408 = !DILocation(line: 743, column: 25, scope: !378, inlinedAt: !398)
!409 = !DILocation(line: 746, column: 29, scope: !378, inlinedAt: !398)
!410 = !DILocation(line: 746, column: 45, scope: !378, inlinedAt: !398)
!411 = !DILocation(line: 748, column: 21, scope: !378, inlinedAt: !398)
!412 = !DILocation(line: 748, column: 12, scope: !378, inlinedAt: !398)
!413 = !DILocation(line: 749, column: 38, scope: !378, inlinedAt: !398)
!414 = !DILocation(line: 749, column: 36, scope: !378, inlinedAt: !398)
!415 = !DILocation(line: 749, column: 8, scope: !378, inlinedAt: !398)
!416 = !DILocation(line: 749, column: 12, scope: !378, inlinedAt: !398)
!417 = !DILocation(line: 0, scope: !207)
!418 = !DILocation(line: 1144, column: 13, scope: !213)
!419 = !DILocation(line: 1144, column: 11, scope: !208)
!420 = !DILocation(line: 1149, column: 25, scope: !212)
!421 = !DILocation(line: 0, scope: !212)
!422 = !DILocation(line: 1150, column: 17, scope: !212)
!423 = !DILocation(line: 1151, column: 10, scope: !221)
!424 = !DILocation(line: 1151, column: 8, scope: !212)
!425 = !DILocation(line: 1152, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !2, line: 1152, column: 7)
!427 = distinct !DILexicalBlock(scope: !221, file: !2, line: 1151, column: 18)
!428 = !DILocation(line: 1152, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !2, line: 1152, column: 7)
!430 = !DILocation(line: 1154, column: 16, scope: !220)
!431 = !DILocation(line: 1154, column: 13, scope: !221)
!432 = !DILocation(line: 1156, column: 12, scope: !218)
!433 = !DILocation(line: 1156, column: 10, scope: !219)
!434 = !DILocation(line: 1158, column: 21, scope: !435)
!435 = distinct !DILexicalBlock(scope: !218, file: !2, line: 1156, column: 29)
!436 = !DILocation(line: 1159, column: 9, scope: !437)
!437 = distinct !DILexicalBlock(scope: !435, file: !2, line: 1159, column: 9)
!438 = !DILocation(line: 1162, column: 18, scope: !217)
!439 = !DILocation(line: 1162, column: 17, scope: !217)
!440 = !DILocation(line: 1163, column: 26, scope: !217)
!441 = !DILocation(line: 1164, column: 9, scope: !217)
!442 = !DILocation(line: 1165, column: 16, scope: !217)
!443 = !{i32 0, i32 2}
!444 = !DILocation(line: 1166, column: 7, scope: !218)
!445 = !DILocation(line: 1169, column: 7, scope: !225)
!446 = !DILocation(line: 1170, column: 7, scope: !225)
!447 = !DILocation(line: 1171, column: 46, scope: !225)
!448 = !DILocation(line: 1171, column: 28, scope: !225)
!449 = !DILocation(line: 1171, column: 19, scope: !225)
!450 = !DILocation(line: 1172, column: 45, scope: !225)
!451 = !DILocation(line: 1172, column: 43, scope: !225)
!452 = !DILocation(line: 1172, column: 70, scope: !225)
!453 = !DILocation(line: 1172, column: 15, scope: !225)
!454 = !DILocation(line: 1172, column: 19, scope: !225)
!455 = !DILocation(line: 1174, column: 5, scope: !220)
!456 = !DILocation(line: 1179, column: 17, scope: !457)
!457 = distinct !DILexicalBlock(scope: !213, file: !2, line: 1176, column: 8)
!458 = !DILocation(line: 1180, column: 5, scope: !459)
!459 = distinct !DILexicalBlock(scope: !457, file: !2, line: 1180, column: 5)
!460 = !DILocation(line: 0, scope: !202)
!461 = !DILocation(line: 1182, column: 1, scope: !187)
!462 = !DILocation(line: 0, scope: !335)
!463 = !DILocation(line: 712, column: 48, scope: !347)
!464 = !DILocation(line: 712, column: 45, scope: !347)
!465 = !DILocation(line: 715, column: 13, scope: !335)
!466 = !DILocation(line: 715, column: 25, scope: !335)
!467 = !DILocation(line: 715, column: 30, scope: !335)
!468 = !DILocation(line: 715, column: 18, scope: !335)
!469 = !DILocation(line: 717, column: 33, scope: !335)
!470 = !DILocation(line: 717, column: 24, scope: !335)
!471 = !DILocation(line: 717, column: 16, scope: !335)
!472 = !DILocation(line: 718, column: 43, scope: !335)
!473 = !DILocation(line: 718, column: 57, scope: !335)
!474 = !DILocation(line: 718, column: 69, scope: !335)
!475 = !DILocation(line: 718, column: 40, scope: !335)
!476 = !DILocation(line: 718, column: 11, scope: !335)
!477 = !DILocation(line: 719, column: 36, scope: !335)
!478 = !DILocation(line: 719, column: 34, scope: !335)
!479 = !DILocation(line: 719, column: 15, scope: !335)
!480 = !DILocation(line: 721, column: 3, scope: !335)
!481 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !484, !484, !38, !38}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!486 = !DISubprogram(name: "sin", scope: !487, file: !487, line: 64, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!487 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!488 = !DISubroutineType(types: !489)
!489 = !{!76, !76}
!490 = distinct !DISubprogram(name: "lngamma_sgn_sing", scope: !2, file: !2, line: 763, type: !491, scopeLine: 764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!38, !38, !76, !190, !141}
!493 = !{!494, !495, !496, !497, !498, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539}
!494 = !DILocalVariable(name: "N", arg: 1, scope: !490, file: !2, line: 763, type: !38)
!495 = !DILocalVariable(name: "eps", arg: 2, scope: !490, file: !2, line: 763, type: !76)
!496 = !DILocalVariable(name: "lng", arg: 3, scope: !490, file: !2, line: 763, type: !190)
!497 = !DILocalVariable(name: "sgn", arg: 4, scope: !490, file: !2, line: 763, type: !141)
!498 = !DILocalVariable(name: "c0", scope: !499, file: !2, line: 776, type: !238)
!499 = distinct !DILexicalBlock(scope: !500, file: !2, line: 771, column: 19)
!500 = distinct !DILexicalBlock(scope: !501, file: !2, line: 771, column: 11)
!501 = distinct !DILexicalBlock(scope: !490, file: !2, line: 765, column: 6)
!502 = !DILocalVariable(name: "c1", scope: !499, file: !2, line: 777, type: !238)
!503 = !DILocalVariable(name: "c2", scope: !499, file: !2, line: 778, type: !238)
!504 = !DILocalVariable(name: "c3", scope: !499, file: !2, line: 779, type: !238)
!505 = !DILocalVariable(name: "c4", scope: !499, file: !2, line: 780, type: !238)
!506 = !DILocalVariable(name: "c5", scope: !499, file: !2, line: 781, type: !238)
!507 = !DILocalVariable(name: "c6", scope: !499, file: !2, line: 782, type: !238)
!508 = !DILocalVariable(name: "c7", scope: !499, file: !2, line: 783, type: !238)
!509 = !DILocalVariable(name: "c8", scope: !499, file: !2, line: 784, type: !238)
!510 = !DILocalVariable(name: "c9", scope: !499, file: !2, line: 785, type: !238)
!511 = !DILocalVariable(name: "g5", scope: !499, file: !2, line: 786, type: !238)
!512 = !DILocalVariable(name: "g", scope: !499, file: !2, line: 787, type: !238)
!513 = !DILocalVariable(name: "gam_e", scope: !499, file: !2, line: 790, type: !238)
!514 = !DILocalVariable(name: "g", scope: !515, file: !2, line: 798, type: !76)
!515 = distinct !DILexicalBlock(scope: !500, file: !2, line: 797, column: 8)
!516 = !DILocalVariable(name: "cs1", scope: !515, file: !2, line: 803, type: !238)
!517 = !DILocalVariable(name: "cs2", scope: !515, file: !2, line: 804, type: !238)
!518 = !DILocalVariable(name: "cs3", scope: !515, file: !2, line: 805, type: !238)
!519 = !DILocalVariable(name: "cs4", scope: !515, file: !2, line: 806, type: !238)
!520 = !DILocalVariable(name: "cs5", scope: !515, file: !2, line: 807, type: !238)
!521 = !DILocalVariable(name: "e2", scope: !515, file: !2, line: 808, type: !238)
!522 = !DILocalVariable(name: "sin_ser", scope: !515, file: !2, line: 809, type: !238)
!523 = !DILocalVariable(name: "aeps", scope: !515, file: !2, line: 814, type: !76)
!524 = !DILocalVariable(name: "c1", scope: !515, file: !2, line: 815, type: !76)
!525 = !DILocalVariable(name: "c2", scope: !515, file: !2, line: 815, type: !76)
!526 = !DILocalVariable(name: "c3", scope: !515, file: !2, line: 815, type: !76)
!527 = !DILocalVariable(name: "c4", scope: !515, file: !2, line: 815, type: !76)
!528 = !DILocalVariable(name: "c5", scope: !515, file: !2, line: 815, type: !76)
!529 = !DILocalVariable(name: "c6", scope: !515, file: !2, line: 815, type: !76)
!530 = !DILocalVariable(name: "c7", scope: !515, file: !2, line: 815, type: !76)
!531 = !DILocalVariable(name: "lng_ser", scope: !515, file: !2, line: 816, type: !76)
!532 = !DILocalVariable(name: "c0", scope: !515, file: !2, line: 817, type: !191)
!533 = !DILocalVariable(name: "psi_0", scope: !515, file: !2, line: 818, type: !191)
!534 = !DILocalVariable(name: "psi_1", scope: !515, file: !2, line: 819, type: !191)
!535 = !DILocalVariable(name: "psi_2", scope: !515, file: !2, line: 820, type: !191)
!536 = !DILocalVariable(name: "psi_3", scope: !515, file: !2, line: 821, type: !191)
!537 = !DILocalVariable(name: "psi_4", scope: !515, file: !2, line: 822, type: !191)
!538 = !DILocalVariable(name: "psi_5", scope: !515, file: !2, line: 823, type: !191)
!539 = !DILocalVariable(name: "psi_6", scope: !515, file: !2, line: 824, type: !191)
!540 = distinct !DIAssignID()
!541 = !DILocation(line: 0, scope: !515)
!542 = distinct !DIAssignID()
!543 = distinct !DIAssignID()
!544 = distinct !DIAssignID()
!545 = distinct !DIAssignID()
!546 = distinct !DIAssignID()
!547 = distinct !DIAssignID()
!548 = distinct !DIAssignID()
!549 = !DILocation(line: 0, scope: !490)
!550 = !DILocation(line: 765, column: 10, scope: !501)
!551 = !DILocation(line: 765, column: 6, scope: !490)
!552 = !DILocation(line: 767, column: 14, scope: !553)
!553 = distinct !DILexicalBlock(scope: !501, file: !2, line: 765, column: 18)
!554 = !DILocation(line: 768, column: 10, scope: !553)
!555 = !{!276, !276, i64 0}
!556 = !DILocation(line: 769, column: 5, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !2, line: 769, column: 5)
!558 = !DILocation(line: 771, column: 13, scope: !500)
!559 = !DILocation(line: 771, column: 11, scope: !501)
!560 = !DILocation(line: 0, scope: !499)
!561 = !DILocation(line: 786, column: 61, scope: !499)
!562 = !DILocation(line: 786, column: 51, scope: !499)
!563 = !DILocation(line: 786, column: 41, scope: !499)
!564 = !DILocation(line: 786, column: 31, scope: !499)
!565 = !DILocation(line: 787, column: 76, scope: !499)
!566 = !DILocation(line: 787, column: 66, scope: !499)
!567 = !DILocation(line: 787, column: 56, scope: !499)
!568 = !DILocation(line: 787, column: 46, scope: !499)
!569 = !DILocation(line: 787, column: 36, scope: !499)
!570 = !DILocation(line: 787, column: 26, scope: !499)
!571 = !DILocation(line: 790, column: 39, scope: !499)
!572 = !DILocation(line: 790, column: 52, scope: !499)
!573 = !DILocation(line: 790, column: 43, scope: !499)
!574 = !DILocation(line: 790, column: 68, scope: !499)
!575 = !DILocation(line: 790, column: 57, scope: !499)
!576 = !DILocation(line: 792, column: 31, scope: !499)
!577 = !DILocation(line: 792, column: 14, scope: !499)
!578 = !DILocation(line: 793, column: 40, scope: !499)
!579 = !DILocation(line: 793, column: 38, scope: !499)
!580 = !DILocation(line: 793, column: 10, scope: !499)
!581 = !DILocation(line: 793, column: 14, scope: !499)
!582 = !DILocation(line: 794, column: 18, scope: !499)
!583 = !DILocation(line: 794, column: 14, scope: !499)
!584 = !DILocation(line: 794, column: 10, scope: !499)
!585 = !DILocation(line: 808, column: 27, scope: !515)
!586 = !DILocation(line: 809, column: 68, scope: !515)
!587 = !DILocation(line: 809, column: 60, scope: !515)
!588 = !DILocation(line: 809, column: 52, scope: !515)
!589 = !DILocation(line: 809, column: 44, scope: !515)
!590 = !DILocation(line: 809, column: 36, scope: !515)
!591 = !DILocation(line: 814, column: 19, scope: !515)
!592 = !DILocation(line: 817, column: 5, scope: !515)
!593 = !DILocation(line: 818, column: 5, scope: !515)
!594 = !DILocation(line: 819, column: 5, scope: !515)
!595 = !DILocation(line: 820, column: 5, scope: !515)
!596 = !DILocation(line: 821, column: 5, scope: !515)
!597 = !DILocation(line: 822, column: 5, scope: !515)
!598 = !DILocation(line: 823, column: 5, scope: !515)
!599 = !DILocation(line: 824, column: 5, scope: !515)
!600 = !DILocation(line: 825, column: 15, scope: !515)
!601 = distinct !DIAssignID()
!602 = !DILocation(line: 826, column: 15, scope: !515)
!603 = distinct !DIAssignID()
!604 = !DILocation(line: 827, column: 15, scope: !515)
!605 = distinct !DIAssignID()
!606 = !DILocation(line: 828, column: 15, scope: !515)
!607 = distinct !DIAssignID()
!608 = !DILocation(line: 829, column: 15, scope: !515)
!609 = distinct !DIAssignID()
!610 = !DILocalVariable(name: "n", arg: 1, scope: !611, file: !2, line: 1514, type: !614)
!611 = distinct !DISubprogram(name: "gsl_sf_lnfact_e", scope: !2, file: !2, line: 1514, type: !612, scopeLine: 1515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !616)
!612 = !DISubroutineType(types: !613)
!613 = !{!38, !614, !190}
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!616 = !{!610, !617}
!617 = !DILocalVariable(name: "result", arg: 2, scope: !611, file: !2, line: 1514, type: !190)
!618 = !DILocation(line: 0, scope: !611, inlinedAt: !619)
!619 = distinct !DILocation(line: 830, column: 5, scope: !515)
!620 = !DILocation(line: 1518, column: 8, scope: !621, inlinedAt: !619)
!621 = distinct !DILexicalBlock(scope: !611, file: !2, line: 1518, column: 6)
!622 = !DILocation(line: 1518, column: 6, scope: !611, inlinedAt: !619)
!623 = !DILocation(line: 1519, column: 23, scope: !624, inlinedAt: !619)
!624 = distinct !DILexicalBlock(scope: !621, file: !2, line: 1518, column: 28)
!625 = !DILocation(line: 1519, column: 37, scope: !624, inlinedAt: !619)
!626 = !{!627, !276, i64 8}
!627 = !{!"", !628, i64 0, !276, i64 8, !629, i64 16}
!628 = !{!"int", !277, i64 0}
!629 = !{!"long", !277, i64 0}
!630 = !DILocation(line: 1519, column: 17, scope: !624, inlinedAt: !619)
!631 = distinct !DIAssignID()
!632 = !DILocation(line: 1520, column: 43, scope: !624, inlinedAt: !619)
!633 = !DILocation(line: 1520, column: 41, scope: !624, inlinedAt: !619)
!634 = !DILocation(line: 1520, column: 13, scope: !624, inlinedAt: !619)
!635 = !DILocation(line: 1520, column: 17, scope: !624, inlinedAt: !619)
!636 = distinct !DIAssignID()
!637 = !DILocation(line: 1521, column: 5, scope: !624, inlinedAt: !619)
!638 = !DILocation(line: 1524, column: 22, scope: !639, inlinedAt: !619)
!639 = distinct !DILexicalBlock(scope: !621, file: !2, line: 1523, column: 8)
!640 = !DILocation(line: 1524, column: 5, scope: !639, inlinedAt: !619)
!641 = !{i32 0, i32 19}
!642 = !DILocation(line: 1525, column: 5, scope: !639, inlinedAt: !619)
!643 = !DILocation(line: 831, column: 23, scope: !515)
!644 = !DILocation(line: 831, column: 5, scope: !515)
!645 = !DILocation(line: 832, column: 5, scope: !515)
!646 = !DILocation(line: 833, column: 13, scope: !647)
!647 = distinct !DILexicalBlock(scope: !515, file: !2, line: 833, column: 8)
!648 = !DILocation(line: 833, column: 8, scope: !515)
!649 = !DILocation(line: 833, column: 42, scope: !647)
!650 = !DILocation(line: 833, column: 24, scope: !647)
!651 = !DILocation(line: 834, column: 13, scope: !652)
!652 = distinct !DILexicalBlock(scope: !515, file: !2, line: 834, column: 8)
!653 = !DILocation(line: 834, column: 8, scope: !515)
!654 = !DILocation(line: 834, column: 42, scope: !652)
!655 = !DILocation(line: 834, column: 24, scope: !652)
!656 = !DILocation(line: 835, column: 13, scope: !657)
!657 = distinct !DILexicalBlock(scope: !515, file: !2, line: 835, column: 8)
!658 = !DILocation(line: 835, column: 8, scope: !515)
!659 = !DILocation(line: 835, column: 42, scope: !657)
!660 = !DILocation(line: 835, column: 24, scope: !657)
!661 = !DILocation(line: 836, column: 13, scope: !662)
!662 = distinct !DILexicalBlock(scope: !515, file: !2, line: 836, column: 8)
!663 = !DILocation(line: 836, column: 8, scope: !515)
!664 = !DILocation(line: 836, column: 42, scope: !662)
!665 = !DILocation(line: 836, column: 24, scope: !662)
!666 = !DILocation(line: 837, column: 13, scope: !667)
!667 = distinct !DILexicalBlock(scope: !515, file: !2, line: 837, column: 8)
!668 = !DILocation(line: 837, column: 8, scope: !515)
!669 = !DILocation(line: 837, column: 42, scope: !667)
!670 = !DILocation(line: 837, column: 24, scope: !667)
!671 = !DILocation(line: 844, column: 16, scope: !515)
!672 = !DILocation(line: 838, column: 16, scope: !515)
!673 = !DILocation(line: 839, column: 16, scope: !515)
!674 = !DILocation(line: 839, column: 19, scope: !515)
!675 = !DILocation(line: 840, column: 16, scope: !515)
!676 = !DILocation(line: 840, column: 19, scope: !515)
!677 = !DILocation(line: 841, column: 16, scope: !515)
!678 = !DILocation(line: 841, column: 19, scope: !515)
!679 = !DILocation(line: 842, column: 16, scope: !515)
!680 = !DILocation(line: 842, column: 19, scope: !515)
!681 = !DILocation(line: 843, column: 16, scope: !515)
!682 = !DILocation(line: 843, column: 19, scope: !515)
!683 = !DILocation(line: 844, column: 19, scope: !515)
!684 = !DILocation(line: 845, column: 18, scope: !515)
!685 = !DILocation(line: 845, column: 73, scope: !515)
!686 = !DILocation(line: 845, column: 65, scope: !515)
!687 = !DILocation(line: 845, column: 57, scope: !515)
!688 = !DILocation(line: 845, column: 49, scope: !515)
!689 = !DILocation(line: 845, column: 41, scope: !515)
!690 = !DILocation(line: 845, column: 33, scope: !515)
!691 = !DILocation(line: 845, column: 25, scope: !515)
!692 = !DILocation(line: 851, column: 9, scope: !515)
!693 = !DILocation(line: 853, column: 20, scope: !515)
!694 = !DILocation(line: 853, column: 14, scope: !515)
!695 = !DILocation(line: 854, column: 19, scope: !515)
!696 = !DILocation(line: 854, column: 50, scope: !515)
!697 = !DILocation(line: 854, column: 60, scope: !515)
!698 = !DILocation(line: 854, column: 47, scope: !515)
!699 = !DILocation(line: 854, column: 10, scope: !515)
!700 = !DILocation(line: 854, column: 14, scope: !515)
!701 = !DILocation(line: 856, column: 14, scope: !515)
!702 = !DILocation(line: 856, column: 51, scope: !515)
!703 = !DILocation(line: 856, column: 47, scope: !515)
!704 = !DILocation(line: 856, column: 43, scope: !515)
!705 = !DILocation(line: 856, column: 10, scope: !515)
!706 = !DILocation(line: 859, column: 3, scope: !500)
!707 = !DILocation(line: 0, scope: !501)
!708 = !DILocation(line: 860, column: 1, scope: !490)
!709 = !DISubprogram(name: "log", scope: !487, file: !487, line: 104, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!710 = distinct !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !2, file: !2, line: 1185, type: !379, scopeLine: 1186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !711)
!711 = !{!712, !713, !714, !715, !718, !721, !727, !728, !729, !735, !736}
!712 = !DILocalVariable(name: "x", arg: 1, scope: !710, file: !2, line: 1185, type: !76)
!713 = !DILocalVariable(name: "result_lg", arg: 2, scope: !710, file: !2, line: 1185, type: !190)
!714 = !DILocalVariable(name: "sgn", arg: 3, scope: !710, file: !2, line: 1185, type: !141)
!715 = !DILocalVariable(name: "stat", scope: !716, file: !2, line: 1188, type: !38)
!716 = distinct !DILexicalBlock(scope: !717, file: !2, line: 1187, column: 28)
!717 = distinct !DILexicalBlock(scope: !710, file: !2, line: 1187, column: 6)
!718 = !DILocalVariable(name: "stat", scope: !719, file: !2, line: 1194, type: !38)
!719 = distinct !DILexicalBlock(scope: !720, file: !2, line: 1193, column: 33)
!720 = distinct !DILexicalBlock(scope: !717, file: !2, line: 1193, column: 11)
!721 = !DILocalVariable(name: "z", scope: !722, file: !2, line: 1214, type: !76)
!722 = distinct !DILexicalBlock(scope: !723, file: !2, line: 1210, column: 44)
!723 = distinct !DILexicalBlock(scope: !724, file: !2, line: 1210, column: 11)
!724 = distinct !DILexicalBlock(scope: !725, file: !2, line: 1207, column: 11)
!725 = distinct !DILexicalBlock(scope: !726, file: !2, line: 1203, column: 11)
!726 = distinct !DILexicalBlock(scope: !720, file: !2, line: 1199, column: 11)
!727 = !DILocalVariable(name: "s", scope: !722, file: !2, line: 1215, type: !76)
!728 = !DILocalVariable(name: "as", scope: !722, file: !2, line: 1216, type: !76)
!729 = !DILocalVariable(name: "N", scope: !730, file: !2, line: 1230, type: !38)
!730 = distinct !DILexicalBlock(scope: !731, file: !2, line: 1229, column: 12)
!731 = distinct !DILexicalBlock(scope: !732, file: !2, line: 1223, column: 10)
!732 = distinct !DILexicalBlock(scope: !733, file: !2, line: 1221, column: 30)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 1221, column: 13)
!734 = distinct !DILexicalBlock(scope: !722, file: !2, line: 1217, column: 8)
!735 = !DILocalVariable(name: "eps", scope: !730, file: !2, line: 1231, type: !76)
!736 = !DILocalVariable(name: "lg_z", scope: !737, file: !2, line: 1236, type: !191)
!737 = distinct !DILexicalBlock(scope: !733, file: !2, line: 1235, column: 10)
!738 = distinct !DIAssignID()
!739 = !DILocation(line: 0, scope: !737)
!740 = !DILocation(line: 0, scope: !710)
!741 = !DILocation(line: 1187, column: 6, scope: !717)
!742 = !DILocation(line: 1187, column: 20, scope: !717)
!743 = !DILocation(line: 1187, column: 6, scope: !710)
!744 = !DILocation(line: 0, scope: !235, inlinedAt: !745)
!745 = distinct !DILocation(line: 1188, column: 16, scope: !716)
!746 = !DILocation(line: 906, column: 40, scope: !235, inlinedAt: !745)
!747 = !DILocation(line: 906, column: 33, scope: !235, inlinedAt: !745)
!748 = !DILocation(line: 907, column: 40, scope: !235, inlinedAt: !745)
!749 = !DILocation(line: 907, column: 33, scope: !235, inlinedAt: !745)
!750 = !DILocation(line: 908, column: 54, scope: !235, inlinedAt: !745)
!751 = !DILocation(line: 908, column: 60, scope: !235, inlinedAt: !745)
!752 = !DILocation(line: 914, column: 26, scope: !235, inlinedAt: !745)
!753 = !DILocation(line: 914, column: 30, scope: !235, inlinedAt: !745)
!754 = !DILocation(line: 914, column: 34, scope: !235, inlinedAt: !745)
!755 = !DILocation(line: 914, column: 38, scope: !235, inlinedAt: !745)
!756 = !DILocation(line: 915, column: 68, scope: !235, inlinedAt: !745)
!757 = !DILocation(line: 915, column: 59, scope: !235, inlinedAt: !745)
!758 = !DILocation(line: 915, column: 49, scope: !235, inlinedAt: !745)
!759 = !DILocation(line: 915, column: 39, scope: !235, inlinedAt: !745)
!760 = !DILocation(line: 915, column: 28, scope: !235, inlinedAt: !745)
!761 = !DILocation(line: 916, column: 21, scope: !235, inlinedAt: !745)
!762 = !DILocation(line: 916, column: 15, scope: !235, inlinedAt: !745)
!763 = !DILocation(line: 917, column: 41, scope: !235, inlinedAt: !745)
!764 = !DILocation(line: 917, column: 39, scope: !235, inlinedAt: !745)
!765 = !DILocation(line: 917, column: 11, scope: !235, inlinedAt: !745)
!766 = !DILocation(line: 0, scope: !716)
!767 = !DILocation(line: 1189, column: 26, scope: !716)
!768 = !DILocation(line: 1189, column: 20, scope: !716)
!769 = !DILocation(line: 1190, column: 10, scope: !716)
!770 = !DILocation(line: 1193, column: 11, scope: !720)
!771 = !DILocation(line: 1193, column: 25, scope: !720)
!772 = !DILocation(line: 1193, column: 11, scope: !717)
!773 = !DILocation(line: 0, scope: !290, inlinedAt: !774)
!774 = distinct !DILocation(line: 1194, column: 15, scope: !719)
!775 = !DILocation(line: 933, column: 40, scope: !290, inlinedAt: !774)
!776 = !DILocation(line: 933, column: 33, scope: !290, inlinedAt: !774)
!777 = !DILocation(line: 934, column: 40, scope: !290, inlinedAt: !774)
!778 = !DILocation(line: 934, column: 33, scope: !290, inlinedAt: !774)
!779 = !DILocation(line: 935, column: 52, scope: !290, inlinedAt: !774)
!780 = !DILocation(line: 935, column: 57, scope: !290, inlinedAt: !774)
!781 = !DILocation(line: 941, column: 26, scope: !290, inlinedAt: !774)
!782 = !DILocation(line: 941, column: 30, scope: !290, inlinedAt: !774)
!783 = !DILocation(line: 941, column: 34, scope: !290, inlinedAt: !774)
!784 = !DILocation(line: 941, column: 38, scope: !290, inlinedAt: !774)
!785 = !DILocation(line: 942, column: 68, scope: !290, inlinedAt: !774)
!786 = !DILocation(line: 942, column: 59, scope: !290, inlinedAt: !774)
!787 = !DILocation(line: 942, column: 49, scope: !290, inlinedAt: !774)
!788 = !DILocation(line: 942, column: 39, scope: !290, inlinedAt: !774)
!789 = !DILocation(line: 942, column: 28, scope: !290, inlinedAt: !774)
!790 = !DILocation(line: 943, column: 21, scope: !290, inlinedAt: !774)
!791 = !DILocation(line: 943, column: 15, scope: !290, inlinedAt: !774)
!792 = !DILocation(line: 944, column: 41, scope: !290, inlinedAt: !774)
!793 = !DILocation(line: 944, column: 39, scope: !290, inlinedAt: !774)
!794 = !DILocation(line: 944, column: 11, scope: !290, inlinedAt: !774)
!795 = !DILocation(line: 0, scope: !719)
!796 = !DILocation(line: 1195, column: 26, scope: !719)
!797 = !DILocation(line: 1195, column: 20, scope: !719)
!798 = !DILocation(line: 1196, column: 10, scope: !719)
!799 = !DILocation(line: 1199, column: 13, scope: !726)
!800 = !DILocation(line: 1199, column: 11, scope: !720)
!801 = !DILocation(line: 1200, column: 10, scope: !802)
!802 = distinct !DILexicalBlock(scope: !726, file: !2, line: 1199, column: 21)
!803 = !DILocation(line: 0, scope: !335, inlinedAt: !804)
!804 = distinct !DILocation(line: 1201, column: 12, scope: !802)
!805 = !DILocation(line: 712, column: 45, scope: !347, inlinedAt: !804)
!806 = !DILocation(line: 712, column: 48, scope: !347, inlinedAt: !804)
!807 = !DILocation(line: 715, column: 13, scope: !335, inlinedAt: !804)
!808 = !DILocation(line: 715, column: 25, scope: !335, inlinedAt: !804)
!809 = !DILocation(line: 715, column: 30, scope: !335, inlinedAt: !804)
!810 = !DILocation(line: 715, column: 18, scope: !335, inlinedAt: !804)
!811 = !DILocation(line: 717, column: 33, scope: !335, inlinedAt: !804)
!812 = !DILocation(line: 717, column: 24, scope: !335, inlinedAt: !804)
!813 = !DILocation(line: 717, column: 16, scope: !335, inlinedAt: !804)
!814 = !DILocation(line: 718, column: 43, scope: !335, inlinedAt: !804)
!815 = !DILocation(line: 718, column: 57, scope: !335, inlinedAt: !804)
!816 = !DILocation(line: 718, column: 69, scope: !335, inlinedAt: !804)
!817 = !DILocation(line: 718, column: 40, scope: !335, inlinedAt: !804)
!818 = !DILocation(line: 718, column: 11, scope: !335, inlinedAt: !804)
!819 = !DILocation(line: 719, column: 36, scope: !335, inlinedAt: !804)
!820 = !DILocation(line: 719, column: 34, scope: !335, inlinedAt: !804)
!821 = !DILocation(line: 719, column: 15, scope: !335, inlinedAt: !804)
!822 = !DILocation(line: 1201, column: 5, scope: !802)
!823 = !DILocation(line: 1203, column: 13, scope: !725)
!824 = !DILocation(line: 1203, column: 11, scope: !726)
!825 = !DILocation(line: 1204, column: 10, scope: !826)
!826 = distinct !DILexicalBlock(scope: !725, file: !2, line: 1203, column: 21)
!827 = !DILocation(line: 1205, column: 5, scope: !828)
!828 = distinct !DILexicalBlock(scope: !826, file: !2, line: 1205, column: 5)
!829 = !DILocation(line: 1205, column: 5, scope: !830)
!830 = distinct !DILexicalBlock(scope: !828, file: !2, line: 1205, column: 5)
!831 = !DILocation(line: 1207, column: 11, scope: !724)
!832 = !DILocation(line: 1207, column: 19, scope: !724)
!833 = !DILocation(line: 1207, column: 11, scope: !725)
!834 = !DILocation(line: 0, scope: !378, inlinedAt: !835)
!835 = distinct !DILocation(line: 1208, column: 12, scope: !836)
!836 = distinct !DILexicalBlock(scope: !724, file: !2, line: 1207, column: 27)
!837 = !DILocation(line: 742, column: 56, scope: !378, inlinedAt: !835)
!838 = !DILocation(line: 742, column: 46, scope: !378, inlinedAt: !835)
!839 = !DILocation(line: 742, column: 36, scope: !378, inlinedAt: !835)
!840 = !DILocation(line: 742, column: 28, scope: !378, inlinedAt: !835)
!841 = !DILocation(line: 743, column: 65, scope: !378, inlinedAt: !835)
!842 = !DILocation(line: 743, column: 57, scope: !378, inlinedAt: !835)
!843 = !DILocation(line: 743, column: 49, scope: !378, inlinedAt: !835)
!844 = !DILocation(line: 743, column: 41, scope: !378, inlinedAt: !835)
!845 = !DILocation(line: 743, column: 33, scope: !378, inlinedAt: !835)
!846 = !DILocation(line: 743, column: 25, scope: !378, inlinedAt: !835)
!847 = !DILocation(line: 746, column: 29, scope: !378, inlinedAt: !835)
!848 = !DILocation(line: 746, column: 45, scope: !378, inlinedAt: !835)
!849 = !DILocation(line: 748, column: 21, scope: !378, inlinedAt: !835)
!850 = !DILocation(line: 748, column: 12, scope: !378, inlinedAt: !835)
!851 = !DILocation(line: 749, column: 38, scope: !378, inlinedAt: !835)
!852 = !DILocation(line: 749, column: 36, scope: !378, inlinedAt: !835)
!853 = !DILocation(line: 749, column: 8, scope: !378, inlinedAt: !835)
!854 = !DILocation(line: 749, column: 12, scope: !378, inlinedAt: !835)
!855 = !DILocation(line: 750, column: 10, scope: !378, inlinedAt: !835)
!856 = !DILocation(line: 750, column: 8, scope: !378, inlinedAt: !835)
!857 = !DILocation(line: 1208, column: 5, scope: !836)
!858 = !DILocation(line: 1210, column: 13, scope: !723)
!859 = !DILocation(line: 1210, column: 11, scope: !724)
!860 = !DILocation(line: 1215, column: 24, scope: !722)
!861 = !DILocation(line: 0, scope: !722)
!862 = !DILocation(line: 1216, column: 17, scope: !722)
!863 = !DILocation(line: 1217, column: 10, scope: !734)
!864 = !DILocation(line: 1217, column: 8, scope: !722)
!865 = !DILocation(line: 1218, column: 12, scope: !866)
!866 = distinct !DILexicalBlock(scope: !734, file: !2, line: 1217, column: 18)
!867 = !DILocation(line: 1219, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !866, file: !2, line: 1219, column: 7)
!869 = !DILocation(line: 1219, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !868, file: !2, line: 1219, column: 7)
!871 = !DILocation(line: 1221, column: 16, scope: !733)
!872 = !DILocation(line: 1221, column: 13, scope: !734)
!873 = !DILocation(line: 1223, column: 12, scope: !731)
!874 = !DILocation(line: 1223, column: 10, scope: !732)
!875 = !DILocation(line: 1225, column: 24, scope: !876)
!876 = distinct !DILexicalBlock(scope: !731, file: !2, line: 1223, column: 29)
!877 = !DILocation(line: 1226, column: 14, scope: !876)
!878 = !DILocation(line: 1227, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !2, line: 1227, column: 9)
!880 = !DILocation(line: 1230, column: 18, scope: !730)
!881 = !DILocation(line: 1230, column: 17, scope: !730)
!882 = !DILocation(line: 0, scope: !730)
!883 = !DILocation(line: 1231, column: 26, scope: !730)
!884 = !DILocation(line: 1232, column: 16, scope: !730)
!885 = !DILocation(line: 1236, column: 7, scope: !737)
!886 = !DILocation(line: 1237, column: 7, scope: !737)
!887 = !DILocation(line: 1238, column: 17, scope: !737)
!888 = !DILocation(line: 1238, column: 15, scope: !737)
!889 = !DILocation(line: 1238, column: 12, scope: !737)
!890 = !DILocation(line: 1239, column: 49, scope: !737)
!891 = !DILocation(line: 1239, column: 31, scope: !737)
!892 = !DILocation(line: 1239, column: 22, scope: !737)
!893 = !DILocation(line: 1240, column: 48, scope: !737)
!894 = !DILocation(line: 1240, column: 46, scope: !737)
!895 = !DILocation(line: 1240, column: 76, scope: !737)
!896 = !DILocation(line: 1240, column: 18, scope: !737)
!897 = !DILocation(line: 1240, column: 22, scope: !737)
!898 = !DILocation(line: 1242, column: 5, scope: !733)
!899 = !DILocation(line: 1247, column: 20, scope: !900)
!900 = distinct !DILexicalBlock(scope: !723, file: !2, line: 1244, column: 8)
!901 = !DILocation(line: 1248, column: 10, scope: !900)
!902 = !DILocation(line: 1249, column: 5, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !2, line: 1249, column: 5)
!904 = !DILocation(line: 0, scope: !717)
!905 = !DILocation(line: 1251, column: 1, scope: !710)
!906 = distinct !DISubprogram(name: "gsl_sf_gamma_e", scope: !2, file: !2, line: 1255, type: !236, scopeLine: 1256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !907)
!907 = !{!908, !909, !910, !913, !914, !915, !916, !920, !922, !923, !924}
!908 = !DILocalVariable(name: "x", arg: 1, scope: !906, file: !2, line: 1255, type: !238)
!909 = !DILocalVariable(name: "result", arg: 2, scope: !906, file: !2, line: 1255, type: !190)
!910 = !DILocalVariable(name: "rint_x", scope: !911, file: !2, line: 1258, type: !38)
!911 = distinct !DILexicalBlock(scope: !912, file: !2, line: 1257, column: 15)
!912 = distinct !DILexicalBlock(scope: !906, file: !2, line: 1257, column: 6)
!913 = !DILocalVariable(name: "f_x", scope: !911, file: !2, line: 1259, type: !76)
!914 = !DILocalVariable(name: "sgn_gamma", scope: !911, file: !2, line: 1260, type: !76)
!915 = !DILocalVariable(name: "sin_term", scope: !911, file: !2, line: 1261, type: !76)
!916 = !DILocalVariable(name: "g", scope: !917, file: !2, line: 1267, type: !191)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 1266, column: 25)
!918 = distinct !DILexicalBlock(scope: !919, file: !2, line: 1266, column: 13)
!919 = distinct !DILexicalBlock(scope: !911, file: !2, line: 1263, column: 8)
!920 = !DILocalVariable(name: "lng", scope: !921, file: !2, line: 1285, type: !191)
!921 = distinct !DILexicalBlock(scope: !918, file: !2, line: 1279, column: 10)
!922 = !DILocalVariable(name: "sgn", scope: !921, file: !2, line: 1286, type: !76)
!923 = !DILocalVariable(name: "stat_lng", scope: !921, file: !2, line: 1287, type: !38)
!924 = !DILocalVariable(name: "stat_e", scope: !921, file: !2, line: 1288, type: !38)
!925 = distinct !DIAssignID()
!926 = !DILocation(line: 0, scope: !917)
!927 = distinct !DIAssignID()
!928 = !DILocation(line: 0, scope: !921)
!929 = distinct !DIAssignID()
!930 = !DILocation(line: 0, scope: !906)
!931 = !DILocation(line: 1257, column: 8, scope: !912)
!932 = !DILocation(line: 1257, column: 6, scope: !906)
!933 = !DILocation(line: 1258, column: 23, scope: !911)
!934 = !DILocation(line: 1258, column: 18, scope: !911)
!935 = !DILocation(line: 0, scope: !911)
!936 = !DILocation(line: 1259, column: 22, scope: !911)
!937 = !DILocation(line: 1260, column: 26, scope: !911)
!938 = !DILocation(line: 1261, column: 44, scope: !911)
!939 = !DILocation(line: 1261, column: 33, scope: !911)
!940 = !DILocation(line: 1261, column: 51, scope: !911)
!941 = !DILocation(line: 1263, column: 17, scope: !919)
!942 = !DILocation(line: 1263, column: 8, scope: !911)
!943 = !DILocation(line: 1264, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 1264, column: 7)
!945 = distinct !DILexicalBlock(scope: !919, file: !2, line: 1263, column: 25)
!946 = !DILocation(line: 1264, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !2, line: 1264, column: 7)
!948 = !DILocation(line: 1266, column: 15, scope: !918)
!949 = !DILocation(line: 1266, column: 13, scope: !919)
!950 = !DILocation(line: 1267, column: 7, scope: !917)
!951 = !DILocation(line: 1268, column: 7, scope: !917)
!952 = !{i32 0, i32 17}
!953 = !DILocation(line: 1269, column: 10, scope: !954)
!954 = distinct !DILexicalBlock(scope: !917, file: !2, line: 1269, column: 10)
!955 = !DILocation(line: 1269, column: 29, scope: !954)
!956 = !DILocation(line: 1269, column: 25, scope: !954)
!957 = !DILocation(line: 1269, column: 33, scope: !954)
!958 = !DILocation(line: 1269, column: 47, scope: !954)
!959 = !DILocation(line: 1269, column: 10, scope: !917)
!960 = !DILocation(line: 1270, column: 38, scope: !961)
!961 = distinct !DILexicalBlock(scope: !954, file: !2, line: 1269, column: 54)
!962 = !DILocation(line: 1270, column: 27, scope: !961)
!963 = !DILocation(line: 1270, column: 22, scope: !961)
!964 = !DILocation(line: 1271, column: 31, scope: !961)
!965 = !DILocation(line: 1271, column: 34, scope: !961)
!966 = !DILocation(line: 1271, column: 42, scope: !961)
!967 = !DILocation(line: 1271, column: 17, scope: !961)
!968 = !DILocation(line: 1272, column: 48, scope: !961)
!969 = !DILocation(line: 1272, column: 46, scope: !961)
!970 = !DILocation(line: 1272, column: 21, scope: !961)
!971 = !DILocation(line: 1273, column: 9, scope: !961)
!972 = !DILocation(line: 1276, column: 9, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !2, line: 1276, column: 9)
!974 = distinct !DILexicalBlock(scope: !954, file: !2, line: 1275, column: 12)
!975 = !DILocation(line: 1276, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !2, line: 1276, column: 9)
!977 = !DILocation(line: 0, scope: !954)
!978 = !DILocation(line: 1278, column: 5, scope: !918)
!979 = !DILocation(line: 1285, column: 7, scope: !921)
!980 = !DILocation(line: 1286, column: 7, scope: !921)
!981 = !DILocation(line: 1287, column: 22, scope: !921)
!982 = !DILocation(line: 1288, column: 48, scope: !921)
!983 = !DILocation(line: 1288, column: 57, scope: !921)
!984 = !DILocation(line: 1288, column: 62, scope: !921)
!985 = !DILocation(line: 1288, column: 22, scope: !921)
!986 = !DILocation(line: 1289, column: 14, scope: !921)
!987 = !DILocation(line: 1290, column: 5, scope: !918)
!988 = !DILocation(line: 1293, column: 12, scope: !989)
!989 = distinct !DILexicalBlock(scope: !912, file: !2, line: 1292, column: 8)
!990 = !DILocation(line: 1293, column: 5, scope: !989)
!991 = !DILocation(line: 0, scope: !912)
!992 = !DILocation(line: 1295, column: 1, scope: !906)
!993 = distinct !DISubprogram(name: "gamma_xgthalf", scope: !2, file: !2, line: 1019, type: !236, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !994)
!994 = !{!995, !996, !997, !1001, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1025, !1028, !1029, !1030, !1033, !1034, !1035, !1036, !1037}
!995 = !DILocalVariable(name: "x", arg: 1, scope: !993, file: !2, line: 1019, type: !238)
!996 = !DILocalVariable(name: "result", arg: 2, scope: !993, file: !2, line: 1019, type: !190)
!997 = !DILocalVariable(name: "n", scope: !998, file: !2, line: 1028, type: !38)
!998 = distinct !DILexicalBlock(scope: !999, file: !2, line: 1027, column: 62)
!999 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 1027, column: 14)
!1000 = distinct !DILexicalBlock(scope: !993, file: !2, line: 1023, column: 6)
!1001 = !DILocalVariable(name: "eps", scope: !1002, file: !2, line: 1036, type: !238)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 1033, column: 33)
!1003 = distinct !DILexicalBlock(scope: !999, file: !2, line: 1033, column: 11)
!1004 = !DILocalVariable(name: "c1", scope: !1002, file: !2, line: 1037, type: !238)
!1005 = !DILocalVariable(name: "c2", scope: !1002, file: !2, line: 1038, type: !238)
!1006 = !DILocalVariable(name: "c3", scope: !1002, file: !2, line: 1039, type: !238)
!1007 = !DILocalVariable(name: "c4", scope: !1002, file: !2, line: 1040, type: !238)
!1008 = !DILocalVariable(name: "c5", scope: !1002, file: !2, line: 1041, type: !238)
!1009 = !DILocalVariable(name: "c6", scope: !1002, file: !2, line: 1042, type: !238)
!1010 = !DILocalVariable(name: "c7", scope: !1002, file: !2, line: 1043, type: !238)
!1011 = !DILocalVariable(name: "eps", scope: !1012, file: !2, line: 1051, type: !238)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 1048, column: 33)
!1013 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 1048, column: 11)
!1014 = !DILocalVariable(name: "c1", scope: !1012, file: !2, line: 1052, type: !238)
!1015 = !DILocalVariable(name: "c2", scope: !1012, file: !2, line: 1053, type: !238)
!1016 = !DILocalVariable(name: "c3", scope: !1012, file: !2, line: 1054, type: !238)
!1017 = !DILocalVariable(name: "c4", scope: !1012, file: !2, line: 1055, type: !238)
!1018 = !DILocalVariable(name: "c5", scope: !1012, file: !2, line: 1056, type: !238)
!1019 = !DILocalVariable(name: "c6", scope: !1012, file: !2, line: 1057, type: !238)
!1020 = !DILocalVariable(name: "c7", scope: !1012, file: !2, line: 1058, type: !238)
!1021 = !DILocalVariable(name: "c8", scope: !1012, file: !2, line: 1059, type: !238)
!1022 = !DILocalVariable(name: "lg", scope: !1023, file: !2, line: 1069, type: !191)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 1064, column: 20)
!1024 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 1064, column: 11)
!1025 = !DILocalVariable(name: "gamma_8", scope: !1026, file: !2, line: 1080, type: !238)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 1075, column: 21)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 1075, column: 11)
!1028 = !DILocalVariable(name: "t", scope: !1026, file: !2, line: 1081, type: !238)
!1029 = !DILocalVariable(name: "c", scope: !1026, file: !2, line: 1082, type: !191)
!1030 = !DILocalVariable(name: "p", scope: !1031, file: !2, line: 1095, type: !76)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 1089, column: 34)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 1089, column: 11)
!1033 = !DILocalVariable(name: "e", scope: !1031, file: !2, line: 1096, type: !76)
!1034 = !DILocalVariable(name: "q", scope: !1031, file: !2, line: 1097, type: !76)
!1035 = !DILocalVariable(name: "pre", scope: !1031, file: !2, line: 1098, type: !76)
!1036 = !DILocalVariable(name: "gstar", scope: !1031, file: !2, line: 1099, type: !191)
!1037 = !DILocalVariable(name: "stat_gs", scope: !1031, file: !2, line: 1100, type: !38)
!1038 = distinct !DIAssignID()
!1039 = !DILocation(line: 0, scope: !1026)
!1040 = distinct !DIAssignID()
!1041 = !DILocation(line: 0, scope: !1031)
!1042 = !DILocation(line: 0, scope: !993)
!1043 = !DILocation(line: 1023, column: 8, scope: !1000)
!1044 = !DILocation(line: 1023, column: 6, scope: !993)
!1045 = !DILocation(line: 1024, column: 17, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 1023, column: 16)
!1047 = !DILocation(line: 1025, column: 13, scope: !1046)
!1048 = !DILocation(line: 1025, column: 17, scope: !1046)
!1049 = !DILocation(line: 1026, column: 5, scope: !1046)
!1050 = !DILocation(line: 1027, column: 16, scope: !999)
!1051 = !DILocation(line: 1027, column: 44, scope: !999)
!1052 = !DILocation(line: 1027, column: 52, scope: !999)
!1053 = !DILocation(line: 1027, column: 49, scope: !999)
!1054 = !DILocation(line: 1027, column: 14, scope: !1000)
!1055 = !DILocation(line: 1028, column: 13, scope: !998)
!1056 = !DILocation(line: 0, scope: !998)
!1057 = !DILocation(line: 1029, column: 32, scope: !998)
!1058 = !DILocation(line: 1029, column: 19, scope: !998)
!1059 = !DILocation(line: 1029, column: 37, scope: !998)
!1060 = !DILocation(line: 1029, column: 17, scope: !998)
!1061 = !DILocation(line: 1030, column: 35, scope: !998)
!1062 = !DILocation(line: 1030, column: 13, scope: !998)
!1063 = !DILocation(line: 1030, column: 17, scope: !998)
!1064 = !DILocation(line: 1033, column: 11, scope: !1003)
!1065 = !DILocation(line: 1033, column: 25, scope: !1003)
!1066 = !DILocation(line: 1033, column: 11, scope: !999)
!1067 = !DILocation(line: 0, scope: !1002)
!1068 = !DILocation(line: 1044, column: 22, scope: !1002)
!1069 = !DILocation(line: 1044, column: 78, scope: !1002)
!1070 = !DILocation(line: 1044, column: 70, scope: !1002)
!1071 = !DILocation(line: 1044, column: 62, scope: !1002)
!1072 = !DILocation(line: 1044, column: 54, scope: !1002)
!1073 = !DILocation(line: 1044, column: 46, scope: !1002)
!1074 = !DILocation(line: 1044, column: 38, scope: !1002)
!1075 = !DILocation(line: 1044, column: 30, scope: !1002)
!1076 = !DILocation(line: 1044, column: 17, scope: !1002)
!1077 = !DILocation(line: 1045, column: 13, scope: !1002)
!1078 = !DILocation(line: 1045, column: 17, scope: !1002)
!1079 = !DILocation(line: 1048, column: 11, scope: !1013)
!1080 = !DILocation(line: 1048, column: 25, scope: !1013)
!1081 = !DILocation(line: 1048, column: 11, scope: !1003)
!1082 = !DILocation(line: 0, scope: !1012)
!1083 = !DILocation(line: 1060, column: 84, scope: !1012)
!1084 = !DILocation(line: 1060, column: 76, scope: !1012)
!1085 = !DILocation(line: 1060, column: 68, scope: !1012)
!1086 = !DILocation(line: 1060, column: 60, scope: !1012)
!1087 = !DILocation(line: 1060, column: 52, scope: !1012)
!1088 = !DILocation(line: 1060, column: 44, scope: !1012)
!1089 = !DILocation(line: 1060, column: 36, scope: !1012)
!1090 = !DILocation(line: 1060, column: 28, scope: !1012)
!1091 = !DILocation(line: 1060, column: 17, scope: !1012)
!1092 = !DILocation(line: 1061, column: 13, scope: !1012)
!1093 = !DILocation(line: 1061, column: 17, scope: !1012)
!1094 = !DILocation(line: 1064, column: 13, scope: !1024)
!1095 = !DILocation(line: 1064, column: 11, scope: !1013)
!1096 = !DILocation(line: 0, scope: !335, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 1070, column: 5, scope: !1023)
!1098 = !DILocation(line: 712, column: 45, scope: !347, inlinedAt: !1097)
!1099 = !DILocation(line: 712, column: 48, scope: !347, inlinedAt: !1097)
!1100 = !DILocation(line: 715, column: 13, scope: !335, inlinedAt: !1097)
!1101 = !DILocation(line: 715, column: 25, scope: !335, inlinedAt: !1097)
!1102 = !DILocation(line: 715, column: 30, scope: !335, inlinedAt: !1097)
!1103 = !DILocation(line: 715, column: 18, scope: !335, inlinedAt: !1097)
!1104 = !DILocation(line: 717, column: 33, scope: !335, inlinedAt: !1097)
!1105 = !DILocation(line: 717, column: 24, scope: !335, inlinedAt: !1097)
!1106 = !DILocation(line: 718, column: 43, scope: !335, inlinedAt: !1097)
!1107 = !DILocation(line: 0, scope: !1023)
!1108 = !DILocation(line: 718, column: 57, scope: !335, inlinedAt: !1097)
!1109 = !DILocation(line: 718, column: 69, scope: !335, inlinedAt: !1097)
!1110 = !DILocation(line: 718, column: 40, scope: !335, inlinedAt: !1097)
!1111 = !DILocation(line: 719, column: 36, scope: !335, inlinedAt: !1097)
!1112 = !DILocation(line: 719, column: 34, scope: !335, inlinedAt: !1097)
!1113 = !DILocation(line: 1071, column: 19, scope: !1023)
!1114 = !DILocation(line: 1071, column: 17, scope: !1023)
!1115 = !DILocation(line: 1072, column: 31, scope: !1023)
!1116 = !DILocation(line: 1072, column: 13, scope: !1023)
!1117 = !DILocation(line: 1072, column: 17, scope: !1023)
!1118 = !DILocation(line: 1075, column: 13, scope: !1027)
!1119 = !DILocation(line: 1075, column: 11, scope: !1024)
!1120 = !DILocation(line: 1081, column: 26, scope: !1026)
!1121 = !DILocation(line: 1081, column: 36, scope: !1026)
!1122 = !DILocation(line: 1082, column: 5, scope: !1026)
!1123 = !DILocation(line: 1083, column: 5, scope: !1026)
!1124 = !DILocation(line: 1084, column: 26, scope: !1026)
!1125 = !DILocation(line: 1084, column: 20, scope: !1026)
!1126 = !DILocation(line: 1084, column: 31, scope: !1026)
!1127 = !DILocation(line: 1084, column: 18, scope: !1026)
!1128 = !DILocation(line: 1085, column: 36, scope: !1026)
!1129 = !DILocation(line: 1085, column: 32, scope: !1026)
!1130 = !DILocation(line: 1085, column: 13, scope: !1026)
!1131 = !DILocation(line: 1086, column: 42, scope: !1026)
!1132 = !DILocation(line: 1086, column: 17, scope: !1026)
!1133 = !DILocation(line: 1088, column: 3, scope: !1027)
!1134 = !DILocation(line: 1089, column: 13, scope: !1032)
!1135 = !DILocation(line: 1089, column: 11, scope: !1027)
!1136 = !DILocation(line: 1095, column: 26, scope: !1031)
!1137 = !DILocation(line: 1095, column: 16, scope: !1031)
!1138 = !DILocation(line: 1096, column: 20, scope: !1031)
!1139 = !DILocation(line: 1096, column: 16, scope: !1031)
!1140 = !DILocation(line: 1097, column: 19, scope: !1031)
!1141 = !DILocation(line: 1097, column: 24, scope: !1031)
!1142 = !DILocation(line: 1098, column: 37, scope: !1031)
!1143 = !DILocation(line: 1098, column: 41, scope: !1031)
!1144 = !DILocation(line: 1098, column: 40, scope: !1031)
!1145 = !DILocation(line: 1099, column: 5, scope: !1031)
!1146 = !DILocation(line: 1100, column: 19, scope: !1031)
!1147 = !DILocation(line: 1101, column: 31, scope: !1031)
!1148 = !DILocation(line: 1101, column: 23, scope: !1031)
!1149 = !DILocation(line: 1101, column: 17, scope: !1031)
!1150 = !DILocation(line: 1102, column: 29, scope: !1031)
!1151 = !DILocation(line: 1102, column: 47, scope: !1031)
!1152 = !DILocation(line: 1102, column: 13, scope: !1031)
!1153 = !DILocation(line: 1102, column: 17, scope: !1031)
!1154 = !DILocation(line: 1104, column: 3, scope: !1032)
!1155 = !DILocation(line: 1106, column: 5, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 1106, column: 5)
!1157 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 1105, column: 8)
!1158 = !DILocation(line: 1106, column: 5, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 1106, column: 5)
!1160 = !DILocation(line: 0, scope: !1000)
!1161 = !DILocation(line: 1108, column: 1, scope: !993)
!1162 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !1163, file: !1163, line: 122, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1163 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!38, !238, !238, !238, !238, !190}
!1166 = distinct !DISubprogram(name: "gsl_sf_gammastar_e", scope: !2, file: !2, line: 1299, type: !236, scopeLine: 1300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1167)
!1167 = !{!1168, !1169, !1170, !1174, !1176, !1177, !1178, !1179, !1180, !1181, !1184, !1187, !1188}
!1168 = !DILocalVariable(name: "x", arg: 1, scope: !1166, file: !2, line: 1299, type: !238)
!1169 = !DILocalVariable(name: "result", arg: 2, scope: !1166, file: !2, line: 1299, type: !190)
!1170 = !DILocalVariable(name: "lg", scope: !1171, file: !2, line: 1307, type: !191)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 1306, column: 20)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 1306, column: 11)
!1173 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 1303, column: 6)
!1174 = !DILocalVariable(name: "stat_lg", scope: !1171, file: !2, line: 1308, type: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!1176 = !DILocalVariable(name: "lx", scope: !1171, file: !2, line: 1309, type: !238)
!1177 = !DILocalVariable(name: "c", scope: !1171, file: !2, line: 1310, type: !238)
!1178 = !DILocalVariable(name: "lnr_val", scope: !1171, file: !2, line: 1311, type: !238)
!1179 = !DILocalVariable(name: "lnr_err", scope: !1171, file: !2, line: 1312, type: !238)
!1180 = !DILocalVariable(name: "stat_e", scope: !1171, file: !2, line: 1313, type: !1175)
!1181 = !DILocalVariable(name: "t", scope: !1182, file: !2, line: 1317, type: !238)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 1316, column: 20)
!1183 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 1316, column: 11)
!1184 = !DILocalVariable(name: "t", scope: !1185, file: !2, line: 1321, type: !238)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 1320, column: 21)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 1320, column: 11)
!1187 = !DILocalVariable(name: "c", scope: !1185, file: !2, line: 1322, type: !191)
!1188 = !DILocalVariable(name: "xi", scope: !1189, file: !2, line: 1335, type: !238)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 1332, column: 36)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 1332, column: 11)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 1329, column: 11)
!1192 = distinct !DIAssignID()
!1193 = !DILocation(line: 0, scope: !1171)
!1194 = !DILocation(line: 0, scope: !1166)
!1195 = !DILocation(line: 1303, column: 8, scope: !1173)
!1196 = !DILocation(line: 1303, column: 6, scope: !1166)
!1197 = !DILocation(line: 1304, column: 5, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 1304, column: 5)
!1199 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 1303, column: 16)
!1200 = !DILocation(line: 1304, column: 5, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 1304, column: 5)
!1202 = !DILocation(line: 1306, column: 13, scope: !1172)
!1203 = !DILocation(line: 1306, column: 11, scope: !1173)
!1204 = !DILocation(line: 1307, column: 5, scope: !1171)
!1205 = !DILocation(line: 1308, column: 25, scope: !1171)
!1206 = !DILocation(line: 1311, column: 31, scope: !1171)
!1207 = !DILocation(line: 1311, column: 44, scope: !1171)
!1208 = !DILocation(line: 1311, column: 48, scope: !1171)
!1209 = !DILocation(line: 1311, column: 52, scope: !1171)
!1210 = !DILocation(line: 1312, column: 31, scope: !1171)
!1211 = !DILocation(line: 1312, column: 69, scope: !1171)
!1212 = !DILocation(line: 1312, column: 68, scope: !1171)
!1213 = !DILocation(line: 1312, column: 59, scope: !1171)
!1214 = !DILocation(line: 1313, column: 25, scope: !1171)
!1215 = !DILocation(line: 1314, column: 12, scope: !1171)
!1216 = !DILocation(line: 1315, column: 3, scope: !1172)
!1217 = !DILocation(line: 1316, column: 13, scope: !1183)
!1218 = !DILocation(line: 1316, column: 11, scope: !1172)
!1219 = !DILocation(line: 1317, column: 29, scope: !1182)
!1220 = !DILocation(line: 11, column: 19, scope: !1221, inlinedAt: !1242)
!1221 = distinct !DISubprogram(name: "cheb_eval_e", scope: !1222, file: !1222, line: 3, type: !1223, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1226)
!1222 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!1223 = !DISubroutineType(cc: DW_CC_nocall, types: !1224)
!1224 = !{!38, !1225, !238, !190}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1240}
!1227 = !DILocalVariable(name: "cs", arg: 1, scope: !1221, file: !1222, line: 3, type: !1225)
!1228 = !DILocalVariable(name: "x", arg: 2, scope: !1221, file: !1222, line: 4, type: !238)
!1229 = !DILocalVariable(name: "result", arg: 3, scope: !1221, file: !1222, line: 5, type: !190)
!1230 = !DILocalVariable(name: "j", scope: !1221, file: !1222, line: 7, type: !38)
!1231 = !DILocalVariable(name: "d", scope: !1221, file: !1222, line: 8, type: !76)
!1232 = !DILocalVariable(name: "dd", scope: !1221, file: !1222, line: 9, type: !76)
!1233 = !DILocalVariable(name: "y", scope: !1221, file: !1222, line: 11, type: !76)
!1234 = !DILocalVariable(name: "y2", scope: !1221, file: !1222, line: 12, type: !76)
!1235 = !DILocalVariable(name: "e", scope: !1221, file: !1222, line: 14, type: !76)
!1236 = !DILocalVariable(name: "temp", scope: !1237, file: !1222, line: 17, type: !76)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !1222, line: 16, column: 33)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !1222, line: 16, column: 3)
!1239 = distinct !DILexicalBlock(scope: !1221, file: !1222, line: 16, column: 3)
!1240 = !DILocalVariable(name: "temp", scope: !1241, file: !1222, line: 24, type: !76)
!1241 = distinct !DILexicalBlock(scope: !1221, file: !1222, line: 23, column: 3)
!1242 = distinct !DILocation(line: 1318, column: 12, scope: !1182)
!1243 = !DILocation(line: 0, scope: !1182)
!1244 = !{}
!1245 = !DILocation(line: 0, scope: !1221, inlinedAt: !1242)
!1246 = !DILocation(line: 11, column: 30, scope: !1221, inlinedAt: !1242)
!1247 = !DILocation(line: 11, column: 39, scope: !1221, inlinedAt: !1242)
!1248 = !DILocation(line: 12, column: 19, scope: !1221, inlinedAt: !1242)
!1249 = !DILocation(line: 16, column: 3, scope: !1239, inlinedAt: !1242)
!1250 = !DILocation(line: 0, scope: !1237, inlinedAt: !1242)
!1251 = !DILocation(line: 18, column: 11, scope: !1237, inlinedAt: !1242)
!1252 = !DILocation(line: 18, column: 21, scope: !1237, inlinedAt: !1242)
!1253 = !DILocation(line: 19, column: 10, scope: !1237, inlinedAt: !1242)
!1254 = !DILocation(line: 19, column: 26, scope: !1237, inlinedAt: !1242)
!1255 = !DILocation(line: 19, column: 37, scope: !1237, inlinedAt: !1242)
!1256 = !DILocation(line: 19, column: 7, scope: !1237, inlinedAt: !1242)
!1257 = !DILocation(line: 16, column: 29, scope: !1238, inlinedAt: !1242)
!1258 = !DILocation(line: 16, column: 23, scope: !1238, inlinedAt: !1242)
!1259 = distinct !{!1259, !1249, !1260, !1261}
!1260 = !DILocation(line: 21, column: 3, scope: !1239, inlinedAt: !1242)
!1261 = !{!"llvm.loop.mustprogress"}
!1262 = !DILocation(line: 0, scope: !1241, inlinedAt: !1242)
!1263 = !DILocation(line: 25, column: 10, scope: !1241, inlinedAt: !1242)
!1264 = !DILocation(line: 25, column: 18, scope: !1241, inlinedAt: !1242)
!1265 = !DILocation(line: 26, column: 10, scope: !1241, inlinedAt: !1242)
!1266 = !DILocation(line: 26, column: 25, scope: !1241, inlinedAt: !1242)
!1267 = !DILocation(line: 26, column: 34, scope: !1241, inlinedAt: !1242)
!1268 = !DILocation(line: 26, column: 7, scope: !1241, inlinedAt: !1242)
!1269 = !DILocation(line: 29, column: 15, scope: !1221, inlinedAt: !1242)
!1270 = !DILocation(line: 30, column: 33, scope: !1221, inlinedAt: !1242)
!1271 = !DILocation(line: 30, column: 11, scope: !1221, inlinedAt: !1242)
!1272 = !DILocation(line: 30, column: 15, scope: !1221, inlinedAt: !1242)
!1273 = !DILocation(line: 1320, column: 13, scope: !1186)
!1274 = !DILocation(line: 1320, column: 11, scope: !1183)
!1275 = !DILocation(line: 1321, column: 26, scope: !1185)
!1276 = !DILocation(line: 11, column: 19, scope: !1221, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 1323, column: 5, scope: !1185)
!1278 = !DILocation(line: 0, scope: !1185)
!1279 = !DILocation(line: 0, scope: !1221, inlinedAt: !1277)
!1280 = !DILocation(line: 11, column: 30, scope: !1221, inlinedAt: !1277)
!1281 = !DILocation(line: 11, column: 39, scope: !1221, inlinedAt: !1277)
!1282 = !DILocation(line: 12, column: 19, scope: !1221, inlinedAt: !1277)
!1283 = !DILocation(line: 16, column: 3, scope: !1239, inlinedAt: !1277)
!1284 = !DILocation(line: 0, scope: !1237, inlinedAt: !1277)
!1285 = !DILocation(line: 18, column: 11, scope: !1237, inlinedAt: !1277)
!1286 = !DILocation(line: 18, column: 21, scope: !1237, inlinedAt: !1277)
!1287 = !DILocation(line: 19, column: 10, scope: !1237, inlinedAt: !1277)
!1288 = !DILocation(line: 19, column: 26, scope: !1237, inlinedAt: !1277)
!1289 = !DILocation(line: 19, column: 37, scope: !1237, inlinedAt: !1277)
!1290 = !DILocation(line: 19, column: 7, scope: !1237, inlinedAt: !1277)
!1291 = !DILocation(line: 16, column: 29, scope: !1238, inlinedAt: !1277)
!1292 = !DILocation(line: 16, column: 23, scope: !1238, inlinedAt: !1277)
!1293 = distinct !{!1293, !1283, !1294, !1261}
!1294 = !DILocation(line: 21, column: 3, scope: !1239, inlinedAt: !1277)
!1295 = !DILocation(line: 0, scope: !1241, inlinedAt: !1277)
!1296 = !DILocation(line: 25, column: 10, scope: !1241, inlinedAt: !1277)
!1297 = !DILocation(line: 25, column: 18, scope: !1241, inlinedAt: !1277)
!1298 = !DILocation(line: 26, column: 10, scope: !1241, inlinedAt: !1277)
!1299 = !DILocation(line: 26, column: 25, scope: !1241, inlinedAt: !1277)
!1300 = !DILocation(line: 26, column: 34, scope: !1241, inlinedAt: !1277)
!1301 = !DILocation(line: 26, column: 7, scope: !1241, inlinedAt: !1277)
!1302 = !DILocation(line: 30, column: 33, scope: !1221, inlinedAt: !1277)
!1303 = !DILocation(line: 1324, column: 28, scope: !1185)
!1304 = !DILocation(line: 1324, column: 25, scope: !1185)
!1305 = !DILocation(line: 1324, column: 49, scope: !1185)
!1306 = !DILocation(line: 1324, column: 43, scope: !1185)
!1307 = !DILocation(line: 1324, column: 18, scope: !1185)
!1308 = !DILocation(line: 1325, column: 25, scope: !1185)
!1309 = !DILocation(line: 1325, column: 13, scope: !1185)
!1310 = !DILocation(line: 1326, column: 44, scope: !1185)
!1311 = !DILocation(line: 1326, column: 42, scope: !1185)
!1312 = !DILocation(line: 1326, column: 17, scope: !1185)
!1313 = !DILocation(line: 1329, column: 13, scope: !1191)
!1314 = !DILocation(line: 1329, column: 11, scope: !1186)
!1315 = !DILocalVariable(name: "x", arg: 1, scope: !1316, file: !2, line: 954, type: !238)
!1316 = distinct !DISubprogram(name: "gammastar_ser", scope: !2, file: !2, line: 954, type: !1317, scopeLine: 955, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1318)
!1317 = !DISubroutineType(cc: DW_CC_nocall, types: !237)
!1318 = !{!1315, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329}
!1319 = !DILocalVariable(name: "result", arg: 2, scope: !1316, file: !2, line: 954, type: !190)
!1320 = !DILocalVariable(name: "y", scope: !1316, file: !2, line: 960, type: !238)
!1321 = !DILocalVariable(name: "c0", scope: !1316, file: !2, line: 961, type: !238)
!1322 = !DILocalVariable(name: "c1", scope: !1316, file: !2, line: 962, type: !238)
!1323 = !DILocalVariable(name: "c2", scope: !1316, file: !2, line: 963, type: !238)
!1324 = !DILocalVariable(name: "c3", scope: !1316, file: !2, line: 964, type: !238)
!1325 = !DILocalVariable(name: "c4", scope: !1316, file: !2, line: 965, type: !238)
!1326 = !DILocalVariable(name: "c5", scope: !1316, file: !2, line: 966, type: !238)
!1327 = !DILocalVariable(name: "c6", scope: !1316, file: !2, line: 967, type: !238)
!1328 = !DILocalVariable(name: "c7", scope: !1316, file: !2, line: 968, type: !238)
!1329 = !DILocalVariable(name: "ser", scope: !1316, file: !2, line: 969, type: !238)
!1330 = !DILocation(line: 0, scope: !1316, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 1330, column: 12, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 1329, column: 42)
!1333 = !DILocation(line: 960, column: 26, scope: !1316, inlinedAt: !1331)
!1334 = !DILocation(line: 960, column: 23, scope: !1316, inlinedAt: !1331)
!1335 = !DILocation(line: 969, column: 76, scope: !1316, inlinedAt: !1331)
!1336 = !DILocation(line: 969, column: 68, scope: !1316, inlinedAt: !1331)
!1337 = !DILocation(line: 969, column: 60, scope: !1316, inlinedAt: !1331)
!1338 = !DILocation(line: 969, column: 52, scope: !1316, inlinedAt: !1331)
!1339 = !DILocation(line: 969, column: 44, scope: !1316, inlinedAt: !1331)
!1340 = !DILocation(line: 969, column: 36, scope: !1316, inlinedAt: !1331)
!1341 = !DILocation(line: 969, column: 28, scope: !1316, inlinedAt: !1331)
!1342 = !DILocation(line: 970, column: 24, scope: !1316, inlinedAt: !1331)
!1343 = !DILocation(line: 970, column: 17, scope: !1316, inlinedAt: !1331)
!1344 = !DILocation(line: 970, column: 15, scope: !1316, inlinedAt: !1331)
!1345 = !DILocation(line: 971, column: 39, scope: !1316, inlinedAt: !1331)
!1346 = !DILocalVariable(name: "a", arg: 1, scope: !1347, file: !1348, line: 69, type: !76)
!1347 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !1348, file: !1348, line: 69, type: !1349, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1351)
!1348 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!76, !76, !76}
!1351 = !{!1346, !1352}
!1352 = !DILocalVariable(name: "b", arg: 2, scope: !1347, file: !1348, line: 69, type: !76)
!1353 = !DILocation(line: 0, scope: !1347, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 971, column: 55, scope: !1316, inlinedAt: !1331)
!1355 = !DILocation(line: 71, column: 10, scope: !1347, inlinedAt: !1354)
!1356 = !DILocation(line: 971, column: 53, scope: !1316, inlinedAt: !1331)
!1357 = !DILocation(line: 971, column: 11, scope: !1316, inlinedAt: !1331)
!1358 = !DILocation(line: 971, column: 15, scope: !1316, inlinedAt: !1331)
!1359 = !DILocation(line: 1330, column: 5, scope: !1332)
!1360 = !DILocation(line: 1332, column: 13, scope: !1190)
!1361 = !DILocation(line: 1332, column: 11, scope: !1191)
!1362 = !DILocation(line: 1335, column: 26, scope: !1189)
!1363 = !DILocation(line: 0, scope: !1189)
!1364 = !DILocation(line: 1336, column: 27, scope: !1189)
!1365 = !DILocation(line: 1336, column: 42, scope: !1189)
!1366 = !DILocation(line: 1336, column: 85, scope: !1189)
!1367 = !DILocation(line: 1336, column: 57, scope: !1189)
!1368 = !DILocation(line: 1336, column: 47, scope: !1189)
!1369 = !DILocation(line: 1336, column: 32, scope: !1189)
!1370 = !DILocation(line: 1336, column: 17, scope: !1189)
!1371 = !DILocation(line: 1337, column: 43, scope: !1189)
!1372 = !DILocation(line: 1337, column: 41, scope: !1189)
!1373 = !DILocation(line: 1337, column: 13, scope: !1189)
!1374 = !DILocation(line: 1337, column: 17, scope: !1189)
!1375 = !DILocation(line: 1341, column: 17, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 1340, column: 8)
!1377 = !DILocation(line: 1342, column: 22, scope: !1376)
!1378 = !DILocation(line: 1342, column: 13, scope: !1376)
!1379 = !DILocation(line: 1342, column: 17, scope: !1376)
!1380 = !DILocation(line: 1343, column: 5, scope: !1376)
!1381 = !DILocation(line: 0, scope: !1173)
!1382 = !DILocation(line: 1345, column: 1, scope: !1166)
!1383 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !1163, file: !1163, line: 110, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!38, !238, !238, !190}
!1386 = !DILocation(line: 0, scope: !1221)
!1387 = !DILocation(line: 11, column: 19, scope: !1221)
!1388 = !DILocation(line: 11, column: 28, scope: !1221)
!1389 = !{!1390, !276, i64 16}
!1390 = !{!"cheb_series_struct", !1391, i64 0, !628, i64 8, !276, i64 16, !276, i64 24, !628, i64 32}
!1391 = !{!"any pointer", !277, i64 0}
!1392 = !DILocation(line: 11, column: 36, scope: !1221)
!1393 = !{!1390, !276, i64 24}
!1394 = !DILocation(line: 11, column: 48, scope: !1221)
!1395 = !DILocation(line: 11, column: 39, scope: !1221)
!1396 = !DILocation(line: 12, column: 19, scope: !1221)
!1397 = !DILocation(line: 16, column: 15, scope: !1239)
!1398 = !{!1390, !628, i64 8}
!1399 = !DILocation(line: 16, column: 23, scope: !1238)
!1400 = !DILocation(line: 25, column: 30, scope: !1241)
!1401 = !{!1390, !1391, i64 0}
!1402 = !DILocation(line: 16, column: 3, scope: !1239)
!1403 = !DILocation(line: 0, scope: !1237)
!1404 = !DILocation(line: 18, column: 11, scope: !1237)
!1405 = !DILocation(line: 18, column: 21, scope: !1237)
!1406 = !DILocation(line: 19, column: 10, scope: !1237)
!1407 = !DILocation(line: 19, column: 26, scope: !1237)
!1408 = !DILocation(line: 19, column: 37, scope: !1237)
!1409 = !DILocation(line: 19, column: 7, scope: !1237)
!1410 = !DILocation(line: 16, column: 29, scope: !1238)
!1411 = distinct !{!1411, !1402, !1412, !1261}
!1412 = !DILocation(line: 21, column: 3, scope: !1239)
!1413 = !DILocation(line: 0, scope: !1241)
!1414 = !DILocation(line: 25, column: 10, scope: !1241)
!1415 = !DILocation(line: 25, column: 26, scope: !1241)
!1416 = !DILocation(line: 25, column: 24, scope: !1241)
!1417 = !DILocation(line: 26, column: 10, scope: !1241)
!1418 = !DILocation(line: 26, column: 25, scope: !1241)
!1419 = !DILocation(line: 26, column: 42, scope: !1241)
!1420 = !DILocation(line: 26, column: 40, scope: !1241)
!1421 = !DILocation(line: 26, column: 7, scope: !1241)
!1422 = !DILocation(line: 29, column: 15, scope: !1221)
!1423 = !DILocation(line: 30, column: 33, scope: !1221)
!1424 = !DILocation(line: 30, column: 44, scope: !1221)
!1425 = !DILocation(line: 30, column: 39, scope: !1221)
!1426 = !DILocation(line: 30, column: 11, scope: !1221)
!1427 = !DILocation(line: 30, column: 15, scope: !1221)
!1428 = !DILocation(line: 32, column: 3, scope: !1221)
!1429 = !DILocation(line: 0, scope: !1316)
!1430 = !DILocation(line: 960, column: 26, scope: !1316)
!1431 = !DILocation(line: 960, column: 23, scope: !1316)
!1432 = !DILocation(line: 969, column: 76, scope: !1316)
!1433 = !DILocation(line: 969, column: 68, scope: !1316)
!1434 = !DILocation(line: 969, column: 60, scope: !1316)
!1435 = !DILocation(line: 969, column: 52, scope: !1316)
!1436 = !DILocation(line: 969, column: 44, scope: !1316)
!1437 = !DILocation(line: 969, column: 36, scope: !1316)
!1438 = !DILocation(line: 969, column: 28, scope: !1316)
!1439 = !DILocation(line: 970, column: 24, scope: !1316)
!1440 = !DILocation(line: 970, column: 17, scope: !1316)
!1441 = !DILocation(line: 970, column: 15, scope: !1316)
!1442 = !DILocation(line: 971, column: 39, scope: !1316)
!1443 = !DILocation(line: 0, scope: !1347, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 971, column: 55, scope: !1316)
!1445 = !DILocation(line: 71, column: 10, scope: !1347, inlinedAt: !1444)
!1446 = !DILocation(line: 971, column: 53, scope: !1316)
!1447 = !DILocation(line: 971, column: 11, scope: !1316)
!1448 = !DILocation(line: 971, column: 15, scope: !1316)
!1449 = !DILocation(line: 972, column: 3, scope: !1316)
!1450 = distinct !DISubprogram(name: "gsl_sf_gammainv_e", scope: !2, file: !2, line: 1349, type: !236, scopeLine: 1350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1451)
!1451 = !{!1452, !1453, !1454, !1458, !1459, !1460, !1462}
!1452 = !DILocalVariable(name: "x", arg: 1, scope: !1450, file: !2, line: 1349, type: !238)
!1453 = !DILocalVariable(name: "result", arg: 2, scope: !1450, file: !2, line: 1349, type: !190)
!1454 = !DILocalVariable(name: "lng", scope: !1455, file: !2, line: 1358, type: !191)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 1357, column: 22)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 1357, column: 13)
!1457 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 1353, column: 7)
!1458 = !DILocalVariable(name: "sgn", scope: !1455, file: !2, line: 1359, type: !76)
!1459 = !DILocalVariable(name: "stat_lng", scope: !1455, file: !2, line: 1360, type: !38)
!1460 = !DILocalVariable(name: "g", scope: !1461, file: !2, line: 1376, type: !191)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 1375, column: 8)
!1462 = !DILocalVariable(name: "stat_g", scope: !1461, file: !2, line: 1377, type: !38)
!1463 = distinct !DIAssignID()
!1464 = !DILocation(line: 0, scope: !1455)
!1465 = distinct !DIAssignID()
!1466 = distinct !DIAssignID()
!1467 = !DILocation(line: 0, scope: !1461)
!1468 = !DILocation(line: 0, scope: !1450)
!1469 = !DILocation(line: 1353, column: 9, scope: !1457)
!1470 = !DILocation(line: 1353, column: 16, scope: !1457)
!1471 = !DILocation(line: 1355, column: 17, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 1353, column: 34)
!1473 = !DILocation(line: 1356, column: 5, scope: !1472)
!1474 = !DILocation(line: 1357, column: 15, scope: !1456)
!1475 = !DILocation(line: 1357, column: 13, scope: !1457)
!1476 = !DILocation(line: 1358, column: 5, scope: !1455)
!1477 = !DILocation(line: 1359, column: 5, scope: !1455)
!1478 = !DILocation(line: 1360, column: 20, scope: !1455)
!1479 = !DILocation(line: 1361, column: 8, scope: !1455)
!1480 = !DILocation(line: 1363, column: 19, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 1361, column: 30)
!1482 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 1361, column: 8)
!1483 = !DILocation(line: 1364, column: 7, scope: !1481)
!1484 = !DILocation(line: 1368, column: 19, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 1366, column: 38)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 1366, column: 13)
!1487 = !DILocation(line: 1369, column: 7, scope: !1485)
!1488 = !DILocation(line: 1372, column: 41, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 1371, column: 10)
!1490 = !DILocation(line: 1372, column: 36, scope: !1489)
!1491 = !DILocation(line: 1372, column: 50, scope: !1489)
!1492 = !DILocation(line: 1372, column: 55, scope: !1489)
!1493 = !DILocation(line: 1372, column: 14, scope: !1489)
!1494 = !DILocation(line: 1372, column: 7, scope: !1489)
!1495 = !DILocation(line: 0, scope: !1482)
!1496 = !DILocation(line: 1374, column: 3, scope: !1456)
!1497 = !DILocation(line: 1376, column: 5, scope: !1461)
!1498 = !DILocation(line: 1377, column: 18, scope: !1461)
!1499 = !DILocation(line: 1378, column: 15, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 1378, column: 8)
!1501 = !DILocation(line: 1378, column: 8, scope: !1461)
!1502 = !DILocation(line: 1379, column: 7, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 1379, column: 7)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 1378, column: 31)
!1505 = !DILocation(line: 1379, column: 7, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !2, line: 1379, column: 7)
!1507 = !DILocation(line: 1382, column: 28, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 1381, column: 10)
!1509 = !DILocation(line: 1382, column: 25, scope: !1508)
!1510 = !DILocation(line: 1382, column: 20, scope: !1508)
!1511 = !DILocation(line: 1383, column: 29, scope: !1508)
!1512 = !DILocation(line: 1383, column: 32, scope: !1508)
!1513 = !DILocation(line: 1383, column: 40, scope: !1508)
!1514 = !DILocation(line: 1383, column: 15, scope: !1508)
!1515 = !DILocation(line: 1384, column: 46, scope: !1508)
!1516 = !DILocation(line: 1384, column: 44, scope: !1508)
!1517 = !DILocation(line: 1384, column: 19, scope: !1508)
!1518 = !DILocation(line: 1385, column: 7, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 1385, column: 7)
!1520 = !DILocation(line: 1385, column: 7, scope: !1508)
!1521 = !DILocation(line: 0, scope: !1500)
!1522 = !DILocation(line: 1388, column: 3, scope: !1456)
!1523 = !DILocation(line: 0, scope: !1457)
!1524 = !DILocation(line: 1389, column: 1, scope: !1450)
!1525 = distinct !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !2, file: !2, line: 1393, type: !1526, scopeLine: 1394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1528)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!38, !76, !76, !190, !190}
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543}
!1529 = !DILocalVariable(name: "zr", arg: 1, scope: !1525, file: !2, line: 1393, type: !76)
!1530 = !DILocalVariable(name: "zi", arg: 2, scope: !1525, file: !2, line: 1393, type: !76)
!1531 = !DILocalVariable(name: "lnr", arg: 3, scope: !1525, file: !2, line: 1393, type: !190)
!1532 = !DILocalVariable(name: "arg", arg: 4, scope: !1525, file: !2, line: 1393, type: !190)
!1533 = !DILocalVariable(name: "x", scope: !1534, file: !2, line: 1399, type: !76)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 1395, column: 17)
!1535 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 1395, column: 6)
!1536 = !DILocalVariable(name: "y", scope: !1534, file: !2, line: 1400, type: !76)
!1537 = !DILocalVariable(name: "a", scope: !1534, file: !2, line: 1401, type: !191)
!1538 = !DILocalVariable(name: "b", scope: !1534, file: !2, line: 1401, type: !191)
!1539 = !DILocalVariable(name: "lnsin_r", scope: !1534, file: !2, line: 1402, type: !191)
!1540 = !DILocalVariable(name: "lnsin_i", scope: !1534, file: !2, line: 1402, type: !191)
!1541 = !DILocalVariable(name: "stat_l", scope: !1534, file: !2, line: 1404, type: !38)
!1542 = !DILocalVariable(name: "stat_s", scope: !1534, file: !2, line: 1405, type: !38)
!1543 = !DILocalVariable(name: "stat_r", scope: !1544, file: !2, line: 1408, type: !38)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 1407, column: 31)
!1545 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 1407, column: 8)
!1546 = distinct !DIAssignID()
!1547 = !DILocation(line: 0, scope: !1534)
!1548 = distinct !DIAssignID()
!1549 = distinct !DIAssignID()
!1550 = distinct !DIAssignID()
!1551 = !DILocation(line: 0, scope: !1525)
!1552 = !DILocation(line: 1395, column: 9, scope: !1535)
!1553 = !DILocation(line: 1395, column: 6, scope: !1525)
!1554 = !DILocation(line: 1400, column: 16, scope: !1534)
!1555 = !DILocation(line: 1401, column: 5, scope: !1534)
!1556 = !DILocation(line: 1402, column: 5, scope: !1534)
!1557 = !DILocation(line: 1404, column: 18, scope: !1534)
!1558 = !DILocation(line: 1405, column: 46, scope: !1534)
!1559 = !DILocation(line: 1405, column: 55, scope: !1534)
!1560 = !DILocation(line: 1405, column: 18, scope: !1534)
!1561 = !DILocation(line: 1407, column: 15, scope: !1545)
!1562 = !DILocation(line: 1407, column: 8, scope: !1534)
!1563 = !DILocation(line: 1409, column: 35, scope: !1544)
!1564 = !DILocation(line: 1409, column: 43, scope: !1544)
!1565 = !DILocation(line: 1409, column: 16, scope: !1544)
!1566 = !DILocation(line: 1410, column: 26, scope: !1544)
!1567 = !DILocation(line: 1410, column: 34, scope: !1544)
!1568 = !DILocation(line: 1410, column: 64, scope: !1544)
!1569 = !DILocation(line: 1410, column: 62, scope: !1544)
!1570 = !DILocation(line: 1410, column: 12, scope: !1544)
!1571 = !DILocation(line: 1410, column: 16, scope: !1544)
!1572 = !DILocation(line: 1411, column: 27, scope: !1544)
!1573 = !DILocation(line: 1411, column: 18, scope: !1544)
!1574 = !DILocation(line: 1411, column: 35, scope: !1544)
!1575 = !DILocation(line: 1411, column: 16, scope: !1544)
!1576 = !DILocation(line: 1412, column: 26, scope: !1544)
!1577 = !DILocation(line: 1412, column: 34, scope: !1544)
!1578 = !DILocation(line: 1412, column: 64, scope: !1544)
!1579 = !DILocation(line: 1412, column: 62, scope: !1544)
!1580 = !DILocation(line: 1412, column: 12, scope: !1544)
!1581 = !DILocation(line: 1412, column: 16, scope: !1544)
!1582 = !DILocation(line: 1413, column: 16, scope: !1544)
!1583 = !DILocation(line: 0, scope: !1544)
!1584 = !DILocation(line: 1417, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 1417, column: 7)
!1586 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 1416, column: 10)
!1587 = !DILocation(line: 1417, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 1417, column: 7)
!1589 = !DILocation(line: 0, scope: !1545)
!1590 = !DILocation(line: 1419, column: 3, scope: !1535)
!1591 = !DILocation(line: 1422, column: 12, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 1420, column: 8)
!1593 = !DILocation(line: 1422, column: 5, scope: !1592)
!1594 = !DILocation(line: 0, scope: !1535)
!1595 = !DILocation(line: 1424, column: 1, scope: !1525)
!1596 = distinct !DISubprogram(name: "lngamma_lanczos_complex", scope: !2, file: !2, line: 661, type: !1597, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1598)
!1597 = !DISubroutineType(cc: DW_CC_nocall, types: !1527)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1616, !1617}
!1599 = !DILocalVariable(name: "zr", arg: 1, scope: !1596, file: !2, line: 661, type: !76)
!1600 = !DILocalVariable(name: "zi", arg: 2, scope: !1596, file: !2, line: 661, type: !76)
!1601 = !DILocalVariable(name: "yr", arg: 3, scope: !1596, file: !2, line: 661, type: !190)
!1602 = !DILocalVariable(name: "yi", arg: 4, scope: !1596, file: !2, line: 661, type: !190)
!1603 = !DILocalVariable(name: "k", scope: !1596, file: !2, line: 663, type: !38)
!1604 = !DILocalVariable(name: "log1_r", scope: !1596, file: !2, line: 664, type: !191)
!1605 = !DILocalVariable(name: "log1_i", scope: !1596, file: !2, line: 664, type: !191)
!1606 = !DILocalVariable(name: "logAg_r", scope: !1596, file: !2, line: 665, type: !191)
!1607 = !DILocalVariable(name: "logAg_i", scope: !1596, file: !2, line: 665, type: !191)
!1608 = !DILocalVariable(name: "Ag_r", scope: !1596, file: !2, line: 666, type: !76)
!1609 = !DILocalVariable(name: "Ag_i", scope: !1596, file: !2, line: 666, type: !76)
!1610 = !DILocalVariable(name: "yi_tmp_val", scope: !1596, file: !2, line: 667, type: !76)
!1611 = !DILocalVariable(name: "yi_tmp_err", scope: !1596, file: !2, line: 667, type: !76)
!1612 = !DILocalVariable(name: "R", scope: !1613, file: !2, line: 674, type: !76)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 673, column: 23)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 673, column: 3)
!1615 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 673, column: 3)
!1616 = !DILocalVariable(name: "I", scope: !1613, file: !2, line: 675, type: !76)
!1617 = !DILocalVariable(name: "a", scope: !1613, file: !2, line: 676, type: !76)
!1618 = distinct !DIAssignID()
!1619 = !DILocation(line: 0, scope: !1596)
!1620 = distinct !DIAssignID()
!1621 = distinct !DIAssignID()
!1622 = distinct !DIAssignID()
!1623 = !DILocation(line: 664, column: 3, scope: !1596)
!1624 = !DILocation(line: 665, column: 3, scope: !1596)
!1625 = !DILocation(line: 676, column: 35, scope: !1613)
!1626 = !DILocation(line: 0, scope: !1613)
!1627 = !DILocation(line: 676, column: 31, scope: !1613)
!1628 = !DILocation(line: 677, column: 16, scope: !1613)
!1629 = !DILocation(line: 678, column: 16, scope: !1613)
!1630 = !DILocation(line: 674, column: 19, scope: !1613)
!1631 = !DILocation(line: 681, column: 27, scope: !1596)
!1632 = !DILocation(line: 681, column: 3, scope: !1596)
!1633 = !DILocation(line: 682, column: 3, scope: !1596)
!1634 = !DILocation(line: 685, column: 29, scope: !1596)
!1635 = !DILocation(line: 685, column: 21, scope: !1596)
!1636 = !DILocation(line: 685, column: 45, scope: !1596)
!1637 = !DILocation(line: 685, column: 37, scope: !1596)
!1638 = !DILocation(line: 685, column: 49, scope: !1596)
!1639 = !DILocation(line: 685, column: 60, scope: !1596)
!1640 = !DILocation(line: 685, column: 86, scope: !1596)
!1641 = !DILocation(line: 685, column: 11, scope: !1596)
!1642 = !DILocation(line: 686, column: 15, scope: !1596)
!1643 = !DILocation(line: 686, column: 37, scope: !1596)
!1644 = !DILocation(line: 686, column: 49, scope: !1596)
!1645 = !DILocation(line: 686, column: 64, scope: !1596)
!1646 = !DILocation(line: 686, column: 11, scope: !1596)
!1647 = !DILocation(line: 687, column: 46, scope: !1596)
!1648 = !DILocation(line: 687, column: 37, scope: !1596)
!1649 = !DILocation(line: 687, column: 35, scope: !1596)
!1650 = !DILocation(line: 687, column: 7, scope: !1596)
!1651 = !DILocation(line: 687, column: 11, scope: !1596)
!1652 = !DILocation(line: 688, column: 37, scope: !1596)
!1653 = !DILocation(line: 688, column: 35, scope: !1596)
!1654 = !DILocation(line: 688, column: 7, scope: !1596)
!1655 = !DILocation(line: 688, column: 11, scope: !1596)
!1656 = !DILocation(line: 691, column: 3, scope: !1596)
!1657 = !DILocation(line: 692, column: 11, scope: !1596)
!1658 = !DILocation(line: 694, column: 1, scope: !1596)
!1659 = !DILocation(line: 693, column: 3, scope: !1596)
!1660 = !DISubprogram(name: "gsl_sf_complex_logsin_e", scope: !1661, file: !1661, line: 79, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1661 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!38, !238, !238, !190, !190}
!1664 = !DISubprogram(name: "gsl_sf_angle_restrict_symm_e", scope: !1661, file: !1661, line: 133, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!38, !141}
!1667 = distinct !DISubprogram(name: "gsl_sf_taylorcoeff_e", scope: !2, file: !2, line: 1427, type: !1668, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1670)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!38, !1175, !238, !190}
!1670 = !{!1671, !1672, !1673, !1674, !1680, !1681, !1685}
!1671 = !DILocalVariable(name: "n", arg: 1, scope: !1667, file: !2, line: 1427, type: !1175)
!1672 = !DILocalVariable(name: "x", arg: 2, scope: !1667, file: !2, line: 1427, type: !238)
!1673 = !DILocalVariable(name: "result", arg: 3, scope: !1667, file: !2, line: 1427, type: !190)
!1674 = !DILocalVariable(name: "log2pi", scope: !1675, file: !2, line: 1450, type: !238)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1449, column: 8)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 1444, column: 11)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 1439, column: 11)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 1434, column: 11)
!1679 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 1431, column: 6)
!1680 = !DILocalVariable(name: "ln_test", scope: !1675, file: !2, line: 1451, type: !238)
!1681 = !DILocalVariable(name: "product", scope: !1682, file: !2, line: 1460, type: !76)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 1459, column: 10)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 1456, column: 13)
!1684 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 1453, column: 8)
!1685 = !DILocalVariable(name: "k", scope: !1682, file: !2, line: 1461, type: !38)
!1686 = !DILocation(line: 0, scope: !1667)
!1687 = !DILocation(line: 1431, column: 8, scope: !1679)
!1688 = !DILocation(line: 1431, column: 14, scope: !1679)
!1689 = !DILocation(line: 1432, column: 5, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 1432, column: 5)
!1691 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 1431, column: 24)
!1692 = !DILocation(line: 1432, column: 5, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 1432, column: 5)
!1694 = !DILocation(line: 1434, column: 11, scope: !1679)
!1695 = !DILocation(line: 1435, column: 17, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 1434, column: 19)
!1697 = !DILocation(line: 1436, column: 13, scope: !1696)
!1698 = !DILocation(line: 1436, column: 17, scope: !1696)
!1699 = !DILocation(line: 1437, column: 5, scope: !1696)
!1700 = !DILocation(line: 1440, column: 17, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 1439, column: 19)
!1702 = !DILocation(line: 1441, column: 13, scope: !1701)
!1703 = !DILocation(line: 1441, column: 17, scope: !1701)
!1704 = !DILocation(line: 1442, column: 5, scope: !1701)
!1705 = !DILocation(line: 1444, column: 13, scope: !1676)
!1706 = !DILocation(line: 1444, column: 11, scope: !1677)
!1707 = !DILocation(line: 1446, column: 17, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1444, column: 21)
!1709 = !DILocation(line: 1447, column: 5, scope: !1708)
!1710 = !DILocation(line: 0, scope: !1675)
!1711 = !DILocation(line: 1451, column: 28, scope: !1675)
!1712 = !DILocation(line: 1451, column: 29, scope: !1675)
!1713 = !DILocation(line: 1451, column: 53, scope: !1675)
!1714 = !DILocation(line: 1451, column: 64, scope: !1675)
!1715 = !DILocation(line: 1451, column: 59, scope: !1675)
!1716 = !DILocation(line: 1451, column: 58, scope: !1675)
!1717 = !DILocation(line: 1451, column: 70, scope: !1675)
!1718 = !DILocation(line: 1453, column: 16, scope: !1684)
!1719 = !DILocation(line: 1453, column: 8, scope: !1675)
!1720 = !DILocation(line: 1454, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 1454, column: 7)
!1722 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 1453, column: 39)
!1723 = !DILocation(line: 1454, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 1454, column: 7)
!1725 = !DILocation(line: 1456, column: 21, scope: !1683)
!1726 = !DILocation(line: 1456, column: 13, scope: !1684)
!1727 = !DILocation(line: 1462, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 1462, column: 7)
!1729 = !DILocation(line: 1457, column: 7, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 1457, column: 7)
!1731 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 1456, column: 44)
!1732 = !DILocation(line: 1457, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 1457, column: 7)
!1734 = !DILocation(line: 0, scope: !1682)
!1735 = !DILocation(line: 1463, column: 23, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !2, line: 1462, column: 27)
!1737 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 1462, column: 7)
!1738 = !DILocation(line: 1463, column: 22, scope: !1736)
!1739 = !DILocation(line: 1463, column: 17, scope: !1736)
!1740 = !DILocation(line: 1462, column: 23, scope: !1737)
!1741 = distinct !{!1741, !1727, !1742, !1261}
!1742 = !DILocation(line: 1464, column: 7, scope: !1728)
!1743 = distinct !{!1743, !1744}
!1744 = !{!"llvm.loop.unroll.disable"}
!1745 = !DILocation(line: 1465, column: 19, scope: !1682)
!1746 = !DILocation(line: 1466, column: 23, scope: !1682)
!1747 = !DILocation(line: 1466, column: 41, scope: !1682)
!1748 = !DILocation(line: 1466, column: 15, scope: !1682)
!1749 = !DILocation(line: 1466, column: 19, scope: !1682)
!1750 = !DILocation(line: 1467, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 1467, column: 7)
!1752 = !DILocation(line: 1467, column: 7, scope: !1682)
!1753 = !DILocation(line: 1467, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 1467, column: 7)
!1755 = !DILocation(line: 0, scope: !1679)
!1756 = !DILocation(line: 1471, column: 1, scope: !1667)
!1757 = distinct !DISubprogram(name: "gsl_sf_fact_e", scope: !2, file: !2, line: 1474, type: !612, scopeLine: 1475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1758)
!1758 = !{!1759, !1760}
!1759 = !DILocalVariable(name: "n", arg: 1, scope: !1757, file: !2, line: 1474, type: !614)
!1760 = !DILocalVariable(name: "result", arg: 2, scope: !1757, file: !2, line: 1474, type: !190)
!1761 = !DILocation(line: 0, scope: !1757)
!1762 = !DILocation(line: 1478, column: 8, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 1478, column: 6)
!1764 = !DILocation(line: 1478, column: 6, scope: !1757)
!1765 = !DILocation(line: 1479, column: 19, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 1478, column: 14)
!1767 = !DILocation(line: 1479, column: 33, scope: !1766)
!1768 = !DILocation(line: 1479, column: 17, scope: !1766)
!1769 = !DILocation(line: 1480, column: 13, scope: !1766)
!1770 = !DILocation(line: 1480, column: 17, scope: !1766)
!1771 = !DILocation(line: 1481, column: 5, scope: !1766)
!1772 = !DILocation(line: 1483, column: 13, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 1483, column: 11)
!1774 = !DILocation(line: 1483, column: 11, scope: !1763)
!1775 = !DILocation(line: 1484, column: 19, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 1483, column: 33)
!1777 = !DILocation(line: 1484, column: 33, scope: !1776)
!1778 = !DILocation(line: 1484, column: 17, scope: !1776)
!1779 = !DILocation(line: 1485, column: 43, scope: !1776)
!1780 = !DILocation(line: 1485, column: 41, scope: !1776)
!1781 = !DILocation(line: 1485, column: 13, scope: !1776)
!1782 = !DILocation(line: 1485, column: 17, scope: !1776)
!1783 = !DILocation(line: 1486, column: 5, scope: !1776)
!1784 = !DILocation(line: 1489, column: 5, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 1489, column: 5)
!1786 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 1488, column: 8)
!1787 = !DILocation(line: 1489, column: 5, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 1489, column: 5)
!1789 = !DILocation(line: 0, scope: !1763)
!1790 = !DILocation(line: 1491, column: 1, scope: !1757)
!1791 = distinct !DISubprogram(name: "gsl_sf_doublefact_e", scope: !2, file: !2, line: 1494, type: !612, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1792)
!1792 = !{!1793, !1794}
!1793 = !DILocalVariable(name: "n", arg: 1, scope: !1791, file: !2, line: 1494, type: !614)
!1794 = !DILocalVariable(name: "result", arg: 2, scope: !1791, file: !2, line: 1494, type: !190)
!1795 = !DILocation(line: 0, scope: !1791)
!1796 = !DILocation(line: 1498, column: 8, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1791, file: !2, line: 1498, column: 6)
!1798 = !DILocation(line: 1498, column: 6, scope: !1791)
!1799 = !DILocation(line: 1499, column: 19, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 1498, column: 14)
!1801 = !DILocation(line: 1499, column: 38, scope: !1800)
!1802 = !DILocation(line: 1499, column: 17, scope: !1800)
!1803 = !DILocation(line: 1500, column: 13, scope: !1800)
!1804 = !DILocation(line: 1500, column: 17, scope: !1800)
!1805 = !DILocation(line: 1501, column: 5, scope: !1800)
!1806 = !DILocation(line: 1503, column: 13, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 1503, column: 11)
!1808 = !DILocation(line: 1503, column: 11, scope: !1797)
!1809 = !DILocation(line: 1504, column: 19, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 1503, column: 39)
!1811 = !DILocation(line: 1504, column: 38, scope: !1810)
!1812 = !DILocation(line: 1504, column: 17, scope: !1810)
!1813 = !DILocation(line: 1505, column: 43, scope: !1810)
!1814 = !DILocation(line: 1505, column: 41, scope: !1810)
!1815 = !DILocation(line: 1505, column: 13, scope: !1810)
!1816 = !DILocation(line: 1505, column: 17, scope: !1810)
!1817 = !DILocation(line: 1506, column: 5, scope: !1810)
!1818 = !DILocation(line: 1509, column: 5, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 1509, column: 5)
!1820 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 1508, column: 8)
!1821 = !DILocation(line: 1509, column: 5, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 1509, column: 5)
!1823 = !DILocation(line: 0, scope: !1797)
!1824 = !DILocation(line: 1511, column: 1, scope: !1791)
!1825 = !DILocation(line: 0, scope: !611)
!1826 = !DILocation(line: 1518, column: 8, scope: !621)
!1827 = !DILocation(line: 1518, column: 6, scope: !611)
!1828 = !DILocation(line: 1519, column: 23, scope: !624)
!1829 = !DILocation(line: 1519, column: 37, scope: !624)
!1830 = !DILocation(line: 1519, column: 17, scope: !624)
!1831 = !DILocation(line: 1520, column: 43, scope: !624)
!1832 = !DILocation(line: 1520, column: 41, scope: !624)
!1833 = !DILocation(line: 1520, column: 13, scope: !624)
!1834 = !DILocation(line: 1520, column: 17, scope: !624)
!1835 = !DILocation(line: 1521, column: 5, scope: !624)
!1836 = !DILocation(line: 1524, column: 22, scope: !639)
!1837 = !DILocation(line: 1524, column: 5, scope: !639)
!1838 = !DILocation(line: 1525, column: 5, scope: !639)
!1839 = !DILocation(line: 1527, column: 1, scope: !611)
!1840 = distinct !DISubprogram(name: "gsl_sf_lndoublefact_e", scope: !2, file: !2, line: 1530, type: !612, scopeLine: 1531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1841)
!1841 = !{!1842, !1843, !1844, !1848}
!1842 = !DILocalVariable(name: "n", arg: 1, scope: !1840, file: !2, line: 1530, type: !614)
!1843 = !DILocalVariable(name: "result", arg: 2, scope: !1840, file: !2, line: 1530, type: !190)
!1844 = !DILocalVariable(name: "lg", scope: !1845, file: !2, line: 1540, type: !191)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 1539, column: 26)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 1539, column: 11)
!1847 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 1534, column: 6)
!1848 = !DILocalVariable(name: "lg", scope: !1849, file: !2, line: 1547, type: !191)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 1546, column: 8)
!1850 = distinct !DIAssignID()
!1851 = !DILocation(line: 0, scope: !1845)
!1852 = distinct !DIAssignID()
!1853 = !DILocation(line: 0, scope: !1849)
!1854 = !DILocation(line: 0, scope: !1840)
!1855 = !DILocation(line: 1534, column: 8, scope: !1847)
!1856 = !DILocation(line: 1534, column: 6, scope: !1840)
!1857 = !DILocation(line: 1535, column: 23, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 1534, column: 34)
!1859 = !DILocation(line: 1535, column: 42, scope: !1858)
!1860 = !DILocation(line: 1535, column: 17, scope: !1858)
!1861 = !DILocation(line: 1536, column: 43, scope: !1858)
!1862 = !DILocation(line: 1536, column: 41, scope: !1858)
!1863 = !DILocation(line: 1536, column: 13, scope: !1858)
!1864 = !DILocation(line: 1536, column: 17, scope: !1858)
!1865 = !DILocation(line: 1537, column: 5, scope: !1858)
!1866 = !DILocation(line: 1539, column: 11, scope: !1846)
!1867 = !DILocation(line: 0, scope: !1846)
!1868 = !DILocation(line: 1539, column: 11, scope: !1847)
!1869 = !DILocation(line: 1540, column: 5, scope: !1845)
!1870 = !DILocation(line: 1541, column: 25, scope: !1845)
!1871 = !DILocation(line: 1541, column: 5, scope: !1845)
!1872 = !DILocation(line: 1542, column: 22, scope: !1845)
!1873 = !DILocation(line: 1542, column: 31, scope: !1845)
!1874 = !DILocation(line: 1542, column: 57, scope: !1845)
!1875 = !DILocation(line: 1542, column: 17, scope: !1845)
!1876 = !DILocation(line: 1543, column: 43, scope: !1845)
!1877 = !DILocation(line: 1543, column: 41, scope: !1845)
!1878 = !DILocation(line: 1543, column: 66, scope: !1845)
!1879 = !DILocation(line: 1543, column: 13, scope: !1845)
!1880 = !DILocation(line: 1543, column: 17, scope: !1845)
!1881 = !DILocation(line: 1545, column: 3, scope: !1846)
!1882 = !DILocation(line: 1547, column: 5, scope: !1849)
!1883 = !DILocation(line: 1548, column: 25, scope: !1849)
!1884 = !DILocation(line: 1548, column: 5, scope: !1849)
!1885 = !DILocation(line: 1549, column: 24, scope: !1849)
!1886 = !DILocation(line: 1549, column: 36, scope: !1849)
!1887 = !DILocation(line: 1549, column: 17, scope: !1849)
!1888 = !DILocation(line: 1550, column: 43, scope: !1849)
!1889 = !DILocation(line: 1550, column: 41, scope: !1849)
!1890 = !DILocation(line: 1550, column: 66, scope: !1849)
!1891 = !DILocation(line: 1550, column: 13, scope: !1849)
!1892 = !DILocation(line: 1550, column: 17, scope: !1849)
!1893 = !DILocation(line: 1552, column: 3, scope: !1846)
!1894 = !DILocation(line: 1553, column: 1, scope: !1840)
!1895 = distinct !DISubprogram(name: "gsl_sf_lnchoose_e", scope: !2, file: !2, line: 1556, type: !1896, scopeLine: 1557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!38, !615, !615, !190}
!1898 = !{!1899, !1900, !1901, !1902, !1906, !1907}
!1899 = !DILocalVariable(name: "n", arg: 1, scope: !1895, file: !2, line: 1556, type: !615)
!1900 = !DILocalVariable(name: "m", arg: 2, scope: !1895, file: !2, line: 1556, type: !615)
!1901 = !DILocalVariable(name: "result", arg: 3, scope: !1895, file: !2, line: 1556, type: !190)
!1902 = !DILocalVariable(name: "nf", scope: !1903, file: !2, line: 1569, type: !191)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !2, line: 1568, column: 8)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 1563, column: 11)
!1905 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 1560, column: 6)
!1906 = !DILocalVariable(name: "mf", scope: !1903, file: !2, line: 1570, type: !191)
!1907 = !DILocalVariable(name: "nmmf", scope: !1903, file: !2, line: 1571, type: !191)
!1908 = distinct !DIAssignID()
!1909 = !DILocation(line: 0, scope: !1903)
!1910 = distinct !DIAssignID()
!1911 = distinct !DIAssignID()
!1912 = !DILocation(line: 0, scope: !1895)
!1913 = !DILocation(line: 1560, column: 8, scope: !1905)
!1914 = !DILocation(line: 1560, column: 6, scope: !1895)
!1915 = !DILocation(line: 1561, column: 5, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !2, line: 1561, column: 5)
!1917 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 1560, column: 13)
!1918 = !DILocation(line: 1561, column: 5, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !2, line: 1561, column: 5)
!1920 = !DILocation(line: 1563, column: 13, scope: !1904)
!1921 = !DILocation(line: 1563, column: 18, scope: !1904)
!1922 = !DILocation(line: 1565, column: 17, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1904, file: !2, line: 1563, column: 29)
!1924 = !DILocation(line: 1566, column: 5, scope: !1923)
!1925 = !DILocation(line: 1569, column: 5, scope: !1903)
!1926 = !DILocation(line: 1570, column: 5, scope: !1903)
!1927 = !DILocation(line: 1571, column: 5, scope: !1903)
!1928 = !DILocation(line: 1572, column: 9, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1903, file: !2, line: 1572, column: 8)
!1930 = !DILocation(line: 1572, column: 12, scope: !1929)
!1931 = !DILocation(line: 1572, column: 8, scope: !1903)
!1932 = !DILocation(line: 0, scope: !611, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 1573, column: 5, scope: !1903)
!1934 = !DILocation(line: 1518, column: 8, scope: !621, inlinedAt: !1933)
!1935 = !DILocation(line: 1518, column: 6, scope: !611, inlinedAt: !1933)
!1936 = !DILocation(line: 1519, column: 23, scope: !624, inlinedAt: !1933)
!1937 = !DILocation(line: 1519, column: 37, scope: !624, inlinedAt: !1933)
!1938 = !DILocation(line: 1519, column: 17, scope: !624, inlinedAt: !1933)
!1939 = distinct !DIAssignID()
!1940 = !DILocation(line: 1520, column: 43, scope: !624, inlinedAt: !1933)
!1941 = !DILocation(line: 1520, column: 41, scope: !624, inlinedAt: !1933)
!1942 = !DILocation(line: 1520, column: 13, scope: !624, inlinedAt: !1933)
!1943 = !DILocation(line: 1520, column: 17, scope: !624, inlinedAt: !1933)
!1944 = distinct !DIAssignID()
!1945 = !DILocation(line: 1521, column: 5, scope: !624, inlinedAt: !1933)
!1946 = !DILocation(line: 1524, column: 22, scope: !639, inlinedAt: !1933)
!1947 = !DILocation(line: 1524, column: 5, scope: !639, inlinedAt: !1933)
!1948 = !DILocation(line: 1525, column: 5, scope: !639, inlinedAt: !1933)
!1949 = !DILocation(line: 0, scope: !611, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 1574, column: 5, scope: !1903)
!1951 = !DILocation(line: 1518, column: 8, scope: !621, inlinedAt: !1950)
!1952 = !DILocation(line: 1518, column: 6, scope: !611, inlinedAt: !1950)
!1953 = !DILocation(line: 1519, column: 23, scope: !624, inlinedAt: !1950)
!1954 = !DILocation(line: 1519, column: 37, scope: !624, inlinedAt: !1950)
!1955 = !DILocation(line: 1519, column: 17, scope: !624, inlinedAt: !1950)
!1956 = distinct !DIAssignID()
!1957 = !DILocation(line: 1520, column: 43, scope: !624, inlinedAt: !1950)
!1958 = !DILocation(line: 1520, column: 41, scope: !624, inlinedAt: !1950)
!1959 = !DILocation(line: 1520, column: 13, scope: !624, inlinedAt: !1950)
!1960 = !DILocation(line: 1520, column: 17, scope: !624, inlinedAt: !1950)
!1961 = distinct !DIAssignID()
!1962 = !DILocation(line: 1521, column: 5, scope: !624, inlinedAt: !1950)
!1963 = !DILocation(line: 1524, column: 22, scope: !639, inlinedAt: !1950)
!1964 = !DILocation(line: 1524, column: 5, scope: !639, inlinedAt: !1950)
!1965 = !DILocation(line: 1525, column: 5, scope: !639, inlinedAt: !1950)
!1966 = !DILocation(line: 1575, column: 22, scope: !1903)
!1967 = !DILocation(line: 0, scope: !611, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 1575, column: 5, scope: !1903)
!1969 = !DILocation(line: 1518, column: 8, scope: !621, inlinedAt: !1968)
!1970 = !DILocation(line: 1518, column: 6, scope: !611, inlinedAt: !1968)
!1971 = !DILocation(line: 1519, column: 23, scope: !624, inlinedAt: !1968)
!1972 = !DILocation(line: 1519, column: 37, scope: !624, inlinedAt: !1968)
!1973 = !DILocation(line: 1520, column: 43, scope: !624, inlinedAt: !1968)
!1974 = distinct !DIAssignID()
!1975 = !DILocation(line: 1520, column: 41, scope: !624, inlinedAt: !1968)
!1976 = distinct !DIAssignID()
!1977 = !DILocation(line: 1521, column: 5, scope: !624, inlinedAt: !1968)
!1978 = !DILocation(line: 1524, column: 22, scope: !639, inlinedAt: !1968)
!1979 = !DILocation(line: 1524, column: 5, scope: !639, inlinedAt: !1968)
!1980 = !DILocation(line: 1576, column: 43, scope: !1903)
!1981 = !DILocation(line: 1577, column: 43, scope: !1903)
!1982 = !DILocation(line: 1525, column: 5, scope: !639, inlinedAt: !1968)
!1983 = !DILocation(line: 1576, column: 23, scope: !1903)
!1984 = !DILocation(line: 1576, column: 32, scope: !1903)
!1985 = !DILocation(line: 1576, column: 36, scope: !1903)
!1986 = !DILocation(line: 1576, column: 18, scope: !1903)
!1987 = !DILocation(line: 1577, column: 23, scope: !1903)
!1988 = !DILocation(line: 1577, column: 32, scope: !1903)
!1989 = !DILocation(line: 1577, column: 36, scope: !1903)
!1990 = !DILocation(line: 1577, column: 13, scope: !1903)
!1991 = !DILocation(line: 1578, column: 44, scope: !1903)
!1992 = !DILocation(line: 1578, column: 42, scope: !1903)
!1993 = !DILocation(line: 1578, column: 17, scope: !1903)
!1994 = !DILocation(line: 1580, column: 3, scope: !1904)
!1995 = !DILocation(line: 0, scope: !1905)
!1996 = !DILocation(line: 1581, column: 1, scope: !1895)
!1997 = distinct !DISubprogram(name: "gsl_sf_choose_e", scope: !2, file: !2, line: 1584, type: !1896, scopeLine: 1585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2009, !2010, !2014, !2016, !2017}
!1999 = !DILocalVariable(name: "n", arg: 1, scope: !1997, file: !2, line: 1584, type: !615)
!2000 = !DILocalVariable(name: "m", arg: 2, scope: !1997, file: !2, line: 1584, type: !615)
!2001 = !DILocalVariable(name: "result", arg: 3, scope: !1997, file: !2, line: 1584, type: !190)
!2002 = !DILocalVariable(name: "prod", scope: !2003, file: !2, line: 1603, type: !76)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 1602, column: 7)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 1601, column: 9)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 1598, column: 10)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 1594, column: 12)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 1589, column: 11)
!2008 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 1586, column: 6)
!2009 = !DILocalVariable(name: "k", scope: !2003, file: !2, line: 1604, type: !615)
!2010 = !DILocalVariable(name: "tk", scope: !2011, file: !2, line: 1607, type: !76)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 1606, column: 31)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 1606, column: 9)
!2013 = distinct !DILexicalBlock(scope: !2003, file: !2, line: 1606, column: 9)
!2014 = !DILocalVariable(name: "lc", scope: !2015, file: !2, line: 1619, type: !191)
!2015 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 1618, column: 7)
!2016 = !DILocalVariable(name: "stat_lc", scope: !2015, file: !2, line: 1620, type: !1175)
!2017 = !DILocalVariable(name: "stat_e", scope: !2015, file: !2, line: 1621, type: !1175)
!2018 = distinct !DIAssignID()
!2019 = !DILocation(line: 0, scope: !2015)
!2020 = !DILocation(line: 0, scope: !1997)
!2021 = !DILocation(line: 1586, column: 8, scope: !2008)
!2022 = !DILocation(line: 1586, column: 6, scope: !1997)
!2023 = !DILocation(line: 1587, column: 5, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 1587, column: 5)
!2025 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 1586, column: 13)
!2026 = !DILocation(line: 1587, column: 5, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !2, line: 1587, column: 5)
!2028 = !DILocation(line: 1589, column: 13, scope: !2007)
!2029 = !DILocation(line: 1589, column: 18, scope: !2007)
!2030 = !DILocation(line: 1590, column: 17, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 1589, column: 29)
!2032 = !DILocation(line: 1591, column: 13, scope: !2031)
!2033 = !DILocation(line: 1591, column: 17, scope: !2031)
!2034 = !DILocation(line: 1592, column: 5, scope: !2031)
!2035 = !DILocation(line: 1594, column: 14, scope: !2006)
!2036 = !DILocation(line: 1594, column: 12, scope: !2007)
!2037 = !DILocation(line: 1595, column: 20, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 1594, column: 35)
!2039 = !DILocation(line: 1595, column: 34, scope: !2038)
!2040 = !DILocation(line: 1595, column: 38, scope: !2038)
!2041 = !DILocation(line: 1595, column: 52, scope: !2038)
!2042 = !DILocation(line: 1595, column: 36, scope: !2038)
!2043 = !DILocation(line: 1595, column: 69, scope: !2038)
!2044 = !DILocation(line: 1595, column: 57, scope: !2038)
!2045 = !DILocation(line: 1595, column: 73, scope: !2038)
!2046 = !DILocation(line: 1595, column: 55, scope: !2038)
!2047 = !DILocation(line: 1595, column: 17, scope: !2038)
!2048 = !DILocation(line: 1596, column: 43, scope: !2038)
!2049 = !DILocation(line: 1596, column: 41, scope: !2038)
!2050 = !DILocation(line: 1596, column: 13, scope: !2038)
!2051 = !DILocation(line: 1596, column: 17, scope: !2038)
!2052 = !DILocation(line: 1597, column: 5, scope: !2038)
!2053 = !DILocation(line: 1599, column: 9, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 1599, column: 8)
!2055 = !DILocation(line: 1599, column: 12, scope: !2054)
!2056 = !DILocation(line: 1599, column: 8, scope: !2005)
!2057 = !DILocation(line: 1601, column: 11, scope: !2004)
!2058 = !DILocation(line: 1601, column: 15, scope: !2004)
!2059 = !DILocation(line: 1601, column: 9, scope: !2005)
!2060 = !DILocation(line: 0, scope: !2003)
!2061 = !DILocation(line: 1606, column: 19, scope: !2012)
!2062 = !DILocation(line: 1606, column: 9, scope: !2013)
!2063 = !DILocation(line: 1607, column: 23, scope: !2011)
!2064 = !DILocation(line: 1607, column: 45, scope: !2011)
!2065 = !DILocation(line: 1607, column: 35, scope: !2011)
!2066 = !DILocation(line: 1607, column: 33, scope: !2011)
!2067 = !DILocation(line: 0, scope: !2011)
!2068 = !DILocation(line: 1608, column: 30, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 1608, column: 14)
!2070 = !DILocation(line: 1608, column: 17, scope: !2069)
!2071 = !DILocation(line: 1608, column: 14, scope: !2011)
!2072 = !DILocation(line: 1609, column: 13, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !2, line: 1609, column: 13)
!2074 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 1608, column: 37)
!2075 = !DILocation(line: 1609, column: 13, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 1609, column: 13)
!2077 = !DILocation(line: 1611, column: 16, scope: !2011)
!2078 = !DILocation(line: 1606, column: 27, scope: !2012)
!2079 = distinct !{!2079, !2062, !2080, !1261}
!2080 = !DILocation(line: 1612, column: 9, scope: !2013)
!2081 = !DILocation(line: 1603, column: 16, scope: !2003)
!2082 = !DILocation(line: 1613, column: 21, scope: !2003)
!2083 = !DILocation(line: 1614, column: 45, scope: !2003)
!2084 = !DILocation(line: 1614, column: 59, scope: !2003)
!2085 = !DILocation(line: 1614, column: 52, scope: !2003)
!2086 = !DILocation(line: 1614, column: 17, scope: !2003)
!2087 = !DILocation(line: 1614, column: 21, scope: !2003)
!2088 = !DILocation(line: 1615, column: 9, scope: !2003)
!2089 = !DILocation(line: 1619, column: 9, scope: !2015)
!2090 = !DILocation(line: 1620, column: 29, scope: !2015)
!2091 = !DILocation(line: 1621, column: 49, scope: !2015)
!2092 = !DILocation(line: 1621, column: 57, scope: !2015)
!2093 = !DILocation(line: 1621, column: 29, scope: !2015)
!2094 = !DILocation(line: 1622, column: 16, scope: !2015)
!2095 = !DILocation(line: 1623, column: 7, scope: !2004)
!2096 = !DILocation(line: 0, scope: !2008)
!2097 = !DILocation(line: 1625, column: 1, scope: !1997)
!2098 = distinct !DISubprogram(name: "gsl_sf_fact", scope: !2, file: !2, line: 1632, type: !2099, scopeLine: 1633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!76, !614}
!2101 = !{!2102, !2103, !2104}
!2102 = !DILocalVariable(name: "n", arg: 1, scope: !2098, file: !2, line: 1632, type: !614)
!2103 = !DILocalVariable(name: "result", scope: !2098, file: !2, line: 1634, type: !191)
!2104 = !DILocalVariable(name: "status", scope: !2098, file: !2, line: 1634, type: !38)
!2105 = !DILocation(line: 0, scope: !2098)
!2106 = !DILocation(line: 0, scope: !1757, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 1634, column: 3, scope: !2098)
!2108 = !DILocation(line: 1478, column: 8, scope: !1763, inlinedAt: !2107)
!2109 = !DILocation(line: 1478, column: 6, scope: !1757, inlinedAt: !2107)
!2110 = !DILocation(line: 1479, column: 19, scope: !1766, inlinedAt: !2107)
!2111 = !DILocation(line: 1479, column: 33, scope: !1766, inlinedAt: !2107)
!2112 = !DILocation(line: 1481, column: 5, scope: !1766, inlinedAt: !2107)
!2113 = !DILocation(line: 1483, column: 13, scope: !1773, inlinedAt: !2107)
!2114 = !DILocation(line: 1483, column: 11, scope: !1763, inlinedAt: !2107)
!2115 = !DILocation(line: 1484, column: 19, scope: !1776, inlinedAt: !2107)
!2116 = !DILocation(line: 1484, column: 33, scope: !1776, inlinedAt: !2107)
!2117 = !DILocation(line: 1486, column: 5, scope: !1776, inlinedAt: !2107)
!2118 = !DILocation(line: 1489, column: 5, scope: !1788, inlinedAt: !2107)
!2119 = !DILocation(line: 1634, column: 3, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !2, line: 1634, column: 3)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 1634, column: 3)
!2122 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 1634, column: 3)
!2123 = !DILocation(line: 1635, column: 1, scope: !2098)
!2124 = distinct !DISubprogram(name: "gsl_sf_lnfact", scope: !2, file: !2, line: 1637, type: !2099, scopeLine: 1638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2125)
!2125 = !{!2126, !2127, !2128}
!2126 = !DILocalVariable(name: "n", arg: 1, scope: !2124, file: !2, line: 1637, type: !614)
!2127 = !DILocalVariable(name: "result", scope: !2124, file: !2, line: 1639, type: !191)
!2128 = !DILocalVariable(name: "status", scope: !2124, file: !2, line: 1639, type: !38)
!2129 = distinct !DIAssignID()
!2130 = !DILocation(line: 0, scope: !2124)
!2131 = !DILocation(line: 1639, column: 3, scope: !2124)
!2132 = !DILocation(line: 0, scope: !611, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 1639, column: 3, scope: !2124)
!2134 = !DILocation(line: 1518, column: 8, scope: !621, inlinedAt: !2133)
!2135 = !DILocation(line: 1518, column: 6, scope: !611, inlinedAt: !2133)
!2136 = !DILocation(line: 1519, column: 23, scope: !624, inlinedAt: !2133)
!2137 = !DILocation(line: 1519, column: 37, scope: !624, inlinedAt: !2133)
!2138 = !DILocation(line: 1521, column: 5, scope: !624, inlinedAt: !2133)
!2139 = distinct !DIAssignID()
!2140 = distinct !DIAssignID()
!2141 = !DILocation(line: 1524, column: 22, scope: !639, inlinedAt: !2133)
!2142 = !DILocation(line: 1524, column: 5, scope: !639, inlinedAt: !2133)
!2143 = !DILocation(line: 1525, column: 5, scope: !639, inlinedAt: !2133)
!2144 = !DILocation(line: 1640, column: 1, scope: !2124)
!2145 = distinct !DISubprogram(name: "gsl_sf_doublefact", scope: !2, file: !2, line: 1642, type: !2099, scopeLine: 1643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2146)
!2146 = !{!2147, !2148, !2149}
!2147 = !DILocalVariable(name: "n", arg: 1, scope: !2145, file: !2, line: 1642, type: !614)
!2148 = !DILocalVariable(name: "result", scope: !2145, file: !2, line: 1644, type: !191)
!2149 = !DILocalVariable(name: "status", scope: !2145, file: !2, line: 1644, type: !38)
!2150 = !DILocation(line: 0, scope: !2145)
!2151 = !DILocation(line: 0, scope: !1791, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 1644, column: 3, scope: !2145)
!2153 = !DILocation(line: 1498, column: 8, scope: !1797, inlinedAt: !2152)
!2154 = !DILocation(line: 1498, column: 6, scope: !1791, inlinedAt: !2152)
!2155 = !DILocation(line: 1499, column: 19, scope: !1800, inlinedAt: !2152)
!2156 = !DILocation(line: 1499, column: 38, scope: !1800, inlinedAt: !2152)
!2157 = !DILocation(line: 1501, column: 5, scope: !1800, inlinedAt: !2152)
!2158 = !DILocation(line: 1503, column: 13, scope: !1807, inlinedAt: !2152)
!2159 = !DILocation(line: 1503, column: 11, scope: !1797, inlinedAt: !2152)
!2160 = !DILocation(line: 1504, column: 19, scope: !1810, inlinedAt: !2152)
!2161 = !DILocation(line: 1504, column: 38, scope: !1810, inlinedAt: !2152)
!2162 = !DILocation(line: 1506, column: 5, scope: !1810, inlinedAt: !2152)
!2163 = !DILocation(line: 1509, column: 5, scope: !1822, inlinedAt: !2152)
!2164 = !DILocation(line: 1644, column: 3, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !2, line: 1644, column: 3)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !2, line: 1644, column: 3)
!2167 = distinct !DILexicalBlock(scope: !2145, file: !2, line: 1644, column: 3)
!2168 = !DILocation(line: 1645, column: 1, scope: !2145)
!2169 = distinct !DISubprogram(name: "gsl_sf_lndoublefact", scope: !2, file: !2, line: 1647, type: !2099, scopeLine: 1648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2170)
!2170 = !{!2171, !2172, !2173}
!2171 = !DILocalVariable(name: "n", arg: 1, scope: !2169, file: !2, line: 1647, type: !614)
!2172 = !DILocalVariable(name: "result", scope: !2169, file: !2, line: 1649, type: !191)
!2173 = !DILocalVariable(name: "status", scope: !2169, file: !2, line: 1649, type: !38)
!2174 = distinct !DIAssignID()
!2175 = !DILocation(line: 0, scope: !2169)
!2176 = !DILocation(line: 1649, column: 3, scope: !2169)
!2177 = !DILocation(line: 1650, column: 1, scope: !2169)
!2178 = distinct !DISubprogram(name: "gsl_sf_lngamma", scope: !2, file: !2, line: 1652, type: !2179, scopeLine: 1653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!76, !238}
!2181 = !{!2182, !2183, !2184}
!2182 = !DILocalVariable(name: "x", arg: 1, scope: !2178, file: !2, line: 1652, type: !238)
!2183 = !DILocalVariable(name: "result", scope: !2178, file: !2, line: 1654, type: !191)
!2184 = !DILocalVariable(name: "status", scope: !2178, file: !2, line: 1654, type: !38)
!2185 = distinct !DIAssignID()
!2186 = !DILocation(line: 0, scope: !2178)
!2187 = !DILocation(line: 1654, column: 3, scope: !2178)
!2188 = !DILocation(line: 1654, column: 3, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 1654, column: 3)
!2190 = !DILocation(line: 1654, column: 3, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 1654, column: 3)
!2192 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 1654, column: 3)
!2193 = !DILocation(line: 1655, column: 1, scope: !2178)
!2194 = distinct !DISubprogram(name: "gsl_sf_gamma", scope: !2, file: !2, line: 1657, type: !2179, scopeLine: 1658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2195)
!2195 = !{!2196, !2197, !2198}
!2196 = !DILocalVariable(name: "x", arg: 1, scope: !2194, file: !2, line: 1657, type: !238)
!2197 = !DILocalVariable(name: "result", scope: !2194, file: !2, line: 1659, type: !191)
!2198 = !DILocalVariable(name: "status", scope: !2194, file: !2, line: 1659, type: !38)
!2199 = distinct !DIAssignID()
!2200 = !DILocation(line: 0, scope: !2194)
!2201 = !DILocation(line: 1659, column: 3, scope: !2194)
!2202 = !DILocation(line: 1659, column: 3, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2194, file: !2, line: 1659, column: 3)
!2204 = !DILocation(line: 1659, column: 3, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !2, line: 1659, column: 3)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 1659, column: 3)
!2207 = !DILocation(line: 1660, column: 1, scope: !2194)
!2208 = distinct !DISubprogram(name: "gsl_sf_gammastar", scope: !2, file: !2, line: 1662, type: !2179, scopeLine: 1663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2209)
!2209 = !{!2210, !2211, !2212}
!2210 = !DILocalVariable(name: "x", arg: 1, scope: !2208, file: !2, line: 1662, type: !238)
!2211 = !DILocalVariable(name: "result", scope: !2208, file: !2, line: 1664, type: !191)
!2212 = !DILocalVariable(name: "status", scope: !2208, file: !2, line: 1664, type: !38)
!2213 = distinct !DIAssignID()
!2214 = !DILocation(line: 0, scope: !2208)
!2215 = !DILocation(line: 1664, column: 3, scope: !2208)
!2216 = !DILocation(line: 1664, column: 3, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 1664, column: 3)
!2218 = !DILocation(line: 1664, column: 3, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 1664, column: 3)
!2220 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 1664, column: 3)
!2221 = !DILocation(line: 1665, column: 1, scope: !2208)
!2222 = distinct !DISubprogram(name: "gsl_sf_gammainv", scope: !2, file: !2, line: 1667, type: !2179, scopeLine: 1668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2223)
!2223 = !{!2224, !2225, !2226}
!2224 = !DILocalVariable(name: "x", arg: 1, scope: !2222, file: !2, line: 1667, type: !238)
!2225 = !DILocalVariable(name: "result", scope: !2222, file: !2, line: 1669, type: !191)
!2226 = !DILocalVariable(name: "status", scope: !2222, file: !2, line: 1669, type: !38)
!2227 = distinct !DIAssignID()
!2228 = !DILocation(line: 0, scope: !2222)
!2229 = !DILocation(line: 1669, column: 3, scope: !2222)
!2230 = !DILocation(line: 1669, column: 3, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2222, file: !2, line: 1669, column: 3)
!2232 = !DILocation(line: 1669, column: 3, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 1669, column: 3)
!2234 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 1669, column: 3)
!2235 = !DILocation(line: 1670, column: 1, scope: !2222)
!2236 = distinct !DISubprogram(name: "gsl_sf_taylorcoeff", scope: !2, file: !2, line: 1672, type: !2237, scopeLine: 1673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!76, !1175, !238}
!2239 = !{!2240, !2241, !2242, !2243}
!2240 = !DILocalVariable(name: "n", arg: 1, scope: !2236, file: !2, line: 1672, type: !1175)
!2241 = !DILocalVariable(name: "x", arg: 2, scope: !2236, file: !2, line: 1672, type: !238)
!2242 = !DILocalVariable(name: "result", scope: !2236, file: !2, line: 1674, type: !191)
!2243 = !DILocalVariable(name: "status", scope: !2236, file: !2, line: 1674, type: !38)
!2244 = distinct !DIAssignID()
!2245 = !DILocation(line: 0, scope: !2236)
!2246 = !DILocation(line: 1674, column: 3, scope: !2236)
!2247 = !DILocation(line: 1674, column: 3, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 1674, column: 3)
!2249 = !DILocation(line: 1674, column: 3, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 1674, column: 3)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 1674, column: 3)
!2252 = !DILocation(line: 1675, column: 1, scope: !2236)
!2253 = distinct !DISubprogram(name: "gsl_sf_choose", scope: !2, file: !2, line: 1677, type: !2254, scopeLine: 1678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2256)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!76, !615, !615}
!2256 = !{!2257, !2258, !2259, !2260}
!2257 = !DILocalVariable(name: "n", arg: 1, scope: !2253, file: !2, line: 1677, type: !615)
!2258 = !DILocalVariable(name: "m", arg: 2, scope: !2253, file: !2, line: 1677, type: !615)
!2259 = !DILocalVariable(name: "result", scope: !2253, file: !2, line: 1679, type: !191)
!2260 = !DILocalVariable(name: "status", scope: !2253, file: !2, line: 1679, type: !38)
!2261 = distinct !DIAssignID()
!2262 = !DILocation(line: 0, scope: !2253)
!2263 = !DILocation(line: 1679, column: 3, scope: !2253)
!2264 = !DILocation(line: 1679, column: 3, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2253, file: !2, line: 1679, column: 3)
!2266 = !DILocation(line: 1679, column: 3, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !2, line: 1679, column: 3)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 1679, column: 3)
!2269 = !DILocation(line: 1680, column: 1, scope: !2253)
!2270 = distinct !DISubprogram(name: "gsl_sf_lnchoose", scope: !2, file: !2, line: 1682, type: !2254, scopeLine: 1683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2271)
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DILocalVariable(name: "n", arg: 1, scope: !2270, file: !2, line: 1682, type: !615)
!2273 = !DILocalVariable(name: "m", arg: 2, scope: !2270, file: !2, line: 1682, type: !615)
!2274 = !DILocalVariable(name: "result", scope: !2270, file: !2, line: 1684, type: !191)
!2275 = !DILocalVariable(name: "status", scope: !2270, file: !2, line: 1684, type: !38)
!2276 = distinct !DIAssignID()
!2277 = !DILocation(line: 0, scope: !2270)
!2278 = !DILocation(line: 1684, column: 3, scope: !2270)
!2279 = !DILocation(line: 1684, column: 3, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 1684, column: 3)
!2281 = !DILocation(line: 1684, column: 3, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 1684, column: 3)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 1684, column: 3)
!2284 = !DILocation(line: 1685, column: 1, scope: !2270)
!2285 = !DISubprogram(name: "gsl_sf_psi_int_e", scope: !2286, file: !2286, line: 51, type: !2287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2286 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!38, !1175, !190}
!2289 = !DISubprogram(name: "gsl_sf_psi_1_int_e", scope: !2286, file: !2286, line: 89, type: !2287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2290 = !DISubprogram(name: "gsl_sf_psi_n_e", scope: !2286, file: !2286, line: 107, type: !1668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2291 = !DISubprogram(name: "exp", scope: !487, file: !487, line: 95, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2292 = !DISubprogram(name: "pow", scope: !487, file: !487, line: 140, type: !1349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2293 = !DISubprogram(name: "sqrt", scope: !487, file: !487, line: 143, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2294 = !DISubprogram(name: "gsl_sf_complex_log_e", scope: !2295, file: !2295, line: 62, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2295 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!2296 = !DISubprogram(name: "gsl_sf_angle_restrict_symm_err_e", scope: !1661, file: !1661, line: 145, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
