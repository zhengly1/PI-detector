; ModuleID = 'dawson.ll'
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
  br label %108, !dbg !141

7:                                                ; preds = %2
  %8 = fcmp olt double %3, 1.000000e+00, !dbg !142
  br i1 %8, label %9, label %38, !dbg !143

9:                                                ; preds = %7
  %10 = fmul double %3, 2.000000e+00, !dbg !144
  %11 = fmul double %3, %10, !dbg !145
  %handler_result = call double @fAddHandlerDouble(double %11, double -1.000000e+00), !dbg !146
  call void @llvm.dbg.value(metadata !170, metadata !154, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %handler_result, metadata !155, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata ptr undef, metadata !156, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !171
  %12 = fmul double %handler_result, 2.000000e+00, !dbg !146
  %handler_result1 = call double @fAddHandlerDouble(double %12, double 1.000000e+00), !dbg !172
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !173
  %13 = fmul double %handler_result2, 5.000000e-01, !dbg !173
  call void @llvm.dbg.value(metadata double %13, metadata !160, metadata !DIExpression()), !dbg !171
  %14 = fmul double %13, 2.000000e+00, !dbg !174
  call void @llvm.dbg.value(metadata double %14, metadata !161, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i32 15, metadata !157, metadata !DIExpression()), !dbg !171
  br label %15, !dbg !175

15:                                               ; preds = %15, %9
  %16 = phi i64 [ 15, %9 ], [ %26, %15 ]
  %17 = phi double [ 0.000000e+00, %9 ], [ %handler_result4, %15 ]
  %18 = phi double [ 0.000000e+00, %9 ], [ %handler_result7, %15 ]
  %19 = phi double [ 0.000000e+00, %9 ], [ %17, %15 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !157, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %17, metadata !158, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %18, metadata !162, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %19, metadata !159, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %17, metadata !163, metadata !DIExpression()), !dbg !176
  %20 = fmul double %14, %17, !dbg !177
  %handler_result3 = call double @fSubHandlerDouble(double %20, double %19), !dbg !178
  %21 = getelementptr inbounds double, ptr @daw_data, i64 %16, !dbg !178
  %22 = load double, ptr %21, align 8, !dbg !178, !tbaa !179
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %22), !dbg !180
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !158, metadata !DIExpression()), !dbg !171
  %23 = tail call double @llvm.fabs.f64(double %20), !dbg !180
  %24 = tail call double @llvm.fabs.f64(double %19), !dbg !181
  %handler_result5 = call double @fAddHandlerDouble(double %23, double %24), !dbg !182
  %25 = tail call double @llvm.fabs.f64(double %22), !dbg !182
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %25), !dbg !183
  %handler_result7 = call double @fAddHandlerDouble(double %18, double %handler_result6), !dbg !184
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !162, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %17, metadata !159, metadata !DIExpression()), !dbg !171
  %26 = add nsw i64 %16, -1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %26, metadata !157, metadata !DIExpression()), !dbg !171
  %27 = icmp ugt i64 %16, 1, !dbg !185
  br i1 %27, label %15, label %28, !dbg !175, !llvm.loop !186

28:                                               ; preds = %15
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !167, metadata !DIExpression()), !dbg !189
  %29 = fmul double %13, %handler_result4, !dbg !190
  %handler_result8 = call double @fSubHandlerDouble(double %29, double %17), !dbg !191
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0xBF6A0446B6A047AB), !dbg !192
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !158, metadata !DIExpression()), !dbg !171
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !192
  %31 = tail call double @llvm.fabs.f64(double %17), !dbg !193
  %handler_result10 = call double @fAddHandlerDouble(double %31, double %30), !dbg !194
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3F6A0446B6A047AB), !dbg !195
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !196
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !162, metadata !DIExpression()), !dbg !171
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !197
  %32 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !196
  %handler_result13 = call double @fAddHandlerDouble(double %32, double 0x3B6DB662F1B93CB2), !dbg !198
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !197
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double 7.500000e-01), !dbg !199
  %33 = fmul double %handler_result14, %0, !dbg !199
  store double %33, ptr %1, align 8, !dbg !200, !tbaa !133
  %34 = fmul double %3, %handler_result13, !dbg !201
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !202
  %36 = tail call double @llvm.fabs.f64(double %33), !dbg !203
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !204
  %handler_result15 = call double @fAddHandlerDouble(double %37, double %34), !dbg !205
  store double %handler_result15, ptr %35, align 8, !dbg !205, !tbaa !140
  br label %108

