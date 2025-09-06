; ModuleID = 'dawson.c'
source_filename = "dawson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"dawson.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [28 x i8] c"gsl_sf_dawson_e(x, &result)\00", align 1, !dbg !12
@daw_data = internal unnamed_addr constant [21 x double] [double 0xBF7A0446B6A047AB, double 0xBFCD5D36A2FEBAA2, double 0x3F96A960C71C2024, double 0xBF5962171D4449B8, double 0x3F164675C923024B, double 0xBED00E91D1DDB2CC, double 0x3E83A254B2042A30, double 0xBE34D6CFA0BFB118, double 0x3DE38954915CDF24, double 0xBD90664BD406D80F, double 0x3D38ECA8AA8115C7, double 0xBCE14CF6E3298ACA, double 0x3C861A775B56A32B, double 0xBC2A27844D78FB8E, double 0x3BCCD1C8F2E59C07, double 0xBB6DB662F1B93CB2, double 0x3B0CC7D6317FCBF0, double 0xBAAA49C011FE5A2D, double 0x3A46B73DCDF8AE30, double 0xB9E29FB87EA698C9, double 0x397D0CFA9615C26E], align 16, !dbg !17
@daw2_data = internal unnamed_addr constant [45 x double] [double 0xBFAD203BAD075A7E, double 0xBFD45BF89979C28E, double 0x3FCAB7F110F77DE9, double 0xBFBFEFE277D6B8AE, double 0x3FB15FE1FE2DD440, double 0xBFA13BC57D12B1F8, double 0x3F8F410B63CBF9D6, double 0xBF7A00BFDAACF5FD, double 0x3F63EDAFF55A6C54, double 0xBF4C409E8E0E013D, double 0x3F3298CC8B65B18A, double 0xBF16D255517D468C, double 0x3EFA335B419BC716, double 0xBEDC3C5A76DA5E32, double 0x3EBCA7319897900B, double 0xBE9B7594EF2423AB, double 0x3E78EB1C963CA04A, double 0xBE557731F765A815, double 0x3E3197FBC1EBB7CE, double 0xBE0B7FB9A62066A3, double 0x3DE48804BE136212, double 0xBDBD58010FBAB11B, double 0x3D941ABCF31B5A45, double 0xBD6A744538A5B7C7, double 0x3D40BCF0DD546BAF, double 0xBD1465D7DB3342CB, double 0x3CE7F83F7D7255F0, double 0xBCBB31976B7758C1, double 0x3C8DD1B2D773A13C, double 0xBC5FA34B20104378, double 0x3C304186C8888A7C, double 0xBC0031F42A31CF19, double 0x3BCF4FE733AE863D, double 0xBB9D65AD005E36B3, double 0x3B6AD34009EBA9B8, double 0xBB37CF4F36739C1C, double 0x3B0492372916CA1B, double 0xBAD14FE7797A38D6, double 0x3A9C66DA84DDDD59, double 0xBA66B8F108CD7DA1, double 0x3A31BD93A50DC810, double 0xB9FB0CA6D841FE00, double 0x39C4258F3BC8FDF4, double 0xB98D55D87F2EBFF6, double 0x3954E30C2E4018C3], align 16, !dbg !76
@dawa_data = internal unnamed_addr constant [75 x double] [double 0x3F914F81B52477FF, double 0x3F81C88664782ACB, double 0x3F2FC87E5A1534EC, double 0x3EEA72EBE42F3C64, double 0x3EB1E461D1E674CE, double 0x3E823A99FD495526, double 0x3E574FB73DEC6968, double 0x3E28A09F6DAEE138, double 0xBDEA21BB93012865, double 0xBDF549AC4DB378F2, double 0xBDDC4BDCFB1B88E8, double 0xBD9B8888E5ABDFA0, double 0x3DA2D49D734CA03C, double 0x3D8AADCF7CE26C53, double 0xBD51C22586B0D8FE, double 0xBD5DA126B9F708EB, double 0xBD28F1F26A699F7C, double 0x3D2BA5CCC7A7E306, double 0x3D0BD439E7B2505B, double 0xBCFA11F47A326CA1, double 0xBCE48F99FF441BCB, double 0x3CCB8406EB8FBD45, double 0x3CBBC0D9974CCDF8, double 0xBCA14AF7C914AE05, double 0xBC92327EEFF6F078, double 0x3C79D203AACA578D, double 0x3C6707D4AD73B703, double 0xBC55966E133698EF, double 0xBC3A7EC08F7A5EAE, double 0x3C32D4B2F50E7317, double 0x3C06B5D5562C6032, double 0xBC102733CAE7CD1A, double 0x3BA45F038F3C5FF6, double 0x3BE9CC16E863BC10, double 0xBBC3717FC31D168B, double 0xBBC1B4A7AFC33613, double 0x3BAF00AFD189FA16, double 0x3B90BB7F3F7856AD, double 0xBB9159A2B5C21B8A, double 0x3B4201B884155C79, double 0x3B6DCD511157BEF1, double 0xBB520EC23AD69D3B, double 0xBB4122097E37E29F, double 0x3B3AB6426A19574B, double 0xBAB0D5FA1B179B1A, double 0xBB19360FB4F71B1B, double 0x3B0076D0DA422040, double 0x3AEAC2A9787CA046, double 0xBAE94DD5C20BBC4C, double 0x3AB2DBD4295BCAEF, double 0x3AC5C9F11044BA62, double 0xBAB5005537E324E4, double 0xBA8843516EEDCF96, double 0x3A9A427E51DC9CBE, double 0xBA7D7C2B21B9D2C3, double 0xBA6EA1E97294F8DB, double 0x3A6C44BC85276A29, double 0xBA3F4E2AC74A654D, double 0xBA4765656E433D76, double 0x3A3D141FFC75D173, double 0xB9D88A9FFF428782, double 0xBA1F0E1BEB5FCC7D, double 0x3A0DB17ADFF1C89D, double 0x39D98273DE9B0D6E, double 0xB9F39D9583B90109, double 0x39DEFE10411B6BFF, double 0x39BB8AB08187210B, double 0xB9C884AD1F7E7324, double 0x39B0F978D2C5C9CF, double 0x39959FD8A79BDEE4, double 0xB99EEC7EB82081F0, double 0x3983F57289C3A49A, double 0x396E0074C5F18089, double 0xB973DC5E9E955393, double 0x3959853CCB837398], align 16, !dbg !83

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_dawson_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !99 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !110, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !111, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata double 0x3E5399999999999A, metadata !112, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata double 0x4186A09E667F3BCC, metadata !114, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata double 0x7FB9999999999999, metadata !115, metadata !DIExpression()), !dbg !127
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !128
  tail call void @llvm.dbg.value(metadata double %3, metadata !116, metadata !DIExpression()), !dbg !127
  %4 = fcmp olt double %3, 0x3E5399999999999A, !dbg !129
  br i1 %4, label %5, label %7, !dbg !130