38:                                               ; preds = %7
  %39 = fcmp olt double %3, 4.000000e+00, !dbg !206
  br i1 %39, label %40, label %69, !dbg !207

40:                                               ; preds = %38
  %41 = fmul double %3, 1.250000e-01, !dbg !208
  %42 = fmul double %3, %41, !dbg !209
  %handler_result16 = call double @fAddHandlerDouble(double %42, double -1.000000e+00), !dbg !210
  call void @llvm.dbg.value(metadata !170, metadata !154, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !155, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr undef, metadata !156, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !212
  %43 = fmul double %handler_result16, 2.000000e+00, !dbg !210
  %handler_result17 = call double @fAddHandlerDouble(double %43, double 1.000000e+00), !dbg !213
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double -1.000000e+00), !dbg !214
  %44 = fmul double %handler_result18, 5.000000e-01, !dbg !214
  call void @llvm.dbg.value(metadata double %44, metadata !160, metadata !DIExpression()), !dbg !212
  %45 = fmul double %44, 2.000000e+00, !dbg !215
  call void @llvm.dbg.value(metadata double %45, metadata !161, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 32, metadata !157, metadata !DIExpression()), !dbg !212
  br label %46, !dbg !216

46:                                               ; preds = %46, %40
  %47 = phi i64 [ 32, %40 ], [ %57, %46 ]
  %48 = phi double [ 0.000000e+00, %40 ], [ %handler_result20, %46 ]
  %49 = phi double [ 0.000000e+00, %40 ], [ %handler_result23, %46 ]
  %50 = phi double [ 0.000000e+00, %40 ], [ %48, %46 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !157, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata double %48, metadata !158, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata double %49, metadata !162, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata double %50, metadata !159, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata double %48, metadata !163, metadata !DIExpression()), !dbg !217
  %51 = fmul double %45, %48, !dbg !218
  %handler_result19 = call double @fSubHandlerDouble(double %51, double %50), !dbg !219
  %52 = getelementptr inbounds double, ptr @daw2_data, i64 %47, !dbg !219
  %53 = load double, ptr %52, align 8, !dbg !219, !tbaa !179
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %53), !dbg !220
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !158, metadata !DIExpression()), !dbg !212
  %54 = tail call double @llvm.fabs.f64(double %51), !dbg !220
  %55 = tail call double @llvm.fabs.f64(double %50), !dbg !221
  %handler_result21 = call double @fAddHandlerDouble(double %54, double %55), !dbg !222
  %56 = tail call double @llvm.fabs.f64(double %53), !dbg !222
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %56), !dbg !223
  %handler_result23 = call double @fAddHandlerDouble(double %49, double %handler_result22), !dbg !224
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !162, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata double %48, metadata !159, metadata !DIExpression()), !dbg !212
  %57 = add nsw i64 %47, -1, !dbg !224
  call void @llvm.dbg.value(metadata i64 %57, metadata !157, metadata !DIExpression()), !dbg !212
  %58 = icmp ugt i64 %47, 1, !dbg !225
  br i1 %58, label %46, label %59, !dbg !216, !llvm.loop !226

59:                                               ; preds = %46
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !167, metadata !DIExpression()), !dbg !228
  %60 = fmul double %44, %handler_result20, !dbg !229
  %handler_result24 = call double @fSubHandlerDouble(double %60, double %48), !dbg !230
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0xBF9D203BAD075A7E), !dbg !231
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !158, metadata !DIExpression()), !dbg !212
  %61 = tail call double @llvm.fabs.f64(double %60), !dbg !231
  %62 = tail call double @llvm.fabs.f64(double %48), !dbg !232
  %handler_result26 = call double @fAddHandlerDouble(double %62, double %61), !dbg !233
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double 0x3F9D203BAD075A7E), !dbg !234
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result23, double %handler_result27), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !162, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !121, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !236
  %63 = fmul double %handler_result28, 0x3CB0000000000000, !dbg !235
  %handler_result29 = call double @fAddHandlerDouble(double %63, double 0x3BCF4FE733AE863D), !dbg !237
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !121, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !236
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result25, double 2.500000e-01), !dbg !238
  %64 = fmul double %handler_result30, %0, !dbg !238
  store double %64, ptr %1, align 8, !dbg !239, !tbaa !133
  %65 = fmul double %3, %handler_result29, !dbg !240
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !241
  %67 = tail call double @llvm.fabs.f64(double %64), !dbg !242
  %68 = fmul double %67, 0x3CC0000000000000, !dbg !243
  %handler_result31 = call double @fAddHandlerDouble(double %68, double %65), !dbg !244
  store double %handler_result31, ptr %66, align 8, !dbg !244, !tbaa !140
  br label %108

69:                                               ; preds = %38
  %70 = fcmp olt double %3, 0x4186A09E667F3BCC, !dbg !245
  br i1 %70, label %71, label %100, !dbg !246

71:                                               ; preds = %69
  %72 = fmul double %0, %0, !dbg !247
  %73 = fdiv double 3.200000e+01, %72, !dbg !248
  %handler_result32 = call double @fAddHandlerDouble(double %73, double -1.000000e+00), !dbg !249
  call void @llvm.dbg.value(metadata !170, metadata !154, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !155, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata ptr undef, metadata !156, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !251
  %74 = fmul double %handler_result32, 2.000000e+00, !dbg !249
  %handler_result33 = call double @fAddHandlerDouble(double %74, double 1.000000e+00), !dbg !252
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double -1.000000e+00), !dbg !253
  %75 = fmul double %handler_result34, 5.000000e-01, !dbg !253
  call void @llvm.dbg.value(metadata double %75, metadata !160, metadata !DIExpression()), !dbg !251
  %76 = fmul double %75, 2.000000e+00, !dbg !254
  call void @llvm.dbg.value(metadata double %76, metadata !161, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 34, metadata !157, metadata !DIExpression()), !dbg !251
  br label %77, !dbg !255

77:                                               ; preds = %77, %71
  %78 = phi i64 [ 34, %71 ], [ %88, %77 ]
  %79 = phi double [ 0.000000e+00, %71 ], [ %handler_result36, %77 ]
  %80 = phi double [ 0.000000e+00, %71 ], [ %handler_result39, %77 ]
  %81 = phi double [ 0.000000e+00, %71 ], [ %79, %77 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !157, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %79, metadata !158, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %80, metadata !162, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %81, metadata !159, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %79, metadata !163, metadata !DIExpression()), !dbg !256
  %82 = fmul double %76, %79, !dbg !257
  %handler_result35 = call double @fSubHandlerDouble(double %82, double %81), !dbg !258
  %83 = getelementptr inbounds double, ptr @dawa_data, i64 %78, !dbg !258
  %84 = load double, ptr %83, align 8, !dbg !258, !tbaa !179
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double %84), !dbg !259
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !158, metadata !DIExpression()), !dbg !251
  %85 = tail call double @llvm.fabs.f64(double %82), !dbg !259
  %86 = tail call double @llvm.fabs.f64(double %81), !dbg !260
  %handler_result37 = call double @fAddHandlerDouble(double %85, double %86), !dbg !261
  %87 = tail call double @llvm.fabs.f64(double %84), !dbg !261
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double %87), !dbg !262
  %handler_result39 = call double @fAddHandlerDouble(double %80, double %handler_result38), !dbg !263
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !162, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %79, metadata !159, metadata !DIExpression()), !dbg !251
  %88 = add nsw i64 %78, -1, !dbg !263
  call void @llvm.dbg.value(metadata i64 %88, metadata !157, metadata !DIExpression()), !dbg !251
  %89 = icmp ugt i64 %78, 1, !dbg !264
  br i1 %89, label %77, label %90, !dbg !255, !llvm.loop !265