5:                                                ; preds = %2
  store double %0, ptr %1, align 8, !dbg !131, !tbaa !133
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !138
  store double 0.000000e+00, ptr %6, align 8, !dbg !139, !tbaa !140
  br label %156, !dbg !141

7:                                                ; preds = %2
  %8 = fcmp olt double %3, 1.000000e+00, !dbg !142
  br i1 %8, label %9, label %54, !dbg !143

9:                                                ; preds = %7
  %10 = fmul double %3, 2.000000e+00, !dbg !144
  %11 = fmul double %3, %10, !dbg !145
  %12 = fadd double %11, -1.000000e+00, !dbg !146
  call void @llvm.dbg.value(metadata !147, metadata !148, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %12, metadata !156, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata ptr undef, metadata !157, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !160, metadata !DIExpression()), !dbg !170
  %13 = fmul double %12, 2.000000e+00, !dbg !172
  %14 = fadd double %13, 1.000000e+00, !dbg !173
  %15 = fadd double %14, -1.000000e+00, !dbg !174
  %16 = fmul double %15, 5.000000e-01, !dbg !175
  call void @llvm.dbg.value(metadata double %16, metadata !161, metadata !DIExpression()), !dbg !170
  %17 = fmul double %16, 2.000000e+00, !dbg !176
  call void @llvm.dbg.value(metadata double %17, metadata !162, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 15, metadata !158, metadata !DIExpression()), !dbg !170
  br label %18, !dbg !177

18:                                               ; preds = %18, %9
  %19 = phi i64 [ 15, %9 ], [ %34, %18 ]
  %20 = phi double [ 0.000000e+00, %9 ], [ %27, %18 ]
  %21 = phi double [ 0.000000e+00, %9 ], [ %33, %18 ]
  %22 = phi double [ 0.000000e+00, %9 ], [ %20, %18 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !158, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %20, metadata !159, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %21, metadata !163, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %22, metadata !160, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %20, metadata !164, metadata !DIExpression()), !dbg !178
  %23 = fmul double %17, %20, !dbg !179
  %24 = fsub double %23, %22, !dbg !180
  %25 = getelementptr inbounds double, ptr @daw_data, i64 %19, !dbg !181
  %26 = load double, ptr %25, align 8, !dbg !181, !tbaa !182
  %27 = fadd double %24, %26, !dbg !183
  call void @llvm.dbg.value(metadata double %27, metadata !159, metadata !DIExpression()), !dbg !170
  %28 = tail call double @llvm.fabs.f64(double %23), !dbg !184
  %29 = tail call double @llvm.fabs.f64(double %22), !dbg !185
  %30 = fadd double %28, %29, !dbg !186
  %31 = tail call double @llvm.fabs.f64(double %26), !dbg !187
  %32 = fadd double %30, %31, !dbg !188
  %33 = fadd double %21, %32, !dbg !189
  call void @llvm.dbg.value(metadata double %33, metadata !163, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %20, metadata !160, metadata !DIExpression()), !dbg !170
  %34 = add nsw i64 %19, -1, !dbg !190
  call void @llvm.dbg.value(metadata i64 %34, metadata !158, metadata !DIExpression()), !dbg !170
  %35 = icmp ugt i64 %19, 1, !dbg !191
  br i1 %35, label %18, label %36, !dbg !177, !llvm.loop !192