90:                                               ; preds = %77
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !167, metadata !DIExpression()), !dbg !267
  %91 = fmul double %75, %handler_result36, !dbg !268
  %handler_result40 = call double @fSubHandlerDouble(double %91, double %79), !dbg !269
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double 0x3F814F81B52477FF), !dbg !270
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !158, metadata !DIExpression()), !dbg !251
  %92 = tail call double @llvm.fabs.f64(double %91), !dbg !270
  %93 = tail call double @llvm.fabs.f64(double %79), !dbg !271
  %handler_result42 = call double @fAddHandlerDouble(double %93, double %92), !dbg !272
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result42, double 0x3F814F81B52477FF), !dbg !273
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result39, double %handler_result43), !dbg !274
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !162, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !124, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !275
  %94 = fmul double %handler_result44, 0x3CB0000000000000, !dbg !274
  %handler_result45 = call double @fAddHandlerDouble(double %94, double 0x3BC3717FC31D168B), !dbg !276
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !124, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !275
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result41, double 5.000000e-01), !dbg !277
  %95 = fdiv double %handler_result46, %0, !dbg !277
  store double %95, ptr %1, align 8, !dbg !278, !tbaa !133
  %96 = fdiv double %handler_result45, %3, !dbg !279
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !280
  %98 = tail call double @llvm.fabs.f64(double %95), !dbg !281
  %99 = fmul double %98, 0x3CC0000000000000, !dbg !282
  %handler_result47 = call double @fAddHandlerDouble(double %99, double %96), !dbg !283
  store double %handler_result47, ptr %97, align 8, !dbg !283, !tbaa !140
  br label %108

100:                                              ; preds = %69
  %101 = fcmp olt double %3, 0x7FB9999999999999, !dbg !284
  br i1 %101, label %102, label %106, !dbg !286

102:                                              ; preds = %100
  %103 = fdiv double 5.000000e-01, %0, !dbg !287
  store double %103, ptr %1, align 8, !dbg !289, !tbaa !133
  %104 = fmul double %103, 0x3CC0000000000000, !dbg !290
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !291
  store double %104, ptr %105, align 8, !dbg !292, !tbaa !140
  br label %108, !dbg !293

106:                                              ; preds = %100
  store double 0.000000e+00, ptr %1, align 8, !dbg !294, !tbaa !133
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !294
  store double 0x10000000000000, ptr %107, align 8, !dbg !294, !tbaa !140
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 269, i32 noundef 15) #4, !dbg !297
  br label %108, !dbg !297

108:                                              ; preds = %106, %102, %90, %59, %28, %5
  %109 = phi i32 [ 0, %5 ], [ 0, %28 ], [ 0, %59 ], [ 0, %90 ], [ 0, %102 ], [ 15, %106 ], !dbg !299
  ret i32 %109, !dbg !300
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !301 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_dawson(double noundef %0) local_unnamed_addr #0 !dbg !306 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !313
  call void @llvm.dbg.assign(metadata i1 undef, metadata !311, metadata !DIExpression(), metadata !313, metadata ptr %2, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata double %0, metadata !310, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #4, !dbg !315
  %3 = call i32 @gsl_sf_dawson_e(double noundef %0, ptr noundef nonnull %2), !dbg !315, !range !316
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !312, metadata !DIExpression()), !dbg !314
  %4 = icmp eq i32 %3, 0, !dbg !317
  br i1 %4, label %6, label %5, !dbg !315

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 280, i32 noundef %3) #4, !dbg !319
  br label %6, !dbg !319

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !315, !tbaa !133
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #4, !dbg !322
  ret double %7, !dbg !322
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!146 = !DILocation(line: 11, column: 19, scope: !147, inlinedAt: !169)
!147 = distinct !DISubprogram(name: "cheb_eval_e", scope: !148, file: !148, line: 3, type: !149, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !153)
!148 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!149 = !DISubroutineType(types: !150)
!150 = !{!23, !151, !113, !102}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !167}
!154 = !DILocalVariable(name: "cs", arg: 1, scope: !147, file: !148, line: 3, type: !151)
!155 = !DILocalVariable(name: "x", arg: 2, scope: !147, file: !148, line: 4, type: !113)
!156 = !DILocalVariable(name: "result", arg: 3, scope: !147, file: !148, line: 5, type: !102)
!157 = !DILocalVariable(name: "j", scope: !147, file: !148, line: 7, type: !23)
!158 = !DILocalVariable(name: "d", scope: !147, file: !148, line: 8, type: !69)
!159 = !DILocalVariable(name: "dd", scope: !147, file: !148, line: 9, type: !69)
!160 = !DILocalVariable(name: "y", scope: !147, file: !148, line: 11, type: !69)
!161 = !DILocalVariable(name: "y2", scope: !147, file: !148, line: 12, type: !69)
!162 = !DILocalVariable(name: "e", scope: !147, file: !148, line: 14, type: !69)
!163 = !DILocalVariable(name: "temp", scope: !164, file: !148, line: 17, type: !69)
!164 = distinct !DILexicalBlock(scope: !165, file: !148, line: 16, column: 33)
!165 = distinct !DILexicalBlock(scope: !166, file: !148, line: 16, column: 3)
!166 = distinct !DILexicalBlock(scope: !147, file: !148, line: 16, column: 3)
!167 = !DILocalVariable(name: "temp", scope: !168, file: !148, line: 24, type: !69)
!168 = distinct !DILexicalBlock(scope: !147, file: !148, line: 23, column: 3)
!169 = distinct !DILocation(line: 241, column: 5, scope: !118)
!170 = !{}
!171 = !DILocation(line: 0, scope: !147, inlinedAt: !169)
!172 = !DILocation(line: 11, column: 30, scope: !147, inlinedAt: !169)
!173 = !DILocation(line: 11, column: 39, scope: !147, inlinedAt: !169)
!174 = !DILocation(line: 12, column: 19, scope: !147, inlinedAt: !169)
!175 = !DILocation(line: 16, column: 3, scope: !166, inlinedAt: !169)
!176 = !DILocation(line: 0, scope: !164, inlinedAt: !169)
!177 = !DILocation(line: 18, column: 11, scope: !164, inlinedAt: !169)
!178 = !DILocation(line: 18, column: 21, scope: !164, inlinedAt: !169)
!179 = !{!135, !135, i64 0}
!180 = !DILocation(line: 19, column: 10, scope: !164, inlinedAt: !169)
!181 = !DILocation(line: 19, column: 26, scope: !164, inlinedAt: !169)
!182 = !DILocation(line: 19, column: 37, scope: !164, inlinedAt: !169)
!183 = !DILocation(line: 19, column: 7, scope: !164, inlinedAt: !169)
!184 = !DILocation(line: 16, column: 29, scope: !165, inlinedAt: !169)
!185 = !DILocation(line: 16, column: 23, scope: !165, inlinedAt: !169)
!186 = distinct !{!186, !175, !187, !188}
!187 = !DILocation(line: 21, column: 3, scope: !166, inlinedAt: !169)
!188 = !{!"llvm.loop.mustprogress"}
!189 = !DILocation(line: 0, scope: !168, inlinedAt: !169)
!190 = !DILocation(line: 25, column: 10, scope: !168, inlinedAt: !169)
!191 = !DILocation(line: 25, column: 18, scope: !168, inlinedAt: !169)
!192 = !DILocation(line: 26, column: 10, scope: !168, inlinedAt: !169)
!193 = !DILocation(line: 26, column: 25, scope: !168, inlinedAt: !169)
!194 = !DILocation(line: 26, column: 34, scope: !168, inlinedAt: !169)
!195 = !DILocation(line: 26, column: 7, scope: !168, inlinedAt: !169)
!196 = !DILocation(line: 30, column: 33, scope: !147, inlinedAt: !169)
!197 = !DILocation(line: 0, scope: !118)
!198 = !DILocation(line: 242, column: 29, scope: !118)
!199 = !DILocation(line: 242, column: 21, scope: !118)
!200 = !DILocation(line: 242, column: 17, scope: !118)
!201 = !DILocation(line: 243, column: 21, scope: !118)
!202 = !DILocation(line: 243, column: 13, scope: !118)
!203 = !DILocation(line: 244, column: 44, scope: !118)
!204 = !DILocation(line: 244, column: 42, scope: !118)
!205 = !DILocation(line: 244, column: 17, scope: !118)
!206 = !DILocation(line: 247, column: 13, scope: !123)
!207 = !DILocation(line: 247, column: 11, scope: !119)
!208 = !DILocation(line: 249, column: 32, scope: !122)
!209 = !DILocation(line: 249, column: 34, scope: !122)
!210 = !DILocation(line: 11, column: 19, scope: !147, inlinedAt: !211)
!211 = distinct !DILocation(line: 249, column: 5, scope: !122)
!212 = !DILocation(line: 0, scope: !147, inlinedAt: !211)
!213 = !DILocation(line: 11, column: 30, scope: !147, inlinedAt: !211)
!214 = !DILocation(line: 11, column: 39, scope: !147, inlinedAt: !211)
!215 = !DILocation(line: 12, column: 19, scope: !147, inlinedAt: !211)
!216 = !DILocation(line: 16, column: 3, scope: !166, inlinedAt: !211)
!217 = !DILocation(line: 0, scope: !164, inlinedAt: !211)
!218 = !DILocation(line: 18, column: 11, scope: !164, inlinedAt: !211)
!219 = !DILocation(line: 18, column: 21, scope: !164, inlinedAt: !211)
!220 = !DILocation(line: 19, column: 10, scope: !164, inlinedAt: !211)
!221 = !DILocation(line: 19, column: 26, scope: !164, inlinedAt: !211)
!222 = !DILocation(line: 19, column: 37, scope: !164, inlinedAt: !211)
!223 = !DILocation(line: 19, column: 7, scope: !164, inlinedAt: !211)
!224 = !DILocation(line: 16, column: 29, scope: !165, inlinedAt: !211)
!225 = !DILocation(line: 16, column: 23, scope: !165, inlinedAt: !211)
!226 = distinct !{!226, !216, !227, !188}
!227 = !DILocation(line: 21, column: 3, scope: !166, inlinedAt: !211)
!228 = !DILocation(line: 0, scope: !168, inlinedAt: !211)
!229 = !DILocation(line: 25, column: 10, scope: !168, inlinedAt: !211)
!230 = !DILocation(line: 25, column: 18, scope: !168, inlinedAt: !211)
!231 = !DILocation(line: 26, column: 10, scope: !168, inlinedAt: !211)
!232 = !DILocation(line: 26, column: 25, scope: !168, inlinedAt: !211)
!233 = !DILocation(line: 26, column: 34, scope: !168, inlinedAt: !211)
!234 = !DILocation(line: 26, column: 7, scope: !168, inlinedAt: !211)
!235 = !DILocation(line: 30, column: 33, scope: !147, inlinedAt: !211)
!236 = !DILocation(line: 0, scope: !122)
!237 = !DILocation(line: 250, column: 29, scope: !122)
!238 = !DILocation(line: 250, column: 21, scope: !122)
!239 = !DILocation(line: 250, column: 17, scope: !122)
!240 = !DILocation(line: 251, column: 21, scope: !122)
!241 = !DILocation(line: 251, column: 13, scope: !122)
!242 = !DILocation(line: 252, column: 44, scope: !122)
!243 = !DILocation(line: 252, column: 42, scope: !122)
!244 = !DILocation(line: 252, column: 17, scope: !122)
!245 = !DILocation(line: 255, column: 13, scope: !126)
!246 = !DILocation(line: 255, column: 11, scope: !123)
!247 = !DILocation(line: 257, column: 34, scope: !125)
!248 = !DILocation(line: 257, column: 31, scope: !125)
!249 = !DILocation(line: 11, column: 19, scope: !147, inlinedAt: !250)
!250 = distinct !DILocation(line: 257, column: 5, scope: !125)
!251 = !DILocation(line: 0, scope: !147, inlinedAt: !250)
!252 = !DILocation(line: 11, column: 30, scope: !147, inlinedAt: !250)
!253 = !DILocation(line: 11, column: 39, scope: !147, inlinedAt: !250)
!254 = !DILocation(line: 12, column: 19, scope: !147, inlinedAt: !250)
!255 = !DILocation(line: 16, column: 3, scope: !166, inlinedAt: !250)
!256 = !DILocation(line: 0, scope: !164, inlinedAt: !250)
!257 = !DILocation(line: 18, column: 11, scope: !164, inlinedAt: !250)
!258 = !DILocation(line: 18, column: 21, scope: !164, inlinedAt: !250)
!259 = !DILocation(line: 19, column: 10, scope: !164, inlinedAt: !250)
!260 = !DILocation(line: 19, column: 26, scope: !164, inlinedAt: !250)
!261 = !DILocation(line: 19, column: 37, scope: !164, inlinedAt: !250)
!262 = !DILocation(line: 19, column: 7, scope: !164, inlinedAt: !250)
!263 = !DILocation(line: 16, column: 29, scope: !165, inlinedAt: !250)
!264 = !DILocation(line: 16, column: 23, scope: !165, inlinedAt: !250)
!265 = distinct !{!265, !255, !266, !188}
!266 = !DILocation(line: 21, column: 3, scope: !166, inlinedAt: !250)
!267 = !DILocation(line: 0, scope: !168, inlinedAt: !250)
!268 = !DILocation(line: 25, column: 10, scope: !168, inlinedAt: !250)
!269 = !DILocation(line: 25, column: 18, scope: !168, inlinedAt: !250)
!270 = !DILocation(line: 26, column: 10, scope: !168, inlinedAt: !250)
!271 = !DILocation(line: 26, column: 25, scope: !168, inlinedAt: !250)
!272 = !DILocation(line: 26, column: 34, scope: !168, inlinedAt: !250)
!273 = !DILocation(line: 26, column: 7, scope: !168, inlinedAt: !250)
!274 = !DILocation(line: 30, column: 33, scope: !147, inlinedAt: !250)
!275 = !DILocation(line: 0, scope: !125)
!276 = !DILocation(line: 258, column: 25, scope: !125)
!277 = !DILocation(line: 258, column: 41, scope: !125)
!278 = !DILocation(line: 258, column: 18, scope: !125)
!279 = !DILocation(line: 259, column: 33, scope: !125)
!280 = !DILocation(line: 259, column: 13, scope: !125)
!281 = !DILocation(line: 260, column: 44, scope: !125)
!282 = !DILocation(line: 260, column: 42, scope: !125)
!283 = !DILocation(line: 260, column: 17, scope: !125)
!284 = !DILocation(line: 263, column: 13, scope: !285)
!285 = distinct !DILexicalBlock(scope: !126, file: !2, line: 263, column: 11)
!286 = !DILocation(line: 263, column: 11, scope: !126)
!287 = !DILocation(line: 264, column: 22, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !2, line: 263, column: 21)
!289 = !DILocation(line: 264, column: 17, scope: !288)
!290 = !DILocation(line: 265, column: 41, scope: !288)
!291 = !DILocation(line: 265, column: 13, scope: !288)
!292 = !DILocation(line: 265, column: 17, scope: !288)
!293 = !DILocation(line: 266, column: 5, scope: !288)
!294 = !DILocation(line: 269, column: 5, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !2, line: 269, column: 5)
!296 = distinct !DILexicalBlock(scope: !285, file: !2, line: 268, column: 8)
!297 = !DILocation(line: 269, column: 5, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !2, line: 269, column: 5)
!299 = !DILocation(line: 0, scope: !120)
!300 = !DILocation(line: 271, column: 1, scope: !99)
!301 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !304, !304, !23, !23}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!306 = distinct !DISubprogram(name: "gsl_sf_dawson", scope: !2, file: !2, line: 278, type: !307, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!69, !69}
!309 = !{!310, !311, !312}
!310 = !DILocalVariable(name: "x", arg: 1, scope: !306, file: !2, line: 278, type: !69)
!311 = !DILocalVariable(name: "result", scope: !306, file: !2, line: 280, type: !103)
!312 = !DILocalVariable(name: "status", scope: !306, file: !2, line: 280, type: !23)
!313 = distinct !DIAssignID()
!314 = !DILocation(line: 0, scope: !306)
!315 = !DILocation(line: 280, column: 3, scope: !306)
!316 = !{i32 0, i32 16}
!317 = !DILocation(line: 280, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !306, file: !2, line: 280, column: 3)
!319 = !DILocation(line: 280, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !2, line: 280, column: 3)
!321 = distinct !DILexicalBlock(scope: !318, file: !2, line: 280, column: 3)
!322 = !DILocation(line: 281, column: 1, scope: !306)