36:                                               ; preds = %18
  call void @llvm.dbg.value(metadata double %27, metadata !168, metadata !DIExpression()), !dbg !195
  %37 = fmul double %16, %27, !dbg !196
  %38 = fsub double %37, %20, !dbg !197
  %39 = fadd double %38, 0xBF6A0446B6A047AB, !dbg !198
  call void @llvm.dbg.value(metadata double %39, metadata !159, metadata !DIExpression()), !dbg !170
  %40 = tail call double @llvm.fabs.f64(double %37), !dbg !199
  %41 = tail call double @llvm.fabs.f64(double %20), !dbg !200
  %42 = fadd double %41, %40, !dbg !201
  %43 = fadd double %42, 0x3F6A0446B6A047AB, !dbg !202
  %44 = fadd double %33, %43, !dbg !203
  call void @llvm.dbg.value(metadata double %44, metadata !163, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata double %39, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !204
  %45 = fmul double %44, 0x3CB0000000000000, !dbg !205
  %46 = fadd double %45, 0x3B6DB662F1B93CB2, !dbg !206
  tail call void @llvm.dbg.value(metadata double %46, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !204
  %47 = fadd double %39, 7.500000e-01, !dbg !207
  %48 = fmul double %47, %0, !dbg !208
  store double %48, ptr %1, align 8, !dbg !209, !tbaa !133
  %49 = fmul double %3, %46, !dbg !210
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !211
  %51 = tail call double @llvm.fabs.f64(double %48), !dbg !212
  %52 = fmul double %51, 0x3CC0000000000000, !dbg !213
  %53 = fadd double %52, %49, !dbg !214
  store double %53, ptr %50, align 8, !dbg !214, !tbaa !140
  br label %156

54:                                               ; preds = %7
  %55 = fcmp olt double %3, 4.000000e+00, !dbg !215
  br i1 %55, label %56, label %101, !dbg !216

56:                                               ; preds = %54
  %57 = fmul double %3, 1.250000e-01, !dbg !217
  %58 = fmul double %3, %57, !dbg !218
  %59 = fadd double %58, -1.000000e+00, !dbg !219
  call void @llvm.dbg.value(metadata !147, metadata !148, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double %59, metadata !156, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata ptr undef, metadata !157, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !160, metadata !DIExpression()), !dbg !220
  %60 = fmul double %59, 2.000000e+00, !dbg !222
  %61 = fadd double %60, 1.000000e+00, !dbg !223
  %62 = fadd double %61, -1.000000e+00, !dbg !224
  %63 = fmul double %62, 5.000000e-01, !dbg !225
  call void @llvm.dbg.value(metadata double %63, metadata !161, metadata !DIExpression()), !dbg !220
  %64 = fmul double %63, 2.000000e+00, !dbg !226
  call void @llvm.dbg.value(metadata double %64, metadata !162, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 32, metadata !158, metadata !DIExpression()), !dbg !220
  br label %65, !dbg !227

65:                                               ; preds = %65, %56
  %66 = phi i64 [ 32, %56 ], [ %81, %65 ]
  %67 = phi double [ 0.000000e+00, %56 ], [ %74, %65 ]
  %68 = phi double [ 0.000000e+00, %56 ], [ %80, %65 ]
  %69 = phi double [ 0.000000e+00, %56 ], [ %67, %65 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !158, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double %67, metadata !159, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double %68, metadata !163, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double %69, metadata !160, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double %67, metadata !164, metadata !DIExpression()), !dbg !228
  %70 = fmul double %64, %67, !dbg !229
  %71 = fsub double %70, %69, !dbg !230
  %72 = getelementptr inbounds double, ptr @daw2_data, i64 %66, !dbg !231
  %73 = load double, ptr %72, align 8, !dbg !231, !tbaa !182
  %74 = fadd double %71, %73, !dbg !232
  call void @llvm.dbg.value(metadata double %74, metadata !159, metadata !DIExpression()), !dbg !220
  %75 = tail call double @llvm.fabs.f64(double %70), !dbg !233
  %76 = tail call double @llvm.fabs.f64(double %69), !dbg !234
  %77 = fadd double %75, %76, !dbg !235
  %78 = tail call double @llvm.fabs.f64(double %73), !dbg !236
  %79 = fadd double %77, %78, !dbg !237
  %80 = fadd double %68, %79, !dbg !238
  call void @llvm.dbg.value(metadata double %80, metadata !163, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double %67, metadata !160, metadata !DIExpression()), !dbg !220
  %81 = add nsw i64 %66, -1, !dbg !239
  call void @llvm.dbg.value(metadata i64 %81, metadata !158, metadata !DIExpression()), !dbg !220
  %82 = icmp ugt i64 %66, 1, !dbg !240
  br i1 %82, label %65, label %83, !dbg !227, !llvm.loop !241

83:                                               ; preds = %65
  call void @llvm.dbg.value(metadata double %74, metadata !168, metadata !DIExpression()), !dbg !243
  %84 = fmul double %63, %74, !dbg !244
  %85 = fsub double %84, %67, !dbg !245
  %86 = fadd double %85, 0xBF9D203BAD075A7E, !dbg !246
  call void @llvm.dbg.value(metadata double %86, metadata !159, metadata !DIExpression()), !dbg !220
  %87 = tail call double @llvm.fabs.f64(double %84), !dbg !247
  %88 = tail call double @llvm.fabs.f64(double %67), !dbg !248
  %89 = fadd double %88, %87, !dbg !249
  %90 = fadd double %89, 0x3F9D203BAD075A7E, !dbg !250
  %91 = fadd double %80, %90, !dbg !251
  call void @llvm.dbg.value(metadata double %91, metadata !163, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata double %86, metadata !121, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !252
  %92 = fmul double %91, 0x3CB0000000000000, !dbg !253
  %93 = fadd double %92, 0x3BCF4FE733AE863D, !dbg !254
  tail call void @llvm.dbg.value(metadata double %93, metadata !121, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !252
  %94 = fadd double %86, 2.500000e-01, !dbg !255
  %95 = fmul double %94, %0, !dbg !256
  store double %95, ptr %1, align 8, !dbg !257, !tbaa !133
  %96 = fmul double %3, %93, !dbg !258
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !259
  %98 = tail call double @llvm.fabs.f64(double %95), !dbg !260
  %99 = fmul double %98, 0x3CC0000000000000, !dbg !261
  %100 = fadd double %99, %96, !dbg !262
  store double %100, ptr %97, align 8, !dbg !262, !tbaa !140
  br label %156

101:                                              ; preds = %54
  %102 = fcmp olt double %3, 0x4186A09E667F3BCC, !dbg !263
  br i1 %102, label %103, label %148, !dbg !264

103:                                              ; preds = %101
  %104 = fmul double %0, %0, !dbg !265
  %105 = fdiv double 3.200000e+01, %104, !dbg !266
  %106 = fadd double %105, -1.000000e+00, !dbg !267
  call void @llvm.dbg.value(metadata !147, metadata !148, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata double %106, metadata !156, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata ptr undef, metadata !157, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !160, metadata !DIExpression()), !dbg !268
  %107 = fmul double %106, 2.000000e+00, !dbg !270
  %108 = fadd double %107, 1.000000e+00, !dbg !271
  %109 = fadd double %108, -1.000000e+00, !dbg !272
  %110 = fmul double %109, 5.000000e-01, !dbg !273
  call void @llvm.dbg.value(metadata double %110, metadata !161, metadata !DIExpression()), !dbg !268
  %111 = fmul double %110, 2.000000e+00, !dbg !274
  call void @llvm.dbg.value(metadata double %111, metadata !162, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i32 34, metadata !158, metadata !DIExpression()), !dbg !268
  br label %112, !dbg !275

112:                                              ; preds = %112, %103
  %113 = phi i64 [ 34, %103 ], [ %128, %112 ]
  %114 = phi double [ 0.000000e+00, %103 ], [ %121, %112 ]
  %115 = phi double [ 0.000000e+00, %103 ], [ %127, %112 ]
  %116 = phi double [ 0.000000e+00, %103 ], [ %114, %112 ]
  call void @llvm.dbg.value(metadata i64 %113, metadata !158, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata double %114, metadata !159, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata double %115, metadata !163, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata double %116, metadata !160, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata double %114, metadata !164, metadata !DIExpression()), !dbg !276
  %117 = fmul double %111, %114, !dbg !277
  %118 = fsub double %117, %116, !dbg !278
  %119 = getelementptr inbounds double, ptr @dawa_data, i64 %113, !dbg !279
  %120 = load double, ptr %119, align 8, !dbg !279, !tbaa !182
  %121 = fadd double %118, %120, !dbg !280
  call void @llvm.dbg.value(metadata double %121, metadata !159, metadata !DIExpression()), !dbg !268
  %122 = tail call double @llvm.fabs.f64(double %117), !dbg !281
  %123 = tail call double @llvm.fabs.f64(double %116), !dbg !282
  %124 = fadd double %122, %123, !dbg !283
  %125 = tail call double @llvm.fabs.f64(double %120), !dbg !284
  %126 = fadd double %124, %125, !dbg !285
  %127 = fadd double %115, %126, !dbg !286
  call void @llvm.dbg.value(metadata double %127, metadata !163, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata double %114, metadata !160, metadata !DIExpression()), !dbg !268
  %128 = add nsw i64 %113, -1, !dbg !287
  call void @llvm.dbg.value(metadata i64 %128, metadata !158, metadata !DIExpression()), !dbg !268
  %129 = icmp ugt i64 %113, 1, !dbg !288
  br i1 %129, label %112, label %130, !dbg !275, !llvm.loop !289

130:                                              ; preds = %112
  call void @llvm.dbg.value(metadata double %121, metadata !168, metadata !DIExpression()), !dbg !291
  %131 = fmul double %110, %121, !dbg !292
  %132 = fsub double %131, %114, !dbg !293
  %133 = fadd double %132, 0x3F814F81B52477FF, !dbg !294
  call void @llvm.dbg.value(metadata double %133, metadata !159, metadata !DIExpression()), !dbg !268
  %134 = tail call double @llvm.fabs.f64(double %131), !dbg !295
  %135 = tail call double @llvm.fabs.f64(double %114), !dbg !296
  %136 = fadd double %135, %134, !dbg !297
  %137 = fadd double %136, 0x3F814F81B52477FF, !dbg !298
  %138 = fadd double %127, %137, !dbg !299
  call void @llvm.dbg.value(metadata double %138, metadata !163, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata double %133, metadata !124, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !300
  %139 = fmul double %138, 0x3CB0000000000000, !dbg !301
  %140 = fadd double %139, 0x3BC3717FC31D168B, !dbg !302
  tail call void @llvm.dbg.value(metadata double %140, metadata !124, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !300
  %141 = fadd double %133, 5.000000e-01, !dbg !303
  %142 = fdiv double %141, %0, !dbg !304
  store double %142, ptr %1, align 8, !dbg !305, !tbaa !133
  %143 = fdiv double %140, %3, !dbg !306
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !307
  %145 = tail call double @llvm.fabs.f64(double %142), !dbg !308
  %146 = fmul double %145, 0x3CC0000000000000, !dbg !309
  %147 = fadd double %146, %143, !dbg !310
  store double %147, ptr %144, align 8, !dbg !310, !tbaa !140
  br label %156

148:                                              ; preds = %101
  %149 = fcmp olt double %3, 0x7FB9999999999999, !dbg !311
  br i1 %149, label %150, label %154, !dbg !313

150:                                              ; preds = %148
  %151 = fdiv double 5.000000e-01, %0, !dbg !314
  store double %151, ptr %1, align 8, !dbg !316, !tbaa !133
  %152 = fmul double %151, 0x3CC0000000000000, !dbg !317
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !318
  store double %152, ptr %153, align 8, !dbg !319, !tbaa !140
  br label %156, !dbg !320

154:                                              ; preds = %148
  store double 0.000000e+00, ptr %1, align 8, !dbg !321, !tbaa !133
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !321
  store double 0x10000000000000, ptr %155, align 8, !dbg !321, !tbaa !140
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 269, i32 noundef 15) #5, !dbg !324
  br label %156, !dbg !324

156:                                              ; preds = %154, %150, %130, %83, %36, %5
  %157 = phi i32 [ 0, %5 ], [ 0, %36 ], [ 0, %83 ], [ 0, %130 ], [ 0, %150 ], [ 15, %154 ], !dbg !326
  ret i32 %157, !dbg !327
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !328 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_dawson(double noundef %0) local_unnamed_addr #0 !dbg !333 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !338, metadata !DIExpression(), metadata !340, metadata ptr %2, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata double %0, metadata !337, metadata !DIExpression()), !dbg !341
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !342
  %3 = call i32 @gsl_sf_dawson_e(double noundef %0, ptr noundef nonnull %2), !dbg !342, !range !343
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !339, metadata !DIExpression()), !dbg !341
  %4 = icmp eq i32 %3, 0, !dbg !344
  br i1 %4, label %6, label %5, !dbg !342

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 280, i32 noundef %3) #5, !dbg !346
  br label %6, !dbg !346

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !342, !tbaa !133
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !349
  ret double %7, !dbg !349
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "dawson.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0824eb763e9e3e6cb2f8048c4780dc73")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 280, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 28)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "daw_data", scope: !19, file: !2, line: 54, type: !88, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, globals: !60, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 39, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!25 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!26 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!27 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!28 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!29 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!30 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!31 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!32 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!33 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!34 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!35 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!36 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!37 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!38 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!39 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!40 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!41 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!42 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!43 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!44 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!45 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!46 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!47 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!48 = !DIEnumerator(name: "GSL_ESING", value: 21)
!49 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!50 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!51 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!52 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!53 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!54 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!55 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!56 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!57 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!58 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!59 = !DIEnumerator(name: "GSL_EOF", value: 32)
!60 = !{!0, !7, !12, !61, !17, !74, !76, !81, !83}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "daw_cs", scope: !19, file: !2, line: 77, type: !63, isLocal: true, isDefinition: true)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !64, line: 29, baseType: !65)
!64 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !64, line: 22, size: 320, elements: !66)
!66 = !{!67, !70, !71, !72, !73}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !65, file: !64, line: 23, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !65, file: !64, line: 24, baseType: !23, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !65, file: !64, line: 25, baseType: !69, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !65, file: !64, line: 26, baseType: !69, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !65, file: !64, line: 27, baseType: !23, size: 32, offset: 256)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "daw2_cs", scope: !19, file: !2, line: 131, type: !63, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "daw2_data", scope: !19, file: !2, line: 84, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2880, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 45)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "dawa_cs", scope: !19, file: !2, line: 215, type: !63, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "dawa_data", scope: !19, file: !2, line: 138, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 4800, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 75)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 1344, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 21)
!91 = !{i32 7, !"Dwarf Version", i32 5}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 4}
!94 = !{i32 8, !"PIC Level", i32 2}
!95 = !{i32 7, !"PIE Level", i32 2}
!96 = !{i32 7, !"uwtable", i32 2}
!97 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!98 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!99 = distinct !DISubprogram(name: "gsl_sf_dawson_e", scope: !2, file: !2, line: 226, type: !100, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !109)
!100 = !DISubroutineType(types: !101)
!101 = !{!23, !69, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !104, line: 41, baseType: !105)
!104 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !104, line: 37, size: 128, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !105, file: !104, line: 38, baseType: !69, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !105, file: !104, line: 39, baseType: !69, size: 64, offset: 64)
!109 = !{!110, !111, !112, !114, !115, !116, !117, !121, !124}
!110 = !DILocalVariable(name: "x", arg: 1, scope: !99, file: !2, line: 226, type: !69)
!111 = !DILocalVariable(name: "result", arg: 2, scope: !99, file: !2, line: 226, type: !102)
!112 = !DILocalVariable(name: "xsml", scope: !99, file: !2, line: 228, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!114 = !DILocalVariable(name: "xbig", scope: !99, file: !2, line: 229, type: !113)
!115 = !DILocalVariable(name: "xmax", scope: !99, file: !2, line: 230, type: !113)
!116 = !DILocalVariable(name: "y", scope: !99, file: !2, line: 232, type: !113)
!117 = !DILocalVariable(name: "result_c", scope: !118, file: !2, line: 240, type: !103)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 239, column: 20)
!119 = distinct !DILexicalBlock(scope: !120, file: !2, line: 239, column: 11)
!120 = distinct !DILexicalBlock(scope: !99, file: !2, line: 234, column: 6)
!121 = !DILocalVariable(name: "result_c", scope: !122, file: !2, line: 248, type: !103)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 247, column: 20)
!123 = distinct !DILexicalBlock(scope: !119, file: !2, line: 247, column: 11)
!124 = !DILocalVariable(name: "result_c", scope: !125, file: !2, line: 256, type: !103)
!125 = distinct !DILexicalBlock(scope: !126, file: !2, line: 255, column: 21)
!126 = distinct !DILexicalBlock(scope: !123, file: !2, line: 255, column: 11)
!127 = !DILocation(line: 0, scope: !99)
!128 = !DILocation(line: 232, column: 20, scope: !99)
!129 = !DILocation(line: 234, column: 8, scope: !120)
!130 = !DILocation(line: 234, column: 6, scope: !99)
!131 = !DILocation(line: 235, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !120, file: !2, line: 234, column: 16)
!133 = !{!134, !135, i64 0}
!134 = !{!"gsl_sf_result_struct", !135, i64 0, !135, i64 8}
!135 = !{!"double", !136, i64 0}
!136 = !{!"omnipotent char", !137, i64 0}
!137 = !{!"Simple C/C++ TBAA"}
!138 = !DILocation(line: 236, column: 13, scope: !132)
!139 = !DILocation(line: 236, column: 17, scope: !132)
!140 = !{!134, !135, i64 8}
!141 = !DILocation(line: 237, column: 5, scope: !132)
!142 = !DILocation(line: 239, column: 13, scope: !119)
!143 = !DILocation(line: 239, column: 11, scope: !120)
!144 = !DILocation(line: 241, column: 29, scope: !118)
!145 = !DILocation(line: 241, column: 31, scope: !118)
!146 = !DILocation(line: 241, column: 34, scope: !118)
!147 = !{}
!148 = !DILocalVariable(name: "cs", arg: 1, scope: !149, file: !150, line: 3, type: !153)
!149 = distinct !DISubprogram(name: "cheb_eval_e", scope: !150, file: !150, line: 3, type: !151, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !155)
!150 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!151 = !DISubroutineType(types: !152)
!152 = !{!23, !153, !113, !102}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!155 = !{!148, !156, !157, !158, !159, !160, !161, !162, !163, !164, !168}
!156 = !DILocalVariable(name: "x", arg: 2, scope: !149, file: !150, line: 4, type: !113)
!157 = !DILocalVariable(name: "result", arg: 3, scope: !149, file: !150, line: 5, type: !102)
!158 = !DILocalVariable(name: "j", scope: !149, file: !150, line: 7, type: !23)
!159 = !DILocalVariable(name: "d", scope: !149, file: !150, line: 8, type: !69)
!160 = !DILocalVariable(name: "dd", scope: !149, file: !150, line: 9, type: !69)
!161 = !DILocalVariable(name: "y", scope: !149, file: !150, line: 11, type: !69)
!162 = !DILocalVariable(name: "y2", scope: !149, file: !150, line: 12, type: !69)
!163 = !DILocalVariable(name: "e", scope: !149, file: !150, line: 14, type: !69)
!164 = !DILocalVariable(name: "temp", scope: !165, file: !150, line: 17, type: !69)
!165 = distinct !DILexicalBlock(scope: !166, file: !150, line: 16, column: 33)
!166 = distinct !DILexicalBlock(scope: !167, file: !150, line: 16, column: 3)
!167 = distinct !DILexicalBlock(scope: !149, file: !150, line: 16, column: 3)
!168 = !DILocalVariable(name: "temp", scope: !169, file: !150, line: 24, type: !69)
!169 = distinct !DILexicalBlock(scope: !149, file: !150, line: 23, column: 3)
!170 = !DILocation(line: 0, scope: !149, inlinedAt: !171)
!171 = distinct !DILocation(line: 241, column: 5, scope: !118)
!172 = !DILocation(line: 11, column: 19, scope: !149, inlinedAt: !171)
!173 = !DILocation(line: 11, column: 22, scope: !149, inlinedAt: !171)
!174 = !DILocation(line: 11, column: 30, scope: !149, inlinedAt: !171)
!175 = !DILocation(line: 11, column: 39, scope: !149, inlinedAt: !171)
!176 = !DILocation(line: 12, column: 19, scope: !149, inlinedAt: !171)
!177 = !DILocation(line: 16, column: 3, scope: !167, inlinedAt: !171)
!178 = !DILocation(line: 0, scope: !165, inlinedAt: !171)
!179 = !DILocation(line: 18, column: 11, scope: !165, inlinedAt: !171)
!180 = !DILocation(line: 18, column: 14, scope: !165, inlinedAt: !171)
!181 = !DILocation(line: 18, column: 21, scope: !165, inlinedAt: !171)
!182 = !{!135, !135, i64 0}
!183 = !DILocation(line: 18, column: 19, scope: !165, inlinedAt: !171)
!184 = !DILocation(line: 19, column: 10, scope: !165, inlinedAt: !171)
!185 = !DILocation(line: 19, column: 26, scope: !165, inlinedAt: !171)
!186 = !DILocation(line: 19, column: 24, scope: !165, inlinedAt: !171)
!187 = !DILocation(line: 19, column: 37, scope: !165, inlinedAt: !171)
!188 = !DILocation(line: 19, column: 35, scope: !165, inlinedAt: !171)
!189 = !DILocation(line: 19, column: 7, scope: !165, inlinedAt: !171)
!190 = !DILocation(line: 16, column: 29, scope: !166, inlinedAt: !171)
!191 = !DILocation(line: 16, column: 23, scope: !166, inlinedAt: !171)
!192 = distinct !{!192, !177, !193, !194}
!193 = !DILocation(line: 21, column: 3, scope: !167, inlinedAt: !171)
!194 = !{!"llvm.loop.mustprogress"}
!195 = !DILocation(line: 0, scope: !169, inlinedAt: !171)
!196 = !DILocation(line: 25, column: 10, scope: !169, inlinedAt: !171)
!197 = !DILocation(line: 25, column: 13, scope: !169, inlinedAt: !171)
!198 = !DILocation(line: 25, column: 18, scope: !169, inlinedAt: !171)
!199 = !DILocation(line: 26, column: 10, scope: !169, inlinedAt: !171)
!200 = !DILocation(line: 26, column: 25, scope: !169, inlinedAt: !171)
!201 = !DILocation(line: 26, column: 23, scope: !169, inlinedAt: !171)
!202 = !DILocation(line: 26, column: 34, scope: !169, inlinedAt: !171)
!203 = !DILocation(line: 26, column: 7, scope: !169, inlinedAt: !171)
!204 = !DILocation(line: 0, scope: !118)
!205 = !DILocation(line: 30, column: 33, scope: !149, inlinedAt: !171)
!206 = !DILocation(line: 30, column: 37, scope: !149, inlinedAt: !171)
!207 = !DILocation(line: 242, column: 29, scope: !118)
!208 = !DILocation(line: 242, column: 21, scope: !118)
!209 = !DILocation(line: 242, column: 17, scope: !118)
!210 = !DILocation(line: 243, column: 21, scope: !118)
!211 = !DILocation(line: 243, column: 13, scope: !118)
!212 = !DILocation(line: 244, column: 44, scope: !118)
!213 = !DILocation(line: 244, column: 42, scope: !118)
!214 = !DILocation(line: 244, column: 17, scope: !118)
!215 = !DILocation(line: 247, column: 13, scope: !123)
!216 = !DILocation(line: 247, column: 11, scope: !119)
!217 = !DILocation(line: 249, column: 32, scope: !122)
!218 = !DILocation(line: 249, column: 34, scope: !122)
!219 = !DILocation(line: 249, column: 37, scope: !122)
!220 = !DILocation(line: 0, scope: !149, inlinedAt: !221)
!221 = distinct !DILocation(line: 249, column: 5, scope: !122)
!222 = !DILocation(line: 11, column: 19, scope: !149, inlinedAt: !221)
!223 = !DILocation(line: 11, column: 22, scope: !149, inlinedAt: !221)
!224 = !DILocation(line: 11, column: 30, scope: !149, inlinedAt: !221)
!225 = !DILocation(line: 11, column: 39, scope: !149, inlinedAt: !221)
!226 = !DILocation(line: 12, column: 19, scope: !149, inlinedAt: !221)
!227 = !DILocation(line: 16, column: 3, scope: !167, inlinedAt: !221)
!228 = !DILocation(line: 0, scope: !165, inlinedAt: !221)
!229 = !DILocation(line: 18, column: 11, scope: !165, inlinedAt: !221)
!230 = !DILocation(line: 18, column: 14, scope: !165, inlinedAt: !221)
!231 = !DILocation(line: 18, column: 21, scope: !165, inlinedAt: !221)
!232 = !DILocation(line: 18, column: 19, scope: !165, inlinedAt: !221)
!233 = !DILocation(line: 19, column: 10, scope: !165, inlinedAt: !221)
!234 = !DILocation(line: 19, column: 26, scope: !165, inlinedAt: !221)
!235 = !DILocation(line: 19, column: 24, scope: !165, inlinedAt: !221)
!236 = !DILocation(line: 19, column: 37, scope: !165, inlinedAt: !221)
!237 = !DILocation(line: 19, column: 35, scope: !165, inlinedAt: !221)
!238 = !DILocation(line: 19, column: 7, scope: !165, inlinedAt: !221)
!239 = !DILocation(line: 16, column: 29, scope: !166, inlinedAt: !221)
!240 = !DILocation(line: 16, column: 23, scope: !166, inlinedAt: !221)
!241 = distinct !{!241, !227, !242, !194}
!242 = !DILocation(line: 21, column: 3, scope: !167, inlinedAt: !221)
!243 = !DILocation(line: 0, scope: !169, inlinedAt: !221)
!244 = !DILocation(line: 25, column: 10, scope: !169, inlinedAt: !221)
!245 = !DILocation(line: 25, column: 13, scope: !169, inlinedAt: !221)
!246 = !DILocation(line: 25, column: 18, scope: !169, inlinedAt: !221)
!247 = !DILocation(line: 26, column: 10, scope: !169, inlinedAt: !221)
!248 = !DILocation(line: 26, column: 25, scope: !169, inlinedAt: !221)
!249 = !DILocation(line: 26, column: 23, scope: !169, inlinedAt: !221)
!250 = !DILocation(line: 26, column: 34, scope: !169, inlinedAt: !221)
!251 = !DILocation(line: 26, column: 7, scope: !169, inlinedAt: !221)
!252 = !DILocation(line: 0, scope: !122)
!253 = !DILocation(line: 30, column: 33, scope: !149, inlinedAt: !221)
!254 = !DILocation(line: 30, column: 37, scope: !149, inlinedAt: !221)
!255 = !DILocation(line: 250, column: 29, scope: !122)
!256 = !DILocation(line: 250, column: 21, scope: !122)
!257 = !DILocation(line: 250, column: 17, scope: !122)
!258 = !DILocation(line: 251, column: 21, scope: !122)
!259 = !DILocation(line: 251, column: 13, scope: !122)
!260 = !DILocation(line: 252, column: 44, scope: !122)
!261 = !DILocation(line: 252, column: 42, scope: !122)
!262 = !DILocation(line: 252, column: 17, scope: !122)
!263 = !DILocation(line: 255, column: 13, scope: !126)
!264 = !DILocation(line: 255, column: 11, scope: !123)
!265 = !DILocation(line: 257, column: 34, scope: !125)
!266 = !DILocation(line: 257, column: 31, scope: !125)
!267 = !DILocation(line: 257, column: 38, scope: !125)
!268 = !DILocation(line: 0, scope: !149, inlinedAt: !269)
!269 = distinct !DILocation(line: 257, column: 5, scope: !125)
!270 = !DILocation(line: 11, column: 19, scope: !149, inlinedAt: !269)
!271 = !DILocation(line: 11, column: 22, scope: !149, inlinedAt: !269)
!272 = !DILocation(line: 11, column: 30, scope: !149, inlinedAt: !269)
!273 = !DILocation(line: 11, column: 39, scope: !149, inlinedAt: !269)
!274 = !DILocation(line: 12, column: 19, scope: !149, inlinedAt: !269)
!275 = !DILocation(line: 16, column: 3, scope: !167, inlinedAt: !269)
!276 = !DILocation(line: 0, scope: !165, inlinedAt: !269)
!277 = !DILocation(line: 18, column: 11, scope: !165, inlinedAt: !269)
!278 = !DILocation(line: 18, column: 14, scope: !165, inlinedAt: !269)
!279 = !DILocation(line: 18, column: 21, scope: !165, inlinedAt: !269)
!280 = !DILocation(line: 18, column: 19, scope: !165, inlinedAt: !269)
!281 = !DILocation(line: 19, column: 10, scope: !165, inlinedAt: !269)
!282 = !DILocation(line: 19, column: 26, scope: !165, inlinedAt: !269)
!283 = !DILocation(line: 19, column: 24, scope: !165, inlinedAt: !269)
!284 = !DILocation(line: 19, column: 37, scope: !165, inlinedAt: !269)
!285 = !DILocation(line: 19, column: 35, scope: !165, inlinedAt: !269)
!286 = !DILocation(line: 19, column: 7, scope: !165, inlinedAt: !269)
!287 = !DILocation(line: 16, column: 29, scope: !166, inlinedAt: !269)
!288 = !DILocation(line: 16, column: 23, scope: !166, inlinedAt: !269)
!289 = distinct !{!289, !275, !290, !194}
!290 = !DILocation(line: 21, column: 3, scope: !167, inlinedAt: !269)
!291 = !DILocation(line: 0, scope: !169, inlinedAt: !269)
!292 = !DILocation(line: 25, column: 10, scope: !169, inlinedAt: !269)
!293 = !DILocation(line: 25, column: 13, scope: !169, inlinedAt: !269)
!294 = !DILocation(line: 25, column: 18, scope: !169, inlinedAt: !269)
!295 = !DILocation(line: 26, column: 10, scope: !169, inlinedAt: !269)
!296 = !DILocation(line: 26, column: 25, scope: !169, inlinedAt: !269)
!297 = !DILocation(line: 26, column: 23, scope: !169, inlinedAt: !269)
!298 = !DILocation(line: 26, column: 34, scope: !169, inlinedAt: !269)
!299 = !DILocation(line: 26, column: 7, scope: !169, inlinedAt: !269)
!300 = !DILocation(line: 0, scope: !125)
!301 = !DILocation(line: 30, column: 33, scope: !149, inlinedAt: !269)
!302 = !DILocation(line: 30, column: 37, scope: !149, inlinedAt: !269)
!303 = !DILocation(line: 258, column: 25, scope: !125)
!304 = !DILocation(line: 258, column: 41, scope: !125)
!305 = !DILocation(line: 258, column: 18, scope: !125)
!306 = !DILocation(line: 259, column: 33, scope: !125)
!307 = !DILocation(line: 259, column: 13, scope: !125)
!308 = !DILocation(line: 260, column: 44, scope: !125)
!309 = !DILocation(line: 260, column: 42, scope: !125)
!310 = !DILocation(line: 260, column: 17, scope: !125)
!311 = !DILocation(line: 263, column: 13, scope: !312)
!312 = distinct !DILexicalBlock(scope: !126, file: !2, line: 263, column: 11)
!313 = !DILocation(line: 263, column: 11, scope: !126)
!314 = !DILocation(line: 264, column: 22, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !2, line: 263, column: 21)
!316 = !DILocation(line: 264, column: 17, scope: !315)
!317 = !DILocation(line: 265, column: 41, scope: !315)
!318 = !DILocation(line: 265, column: 13, scope: !315)
!319 = !DILocation(line: 265, column: 17, scope: !315)
!320 = !DILocation(line: 266, column: 5, scope: !315)
!321 = !DILocation(line: 269, column: 5, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !2, line: 269, column: 5)
!323 = distinct !DILexicalBlock(scope: !312, file: !2, line: 268, column: 8)
!324 = !DILocation(line: 269, column: 5, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !2, line: 269, column: 5)
!326 = !DILocation(line: 0, scope: !120)
!327 = !DILocation(line: 271, column: 1, scope: !99)
!328 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !331, !331, !23, !23}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!333 = distinct !DISubprogram(name: "gsl_sf_dawson", scope: !2, file: !2, line: 278, type: !334, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!69, !69}
!336 = !{!337, !338, !339}
!337 = !DILocalVariable(name: "x", arg: 1, scope: !333, file: !2, line: 278, type: !69)
!338 = !DILocalVariable(name: "result", scope: !333, file: !2, line: 280, type: !103)
!339 = !DILocalVariable(name: "status", scope: !333, file: !2, line: 280, type: !23)
!340 = distinct !DIAssignID()
!341 = !DILocation(line: 0, scope: !333)
!342 = !DILocation(line: 280, column: 3, scope: !333)
!343 = !{i32 0, i32 16}
!344 = !DILocation(line: 280, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !333, file: !2, line: 280, column: 3)
!346 = !DILocation(line: 280, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 280, column: 3)
!348 = distinct !DILexicalBlock(scope: !345, file: !2, line: 280, column: 3)
!349 = !DILocation(line: 281, column: 1, scope: !333)
