; ModuleID = 'expint.ll'
source_filename = "expint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { ptr, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [31 x i8] c"gsl_sf_expint_E1_e(x, &result)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"expint.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [38 x i8] c"gsl_sf_expint_E1_scaled_e(x, &result)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_expint_E2_e(x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_expint_E2_scaled_e(x, &result)\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [34 x i8] c"gsl_sf_expint_En_e(n, x, &result)\00", align 1, !dbg !21
@.str.6 = private unnamed_addr constant [41 x i8] c"gsl_sf_expint_En_scaled_e(n, x, &result)\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [31 x i8] c"gsl_sf_expint_Ei_e(x, &result)\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [38 x i8] c"gsl_sf_expint_Ei_scaled_e(x, &result)\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !35
@.str.10 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !37
@E12_cs = internal global %struct.cheb_series_struct { ptr @E12_data, i32 15, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8, !dbg !42
@AE13_cs = internal global %struct.cheb_series_struct { ptr @AE13_data, i32 24, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8, !dbg !128
@AE14_cs = internal global %struct.cheb_series_struct { ptr @AE14_data, i32 25, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8, !dbg !132
@.str.11 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !86
@AE11_data = internal unnamed_addr constant [39 x double] [double 0x3FBF1AD618F044DF, double 0xBFB0A9A87F0D6293, double 0x3F740F8F46851DF9, double 0xBF454633A6CCE18E, double 0x3F18998663F01ADE, double 0x3E9C339B261640BC, double 0xBEE103D5BB9AAB3D, double 0x3EC78613786DBCF4, double 0x3E6E53896974958F, double 0xBE9723C6C96448E2, double 0x3E6F4038BD973D1B, double 0x3E64C8753A8F884E, double 0xBE4ABE3D048C8226, double 0xBE35FBDB0B4CF7A6, double 0x3E227532D4BEE2DB, double 0x3E0DD70DD6257CBA, double 0xBDF79D8E7C1D6A26, double 0xBDE8B607D41BA0A3, double 0x3DCA14E059932535, double 0x3DC6391238D631A5, double 0xBD8F2C3766A739DE, double 0xBDA3780BBF472071, double -9.601510e-13, double 0x3D7DC83D06C8BD15, double 6.079900e-13, double -2.243380e-13, double -2.003270e-13, double -6.246000e-15, double 4.557100e-14, double 1.638300e-14, double -5.561000e-15, double -6.074000e-15, double -8.620000e-16, double 1.223000e-15, double 7.160000e-16, double -2.400000e-17, double -2.010000e-16, double -8.200000e-17, double 1.700000e-17], align 16, !dbg !104
@AE12_data = internal unnamed_addr constant [25 x double] [double 0x3FE2A32A03C719BA, double 0xBFC444C66FFFF02B, double 0xBF7BB4DB6710AAA4, double 0x3F74FED642164FBE, double 0x3F3C85FD51ED19A0, double 0xBF22D2DD6C505977, double 0xBF05EA7A701079D6, double 0xBEC6C2F917FC2887, double 0x3EB35125CD543029, double 0x3E9C3AB65C98BE9D, double 0x3E71DF79324B4BE3, double 0x3E06C0473BD28C1A, double 0xBE286E40B43F5CA9, double 0xBE1029594928050C, double 0xBDE864671E054CAB, double 0xBDB167CFB5DD2F89, double 0x3D898F20746803A5, double 0x3D7F207894EAA0FD, double 4.927350e-13, double 9.370900e-14, double 1.070700e-14, double -5.370000e-16, double -7.160000e-16, double -2.440000e-16, double -5.800000e-17], align 16, !dbg !111
@E11_data = internal unnamed_addr constant [19 x double] [double 0xC0301D0BD2B40793, double 0x401F2D216A1D5FE7, double 0xBFFF49579CA6CE02, double 0x3FD7E5579C3127C2, double 0xBFAD25471CC32C31, double 0x3F7D895CF3089CDB, double 0xBF4997E9FCA6E946, double 0x3F135E10C6179A12, double 0xBEDA0445B08214F5, double 0x3E9F6AED8E51A362, double 0xBE613AD021ADF608, double 0x3E214F789ACCD237, double 0xBDE00B503B5D3E9D, double 0x3D9B9A73DA68CF00, double 0xBD562735D31E6432, double 0x3D10A98869E609EA, double -6.545700e-16, double 2.733000e-17, double -1.080000e-18], align 16, !dbg !118
@E12_data = internal global [16 x double] [double 0xBFA324CF6B72236A, double 0x3FA5DFEB15C8ADAA, double 0xBFC0AE445CAF33EF, double 0x3F8D87C610FC0172, double 0xBF560E3FDE8933CC, double 0x3F1C2178C9AB7FF5, double 0xBEDF29E6B730A23C, double 0x3E9E73C3E3AE0B72, double 0xBE5A971FB1379A1F, double 0x3E14F8FC1DAFFB75, double 0xBDCE27A67D72C000, double 0x3D83E938E81DB5D9, double 0xBD384ED1D16C533F, double 3.062910e-15, double -1.014800e-16, double 3.150000e-18], align 16, !dbg !123
@AE13_data = internal global [25 x double] [double 0xBFE3627E93639ECB, double 0xBFBCCF1C1668E374, double 0x3F8B826041F79E1F, double 0xBF5F91C6441CC96F, double 0x3F34422526AEBE51, double 0xBF0C154190DDAF92, double 0x3EE49C445132B1D8, double 0xBEBFA1991F1EC704, double 0x3E9929799AB5A0F3, double 0xBE749F44873ABCF5, double 0x3E51556DAD3D8637, double 0xBE2DC79424A8F98F, double 0x3E0A121296222EF5, double 0xBDE73562B1C0EAD6, double 0x3DC4F887E60BE657, double 0xBDA33441AF38DBBC, double 0x3D81CCE77BC8F968, double -4.741320e-13, double 1.122110e-13, double -2.680400e-14, double 0x3CFD146A061406CD, double -1.568000e-15, double 3.830000e-16, double 0xBC9B17F9CC2CD364, double 2.300000e-17], align 16, !dbg !130
@AE14_data = internal global [26 x double] [double 0xBFC83AB6B55CB8D9, double 0xBFB623A1699A5ACE, double 0x3F7D9704FDF957C5, double 0xBF4A88B9A7027465, double 0x3F1CD564E82AD33F, double 0xBEF201EE402CD659, double 0x3EC90B96158D12D3, double 0xBEA2FD9A024B975C, double 0x3E7EF1299403D73D, double 0xBE5ACA499664FCC2, double 0x3E3872C6D255FBC4, double 0xBE175D2833E46755, double 0x3DF7425C9CCBD929, double 0xBDD804B7A91C9ADE, double 0x3DB9A2D637369C57, double -6.411480e-12, double 1.812240e-12, double -5.253800e-13, double 1.559200e-13, double -4.729000e-14, double 1.463000e-14, double -4.610000e-15, double 1.480000e-15, double -4.800000e-16, double 1.600000e-16, double -5.000000e-17], align 16, !dbg !134

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_E1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !147 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !159, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !160, metadata !DIExpression()), !dbg !161
  %3 = tail call fastcc i32 @expint_E1_impl(double noundef %0, ptr noundef %1, i32 noundef 0), !dbg !162, !range !163
  ret i32 %3, !dbg !164
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @expint_E1_impl(double noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !dbg !165 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !203
  call void @llvm.dbg.assign(metadata i1 undef, metadata !194, metadata !DIExpression(), metadata !203, metadata ptr %4, metadata !DIExpression()), !dbg !204
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !205
  call void @llvm.dbg.assign(metadata i1 undef, metadata !198, metadata !DIExpression(), metadata !205, metadata ptr %5, metadata !DIExpression()), !dbg !206
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !207
  call void @llvm.dbg.assign(metadata i1 undef, metadata !202, metadata !DIExpression(), metadata !207, metadata ptr %6, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata double %0, metadata !170, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !171, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !172, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !173, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata double 0x4085EEAAD5511C64, metadata !174, metadata !DIExpression()), !dbg !209
  %7 = fcmp uge double %0, 0xC085EEAAD5511C64, !dbg !210
  %8 = icmp ne i32 %2, 0
  %9 = or i1 %7, %8, !dbg !211
  br i1 %9, label %12, label %10, !dbg !211

10:                                               ; preds = %3
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !212, !tbaa !215
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !212
  store double 0x7FF0000000000000, ptr %11, align 8, !dbg !212, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 298, i32 noundef 16) #6, !dbg !221
  br label %199, !dbg !221

12:                                               ; preds = %3
  %13 = fcmp ugt double %0, -1.000000e+01, !dbg !223
  br i1 %13, label %51, label %14, !dbg !224

14:                                               ; preds = %12
  %15 = fdiv double 1.000000e+00, %0, !dbg !225
  br i1 %8, label %19, label %16, !dbg !226

16:                                               ; preds = %14
  %17 = fneg double %0, !dbg !227
  %18 = tail call double @exp(double noundef %17) #6, !dbg !228
  br label %19, !dbg !226

19:                                               ; preds = %16, %14
  %20 = phi double [ %18, %16 ], [ 1.000000e+00, %14 ], !dbg !226
  %21 = fmul double %15, %20, !dbg !229
  tail call void @llvm.dbg.value(metadata double %21, metadata !175, metadata !DIExpression()), !dbg !230
  %22 = fdiv double 2.000000e+01, %0, !dbg !231
  %handler_result = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !232
  call void @llvm.dbg.value(metadata !256, metadata !240, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata double %handler_result, metadata !241, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr undef, metadata !242, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !244, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !245, metadata !DIExpression()), !dbg !257
  %23 = fmul double %handler_result, 2.000000e+00, !dbg !232
  %handler_result1 = call double @fAddHandlerDouble(double %23, double 1.000000e+00), !dbg !258
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !259
  %24 = fmul double %handler_result2, 5.000000e-01, !dbg !259
  call void @llvm.dbg.value(metadata double %24, metadata !246, metadata !DIExpression()), !dbg !257
  %25 = fmul double %24, 2.000000e+00, !dbg !260
  call void @llvm.dbg.value(metadata double %25, metadata !247, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !248, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i32 38, metadata !243, metadata !DIExpression()), !dbg !257
  br label %26, !dbg !261

26:                                               ; preds = %26, %19
  %27 = phi i64 [ 38, %19 ], [ %37, %26 ]
  %28 = phi double [ 0.000000e+00, %19 ], [ %handler_result4, %26 ]
  %29 = phi double [ 0.000000e+00, %19 ], [ %handler_result7, %26 ]
  %30 = phi double [ 0.000000e+00, %19 ], [ %28, %26 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !243, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata double %28, metadata !244, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata double %29, metadata !248, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata double %30, metadata !245, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata double %28, metadata !249, metadata !DIExpression()), !dbg !262
  %31 = fmul double %25, %28, !dbg !263
  %handler_result3 = call double @fSubHandlerDouble(double %31, double %30), !dbg !264
  %32 = getelementptr inbounds double, ptr @AE11_data, i64 %27, !dbg !264
  %33 = load double, ptr %32, align 8, !dbg !264, !tbaa !265
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %33), !dbg !266
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !244, metadata !DIExpression()), !dbg !257
  %34 = tail call double @llvm.fabs.f64(double %31), !dbg !266
  %35 = tail call double @llvm.fabs.f64(double %30), !dbg !267
  %handler_result5 = call double @fAddHandlerDouble(double %34, double %35), !dbg !268
  %36 = tail call double @llvm.fabs.f64(double %33), !dbg !268
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %36), !dbg !269
  %handler_result7 = call double @fAddHandlerDouble(double %29, double %handler_result6), !dbg !270
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !248, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata double %28, metadata !245, metadata !DIExpression()), !dbg !257
  %37 = add nsw i64 %27, -1, !dbg !270
  call void @llvm.dbg.value(metadata i64 %37, metadata !243, metadata !DIExpression()), !dbg !257
  %38 = icmp ugt i64 %27, 1, !dbg !271
  br i1 %38, label %26, label %39, !dbg !261, !llvm.loop !272

39:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !253, metadata !DIExpression()), !dbg !275
  %40 = fmul double %24, %handler_result4, !dbg !276
  %handler_result8 = call double @fSubHandlerDouble(double %40, double %28), !dbg !277
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3FAF1AD618F044DF), !dbg !278
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !244, metadata !DIExpression()), !dbg !257
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !278
  %42 = tail call double @llvm.fabs.f64(double %28), !dbg !279
  %handler_result10 = call double @fAddHandlerDouble(double %42, double %41), !dbg !280
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FAF1AD618F044DF), !dbg !281
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !248, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !230
  %43 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !282
  %handler_result13 = call double @fAddHandlerDouble(double %43, double 1.700000e-17), !dbg !283
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !230
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double 1.000000e+00), !dbg !284
  %44 = fmul double %21, %handler_result14, !dbg !284
  store double %44, ptr %1, align 8, !dbg !285, !tbaa !215
  %45 = fmul double %21, %handler_result13, !dbg !286
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !287
  %47 = tail call double @llvm.fabs.f64(double %0), !dbg !288
  %handler_result15 = call double @fAddHandlerDouble(double %47, double 1.000000e+00), !dbg !289
  %48 = fmul double %handler_result15, 0x3CC0000000000000, !dbg !289
  %49 = tail call double @llvm.fabs.f64(double %44), !dbg !290
  %50 = fmul double %48, %49, !dbg !291
  %handler_result16 = call double @fAddHandlerDouble(double %50, double %45), !dbg !292
  store double %handler_result16, ptr %46, align 8, !dbg !292, !tbaa !220
  br label %199

51:                                               ; preds = %12
  %52 = fcmp ugt double %0, -4.000000e+00, !dbg !293
  br i1 %52, label %89, label %53, !dbg !294

53:                                               ; preds = %51
  %54 = fdiv double 1.000000e+00, %0, !dbg !295
  br i1 %8, label %58, label %55, !dbg !296

55:                                               ; preds = %53
  %56 = fneg double %0, !dbg !297
  %57 = tail call double @exp(double noundef %56) #6, !dbg !298
  br label %58, !dbg !296

58:                                               ; preds = %55, %53
  %59 = phi double [ %57, %55 ], [ 1.000000e+00, %53 ], !dbg !296
  %60 = fmul double %54, %59, !dbg !299
  tail call void @llvm.dbg.value(metadata double %60, metadata !180, metadata !DIExpression()), !dbg !300
  %61 = fdiv double 4.000000e+01, %0, !dbg !301
  %handler_result17 = call double @fAddHandlerDouble(double %61, double 7.000000e+00), !dbg !302
  %62 = fdiv double %handler_result17, 3.000000e+00, !dbg !302
  call void @llvm.dbg.value(metadata !256, metadata !240, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %62, metadata !241, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr undef, metadata !242, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !244, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !245, metadata !DIExpression()), !dbg !303
  %63 = fmul double %62, 2.000000e+00, !dbg !305
  %handler_result18 = call double @fAddHandlerDouble(double %63, double 1.000000e+00), !dbg !306
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double -1.000000e+00), !dbg !307
  %64 = fmul double %handler_result19, 5.000000e-01, !dbg !307
  call void @llvm.dbg.value(metadata double %64, metadata !246, metadata !DIExpression()), !dbg !303
  %65 = fmul double %64, 2.000000e+00, !dbg !308
  call void @llvm.dbg.value(metadata double %65, metadata !247, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !248, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 24, metadata !243, metadata !DIExpression()), !dbg !303
  br label %66, !dbg !309

66:                                               ; preds = %66, %58
  %67 = phi i64 [ 24, %58 ], [ %77, %66 ]
  %68 = phi double [ 0.000000e+00, %58 ], [ %handler_result21, %66 ]
  %69 = phi double [ 0.000000e+00, %58 ], [ %handler_result24, %66 ]
  %70 = phi double [ 0.000000e+00, %58 ], [ %68, %66 ]
  call void @llvm.dbg.value(metadata i64 %67, metadata !243, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %68, metadata !244, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %69, metadata !248, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %70, metadata !245, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %68, metadata !249, metadata !DIExpression()), !dbg !310
  %71 = fmul double %65, %68, !dbg !311
  %handler_result20 = call double @fSubHandlerDouble(double %71, double %70), !dbg !312
  %72 = getelementptr inbounds double, ptr @AE12_data, i64 %67, !dbg !312
  %73 = load double, ptr %72, align 8, !dbg !312, !tbaa !265
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %73), !dbg !313
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !244, metadata !DIExpression()), !dbg !303
  %74 = tail call double @llvm.fabs.f64(double %71), !dbg !313
  %75 = tail call double @llvm.fabs.f64(double %70), !dbg !314
  %handler_result22 = call double @fAddHandlerDouble(double %74, double %75), !dbg !315
  %76 = tail call double @llvm.fabs.f64(double %73), !dbg !315
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %76), !dbg !316
  %handler_result24 = call double @fAddHandlerDouble(double %69, double %handler_result23), !dbg !317
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !248, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double %68, metadata !245, metadata !DIExpression()), !dbg !303
  %77 = add nsw i64 %67, -1, !dbg !317
  call void @llvm.dbg.value(metadata i64 %77, metadata !243, metadata !DIExpression()), !dbg !303
  %78 = icmp ugt i64 %67, 1, !dbg !318
  br i1 %78, label %66, label %79, !dbg !309, !llvm.loop !319

79:                                               ; preds = %66
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !253, metadata !DIExpression()), !dbg !321
  %80 = fmul double %64, %handler_result21, !dbg !322
  %handler_result25 = call double @fSubHandlerDouble(double %80, double %68), !dbg !323
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3FD2A32A03C719BA), !dbg !324
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !244, metadata !DIExpression()), !dbg !303
  %81 = tail call double @llvm.fabs.f64(double %80), !dbg !324
  %82 = tail call double @llvm.fabs.f64(double %68), !dbg !325
  %handler_result27 = call double @fAddHandlerDouble(double %82, double %81), !dbg !326
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3FD2A32A03C719BA), !dbg !327
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result24, double %handler_result28), !dbg !328
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !248, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !183, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !300
  %83 = fmul double %handler_result29, 0x3CB0000000000000, !dbg !328
  %handler_result30 = call double @fAddHandlerDouble(double %83, double 5.800000e-17), !dbg !329
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !183, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !300
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result26, double 1.000000e+00), !dbg !330
  %84 = fmul double %60, %handler_result31, !dbg !330
  store double %84, ptr %1, align 8, !dbg !331, !tbaa !215
  %85 = fmul double %60, %handler_result30, !dbg !332
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !333
  %87 = tail call double @llvm.fabs.f64(double %84), !dbg !334
  %88 = fmul double %87, 0x3CC0000000000000, !dbg !335
  %handler_result32 = call double @fAddHandlerDouble(double %88, double %85), !dbg !336
  store double %handler_result32, ptr %86, align 8, !dbg !336, !tbaa !220
  br label %199

89:                                               ; preds = %51
  %90 = fcmp ugt double %0, -1.000000e+00, !dbg !337
  br i1 %90, label %128, label %91, !dbg !338

91:                                               ; preds = %89
  %92 = tail call double @llvm.fabs.f64(double %0), !dbg !339
  %handler_result63 = call double @callHandler(i32 12, double %92, double %92), !dbg !340
  %93 = fneg double %handler_result63, !dbg !340
  tail call void @llvm.dbg.value(metadata double %93, metadata !184, metadata !DIExpression()), !dbg !341
  br i1 %8, label %94, label %96, !dbg !342

94:                                               ; preds = %91
  %95 = tail call double @exp(double noundef %0) #6, !dbg !343
  br label %96, !dbg !342

96:                                               ; preds = %94, %91
  %97 = phi double [ %95, %94 ], [ 1.000000e+00, %91 ], !dbg !342
  tail call void @llvm.dbg.value(metadata double %97, metadata !187, metadata !DIExpression()), !dbg !341
  %98 = fmul double %0, 2.000000e+00, !dbg !344
  %handler_result33 = call double @fAddHandlerDouble(double %98, double 5.000000e+00), !dbg !345
  %99 = fdiv double %handler_result33, 3.000000e+00, !dbg !345
  call void @llvm.dbg.value(metadata !256, metadata !240, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %99, metadata !241, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr undef, metadata !242, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !244, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !245, metadata !DIExpression()), !dbg !346
  %100 = fmul double %99, 2.000000e+00, !dbg !348
  %handler_result34 = call double @fAddHandlerDouble(double %100, double 1.000000e+00), !dbg !349
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double -1.000000e+00), !dbg !350
  %101 = fmul double %handler_result35, 5.000000e-01, !dbg !350
  call void @llvm.dbg.value(metadata double %101, metadata !246, metadata !DIExpression()), !dbg !346
  %102 = fmul double %101, 2.000000e+00, !dbg !351
  call void @llvm.dbg.value(metadata double %102, metadata !247, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !248, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i32 18, metadata !243, metadata !DIExpression()), !dbg !346
  br label %103, !dbg !352

103:                                              ; preds = %103, %96
  %104 = phi i64 [ 18, %96 ], [ %114, %103 ]
  %105 = phi double [ 0.000000e+00, %96 ], [ %handler_result37, %103 ]
  %106 = phi double [ 0.000000e+00, %96 ], [ %handler_result40, %103 ]
  %107 = phi double [ 0.000000e+00, %96 ], [ %105, %103 ]
  call void @llvm.dbg.value(metadata i64 %104, metadata !243, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %105, metadata !244, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %106, metadata !248, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %107, metadata !245, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %105, metadata !249, metadata !DIExpression()), !dbg !353
  %108 = fmul double %102, %105, !dbg !354
  %handler_result36 = call double @fSubHandlerDouble(double %108, double %107), !dbg !355
  %109 = getelementptr inbounds double, ptr @E11_data, i64 %104, !dbg !355
  %110 = load double, ptr %109, align 8, !dbg !355, !tbaa !265
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %110), !dbg !356
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !244, metadata !DIExpression()), !dbg !346
  %111 = tail call double @llvm.fabs.f64(double %108), !dbg !356
  %112 = tail call double @llvm.fabs.f64(double %107), !dbg !357
  %handler_result38 = call double @fAddHandlerDouble(double %111, double %112), !dbg !358
  %113 = tail call double @llvm.fabs.f64(double %110), !dbg !358
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double %113), !dbg !359
  %handler_result40 = call double @fAddHandlerDouble(double %106, double %handler_result39), !dbg !360
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !248, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %105, metadata !245, metadata !DIExpression()), !dbg !346
  %114 = add nsw i64 %104, -1, !dbg !360
  call void @llvm.dbg.value(metadata i64 %114, metadata !243, metadata !DIExpression()), !dbg !346
  %115 = icmp ugt i64 %104, 1, !dbg !361
  br i1 %115, label %103, label %116, !dbg !352, !llvm.loop !362

116:                                              ; preds = %103
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !253, metadata !DIExpression()), !dbg !364
  %117 = fmul double %101, %handler_result37, !dbg !365
  %handler_result41 = call double @fSubHandlerDouble(double %117, double %105), !dbg !366
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0xC0201D0BD2B40793), !dbg !367
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !244, metadata !DIExpression()), !dbg !346
  %118 = tail call double @llvm.fabs.f64(double %117), !dbg !367
  %119 = tail call double @llvm.fabs.f64(double %105), !dbg !368
  %handler_result43 = call double @fAddHandlerDouble(double %119, double %118), !dbg !369
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0x40201D0BD2B40793), !dbg !370
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result40, double %handler_result44), !dbg !371
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !248, metadata !DIExpression()), !dbg !346
  tail call void @llvm.dbg.value(metadata double %handler_result42, metadata !188, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !341
  %120 = fmul double %handler_result45, 0x3CB0000000000000, !dbg !371
  %handler_result46 = call double @fAddHandlerDouble(double %120, double 1.080000e-18), !dbg !372
  tail call void @llvm.dbg.value(metadata double %handler_result46, metadata !188, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !341
  %handler_result47 = call double @fSubHandlerDouble(double %handler_result42, double %handler_result63), !dbg !373
  %121 = fmul double %97, %handler_result47, !dbg !373
  store double %121, ptr %1, align 8, !dbg !374, !tbaa !215
  %122 = tail call double @llvm.fabs.f64(double %93), !dbg !375
  %123 = fmul double %122, 0x3CB0000000000000, !dbg !376
  %handler_result48 = call double @fAddHandlerDouble(double %123, double %handler_result46), !dbg !377
  %124 = fmul double %97, %handler_result48, !dbg !377
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !378
  %126 = tail call double @llvm.fabs.f64(double %121), !dbg !379
  %127 = fmul double %126, 0x3CC0000000000000, !dbg !380
  %handler_result49 = call double @fAddHandlerDouble(double %127, double %124), !dbg !381
  store double %handler_result49, ptr %125, align 8, !dbg !381, !tbaa !220
  br label %199

128:                                              ; preds = %89
  %129 = fcmp oeq double %0, 0.000000e+00, !dbg !382
  br i1 %129, label %130, label %132, !dbg !383

130:                                              ; preds = %128
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !384, !tbaa !215
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !384
  store double 0x7FF8000000000000, ptr %131, align 8, !dbg !384, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 329, i32 noundef 1) #6, !dbg !387
  br label %199, !dbg !387

132:                                              ; preds = %128
  %133 = fcmp ugt double %0, 1.000000e+00, !dbg !389
  br i1 %133, label %151, label %134, !dbg !390

134:                                              ; preds = %132
  %135 = tail call double @llvm.fabs.f64(double %0), !dbg !391
  %handler_result64 = call double @callHandler(i32 12, double %135, double %135), !dbg !392
  %136 = fneg double %handler_result64, !dbg !392
  tail call void @llvm.dbg.value(metadata double %136, metadata !189, metadata !DIExpression()), !dbg !204
  br i1 %8, label %137, label %139, !dbg !393

137:                                              ; preds = %134
  %138 = tail call double @exp(double noundef %0) #6, !dbg !394
  br label %139, !dbg !393

139:                                              ; preds = %137, %134
  %140 = phi double [ %138, %137 ], [ 1.000000e+00, %134 ], !dbg !393
  tail call void @llvm.dbg.value(metadata double %140, metadata !193, metadata !DIExpression()), !dbg !204
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !395
  call fastcc void @cheb_eval_e(ptr noundef nonnull @E12_cs, double noundef %0, ptr noundef nonnull %4), !dbg !396
  %handler_result50 = call double @fSubHandlerDouble(double -6.875000e-01, double %handler_result64), !dbg !397
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double %0), !dbg !398
  %141 = load double, ptr %4, align 8, !dbg !398, !tbaa !215
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double %141), !dbg !399
  %142 = fmul double %140, %handler_result52, !dbg !399
  store double %142, ptr %1, align 8, !dbg !400, !tbaa !215
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !401
  %144 = load double, ptr %143, align 8, !dbg !401, !tbaa !220
  %145 = tail call double @llvm.fabs.f64(double %136), !dbg !402
  %146 = fmul double %145, 0x3CB0000000000000, !dbg !403
  %handler_result53 = call double @fAddHandlerDouble(double %146, double %144), !dbg !404
  %147 = fmul double %140, %handler_result53, !dbg !404
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !405
  %149 = tail call double @llvm.fabs.f64(double %142), !dbg !406
  %150 = fmul double %149, 0x3CC0000000000000, !dbg !407
  %handler_result54 = call double @fAddHandlerDouble(double %147, double %150), !dbg !408
  store double %handler_result54, ptr %148, align 8, !dbg !408, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !409
  br label %199

151:                                              ; preds = %132
  %152 = fcmp ugt double %0, 4.000000e+00, !dbg !410
  br i1 %152, label %171, label %153, !dbg !411

153:                                              ; preds = %151
  %154 = fdiv double 1.000000e+00, %0, !dbg !412
  br i1 %8, label %158, label %155, !dbg !413

155:                                              ; preds = %153
  %156 = fneg double %0, !dbg !414
  %157 = tail call double @exp(double noundef %156) #6, !dbg !415
  br label %158, !dbg !413

158:                                              ; preds = %155, %153
  %159 = phi double [ %157, %155 ], [ 1.000000e+00, %153 ], !dbg !413
  %160 = fmul double %154, %159, !dbg !416
  tail call void @llvm.dbg.value(metadata double %160, metadata !195, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !417
  %161 = fdiv double 8.000000e+00, %0, !dbg !418
  %handler_result55 = call double @fAddHandlerDouble(double %161, double -5.000000e+00), !dbg !419
  %162 = fdiv double %handler_result55, 3.000000e+00, !dbg !419
  call fastcc void @cheb_eval_e(ptr noundef nonnull @AE13_cs, double noundef %162, ptr noundef nonnull %5), !dbg !420
  %163 = load double, ptr %5, align 8, !dbg !421, !tbaa !215
  %handler_result56 = call double @fAddHandlerDouble(double %163, double 1.000000e+00), !dbg !422
  %164 = fmul double %160, %handler_result56, !dbg !422
  store double %164, ptr %1, align 8, !dbg !423, !tbaa !215
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !424
  %166 = load double, ptr %165, align 8, !dbg !424, !tbaa !220
  %167 = fmul double %160, %166, !dbg !425
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !426
  %169 = tail call double @llvm.fabs.f64(double %164), !dbg !427
  %170 = fmul double %169, 0x3CC0000000000000, !dbg !428
  %handler_result57 = call double @fAddHandlerDouble(double %167, double %170), !dbg !429
  store double %handler_result57, ptr %168, align 8, !dbg !429, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !430
  br label %199

171:                                              ; preds = %151
  %172 = fcmp ole double %0, 0x4085EEAAD5511C64, !dbg !431
  %173 = or i1 %172, %8, !dbg !432
  br i1 %173, label %174, label %197, !dbg !432

174:                                              ; preds = %171
  %175 = fdiv double 1.000000e+00, %0, !dbg !433
  br i1 %8, label %179, label %176, !dbg !434

176:                                              ; preds = %174
  %177 = fneg double %0, !dbg !435
  %178 = tail call double @exp(double noundef %177) #6, !dbg !436
  br label %179, !dbg !434

179:                                              ; preds = %176, %174
  %180 = phi double [ %178, %176 ], [ 1.000000e+00, %174 ], !dbg !434
  %181 = fmul double %175, %180, !dbg !437
  tail call void @llvm.dbg.value(metadata double %181, metadata !199, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !438
  %182 = fdiv double 8.000000e+00, %0, !dbg !439
  %handler_result58 = call double @fAddHandlerDouble(double %182, double -1.000000e+00), !dbg !440
  call fastcc void @cheb_eval_e(ptr noundef nonnull @AE14_cs, double noundef %handler_result58, ptr noundef nonnull %6), !dbg !440
  %183 = load double, ptr %6, align 8, !dbg !441, !tbaa !215
  %handler_result59 = call double @fAddHandlerDouble(double %183, double 1.000000e+00), !dbg !442
  %184 = fmul double %181, %handler_result59, !dbg !442
  store double %184, ptr %1, align 8, !dbg !443, !tbaa !215
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !444
  %186 = load double, ptr %185, align 8, !dbg !444, !tbaa !220
  %handler_result60 = call double @fAddHandlerDouble(double %186, double 0x3CB0000000000000), !dbg !445
  %187 = fmul double %181, %handler_result60, !dbg !445
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !446
  %handler_result61 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !447
  %189 = fmul double %handler_result61, 2.000000e+00, !dbg !447
  %190 = fmul double %189, 0x3CB0000000000000, !dbg !448
  %191 = tail call double @llvm.fabs.f64(double %184), !dbg !449
  %192 = fmul double %190, %191, !dbg !450
  %handler_result62 = call double @fAddHandlerDouble(double %187, double %192), !dbg !451
  store double %handler_result62, ptr %188, align 8, !dbg !451, !tbaa !220
  %193 = fcmp oeq double %184, 0.000000e+00, !dbg !452
  br i1 %193, label %194, label %195, !dbg !454

194:                                              ; preds = %179
  store double 0.000000e+00, ptr %1, align 8, !dbg !455, !tbaa !215
  store double 0x10000000000000, ptr %188, align 8, !dbg !455, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 358, i32 noundef 15) #6, !dbg !457
  br label %195, !dbg !457

195:                                              ; preds = %194, %179
  %196 = phi i32 [ 15, %194 ], [ 0, %179 ], !dbg !459
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !460
  br label %199

197:                                              ; preds = %171
  store double 0.000000e+00, ptr %1, align 8, !dbg !461, !tbaa !215
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !461
  store double 0x10000000000000, ptr %198, align 8, !dbg !461, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 363, i32 noundef 15) #6, !dbg !464
  br label %199, !dbg !464

199:                                              ; preds = %197, %195, %158, %139, %130, %116, %79, %39, %10
  %200 = phi i32 [ 0, %39 ], [ 0, %79 ], [ 0, %116 ], [ 1, %130 ], [ 0, %139 ], [ 0, %158 ], [ %196, %195 ], [ 15, %197 ], [ 16, %10 ], !dbg !466
  ret i32 %200, !dbg !467
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_E1_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !468 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !470, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !471, metadata !DIExpression()), !dbg !472
  %3 = tail call fastcc i32 @expint_E1_impl(double noundef %0, ptr noundef %1, i32 noundef 1), !dbg !473, !range !163
  ret i32 %3, !dbg !474
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_E2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !475 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !477, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !478, metadata !DIExpression()), !dbg !479
  %3 = tail call fastcc i32 @expint_E2_impl(double noundef %0, ptr noundef %1, i32 noundef 0), !dbg !480, !range !163
  ret i32 %3, !dbg !481
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @expint_E2_impl(double noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !dbg !482 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !515
  call void @llvm.dbg.assign(metadata i1 undef, metadata !494, metadata !DIExpression(), metadata !515, metadata ptr %4, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double %0, metadata !484, metadata !DIExpression()), !dbg !517
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !485, metadata !DIExpression()), !dbg !517
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !486, metadata !DIExpression()), !dbg !517
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !487, metadata !DIExpression()), !dbg !517
  tail call void @llvm.dbg.value(metadata double 0x4085EEAAD5511C64, metadata !488, metadata !DIExpression()), !dbg !517
  %5 = fcmp uge double %0, 0xC085EEAAD5511C64, !dbg !518
  %6 = icmp ne i32 %2, 0
  %7 = or i1 %5, %6, !dbg !519
  br i1 %7, label %10, label %8, !dbg !519

8:                                                ; preds = %3
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !520, !tbaa !215
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !520
  store double 0x7FF0000000000000, ptr %9, align 8, !dbg !520, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 377, i32 noundef 16) #6, !dbg !523
  br label %66, !dbg !523

10:                                               ; preds = %3
  %11 = fcmp oeq double %0, 0.000000e+00, !dbg !525
  br i1 %11, label %12, label %14, !dbg !526

12:                                               ; preds = %10
  store double 1.000000e+00, ptr %1, align 8, !dbg !527, !tbaa !215
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !529
  store double 0.000000e+00, ptr %13, align 8, !dbg !530, !tbaa !220
  br label %66, !dbg !531

14:                                               ; preds = %10
  %15 = fcmp olt double %0, 1.000000e+02, !dbg !532
  br i1 %15, label %16, label %33, !dbg !533

16:                                               ; preds = %14
  br i1 %6, label %20, label %17, !dbg !534

17:                                               ; preds = %16
  %18 = fneg double %0, !dbg !535
  %19 = tail call double @exp(double noundef %18) #6, !dbg !536
  br label %20, !dbg !534

20:                                               ; preds = %17, %16
  %21 = phi double [ %19, %17 ], [ 1.000000e+00, %16 ], !dbg !534
  tail call void @llvm.dbg.value(metadata double %21, metadata !489, metadata !DIExpression()), !dbg !516
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !537
  %22 = call fastcc i32 @expint_E1_impl(double noundef %0, ptr noundef nonnull %4, i32 noundef %2), !dbg !538, !range !163
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !495, metadata !DIExpression()), !dbg !516
  %23 = load double, ptr %4, align 8, !dbg !539, !tbaa !215
  %24 = fmul double %23, %0, !dbg !540
  %handler_result = call double @fSubHandlerDouble(double %21, double %24), !dbg !541
  store double %handler_result, ptr %1, align 8, !dbg !541, !tbaa !215
  %25 = fmul double %21, 0x3CB0000000000000, !dbg !542
  %26 = tail call double @llvm.fabs.f64(double %0), !dbg !543
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !544
  %28 = load double, ptr %27, align 8, !dbg !544, !tbaa !220
  %29 = fmul double %26, %28, !dbg !545
  %handler_result1 = call double @fAddHandlerDouble(double %25, double %29), !dbg !546
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !546
  %31 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !547
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !548
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %32), !dbg !549
  store double %handler_result2, ptr %30, align 8, !dbg !549, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !550
  br label %66

33:                                               ; preds = %14
  %34 = fcmp olt double %0, 0x4085EEAAD5511C64, !dbg !551
  %35 = or i1 %34, %6, !dbg !552
  br i1 %35, label %36, label %64, !dbg !552

36:                                               ; preds = %33
  br i1 %6, label %40, label %37, !dbg !553

37:                                               ; preds = %36
  %38 = fneg double %0, !dbg !554
  %39 = tail call double @exp(double noundef %38) #6, !dbg !555
  br label %40, !dbg !553

40:                                               ; preds = %37, %36
  %41 = phi double [ %39, %37 ], [ 1.000000e+00, %36 ], !dbg !553
  tail call void @llvm.dbg.value(metadata double %41, metadata !496, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double -2.000000e+00, metadata !499, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double 6.000000e+00, metadata !500, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double -2.400000e+01, metadata !501, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double 1.200000e+02, metadata !502, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double -7.200000e+02, metadata !503, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double 5.040000e+03, metadata !504, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double -4.032000e+04, metadata !505, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double 3.628800e+05, metadata !506, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double -3.628800e+06, metadata !507, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double 3.991680e+07, metadata !508, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double 0xC1BC8CFC00000000, metadata !509, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double 0x41F7328CC0000000, metadata !510, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double 0xC2344C3B28000000, metadata !511, metadata !DIExpression()), !dbg !556
  %42 = fdiv double 1.000000e+00, %0, !dbg !557
  tail call void @llvm.dbg.value(metadata double %42, metadata !512, metadata !DIExpression()), !dbg !556
  %43 = fmul double %42, 0x42344C3B28000000, !dbg !558
  %handler_result3 = call double @fSubHandlerDouble(double 0x41F7328CC0000000, double %43), !dbg !559
  %44 = fmul double %42, %handler_result3, !dbg !559
  %handler_result4 = call double @fAddHandlerDouble(double %44, double 0xC1BC8CFC00000000), !dbg !560
  %45 = fmul double %42, %handler_result4, !dbg !560
  %handler_result5 = call double @fAddHandlerDouble(double %45, double 3.991680e+07), !dbg !561
  %46 = fmul double %42, %handler_result5, !dbg !561
  %handler_result6 = call double @fAddHandlerDouble(double %46, double -3.628800e+06), !dbg !562
  %47 = fmul double %42, %handler_result6, !dbg !562
  %handler_result7 = call double @fAddHandlerDouble(double %47, double 3.628800e+05), !dbg !563
  %48 = fmul double %42, %handler_result7, !dbg !563
  %handler_result8 = call double @fAddHandlerDouble(double %48, double -4.032000e+04), !dbg !564
  %49 = fmul double %42, %handler_result8, !dbg !564
  %handler_result9 = call double @fAddHandlerDouble(double %49, double 5.040000e+03), !dbg !565
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !513, metadata !DIExpression()), !dbg !556
  %50 = fmul double %42, %handler_result9, !dbg !565
  %handler_result10 = call double @fAddHandlerDouble(double %50, double -7.200000e+02), !dbg !566
  %51 = fmul double %42, %handler_result10, !dbg !566
  %handler_result11 = call double @fAddHandlerDouble(double %51, double 1.200000e+02), !dbg !567
  %52 = fmul double %42, %handler_result11, !dbg !567
  %handler_result12 = call double @fAddHandlerDouble(double %52, double -2.400000e+01), !dbg !568
  %53 = fmul double %42, %handler_result12, !dbg !568
  %handler_result13 = call double @fAddHandlerDouble(double %53, double 6.000000e+00), !dbg !569
  %54 = fmul double %42, %handler_result13, !dbg !569
  %handler_result14 = call double @fAddHandlerDouble(double %54, double -2.000000e+00), !dbg !570
  %55 = fmul double %42, %handler_result14, !dbg !570
  tail call void @llvm.dbg.value(metadata double %55, metadata !514, metadata !DIExpression()), !dbg !556
  %handler_result15 = call double @fAddHandlerDouble(double %55, double 1.000000e+00), !dbg !571
  %56 = fmul double %handler_result15, %41, !dbg !571
  %57 = fdiv double %56, %0, !dbg !572
  store double %57, ptr %1, align 8, !dbg !573, !tbaa !215
  %handler_result16 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !574
  %58 = fmul double %handler_result16, 2.000000e+00, !dbg !574
  %59 = fmul double %58, 0x3CB0000000000000, !dbg !575
  %60 = fmul double %59, %57, !dbg !576
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !577
  store double %60, ptr %61, align 8, !dbg !578, !tbaa !220
  %62 = fcmp oeq double %57, 0.000000e+00, !dbg !579
  br i1 %62, label %63, label %66, !dbg !581

63:                                               ; preds = %40
  store double 0.000000e+00, ptr %1, align 8, !dbg !582, !tbaa !215
  store double 0x10000000000000, ptr %61, align 8, !dbg !582, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 413, i32 noundef 15) #6, !dbg !584
  br label %66, !dbg !584

64:                                               ; preds = %33
  store double 0.000000e+00, ptr %1, align 8, !dbg !586, !tbaa !215
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !586
  store double 0x10000000000000, ptr %65, align 8, !dbg !586, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 418, i32 noundef 15) #6, !dbg !589
  br label %66, !dbg !589

66:                                               ; preds = %64, %63, %40, %20, %12, %8
  %67 = phi i32 [ 0, %12 ], [ %22, %20 ], [ 15, %64 ], [ 16, %8 ], [ 15, %63 ], [ 0, %40 ], !dbg !591
  ret i32 %67, !dbg !592
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_E2_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !593 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !595, metadata !DIExpression()), !dbg !597
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !596, metadata !DIExpression()), !dbg !597
  %3 = tail call fastcc i32 @expint_E2_impl(double noundef %0, ptr noundef %1, i32 noundef 1), !dbg !598, !range !163
  ret i32 %3, !dbg !599
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_expint_En_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !600 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !604, metadata !DIExpression()), !dbg !607
  tail call void @llvm.dbg.value(metadata double %1, metadata !605, metadata !DIExpression()), !dbg !607
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !606, metadata !DIExpression()), !dbg !607
  %4 = tail call fastcc i32 @expint_En_impl(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef 0), !dbg !608
  ret i32 %4, !dbg !609
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @expint_En_impl(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #0 !dbg !610 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !618, metadata !DIExpression(), metadata !629, metadata ptr %5, metadata !DIExpression()), !dbg !630
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !614, metadata !DIExpression()), !dbg !631
  tail call void @llvm.dbg.value(metadata double %1, metadata !615, metadata !DIExpression()), !dbg !631
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !616, metadata !DIExpression()), !dbg !631
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !617, metadata !DIExpression()), !dbg !631
  %6 = icmp slt i32 %0, 0, !dbg !632
  br i1 %6, label %7, label %9, !dbg !633

7:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !634, !tbaa !215
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !634
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !634, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 426, i32 noundef 1) #6, !dbg !637
  br label %81, !dbg !637

9:                                                ; preds = %4
  switch i32 %0, label %31 [
    i32 0, label %10
    i32 1, label %27
    i32 2, label %29
  ], !dbg !639

10:                                               ; preds = %9
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !640
  br i1 %11, label %12, label %14, !dbg !643

12:                                               ; preds = %10
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !644, !tbaa !215
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !644
  store double 0x7FF8000000000000, ptr %13, align 8, !dbg !644, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 429, i32 noundef 1) #6, !dbg !647
  br label %81, !dbg !647

14:                                               ; preds = %10
  %15 = icmp eq i32 %3, 0, !dbg !649
  br i1 %15, label %16, label %19, !dbg !649

16:                                               ; preds = %14
  %17 = fneg double %1, !dbg !651
  %18 = tail call double @exp(double noundef %17) #6, !dbg !652
  br label %19, !dbg !649

19:                                               ; preds = %16, %14
  %20 = phi double [ %18, %16 ], [ 1.000000e+00, %14 ], !dbg !649
  %21 = fdiv double %20, %1, !dbg !653
  store double %21, ptr %2, align 8, !dbg !654, !tbaa !215
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !655
  %23 = fmul double %22, 0x3CC0000000000000, !dbg !656
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !657
  store double %23, ptr %24, align 8, !dbg !658, !tbaa !220
  %25 = fcmp olt double %22, 0x10000000000000, !dbg !659
  br i1 %25, label %26, label %81, !dbg !661

26:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 433, i32 noundef 15) #6, !dbg !662
  br label %81, !dbg !662

27:                                               ; preds = %9
  %28 = tail call fastcc i32 @expint_E1_impl(double noundef %1, ptr noundef %2, i32 noundef %3), !dbg !664, !range !163
  br label %81, !dbg !666

29:                                               ; preds = %9
  %30 = tail call fastcc i32 @expint_E2_impl(double noundef %1, ptr noundef %2, i32 noundef %3), !dbg !667, !range !163
  br label %81, !dbg !669

31:                                               ; preds = %9
  %32 = fcmp olt double %1, 0.000000e+00, !dbg !670
  br i1 %32, label %33, label %35, !dbg !672

33:                                               ; preds = %31
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !673, !tbaa !215
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !673
  store double 0x7FF8000000000000, ptr %34, align 8, !dbg !673, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 442, i32 noundef 1) #6, !dbg !676
  br label %81, !dbg !676

35:                                               ; preds = %31
  %36 = fcmp oeq double %1, 0.000000e+00, !dbg !678
  br i1 %36, label %37, label %52, !dbg !679

37:                                               ; preds = %35
  %38 = icmp eq i32 %3, 0, !dbg !680
  br i1 %38, label %41, label %39, !dbg !680

39:                                               ; preds = %37
  %40 = tail call double @exp(double noundef %1) #6, !dbg !682
  br label %41, !dbg !680

41:                                               ; preds = %39, %37
  %42 = phi double [ %40, %39 ], [ 1.000000e+00, %37 ], !dbg !680
  %43 = add nsw i32 %0, -1, !dbg !683
  %44 = sitofp i32 %43 to double, !dbg !683
  %45 = fdiv double 1.000000e+00, %44, !dbg !684
  %46 = fmul double %45, %42, !dbg !685
  store double %46, ptr %2, align 8, !dbg !686, !tbaa !215
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !687
  %48 = fmul double %47, 0x3CC0000000000000, !dbg !688
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !689
  store double %48, ptr %49, align 8, !dbg !690, !tbaa !220
  %50 = fcmp olt double %47, 0x10000000000000, !dbg !691
  br i1 %50, label %51, label %81, !dbg !693

51:                                               ; preds = %41
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 15) #6, !dbg !694
  br label %81, !dbg !694

52:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !696
  %53 = add nsw i32 %0, -1, !dbg !697
  %54 = sitofp i32 %53 to double, !dbg !698
  %55 = tail call double @pow(double noundef %1, double noundef %54) #6, !dbg !699
  tail call void @llvm.dbg.value(metadata double %55, metadata !626, metadata !DIExpression()), !dbg !630
  %56 = sub nsw i32 1, %0, !dbg !700
  %57 = sitofp i32 %56 to double, !dbg !701
  %58 = call i32 @gsl_sf_gamma_inc_e(double noundef %57, double noundef %1, ptr noundef nonnull %5) #6, !dbg !702
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !627, metadata !DIExpression()), !dbg !630
  %59 = icmp eq i32 %3, 0, !dbg !703
  br i1 %59, label %62, label %60, !dbg !703

60:                                               ; preds = %52
  %61 = call double @exp(double noundef %1) #6, !dbg !704
  br label %62, !dbg !703

62:                                               ; preds = %60, %52
  %63 = phi double [ %61, %60 ], [ 1.000000e+00, %52 ], !dbg !703
  tail call void @llvm.dbg.value(metadata double %63, metadata !628, metadata !DIExpression()), !dbg !630
  %64 = fmul double %55, %63, !dbg !705
  %65 = load double, ptr %5, align 8, !dbg !706, !tbaa !215
  %66 = fmul double %64, %65, !dbg !707
  store double %66, ptr %2, align 8, !dbg !708, !tbaa !215
  %67 = call double @llvm.fabs.f64(double %66), !dbg !709
  %68 = fmul double %67, 0x3CC0000000000000, !dbg !710
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !711
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !712
  %71 = load double, ptr %70, align 8, !dbg !712, !tbaa !220
  %72 = fmul double %64, %71, !dbg !713
  %73 = call double @llvm.fabs.f64(double %72), !dbg !714
  %74 = fmul double %73, 2.000000e+00, !dbg !715
  %handler_result = call double @fAddHandlerDouble(double %68, double %74), !dbg !716
  store double %handler_result, ptr %69, align 8, !dbg !716, !tbaa !220
  %75 = icmp eq i32 %58, 0, !dbg !717
  br i1 %75, label %76, label %79, !dbg !719

76:                                               ; preds = %62
  %77 = fcmp olt double %67, 0x10000000000000, !dbg !720
  br i1 %77, label %78, label %79, !dbg !722

78:                                               ; preds = %76
  call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 457, i32 noundef 15) #6, !dbg !723
  br label %79, !dbg !723

79:                                               ; preds = %78, %76, %62
  %80 = phi i32 [ 15, %78 ], [ 0, %76 ], [ %58, %62 ], !dbg !630
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !725
  br label %81

81:                                               ; preds = %79, %51, %41, %33, %29, %27, %26, %19, %12, %7
  %82 = phi i32 [ 1, %7 ], [ 1, %12 ], [ 15, %26 ], [ %28, %27 ], [ %30, %29 ], [ 1, %33 ], [ 15, %51 ], [ %80, %79 ], [ 0, %19 ], [ 0, %41 ], !dbg !726
  ret i32 %82, !dbg !727
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_expint_En_scaled_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !728 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !730, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata double %1, metadata !731, metadata !DIExpression()), !dbg !733
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !732, metadata !DIExpression()), !dbg !733
  %4 = tail call fastcc i32 @expint_En_impl(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef 1), !dbg !734
  ret i32 %4, !dbg !735
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_Ei_e(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !736 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !738, metadata !DIExpression()), !dbg !742
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !739, metadata !DIExpression()), !dbg !742
  %3 = fneg double %0, !dbg !743
  call void @llvm.dbg.value(metadata double %3, metadata !159, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata ptr %1, metadata !160, metadata !DIExpression()), !dbg !744
  %4 = tail call fastcc noundef i32 @expint_E1_impl(double noundef %3, ptr noundef %1, i32 noundef 0), !dbg !746, !range !163
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !740, metadata !DIExpression()), !dbg !747
  %5 = load double, ptr %1, align 8, !dbg !748, !tbaa !215
  %6 = fneg double %5, !dbg !749
  store double %6, ptr %1, align 8, !dbg !750, !tbaa !215
  ret i32 %4, !dbg !751
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_Ei_scaled_e(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !752 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !754, metadata !DIExpression()), !dbg !758
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !755, metadata !DIExpression()), !dbg !758
  %3 = fneg double %0, !dbg !759
  call void @llvm.dbg.value(metadata double %3, metadata !470, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata ptr %1, metadata !471, metadata !DIExpression()), !dbg !760
  %4 = tail call fastcc noundef i32 @expint_E1_impl(double noundef %3, ptr noundef %1, i32 noundef 1), !dbg !762, !range !163
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !756, metadata !DIExpression()), !dbg !763
  %5 = load double, ptr %1, align 8, !dbg !764, !tbaa !215
  %6 = fneg double %5, !dbg !765
  store double %6, ptr %1, align 8, !dbg !766, !tbaa !215
  ret i32 %4, !dbg !767
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_E1(double noundef %0) local_unnamed_addr #0 !dbg !768 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !775
  call void @llvm.dbg.assign(metadata i1 undef, metadata !773, metadata !DIExpression(), metadata !775, metadata ptr %2, metadata !DIExpression()), !dbg !776
  tail call void @llvm.dbg.value(metadata double %0, metadata !772, metadata !DIExpression()), !dbg !776
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !777
  call void @llvm.dbg.value(metadata double %0, metadata !159, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata ptr %2, metadata !160, metadata !DIExpression()), !dbg !778
  %3 = call fastcc noundef i32 @expint_E1_impl(double noundef %0, ptr noundef nonnull %2, i32 noundef 0), !dbg !780, !range !163
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !774, metadata !DIExpression()), !dbg !776
  %4 = icmp eq i32 %3, 0, !dbg !781
  br i1 %4, label %6, label %5, !dbg !777

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef %3) #6, !dbg !783
  br label %6, !dbg !783

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !777, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !786
  ret double %7, !dbg !786
}

declare !dbg !787 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_E1_scaled(double noundef %0) local_unnamed_addr #0 !dbg !792 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !797
  call void @llvm.dbg.assign(metadata i1 undef, metadata !795, metadata !DIExpression(), metadata !797, metadata ptr %2, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata double %0, metadata !794, metadata !DIExpression()), !dbg !798
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !799
  call void @llvm.dbg.value(metadata double %0, metadata !470, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %2, metadata !471, metadata !DIExpression()), !dbg !800
  %3 = call fastcc noundef i32 @expint_E1_impl(double noundef %0, ptr noundef nonnull %2, i32 noundef 1), !dbg !802, !range !163
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !796, metadata !DIExpression()), !dbg !798
  %4 = icmp eq i32 %3, 0, !dbg !803
  br i1 %4, label %6, label %5, !dbg !799

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 550, i32 noundef %3) #6, !dbg !805
  br label %6, !dbg !805

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !799, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !808
  ret double %7, !dbg !808
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_E2(double noundef %0) local_unnamed_addr #0 !dbg !809 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !814
  call void @llvm.dbg.assign(metadata i1 undef, metadata !812, metadata !DIExpression(), metadata !814, metadata ptr %2, metadata !DIExpression()), !dbg !815
  tail call void @llvm.dbg.value(metadata double %0, metadata !811, metadata !DIExpression()), !dbg !815
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !816
  call void @llvm.dbg.value(metadata double %0, metadata !477, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr %2, metadata !478, metadata !DIExpression()), !dbg !817
  %3 = call fastcc noundef i32 @expint_E2_impl(double noundef %0, ptr noundef nonnull %2, i32 noundef 0), !dbg !819, !range !163
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !813, metadata !DIExpression()), !dbg !815
  %4 = icmp eq i32 %3, 0, !dbg !820
  br i1 %4, label %6, label %5, !dbg !816

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 555, i32 noundef %3) #6, !dbg !822
  br label %6, !dbg !822

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !816, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !825
  ret double %7, !dbg !825
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_E2_scaled(double noundef %0) local_unnamed_addr #0 !dbg !826 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !831
  call void @llvm.dbg.assign(metadata i1 undef, metadata !829, metadata !DIExpression(), metadata !831, metadata ptr %2, metadata !DIExpression()), !dbg !832
  tail call void @llvm.dbg.value(metadata double %0, metadata !828, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !833
  call void @llvm.dbg.value(metadata double %0, metadata !595, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr %2, metadata !596, metadata !DIExpression()), !dbg !834
  %3 = call fastcc noundef i32 @expint_E2_impl(double noundef %0, ptr noundef nonnull %2, i32 noundef 1), !dbg !836, !range !163
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !830, metadata !DIExpression()), !dbg !832
  %4 = icmp eq i32 %3, 0, !dbg !837
  br i1 %4, label %6, label %5, !dbg !833

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 560, i32 noundef %3) #6, !dbg !839
  br label %6, !dbg !839

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !833, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !842
  ret double %7, !dbg !842
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_En(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !843 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !851
  call void @llvm.dbg.assign(metadata i1 undef, metadata !849, metadata !DIExpression(), metadata !851, metadata ptr %3, metadata !DIExpression()), !dbg !852
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !847, metadata !DIExpression()), !dbg !852
  tail call void @llvm.dbg.value(metadata double %1, metadata !848, metadata !DIExpression()), !dbg !852
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !853
  call void @llvm.dbg.value(metadata i32 %0, metadata !604, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata double %1, metadata !605, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata ptr %3, metadata !606, metadata !DIExpression()), !dbg !854
  %4 = call fastcc i32 @expint_En_impl(i32 noundef %0, double noundef %1, ptr noundef nonnull %3, i32 noundef 0), !dbg !856
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !850, metadata !DIExpression()), !dbg !852
  %5 = icmp eq i32 %4, 0, !dbg !857
  br i1 %5, label %7, label %6, !dbg !853

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 565, i32 noundef %4) #6, !dbg !859
  br label %7, !dbg !859

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !853, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !862
  ret double %8, !dbg !862
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_En_scaled(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !863 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !869
  call void @llvm.dbg.assign(metadata i1 undef, metadata !867, metadata !DIExpression(), metadata !869, metadata ptr %3, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !865, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata double %1, metadata !866, metadata !DIExpression()), !dbg !870
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !871
  call void @llvm.dbg.value(metadata i32 %0, metadata !730, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata double %1, metadata !731, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %3, metadata !732, metadata !DIExpression()), !dbg !872
  %4 = call fastcc i32 @expint_En_impl(i32 noundef %0, double noundef %1, ptr noundef nonnull %3, i32 noundef 1), !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !868, metadata !DIExpression()), !dbg !870
  %5 = icmp eq i32 %4, 0, !dbg !875
  br i1 %5, label %7, label %6, !dbg !871

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 570, i32 noundef %4) #6, !dbg !877
  br label %7, !dbg !877

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !871, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !880
  ret double %8, !dbg !880
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_Ei(double noundef %0) local_unnamed_addr #0 !dbg !881 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !886
  call void @llvm.dbg.assign(metadata i1 undef, metadata !884, metadata !DIExpression(), metadata !886, metadata ptr %2, metadata !DIExpression()), !dbg !887
  tail call void @llvm.dbg.value(metadata double %0, metadata !883, metadata !DIExpression()), !dbg !887
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !888
  call void @llvm.dbg.value(metadata double %0, metadata !738, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %2, metadata !739, metadata !DIExpression()), !dbg !889
  %3 = fneg double %0, !dbg !891
  call void @llvm.dbg.value(metadata double %3, metadata !159, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr %2, metadata !160, metadata !DIExpression()), !dbg !892
  %4 = call fastcc noundef i32 @expint_E1_impl(double noundef %3, ptr noundef nonnull %2, i32 noundef 0), !dbg !894, !range !163
  call void @llvm.dbg.value(metadata i32 %4, metadata !740, metadata !DIExpression()), !dbg !895
  %5 = load double, ptr %2, align 8, !dbg !896, !tbaa !215
  call void @llvm.dbg.assign(metadata double %9, metadata !884, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !897, metadata ptr %2, metadata !DIExpression()), !dbg !887
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !885, metadata !DIExpression()), !dbg !887
  %6 = icmp eq i32 %4, 0, !dbg !898
  br i1 %6, label %8, label %7, !dbg !888

7:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 575, i32 noundef %4) #6, !dbg !900
  br label %8, !dbg !900

8:                                                ; preds = %7, %1
  %9 = fneg double %5, !dbg !903
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !904
  ret double %9, !dbg !904
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_Ei_scaled(double noundef %0) local_unnamed_addr #0 !dbg !905 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !910
  call void @llvm.dbg.assign(metadata i1 undef, metadata !908, metadata !DIExpression(), metadata !910, metadata ptr %2, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata double %0, metadata !907, metadata !DIExpression()), !dbg !911
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !912
  call void @llvm.dbg.value(metadata double %0, metadata !754, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %2, metadata !755, metadata !DIExpression()), !dbg !913
  %3 = fneg double %0, !dbg !915
  call void @llvm.dbg.value(metadata double %3, metadata !470, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata ptr %2, metadata !471, metadata !DIExpression()), !dbg !916
  %4 = call fastcc noundef i32 @expint_E1_impl(double noundef %3, ptr noundef nonnull %2, i32 noundef 1), !dbg !918, !range !163
  call void @llvm.dbg.value(metadata i32 %4, metadata !756, metadata !DIExpression()), !dbg !919
  %5 = load double, ptr %2, align 8, !dbg !920, !tbaa !215
  call void @llvm.dbg.assign(metadata double %9, metadata !908, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !921, metadata ptr %2, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !909, metadata !DIExpression()), !dbg !911
  %6 = icmp eq i32 %4, 0, !dbg !922
  br i1 %6, label %8, label %7, !dbg !912

7:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 580, i32 noundef %4) #6, !dbg !924
  br label %8, !dbg !924

8:                                                ; preds = %7, %1
  %9 = fneg double %5, !dbg !927
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !928
  ret double %9, !dbg !928
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !929 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !933 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cheb_eval_e(ptr nocapture noundef readonly %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !dbg !233 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !240, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double %1, metadata !241, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !242, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !244, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !245, metadata !DIExpression()), !dbg !934
  %4 = fmul double %1, 2.000000e+00, !dbg !935
  %5 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 2, !dbg !936
  %6 = load double, ptr %5, align 8, !dbg !936, !tbaa !937
  %handler_result = call double @fSubHandlerDouble(double %4, double %6), !dbg !941
  %7 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 3, !dbg !941
  %8 = load double, ptr %7, align 8, !dbg !941, !tbaa !942
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %8), !dbg !943
  %handler_result2 = call double @fSubHandlerDouble(double %8, double %6), !dbg !944
  %9 = fdiv double %handler_result1, %handler_result2, !dbg !944
  tail call void @llvm.dbg.value(metadata double %9, metadata !246, metadata !DIExpression()), !dbg !934
  %10 = fmul double %9, 2.000000e+00, !dbg !945
  tail call void @llvm.dbg.value(metadata double %10, metadata !247, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !248, metadata !DIExpression()), !dbg !934
  %11 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 1, !dbg !946
  %12 = load i32, ptr %11, align 8, !dbg !946, !tbaa !947
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !243, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !244, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !248, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !245, metadata !DIExpression()), !dbg !934
  %13 = icmp sgt i32 %12, 0, !dbg !948
  %14 = load ptr, ptr %0, align 8, !dbg !949, !tbaa !950
  br i1 %13, label %15, label %30, !dbg !951

15:                                               ; preds = %3
  %16 = zext nneg i32 %12 to i64, !dbg !951
  br label %17, !dbg !951

17:                                               ; preds = %17, %15
  %18 = phi i64 [ %16, %15 ], [ %28, %17 ]
  %19 = phi double [ 0.000000e+00, %15 ], [ %handler_result4, %17 ]
  %20 = phi double [ 0.000000e+00, %15 ], [ %handler_result7, %17 ]
  %21 = phi double [ 0.000000e+00, %15 ], [ %19, %17 ]
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !243, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double %19, metadata !244, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double %20, metadata !248, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double %21, metadata !245, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double %19, metadata !249, metadata !DIExpression()), !dbg !952
  %22 = fmul double %10, %19, !dbg !953
  %handler_result3 = call double @fSubHandlerDouble(double %22, double %21), !dbg !954
  %23 = getelementptr inbounds double, ptr %14, i64 %18, !dbg !954
  %24 = load double, ptr %23, align 8, !dbg !954, !tbaa !265
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %24), !dbg !955
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !244, metadata !DIExpression()), !dbg !934
  %25 = tail call double @llvm.fabs.f64(double %22), !dbg !955
  %26 = tail call double @llvm.fabs.f64(double %21), !dbg !956
  %handler_result5 = call double @fAddHandlerDouble(double %26, double %25), !dbg !957
  %27 = tail call double @llvm.fabs.f64(double %24), !dbg !957
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %27), !dbg !958
  %handler_result7 = call double @fAddHandlerDouble(double %20, double %handler_result6), !dbg !959
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !248, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata double %19, metadata !245, metadata !DIExpression()), !dbg !934
  %28 = add nsw i64 %18, -1, !dbg !959
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !243, metadata !DIExpression()), !dbg !934
  %29 = icmp ugt i64 %18, 1, !dbg !948
  br i1 %29, label %17, label %30, !dbg !951, !llvm.loop !960

30:                                               ; preds = %17, %3
  %31 = phi double [ 0.000000e+00, %3 ], [ %19, %17 ], !dbg !934
  %32 = phi double [ 0.000000e+00, %3 ], [ %handler_result7, %17 ], !dbg !934
  %33 = phi double [ 0.000000e+00, %3 ], [ %handler_result4, %17 ], !dbg !934
  tail call void @llvm.dbg.value(metadata double %33, metadata !253, metadata !DIExpression()), !dbg !962
  %34 = fmul double %9, %33, !dbg !963
  %handler_result8 = call double @fSubHandlerDouble(double %34, double %31), !dbg !964
  %35 = load double, ptr %14, align 8, !dbg !964, !tbaa !265
  %36 = fmul double %35, 5.000000e-01, !dbg !965
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %36), !dbg !966
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !244, metadata !DIExpression()), !dbg !934
  %37 = tail call double @llvm.fabs.f64(double %34), !dbg !966
  %38 = tail call double @llvm.fabs.f64(double %31), !dbg !967
  %handler_result10 = call double @fAddHandlerDouble(double %38, double %37), !dbg !968
  %39 = tail call double @llvm.fabs.f64(double %35), !dbg !968
  %40 = fmul double %39, 5.000000e-01, !dbg !969
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double %40), !dbg !970
  %handler_result12 = call double @fAddHandlerDouble(double %32, double %handler_result11), !dbg !971
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !248, metadata !DIExpression()), !dbg !934
  store double %handler_result9, ptr %2, align 8, !dbg !971, !tbaa !215
  %41 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !972
  %42 = sext i32 %12 to i64, !dbg !973
  %43 = getelementptr inbounds double, ptr %14, i64 %42, !dbg !973
  %44 = load double, ptr %43, align 8, !dbg !973, !tbaa !265
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !974
  %handler_result13 = call double @fAddHandlerDouble(double %45, double %41), !dbg !975
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !975
  store double %handler_result13, ptr %46, align 8, !dbg !976, !tbaa !220
  ret void, !dbg !977
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !978 double @pow(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !981 i32 @gsl_sf_gamma_inc_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!44}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "expint.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "a26164276d2c3a853c959e981a3b4114")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 31)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 550, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 38)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 555, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !14, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 565, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 34)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 41)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !3, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 580, type: !14, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !9, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 329, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 13)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "E12_cs", scope: !44, file: !2, line: 210, type: !93, isLocal: true, isDefinition: true)
!44 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, globals: !85, splitDebugInlining: false, nameTableKind: None)
!45 = !{!46}
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 39, baseType: !48, size: 32, elements: !49)
!47 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!50 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!51 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!52 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!53 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!54 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!55 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!56 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!57 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!58 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!59 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!60 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!61 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!62 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!63 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!64 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!65 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!66 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!67 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!68 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!69 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!70 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!71 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!72 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!73 = !DIEnumerator(name: "GSL_ESING", value: 21)
!74 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!75 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!76 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!77 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!78 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!79 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!80 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!81 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!82 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!83 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!84 = !DIEnumerator(name: "GSL_EOF", value: 32)
!85 = !{!0, !7, !12, !17, !19, !21, !26, !31, !33, !35, !37, !86, !91, !104, !109, !111, !116, !118, !42, !123, !128, !130, !132, !134}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 10)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "AE11_cs", scope: !44, file: !2, line: 123, type: !93, isLocal: true, isDefinition: true)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !94, line: 29, baseType: !95)
!94 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !94, line: 22, size: 320, elements: !96)
!96 = !{!97, !100, !101, !102, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !95, file: !94, line: 23, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !95, file: !94, line: 24, baseType: !48, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !95, file: !94, line: 25, baseType: !99, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !95, file: !94, line: 26, baseType: !99, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !95, file: !94, line: 27, baseType: !48, size: 32, offset: 256)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "AE11_data", scope: !44, file: !2, line: 82, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2496, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 39)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "AE12_cs", scope: !44, file: !2, line: 157, type: !93, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "AE12_data", scope: !44, file: !2, line: 130, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1600, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 25)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "E11_cs", scope: !44, file: !2, line: 185, type: !93, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "E11_data", scope: !44, file: !2, line: 164, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1216, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 19)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "E12_data", scope: !44, file: !2, line: 192, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1024, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 16)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "AE13_cs", scope: !44, file: !2, line: 244, type: !93, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "AE13_data", scope: !44, file: !2, line: 217, type: !113, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "AE14_cs", scope: !44, file: !2, line: 279, type: !93, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "AE14_data", scope: !44, file: !2, line: 251, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1664, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 26)
!139 = !{i32 7, !"Dwarf Version", i32 5}
!140 = !{i32 2, !"Debug Info Version", i32 3}
!141 = !{i32 1, !"wchar_size", i32 4}
!142 = !{i32 8, !"PIC Level", i32 2}
!143 = !{i32 7, !"PIE Level", i32 2}
!144 = !{i32 7, !"uwtable", i32 2}
!145 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!146 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!147 = distinct !DISubprogram(name: "gsl_sf_expint_E1_e", scope: !2, file: !2, line: 466, type: !148, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !158)
!148 = !DISubroutineType(types: !149)
!149 = !{!48, !150, !151}
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !153, line: 41, baseType: !154)
!153 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !153, line: 37, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !154, file: !153, line: 38, baseType: !99, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !154, file: !153, line: 39, baseType: !99, size: 64, offset: 64)
!158 = !{!159, !160}
!159 = !DILocalVariable(name: "x", arg: 1, scope: !147, file: !2, line: 466, type: !150)
!160 = !DILocalVariable(name: "result", arg: 2, scope: !147, file: !2, line: 466, type: !151)
!161 = !DILocation(line: 0, scope: !147)
!162 = !DILocation(line: 468, column: 10, scope: !147)
!163 = !{i32 0, i32 17}
!164 = !DILocation(line: 468, column: 3, scope: !147)
!165 = distinct !DISubprogram(name: "expint_E1_impl", scope: !2, file: !2, line: 290, type: !166, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !169)
!166 = !DISubroutineType(types: !167)
!167 = !{!48, !150, !151, !168}
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!169 = !{!170, !171, !172, !173, !174, !175, !179, !180, !183, !184, !187, !188, !189, !193, !194, !195, !198, !199, !202}
!170 = !DILocalVariable(name: "x", arg: 1, scope: !165, file: !2, line: 290, type: !150)
!171 = !DILocalVariable(name: "result", arg: 2, scope: !165, file: !2, line: 290, type: !151)
!172 = !DILocalVariable(name: "scale", arg: 3, scope: !165, file: !2, line: 290, type: !168)
!173 = !DILocalVariable(name: "xmaxt", scope: !165, file: !2, line: 292, type: !150)
!174 = !DILocalVariable(name: "xmax", scope: !165, file: !2, line: 293, type: !150)
!175 = !DILocalVariable(name: "s", scope: !176, file: !2, line: 301, type: !150)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 300, column: 23)
!177 = distinct !DILexicalBlock(scope: !178, file: !2, line: 300, column: 11)
!178 = distinct !DILexicalBlock(scope: !165, file: !2, line: 297, column: 6)
!179 = !DILocalVariable(name: "result_c", scope: !176, file: !2, line: 302, type: !152)
!180 = !DILocalVariable(name: "s", scope: !181, file: !2, line: 310, type: !150)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 309, column: 22)
!182 = distinct !DILexicalBlock(scope: !177, file: !2, line: 309, column: 11)
!183 = !DILocalVariable(name: "result_c", scope: !181, file: !2, line: 311, type: !152)
!184 = !DILocalVariable(name: "ln_term", scope: !185, file: !2, line: 319, type: !150)
!185 = distinct !DILexicalBlock(scope: !186, file: !2, line: 318, column: 22)
!186 = distinct !DILexicalBlock(scope: !182, file: !2, line: 318, column: 11)
!187 = !DILocalVariable(name: "scale_factor", scope: !185, file: !2, line: 320, type: !150)
!188 = !DILocalVariable(name: "result_c", scope: !185, file: !2, line: 321, type: !152)
!189 = !DILocalVariable(name: "ln_term", scope: !190, file: !2, line: 332, type: !150)
!190 = distinct !DILexicalBlock(scope: !191, file: !2, line: 331, column: 21)
!191 = distinct !DILexicalBlock(scope: !192, file: !2, line: 331, column: 11)
!192 = distinct !DILexicalBlock(scope: !186, file: !2, line: 328, column: 11)
!193 = !DILocalVariable(name: "scale_factor", scope: !190, file: !2, line: 333, type: !150)
!194 = !DILocalVariable(name: "result_c", scope: !190, file: !2, line: 334, type: !152)
!195 = !DILocalVariable(name: "s", scope: !196, file: !2, line: 342, type: !150)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 341, column: 21)
!197 = distinct !DILexicalBlock(scope: !191, file: !2, line: 341, column: 11)
!198 = !DILocalVariable(name: "result_c", scope: !196, file: !2, line: 343, type: !152)
!199 = !DILocalVariable(name: "s", scope: !200, file: !2, line: 351, type: !150)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 350, column: 31)
!201 = distinct !DILexicalBlock(scope: !197, file: !2, line: 350, column: 11)
!202 = !DILocalVariable(name: "result_c", scope: !200, file: !2, line: 352, type: !152)
!203 = distinct !DIAssignID()
!204 = !DILocation(line: 0, scope: !190)
!205 = distinct !DIAssignID()
!206 = !DILocation(line: 0, scope: !196)
!207 = distinct !DIAssignID()
!208 = !DILocation(line: 0, scope: !200)
!209 = !DILocation(line: 0, scope: !165)
!210 = !DILocation(line: 297, column: 8, scope: !178)
!211 = !DILocation(line: 297, column: 16, scope: !178)
!212 = !DILocation(line: 298, column: 7, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !2, line: 298, column: 7)
!214 = distinct !DILexicalBlock(scope: !178, file: !2, line: 297, column: 27)
!215 = !{!216, !217, i64 0}
!216 = !{!"gsl_sf_result_struct", !217, i64 0, !217, i64 8}
!217 = !{!"double", !218, i64 0}
!218 = !{!"omnipotent char", !219, i64 0}
!219 = !{!"Simple C/C++ TBAA"}
!220 = !{!216, !217, i64 8}
!221 = !DILocation(line: 298, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !213, file: !2, line: 298, column: 7)
!223 = !DILocation(line: 300, column: 13, scope: !177)
!224 = !DILocation(line: 300, column: 11, scope: !178)
!225 = !DILocation(line: 301, column: 25, scope: !176)
!226 = !DILocation(line: 301, column: 32, scope: !176)
!227 = !DILocation(line: 301, column: 50, scope: !176)
!228 = !DILocation(line: 301, column: 46, scope: !176)
!229 = !DILocation(line: 301, column: 28, scope: !176)
!230 = !DILocation(line: 0, scope: !176)
!231 = !DILocation(line: 303, column: 31, scope: !176)
!232 = !DILocation(line: 11, column: 19, scope: !233, inlinedAt: !255)
!233 = distinct !DISubprogram(name: "cheb_eval_e", scope: !234, file: !234, line: 3, type: !235, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !239)
!234 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!235 = !DISubroutineType(cc: DW_CC_nocall, types: !236)
!236 = !{!48, !237, !150, !151}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !253}
!240 = !DILocalVariable(name: "cs", arg: 1, scope: !233, file: !234, line: 3, type: !237)
!241 = !DILocalVariable(name: "x", arg: 2, scope: !233, file: !234, line: 4, type: !150)
!242 = !DILocalVariable(name: "result", arg: 3, scope: !233, file: !234, line: 5, type: !151)
!243 = !DILocalVariable(name: "j", scope: !233, file: !234, line: 7, type: !48)
!244 = !DILocalVariable(name: "d", scope: !233, file: !234, line: 8, type: !99)
!245 = !DILocalVariable(name: "dd", scope: !233, file: !234, line: 9, type: !99)
!246 = !DILocalVariable(name: "y", scope: !233, file: !234, line: 11, type: !99)
!247 = !DILocalVariable(name: "y2", scope: !233, file: !234, line: 12, type: !99)
!248 = !DILocalVariable(name: "e", scope: !233, file: !234, line: 14, type: !99)
!249 = !DILocalVariable(name: "temp", scope: !250, file: !234, line: 17, type: !99)
!250 = distinct !DILexicalBlock(scope: !251, file: !234, line: 16, column: 33)
!251 = distinct !DILexicalBlock(scope: !252, file: !234, line: 16, column: 3)
!252 = distinct !DILexicalBlock(scope: !233, file: !234, line: 16, column: 3)
!253 = !DILocalVariable(name: "temp", scope: !254, file: !234, line: 24, type: !99)
!254 = distinct !DILexicalBlock(scope: !233, file: !234, line: 23, column: 3)
!255 = distinct !DILocation(line: 303, column: 5, scope: !176)
!256 = !{}
!257 = !DILocation(line: 0, scope: !233, inlinedAt: !255)
!258 = !DILocation(line: 11, column: 30, scope: !233, inlinedAt: !255)
!259 = !DILocation(line: 11, column: 39, scope: !233, inlinedAt: !255)
!260 = !DILocation(line: 12, column: 19, scope: !233, inlinedAt: !255)
!261 = !DILocation(line: 16, column: 3, scope: !252, inlinedAt: !255)
!262 = !DILocation(line: 0, scope: !250, inlinedAt: !255)
!263 = !DILocation(line: 18, column: 11, scope: !250, inlinedAt: !255)
!264 = !DILocation(line: 18, column: 21, scope: !250, inlinedAt: !255)
!265 = !{!217, !217, i64 0}
!266 = !DILocation(line: 19, column: 10, scope: !250, inlinedAt: !255)
!267 = !DILocation(line: 19, column: 26, scope: !250, inlinedAt: !255)
!268 = !DILocation(line: 19, column: 37, scope: !250, inlinedAt: !255)
!269 = !DILocation(line: 19, column: 7, scope: !250, inlinedAt: !255)
!270 = !DILocation(line: 16, column: 29, scope: !251, inlinedAt: !255)
!271 = !DILocation(line: 16, column: 23, scope: !251, inlinedAt: !255)
!272 = distinct !{!272, !261, !273, !274}
!273 = !DILocation(line: 21, column: 3, scope: !252, inlinedAt: !255)
!274 = !{!"llvm.loop.mustprogress"}
!275 = !DILocation(line: 0, scope: !254, inlinedAt: !255)
!276 = !DILocation(line: 25, column: 10, scope: !254, inlinedAt: !255)
!277 = !DILocation(line: 25, column: 18, scope: !254, inlinedAt: !255)
!278 = !DILocation(line: 26, column: 10, scope: !254, inlinedAt: !255)
!279 = !DILocation(line: 26, column: 25, scope: !254, inlinedAt: !255)
!280 = !DILocation(line: 26, column: 34, scope: !254, inlinedAt: !255)
!281 = !DILocation(line: 26, column: 7, scope: !254, inlinedAt: !255)
!282 = !DILocation(line: 30, column: 33, scope: !233, inlinedAt: !255)
!283 = !DILocation(line: 304, column: 29, scope: !176)
!284 = !DILocation(line: 304, column: 22, scope: !176)
!285 = !DILocation(line: 304, column: 18, scope: !176)
!286 = !DILocation(line: 305, column: 22, scope: !176)
!287 = !DILocation(line: 305, column: 13, scope: !176)
!288 = !DILocation(line: 306, column: 45, scope: !176)
!289 = !DILocation(line: 306, column: 42, scope: !176)
!290 = !DILocation(line: 306, column: 62, scope: !176)
!291 = !DILocation(line: 306, column: 60, scope: !176)
!292 = !DILocation(line: 306, column: 17, scope: !176)
!293 = !DILocation(line: 309, column: 13, scope: !182)
!294 = !DILocation(line: 309, column: 11, scope: !177)
!295 = !DILocation(line: 310, column: 25, scope: !181)
!296 = !DILocation(line: 310, column: 32, scope: !181)
!297 = !DILocation(line: 310, column: 50, scope: !181)
!298 = !DILocation(line: 310, column: 46, scope: !181)
!299 = !DILocation(line: 310, column: 28, scope: !181)
!300 = !DILocation(line: 0, scope: !181)
!301 = !DILocation(line: 312, column: 32, scope: !181)
!302 = !DILocation(line: 312, column: 39, scope: !181)
!303 = !DILocation(line: 0, scope: !233, inlinedAt: !304)
!304 = distinct !DILocation(line: 312, column: 5, scope: !181)
!305 = !DILocation(line: 11, column: 19, scope: !233, inlinedAt: !304)
!306 = !DILocation(line: 11, column: 30, scope: !233, inlinedAt: !304)
!307 = !DILocation(line: 11, column: 39, scope: !233, inlinedAt: !304)
!308 = !DILocation(line: 12, column: 19, scope: !233, inlinedAt: !304)
!309 = !DILocation(line: 16, column: 3, scope: !252, inlinedAt: !304)
!310 = !DILocation(line: 0, scope: !250, inlinedAt: !304)
!311 = !DILocation(line: 18, column: 11, scope: !250, inlinedAt: !304)
!312 = !DILocation(line: 18, column: 21, scope: !250, inlinedAt: !304)
!313 = !DILocation(line: 19, column: 10, scope: !250, inlinedAt: !304)
!314 = !DILocation(line: 19, column: 26, scope: !250, inlinedAt: !304)
!315 = !DILocation(line: 19, column: 37, scope: !250, inlinedAt: !304)
!316 = !DILocation(line: 19, column: 7, scope: !250, inlinedAt: !304)
!317 = !DILocation(line: 16, column: 29, scope: !251, inlinedAt: !304)
!318 = !DILocation(line: 16, column: 23, scope: !251, inlinedAt: !304)
!319 = distinct !{!319, !309, !320, !274}
!320 = !DILocation(line: 21, column: 3, scope: !252, inlinedAt: !304)
!321 = !DILocation(line: 0, scope: !254, inlinedAt: !304)
!322 = !DILocation(line: 25, column: 10, scope: !254, inlinedAt: !304)
!323 = !DILocation(line: 25, column: 18, scope: !254, inlinedAt: !304)
!324 = !DILocation(line: 26, column: 10, scope: !254, inlinedAt: !304)
!325 = !DILocation(line: 26, column: 25, scope: !254, inlinedAt: !304)
!326 = !DILocation(line: 26, column: 34, scope: !254, inlinedAt: !304)
!327 = !DILocation(line: 26, column: 7, scope: !254, inlinedAt: !304)
!328 = !DILocation(line: 30, column: 33, scope: !233, inlinedAt: !304)
!329 = !DILocation(line: 313, column: 29, scope: !181)
!330 = !DILocation(line: 313, column: 22, scope: !181)
!331 = !DILocation(line: 313, column: 18, scope: !181)
!332 = !DILocation(line: 314, column: 22, scope: !181)
!333 = !DILocation(line: 314, column: 13, scope: !181)
!334 = !DILocation(line: 315, column: 44, scope: !181)
!335 = !DILocation(line: 315, column: 42, scope: !181)
!336 = !DILocation(line: 315, column: 17, scope: !181)
!337 = !DILocation(line: 318, column: 13, scope: !186)
!338 = !DILocation(line: 318, column: 11, scope: !182)
!339 = !DILocation(line: 319, column: 33, scope: !185)
!340 = !DILocation(line: 319, column: 28, scope: !185)
!341 = !DILocation(line: 0, scope: !185)
!342 = !DILocation(line: 320, column: 35, scope: !185)
!343 = !DILocation(line: 320, column: 43, scope: !185)
!344 = !DILocation(line: 322, column: 30, scope: !185)
!345 = !DILocation(line: 322, column: 37, scope: !185)
!346 = !DILocation(line: 0, scope: !233, inlinedAt: !347)
!347 = distinct !DILocation(line: 322, column: 5, scope: !185)
!348 = !DILocation(line: 11, column: 19, scope: !233, inlinedAt: !347)
!349 = !DILocation(line: 11, column: 30, scope: !233, inlinedAt: !347)
!350 = !DILocation(line: 11, column: 39, scope: !233, inlinedAt: !347)
!351 = !DILocation(line: 12, column: 19, scope: !233, inlinedAt: !347)
!352 = !DILocation(line: 16, column: 3, scope: !252, inlinedAt: !347)
!353 = !DILocation(line: 0, scope: !250, inlinedAt: !347)
!354 = !DILocation(line: 18, column: 11, scope: !250, inlinedAt: !347)
!355 = !DILocation(line: 18, column: 21, scope: !250, inlinedAt: !347)
!356 = !DILocation(line: 19, column: 10, scope: !250, inlinedAt: !347)
!357 = !DILocation(line: 19, column: 26, scope: !250, inlinedAt: !347)
!358 = !DILocation(line: 19, column: 37, scope: !250, inlinedAt: !347)
!359 = !DILocation(line: 19, column: 7, scope: !250, inlinedAt: !347)
!360 = !DILocation(line: 16, column: 29, scope: !251, inlinedAt: !347)
!361 = !DILocation(line: 16, column: 23, scope: !251, inlinedAt: !347)
!362 = distinct !{!362, !352, !363, !274}
!363 = !DILocation(line: 21, column: 3, scope: !252, inlinedAt: !347)
!364 = !DILocation(line: 0, scope: !254, inlinedAt: !347)
!365 = !DILocation(line: 25, column: 10, scope: !254, inlinedAt: !347)
!366 = !DILocation(line: 25, column: 18, scope: !254, inlinedAt: !347)
!367 = !DILocation(line: 26, column: 10, scope: !254, inlinedAt: !347)
!368 = !DILocation(line: 26, column: 25, scope: !254, inlinedAt: !347)
!369 = !DILocation(line: 26, column: 34, scope: !254, inlinedAt: !347)
!370 = !DILocation(line: 26, column: 7, scope: !254, inlinedAt: !347)
!371 = !DILocation(line: 30, column: 33, scope: !233, inlinedAt: !347)
!372 = !DILocation(line: 323, column: 44, scope: !185)
!373 = !DILocation(line: 323, column: 33, scope: !185)
!374 = !DILocation(line: 323, column: 18, scope: !185)
!375 = !DILocation(line: 324, column: 69, scope: !185)
!376 = !DILocation(line: 324, column: 67, scope: !185)
!377 = !DILocation(line: 324, column: 33, scope: !185)
!378 = !DILocation(line: 324, column: 13, scope: !185)
!379 = !DILocation(line: 325, column: 44, scope: !185)
!380 = !DILocation(line: 325, column: 42, scope: !185)
!381 = !DILocation(line: 325, column: 17, scope: !185)
!382 = !DILocation(line: 328, column: 13, scope: !192)
!383 = !DILocation(line: 328, column: 11, scope: !186)
!384 = !DILocation(line: 329, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 329, column: 5)
!386 = distinct !DILexicalBlock(scope: !192, file: !2, line: 328, column: 21)
!387 = !DILocation(line: 329, column: 5, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !2, line: 329, column: 5)
!389 = !DILocation(line: 331, column: 13, scope: !191)
!390 = !DILocation(line: 331, column: 11, scope: !192)
!391 = !DILocation(line: 332, column: 33, scope: !190)
!392 = !DILocation(line: 332, column: 28, scope: !190)
!393 = !DILocation(line: 333, column: 35, scope: !190)
!394 = !DILocation(line: 333, column: 43, scope: !190)
!395 = !DILocation(line: 334, column: 5, scope: !190)
!396 = !DILocation(line: 335, column: 5, scope: !190)
!397 = !DILocation(line: 336, column: 53, scope: !190)
!398 = !DILocation(line: 336, column: 68, scope: !190)
!399 = !DILocation(line: 336, column: 33, scope: !190)
!400 = !DILocation(line: 336, column: 18, scope: !190)
!401 = !DILocation(line: 337, column: 45, scope: !190)
!402 = !DILocation(line: 337, column: 69, scope: !190)
!403 = !DILocation(line: 337, column: 67, scope: !190)
!404 = !DILocation(line: 337, column: 33, scope: !190)
!405 = !DILocation(line: 337, column: 13, scope: !190)
!406 = !DILocation(line: 338, column: 44, scope: !190)
!407 = !DILocation(line: 338, column: 42, scope: !190)
!408 = !DILocation(line: 338, column: 17, scope: !190)
!409 = !DILocation(line: 340, column: 3, scope: !191)
!410 = !DILocation(line: 341, column: 13, scope: !197)
!411 = !DILocation(line: 341, column: 11, scope: !191)
!412 = !DILocation(line: 342, column: 25, scope: !196)
!413 = !DILocation(line: 342, column: 32, scope: !196)
!414 = !DILocation(line: 342, column: 50, scope: !196)
!415 = !DILocation(line: 342, column: 46, scope: !196)
!416 = !DILocation(line: 342, column: 28, scope: !196)
!417 = !DILocation(line: 343, column: 5, scope: !196)
!418 = !DILocation(line: 344, column: 31, scope: !196)
!419 = !DILocation(line: 344, column: 38, scope: !196)
!420 = !DILocation(line: 344, column: 5, scope: !196)
!421 = !DILocation(line: 345, column: 40, scope: !196)
!422 = !DILocation(line: 345, column: 22, scope: !196)
!423 = !DILocation(line: 345, column: 18, scope: !196)
!424 = !DILocation(line: 346, column: 33, scope: !196)
!425 = !DILocation(line: 346, column: 22, scope: !196)
!426 = !DILocation(line: 346, column: 13, scope: !196)
!427 = !DILocation(line: 347, column: 44, scope: !196)
!428 = !DILocation(line: 347, column: 42, scope: !196)
!429 = !DILocation(line: 347, column: 17, scope: !196)
!430 = !DILocation(line: 349, column: 3, scope: !197)
!431 = !DILocation(line: 350, column: 13, scope: !201)
!432 = !DILocation(line: 350, column: 21, scope: !201)
!433 = !DILocation(line: 351, column: 25, scope: !200)
!434 = !DILocation(line: 351, column: 32, scope: !200)
!435 = !DILocation(line: 351, column: 50, scope: !200)
!436 = !DILocation(line: 351, column: 46, scope: !200)
!437 = !DILocation(line: 351, column: 28, scope: !200)
!438 = !DILocation(line: 352, column: 5, scope: !200)
!439 = !DILocation(line: 353, column: 30, scope: !200)
!440 = !DILocation(line: 353, column: 5, scope: !200)
!441 = !DILocation(line: 354, column: 41, scope: !200)
!442 = !DILocation(line: 354, column: 22, scope: !200)
!443 = !DILocation(line: 354, column: 18, scope: !200)
!444 = !DILocation(line: 355, column: 52, scope: !200)
!445 = !DILocation(line: 355, column: 22, scope: !200)
!446 = !DILocation(line: 355, column: 13, scope: !200)
!447 = !DILocation(line: 356, column: 24, scope: !200)
!448 = !DILocation(line: 356, column: 36, scope: !200)
!449 = !DILocation(line: 356, column: 56, scope: !200)
!450 = !DILocation(line: 356, column: 54, scope: !200)
!451 = !DILocation(line: 356, column: 17, scope: !200)
!452 = !DILocation(line: 357, column: 20, scope: !453)
!453 = distinct !DILexicalBlock(scope: !200, file: !2, line: 357, column: 8)
!454 = !DILocation(line: 357, column: 8, scope: !200)
!455 = !DILocation(line: 358, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !2, line: 358, column: 7)
!457 = !DILocation(line: 358, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !456, file: !2, line: 358, column: 7)
!459 = !DILocation(line: 0, scope: !453)
!460 = !DILocation(line: 361, column: 3, scope: !201)
!461 = !DILocation(line: 363, column: 5, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !2, line: 363, column: 5)
!463 = distinct !DILexicalBlock(scope: !201, file: !2, line: 362, column: 8)
!464 = !DILocation(line: 363, column: 5, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !2, line: 363, column: 5)
!466 = !DILocation(line: 0, scope: !178)
!467 = !DILocation(line: 365, column: 1, scope: !165)
!468 = distinct !DISubprogram(name: "gsl_sf_expint_E1_scaled_e", scope: !2, file: !2, line: 472, type: !148, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !469)
!469 = !{!470, !471}
!470 = !DILocalVariable(name: "x", arg: 1, scope: !468, file: !2, line: 472, type: !150)
!471 = !DILocalVariable(name: "result", arg: 2, scope: !468, file: !2, line: 472, type: !151)
!472 = !DILocation(line: 0, scope: !468)
!473 = !DILocation(line: 474, column: 10, scope: !468)
!474 = !DILocation(line: 474, column: 3, scope: !468)
!475 = distinct !DISubprogram(name: "gsl_sf_expint_E2_e", scope: !2, file: !2, line: 478, type: !148, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !476)
!476 = !{!477, !478}
!477 = !DILocalVariable(name: "x", arg: 1, scope: !475, file: !2, line: 478, type: !150)
!478 = !DILocalVariable(name: "result", arg: 2, scope: !475, file: !2, line: 478, type: !151)
!479 = !DILocation(line: 0, scope: !475)
!480 = !DILocation(line: 480, column: 10, scope: !475)
!481 = !DILocation(line: 480, column: 3, scope: !475)
!482 = distinct !DISubprogram(name: "expint_E2_impl", scope: !2, file: !2, line: 369, type: !166, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !494, !495, !496, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514}
!484 = !DILocalVariable(name: "x", arg: 1, scope: !482, file: !2, line: 369, type: !150)
!485 = !DILocalVariable(name: "result", arg: 2, scope: !482, file: !2, line: 369, type: !151)
!486 = !DILocalVariable(name: "scale", arg: 3, scope: !482, file: !2, line: 369, type: !168)
!487 = !DILocalVariable(name: "xmaxt", scope: !482, file: !2, line: 371, type: !150)
!488 = !DILocalVariable(name: "xmax", scope: !482, file: !2, line: 372, type: !150)
!489 = !DILocalVariable(name: "ex", scope: !490, file: !2, line: 384, type: !150)
!490 = distinct !DILexicalBlock(scope: !491, file: !2, line: 383, column: 24)
!491 = distinct !DILexicalBlock(scope: !492, file: !2, line: 383, column: 13)
!492 = distinct !DILexicalBlock(scope: !493, file: !2, line: 379, column: 12)
!493 = distinct !DILexicalBlock(scope: !482, file: !2, line: 376, column: 6)
!494 = !DILocalVariable(name: "result_E1", scope: !490, file: !2, line: 385, type: !152)
!495 = !DILocalVariable(name: "stat_E1", scope: !490, file: !2, line: 386, type: !48)
!496 = !DILocalVariable(name: "s", scope: !497, file: !2, line: 393, type: !150)
!497 = distinct !DILexicalBlock(scope: !498, file: !2, line: 392, column: 30)
!498 = distinct !DILexicalBlock(scope: !491, file: !2, line: 392, column: 11)
!499 = !DILocalVariable(name: "c1", scope: !497, file: !2, line: 394, type: !150)
!500 = !DILocalVariable(name: "c2", scope: !497, file: !2, line: 395, type: !150)
!501 = !DILocalVariable(name: "c3", scope: !497, file: !2, line: 396, type: !150)
!502 = !DILocalVariable(name: "c4", scope: !497, file: !2, line: 397, type: !150)
!503 = !DILocalVariable(name: "c5", scope: !497, file: !2, line: 398, type: !150)
!504 = !DILocalVariable(name: "c6", scope: !497, file: !2, line: 399, type: !150)
!505 = !DILocalVariable(name: "c7", scope: !497, file: !2, line: 400, type: !150)
!506 = !DILocalVariable(name: "c8", scope: !497, file: !2, line: 401, type: !150)
!507 = !DILocalVariable(name: "c9", scope: !497, file: !2, line: 402, type: !150)
!508 = !DILocalVariable(name: "c10", scope: !497, file: !2, line: 403, type: !150)
!509 = !DILocalVariable(name: "c11", scope: !497, file: !2, line: 404, type: !150)
!510 = !DILocalVariable(name: "c12", scope: !497, file: !2, line: 405, type: !150)
!511 = !DILocalVariable(name: "c13", scope: !497, file: !2, line: 406, type: !150)
!512 = !DILocalVariable(name: "y", scope: !497, file: !2, line: 407, type: !150)
!513 = !DILocalVariable(name: "sum6", scope: !497, file: !2, line: 408, type: !150)
!514 = !DILocalVariable(name: "sum", scope: !497, file: !2, line: 409, type: !150)
!515 = distinct !DIAssignID()
!516 = !DILocation(line: 0, scope: !490)
!517 = !DILocation(line: 0, scope: !482)
!518 = !DILocation(line: 376, column: 8, scope: !493)
!519 = !DILocation(line: 376, column: 16, scope: !493)
!520 = !DILocation(line: 377, column: 5, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !2, line: 377, column: 5)
!522 = distinct !DILexicalBlock(scope: !493, file: !2, line: 376, column: 27)
!523 = !DILocation(line: 377, column: 5, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !2, line: 377, column: 5)
!525 = !DILocation(line: 379, column: 14, scope: !492)
!526 = !DILocation(line: 379, column: 12, scope: !493)
!527 = !DILocation(line: 380, column: 17, scope: !528)
!528 = distinct !DILexicalBlock(scope: !492, file: !2, line: 379, column: 22)
!529 = !DILocation(line: 381, column: 13, scope: !528)
!530 = !DILocation(line: 381, column: 17, scope: !528)
!531 = !DILocation(line: 382, column: 5, scope: !528)
!532 = !DILocation(line: 383, column: 15, scope: !491)
!533 = !DILocation(line: 383, column: 13, scope: !492)
!534 = !DILocation(line: 384, column: 25, scope: !490)
!535 = !DILocation(line: 384, column: 43, scope: !490)
!536 = !DILocation(line: 384, column: 39, scope: !490)
!537 = !DILocation(line: 385, column: 5, scope: !490)
!538 = !DILocation(line: 386, column: 19, scope: !490)
!539 = !DILocation(line: 387, column: 37, scope: !490)
!540 = !DILocation(line: 387, column: 26, scope: !490)
!541 = !DILocation(line: 387, column: 18, scope: !490)
!542 = !DILocation(line: 388, column: 35, scope: !490)
!543 = !DILocation(line: 388, column: 41, scope: !490)
!544 = !DILocation(line: 388, column: 61, scope: !490)
!545 = !DILocation(line: 388, column: 49, scope: !490)
!546 = !DILocation(line: 388, column: 13, scope: !490)
!547 = !DILocation(line: 389, column: 44, scope: !490)
!548 = !DILocation(line: 389, column: 42, scope: !490)
!549 = !DILocation(line: 389, column: 17, scope: !490)
!550 = !DILocation(line: 391, column: 3, scope: !491)
!551 = !DILocation(line: 392, column: 13, scope: !498)
!552 = !DILocation(line: 392, column: 20, scope: !498)
!553 = !DILocation(line: 393, column: 24, scope: !497)
!554 = !DILocation(line: 393, column: 42, scope: !497)
!555 = !DILocation(line: 393, column: 38, scope: !497)
!556 = !DILocation(line: 0, scope: !497)
!557 = !DILocation(line: 407, column: 25, scope: !497)
!558 = !DILocation(line: 408, column: 68, scope: !497)
!559 = !DILocation(line: 408, column: 61, scope: !497)
!560 = !DILocation(line: 408, column: 54, scope: !497)
!561 = !DILocation(line: 408, column: 47, scope: !497)
!562 = !DILocation(line: 408, column: 41, scope: !497)
!563 = !DILocation(line: 408, column: 35, scope: !497)
!564 = !DILocation(line: 408, column: 29, scope: !497)
!565 = !DILocation(line: 409, column: 56, scope: !497)
!566 = !DILocation(line: 409, column: 50, scope: !497)
!567 = !DILocation(line: 409, column: 44, scope: !497)
!568 = !DILocation(line: 409, column: 38, scope: !497)
!569 = !DILocation(line: 409, column: 32, scope: !497)
!570 = !DILocation(line: 409, column: 26, scope: !497)
!571 = !DILocation(line: 410, column: 21, scope: !497)
!572 = !DILocation(line: 410, column: 34, scope: !497)
!573 = !DILocation(line: 410, column: 17, scope: !497)
!574 = !DILocation(line: 411, column: 23, scope: !497)
!575 = !DILocation(line: 411, column: 35, scope: !497)
!576 = !DILocation(line: 411, column: 53, scope: !497)
!577 = !DILocation(line: 411, column: 13, scope: !497)
!578 = !DILocation(line: 411, column: 17, scope: !497)
!579 = !DILocation(line: 412, column: 20, scope: !580)
!580 = distinct !DILexicalBlock(scope: !497, file: !2, line: 412, column: 8)
!581 = !DILocation(line: 412, column: 8, scope: !497)
!582 = !DILocation(line: 413, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !2, line: 413, column: 7)
!584 = !DILocation(line: 413, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !583, file: !2, line: 413, column: 7)
!586 = !DILocation(line: 418, column: 5, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !2, line: 418, column: 5)
!588 = distinct !DILexicalBlock(scope: !498, file: !2, line: 417, column: 8)
!589 = !DILocation(line: 418, column: 5, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !2, line: 418, column: 5)
!591 = !DILocation(line: 0, scope: !493)
!592 = !DILocation(line: 420, column: 1, scope: !482)
!593 = distinct !DISubprogram(name: "gsl_sf_expint_E2_scaled_e", scope: !2, file: !2, line: 484, type: !148, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !594)
!594 = !{!595, !596}
!595 = !DILocalVariable(name: "x", arg: 1, scope: !593, file: !2, line: 484, type: !150)
!596 = !DILocalVariable(name: "result", arg: 2, scope: !593, file: !2, line: 484, type: !151)
!597 = !DILocation(line: 0, scope: !593)
!598 = !DILocation(line: 486, column: 10, scope: !593)
!599 = !DILocation(line: 486, column: 3, scope: !593)
!600 = distinct !DISubprogram(name: "gsl_sf_expint_En_e", scope: !2, file: !2, line: 489, type: !601, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!48, !168, !150, !151}
!603 = !{!604, !605, !606}
!604 = !DILocalVariable(name: "n", arg: 1, scope: !600, file: !2, line: 489, type: !168)
!605 = !DILocalVariable(name: "x", arg: 2, scope: !600, file: !2, line: 489, type: !150)
!606 = !DILocalVariable(name: "result", arg: 3, scope: !600, file: !2, line: 489, type: !151)
!607 = !DILocation(line: 0, scope: !600)
!608 = !DILocation(line: 491, column: 10, scope: !600)
!609 = !DILocation(line: 491, column: 3, scope: !600)
!610 = distinct !DISubprogram(name: "expint_En_impl", scope: !2, file: !2, line: 423, type: !611, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!48, !168, !150, !151, !168}
!613 = !{!614, !615, !616, !617, !618, !626, !627, !628}
!614 = !DILocalVariable(name: "n", arg: 1, scope: !610, file: !2, line: 423, type: !168)
!615 = !DILocalVariable(name: "x", arg: 2, scope: !610, file: !2, line: 423, type: !150)
!616 = !DILocalVariable(name: "result", arg: 3, scope: !610, file: !2, line: 423, type: !151)
!617 = !DILocalVariable(name: "scale", arg: 4, scope: !610, file: !2, line: 423, type: !168)
!618 = !DILocalVariable(name: "result_g", scope: !619, file: !2, line: 450, type: !152)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 449, column: 12)
!620 = distinct !DILexicalBlock(scope: !621, file: !2, line: 444, column: 9)
!621 = distinct !DILexicalBlock(scope: !622, file: !2, line: 440, column: 10)
!622 = distinct !DILexicalBlock(scope: !623, file: !2, line: 438, column: 14)
!623 = distinct !DILexicalBlock(scope: !624, file: !2, line: 436, column: 14)
!624 = distinct !DILexicalBlock(scope: !625, file: !2, line: 427, column: 14)
!625 = distinct !DILexicalBlock(scope: !610, file: !2, line: 425, column: 7)
!626 = !DILocalVariable(name: "prefactor", scope: !619, file: !2, line: 451, type: !99)
!627 = !DILocalVariable(name: "status", scope: !619, file: !2, line: 452, type: !48)
!628 = !DILocalVariable(name: "scale_factor", scope: !619, file: !2, line: 453, type: !99)
!629 = distinct !DIAssignID()
!630 = !DILocation(line: 0, scope: !619)
!631 = !DILocation(line: 0, scope: !610)
!632 = !DILocation(line: 425, column: 9, scope: !625)
!633 = !DILocation(line: 425, column: 7, scope: !610)
!634 = !DILocation(line: 426, column: 5, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !2, line: 426, column: 5)
!636 = distinct !DILexicalBlock(scope: !625, file: !2, line: 425, column: 14)
!637 = !DILocation(line: 426, column: 5, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !2, line: 426, column: 5)
!639 = !DILocation(line: 427, column: 14, scope: !625)
!640 = !DILocation(line: 428, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !2, line: 428, column: 9)
!642 = distinct !DILexicalBlock(scope: !624, file: !2, line: 427, column: 22)
!643 = !DILocation(line: 428, column: 9, scope: !642)
!644 = !DILocation(line: 429, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !2, line: 429, column: 7)
!646 = distinct !DILexicalBlock(scope: !641, file: !2, line: 428, column: 17)
!647 = !DILocation(line: 429, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !2, line: 429, column: 7)
!649 = !DILocation(line: 431, column: 22, scope: !650)
!650 = distinct !DILexicalBlock(scope: !641, file: !2, line: 430, column: 12)
!651 = !DILocation(line: 431, column: 40, scope: !650)
!652 = !DILocation(line: 431, column: 36, scope: !650)
!653 = !DILocation(line: 431, column: 45, scope: !650)
!654 = !DILocation(line: 431, column: 19, scope: !650)
!655 = !DILocation(line: 432, column: 43, scope: !650)
!656 = !DILocation(line: 432, column: 41, scope: !650)
!657 = !DILocation(line: 432, column: 15, scope: !650)
!658 = !DILocation(line: 432, column: 19, scope: !650)
!659 = !DILocation(line: 433, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !650, file: !2, line: 433, column: 7)
!661 = !DILocation(line: 433, column: 7, scope: !650)
!662 = !DILocation(line: 433, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !660, file: !2, line: 433, column: 7)
!664 = !DILocation(line: 437, column: 12, scope: !665)
!665 = distinct !DILexicalBlock(scope: !623, file: !2, line: 436, column: 22)
!666 = !DILocation(line: 437, column: 5, scope: !665)
!667 = !DILocation(line: 439, column: 12, scope: !668)
!668 = distinct !DILexicalBlock(scope: !622, file: !2, line: 438, column: 22)
!669 = !DILocation(line: 439, column: 5, scope: !668)
!670 = !DILocation(line: 441, column: 10, scope: !671)
!671 = distinct !DILexicalBlock(scope: !621, file: !2, line: 441, column: 8)
!672 = !DILocation(line: 441, column: 8, scope: !621)
!673 = !DILocation(line: 442, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !2, line: 442, column: 7)
!675 = distinct !DILexicalBlock(scope: !671, file: !2, line: 441, column: 15)
!676 = !DILocation(line: 442, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !2, line: 442, column: 7)
!678 = !DILocation(line: 444, column: 11, scope: !620)
!679 = !DILocation(line: 444, column: 9, scope: !621)
!680 = !DILocation(line: 445, column: 22, scope: !681)
!681 = distinct !DILexicalBlock(scope: !620, file: !2, line: 444, column: 17)
!682 = !DILocation(line: 445, column: 30, scope: !681)
!683 = !DILocation(line: 445, column: 50, scope: !681)
!684 = !DILocation(line: 445, column: 47, scope: !681)
!685 = !DILocation(line: 445, column: 43, scope: !681)
!686 = !DILocation(line: 445, column: 19, scope: !681)
!687 = !DILocation(line: 446, column: 43, scope: !681)
!688 = !DILocation(line: 446, column: 41, scope: !681)
!689 = !DILocation(line: 446, column: 15, scope: !681)
!690 = !DILocation(line: 446, column: 19, scope: !681)
!691 = !DILocation(line: 447, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !681, file: !2, line: 447, column: 7)
!693 = !DILocation(line: 447, column: 7, scope: !681)
!694 = !DILocation(line: 447, column: 7, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !2, line: 447, column: 7)
!696 = !DILocation(line: 450, column: 7, scope: !619)
!697 = !DILocation(line: 451, column: 34, scope: !619)
!698 = !DILocation(line: 451, column: 33, scope: !619)
!699 = !DILocation(line: 451, column: 26, scope: !619)
!700 = !DILocation(line: 452, column: 41, scope: !619)
!701 = !DILocation(line: 452, column: 40, scope: !619)
!702 = !DILocation(line: 452, column: 20, scope: !619)
!703 = !DILocation(line: 453, column: 31, scope: !619)
!704 = !DILocation(line: 453, column: 39, scope: !619)
!705 = !DILocation(line: 454, column: 34, scope: !619)
!706 = !DILocation(line: 454, column: 57, scope: !619)
!707 = !DILocation(line: 454, column: 46, scope: !619)
!708 = !DILocation(line: 454, column: 19, scope: !619)
!709 = !DILocation(line: 455, column: 43, scope: !619)
!710 = !DILocation(line: 455, column: 41, scope: !619)
!711 = !DILocation(line: 455, column: 15, scope: !619)
!712 = !DILocation(line: 456, column: 67, scope: !619)
!713 = !DILocation(line: 456, column: 56, scope: !619)
!714 = !DILocation(line: 456, column: 26, scope: !619)
!715 = !DILocation(line: 456, column: 24, scope: !619)
!716 = !DILocation(line: 456, column: 19, scope: !619)
!717 = !DILocation(line: 457, column: 18, scope: !718)
!718 = distinct !DILexicalBlock(scope: !619, file: !2, line: 457, column: 11)
!719 = !DILocation(line: 457, column: 11, scope: !619)
!720 = !DILocation(line: 457, column: 34, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !2, line: 457, column: 34)
!722 = !DILocation(line: 457, column: 34, scope: !718)
!723 = !DILocation(line: 457, column: 34, scope: !724)
!724 = distinct !DILexicalBlock(scope: !721, file: !2, line: 457, column: 34)
!725 = !DILocation(line: 459, column: 5, scope: !620)
!726 = !DILocation(line: 0, scope: !625)
!727 = !DILocation(line: 461, column: 1, scope: !610)
!728 = distinct !DISubprogram(name: "gsl_sf_expint_En_scaled_e", scope: !2, file: !2, line: 495, type: !601, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !729)
!729 = !{!730, !731, !732}
!730 = !DILocalVariable(name: "n", arg: 1, scope: !728, file: !2, line: 495, type: !168)
!731 = !DILocalVariable(name: "x", arg: 2, scope: !728, file: !2, line: 495, type: !150)
!732 = !DILocalVariable(name: "result", arg: 3, scope: !728, file: !2, line: 495, type: !151)
!733 = !DILocation(line: 0, scope: !728)
!734 = !DILocation(line: 497, column: 10, scope: !728)
!735 = !DILocation(line: 497, column: 3, scope: !728)
!736 = distinct !DISubprogram(name: "gsl_sf_expint_Ei_e", scope: !2, file: !2, line: 501, type: !148, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !737)
!737 = !{!738, !739, !740}
!738 = !DILocalVariable(name: "x", arg: 1, scope: !736, file: !2, line: 501, type: !150)
!739 = !DILocalVariable(name: "result", arg: 2, scope: !736, file: !2, line: 501, type: !151)
!740 = !DILocalVariable(name: "status", scope: !741, file: !2, line: 506, type: !48)
!741 = distinct !DILexicalBlock(scope: !736, file: !2, line: 505, column: 3)
!742 = !DILocation(line: 0, scope: !736)
!743 = !DILocation(line: 506, column: 37, scope: !741)
!744 = !DILocation(line: 0, scope: !147, inlinedAt: !745)
!745 = distinct !DILocation(line: 506, column: 18, scope: !741)
!746 = !DILocation(line: 468, column: 10, scope: !147, inlinedAt: !745)
!747 = !DILocation(line: 0, scope: !741)
!748 = !DILocation(line: 507, column: 28, scope: !741)
!749 = !DILocation(line: 507, column: 19, scope: !741)
!750 = !DILocation(line: 507, column: 17, scope: !741)
!751 = !DILocation(line: 508, column: 5, scope: !741)
!752 = distinct !DISubprogram(name: "gsl_sf_expint_Ei_scaled_e", scope: !2, file: !2, line: 513, type: !148, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !753)
!753 = !{!754, !755, !756}
!754 = !DILocalVariable(name: "x", arg: 1, scope: !752, file: !2, line: 513, type: !150)
!755 = !DILocalVariable(name: "result", arg: 2, scope: !752, file: !2, line: 513, type: !151)
!756 = !DILocalVariable(name: "status", scope: !757, file: !2, line: 518, type: !48)
!757 = distinct !DILexicalBlock(scope: !752, file: !2, line: 517, column: 3)
!758 = !DILocation(line: 0, scope: !752)
!759 = !DILocation(line: 518, column: 44, scope: !757)
!760 = !DILocation(line: 0, scope: !468, inlinedAt: !761)
!761 = distinct !DILocation(line: 518, column: 18, scope: !757)
!762 = !DILocation(line: 474, column: 10, scope: !468, inlinedAt: !761)
!763 = !DILocation(line: 0, scope: !757)
!764 = !DILocation(line: 519, column: 28, scope: !757)
!765 = !DILocation(line: 519, column: 19, scope: !757)
!766 = !DILocation(line: 519, column: 17, scope: !757)
!767 = !DILocation(line: 520, column: 5, scope: !757)
!768 = distinct !DISubprogram(name: "gsl_sf_expint_E1", scope: !2, file: !2, line: 543, type: !769, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{!99, !150}
!771 = !{!772, !773, !774}
!772 = !DILocalVariable(name: "x", arg: 1, scope: !768, file: !2, line: 543, type: !150)
!773 = !DILocalVariable(name: "result", scope: !768, file: !2, line: 545, type: !152)
!774 = !DILocalVariable(name: "status", scope: !768, file: !2, line: 545, type: !48)
!775 = distinct !DIAssignID()
!776 = !DILocation(line: 0, scope: !768)
!777 = !DILocation(line: 545, column: 3, scope: !768)
!778 = !DILocation(line: 0, scope: !147, inlinedAt: !779)
!779 = distinct !DILocation(line: 545, column: 3, scope: !768)
!780 = !DILocation(line: 468, column: 10, scope: !147, inlinedAt: !779)
!781 = !DILocation(line: 545, column: 3, scope: !782)
!782 = distinct !DILexicalBlock(scope: !768, file: !2, line: 545, column: 3)
!783 = !DILocation(line: 545, column: 3, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !2, line: 545, column: 3)
!785 = distinct !DILexicalBlock(scope: !782, file: !2, line: 545, column: 3)
!786 = !DILocation(line: 546, column: 1, scope: !768)
!787 = !DISubprogram(name: "gsl_error", scope: !47, file: !47, line: 77, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !790, !790, !48, !48}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!792 = distinct !DISubprogram(name: "gsl_sf_expint_E1_scaled", scope: !2, file: !2, line: 548, type: !769, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !793)
!793 = !{!794, !795, !796}
!794 = !DILocalVariable(name: "x", arg: 1, scope: !792, file: !2, line: 548, type: !150)
!795 = !DILocalVariable(name: "result", scope: !792, file: !2, line: 550, type: !152)
!796 = !DILocalVariable(name: "status", scope: !792, file: !2, line: 550, type: !48)
!797 = distinct !DIAssignID()
!798 = !DILocation(line: 0, scope: !792)
!799 = !DILocation(line: 550, column: 3, scope: !792)
!800 = !DILocation(line: 0, scope: !468, inlinedAt: !801)
!801 = distinct !DILocation(line: 550, column: 3, scope: !792)
!802 = !DILocation(line: 474, column: 10, scope: !468, inlinedAt: !801)
!803 = !DILocation(line: 550, column: 3, scope: !804)
!804 = distinct !DILexicalBlock(scope: !792, file: !2, line: 550, column: 3)
!805 = !DILocation(line: 550, column: 3, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !2, line: 550, column: 3)
!807 = distinct !DILexicalBlock(scope: !804, file: !2, line: 550, column: 3)
!808 = !DILocation(line: 551, column: 1, scope: !792)
!809 = distinct !DISubprogram(name: "gsl_sf_expint_E2", scope: !2, file: !2, line: 553, type: !769, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !810)
!810 = !{!811, !812, !813}
!811 = !DILocalVariable(name: "x", arg: 1, scope: !809, file: !2, line: 553, type: !150)
!812 = !DILocalVariable(name: "result", scope: !809, file: !2, line: 555, type: !152)
!813 = !DILocalVariable(name: "status", scope: !809, file: !2, line: 555, type: !48)
!814 = distinct !DIAssignID()
!815 = !DILocation(line: 0, scope: !809)
!816 = !DILocation(line: 555, column: 3, scope: !809)
!817 = !DILocation(line: 0, scope: !475, inlinedAt: !818)
!818 = distinct !DILocation(line: 555, column: 3, scope: !809)
!819 = !DILocation(line: 480, column: 10, scope: !475, inlinedAt: !818)
!820 = !DILocation(line: 555, column: 3, scope: !821)
!821 = distinct !DILexicalBlock(scope: !809, file: !2, line: 555, column: 3)
!822 = !DILocation(line: 555, column: 3, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !2, line: 555, column: 3)
!824 = distinct !DILexicalBlock(scope: !821, file: !2, line: 555, column: 3)
!825 = !DILocation(line: 556, column: 1, scope: !809)
!826 = distinct !DISubprogram(name: "gsl_sf_expint_E2_scaled", scope: !2, file: !2, line: 558, type: !769, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !827)
!827 = !{!828, !829, !830}
!828 = !DILocalVariable(name: "x", arg: 1, scope: !826, file: !2, line: 558, type: !150)
!829 = !DILocalVariable(name: "result", scope: !826, file: !2, line: 560, type: !152)
!830 = !DILocalVariable(name: "status", scope: !826, file: !2, line: 560, type: !48)
!831 = distinct !DIAssignID()
!832 = !DILocation(line: 0, scope: !826)
!833 = !DILocation(line: 560, column: 3, scope: !826)
!834 = !DILocation(line: 0, scope: !593, inlinedAt: !835)
!835 = distinct !DILocation(line: 560, column: 3, scope: !826)
!836 = !DILocation(line: 486, column: 10, scope: !593, inlinedAt: !835)
!837 = !DILocation(line: 560, column: 3, scope: !838)
!838 = distinct !DILexicalBlock(scope: !826, file: !2, line: 560, column: 3)
!839 = !DILocation(line: 560, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 560, column: 3)
!841 = distinct !DILexicalBlock(scope: !838, file: !2, line: 560, column: 3)
!842 = !DILocation(line: 561, column: 1, scope: !826)
!843 = distinct !DISubprogram(name: "gsl_sf_expint_En", scope: !2, file: !2, line: 563, type: !844, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!99, !168, !150}
!846 = !{!847, !848, !849, !850}
!847 = !DILocalVariable(name: "n", arg: 1, scope: !843, file: !2, line: 563, type: !168)
!848 = !DILocalVariable(name: "x", arg: 2, scope: !843, file: !2, line: 563, type: !150)
!849 = !DILocalVariable(name: "result", scope: !843, file: !2, line: 565, type: !152)
!850 = !DILocalVariable(name: "status", scope: !843, file: !2, line: 565, type: !48)
!851 = distinct !DIAssignID()
!852 = !DILocation(line: 0, scope: !843)
!853 = !DILocation(line: 565, column: 3, scope: !843)
!854 = !DILocation(line: 0, scope: !600, inlinedAt: !855)
!855 = distinct !DILocation(line: 565, column: 3, scope: !843)
!856 = !DILocation(line: 491, column: 10, scope: !600, inlinedAt: !855)
!857 = !DILocation(line: 565, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !843, file: !2, line: 565, column: 3)
!859 = !DILocation(line: 565, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !2, line: 565, column: 3)
!861 = distinct !DILexicalBlock(scope: !858, file: !2, line: 565, column: 3)
!862 = !DILocation(line: 566, column: 1, scope: !843)
!863 = distinct !DISubprogram(name: "gsl_sf_expint_En_scaled", scope: !2, file: !2, line: 568, type: !844, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !864)
!864 = !{!865, !866, !867, !868}
!865 = !DILocalVariable(name: "n", arg: 1, scope: !863, file: !2, line: 568, type: !168)
!866 = !DILocalVariable(name: "x", arg: 2, scope: !863, file: !2, line: 568, type: !150)
!867 = !DILocalVariable(name: "result", scope: !863, file: !2, line: 570, type: !152)
!868 = !DILocalVariable(name: "status", scope: !863, file: !2, line: 570, type: !48)
!869 = distinct !DIAssignID()
!870 = !DILocation(line: 0, scope: !863)
!871 = !DILocation(line: 570, column: 3, scope: !863)
!872 = !DILocation(line: 0, scope: !728, inlinedAt: !873)
!873 = distinct !DILocation(line: 570, column: 3, scope: !863)
!874 = !DILocation(line: 497, column: 10, scope: !728, inlinedAt: !873)
!875 = !DILocation(line: 570, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !863, file: !2, line: 570, column: 3)
!877 = !DILocation(line: 570, column: 3, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !2, line: 570, column: 3)
!879 = distinct !DILexicalBlock(scope: !876, file: !2, line: 570, column: 3)
!880 = !DILocation(line: 571, column: 1, scope: !863)
!881 = distinct !DISubprogram(name: "gsl_sf_expint_Ei", scope: !2, file: !2, line: 573, type: !769, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !882)
!882 = !{!883, !884, !885}
!883 = !DILocalVariable(name: "x", arg: 1, scope: !881, file: !2, line: 573, type: !150)
!884 = !DILocalVariable(name: "result", scope: !881, file: !2, line: 575, type: !152)
!885 = !DILocalVariable(name: "status", scope: !881, file: !2, line: 575, type: !48)
!886 = distinct !DIAssignID()
!887 = !DILocation(line: 0, scope: !881)
!888 = !DILocation(line: 575, column: 3, scope: !881)
!889 = !DILocation(line: 0, scope: !736, inlinedAt: !890)
!890 = distinct !DILocation(line: 575, column: 3, scope: !881)
!891 = !DILocation(line: 506, column: 37, scope: !741, inlinedAt: !890)
!892 = !DILocation(line: 0, scope: !147, inlinedAt: !893)
!893 = distinct !DILocation(line: 506, column: 18, scope: !741, inlinedAt: !890)
!894 = !DILocation(line: 468, column: 10, scope: !147, inlinedAt: !893)
!895 = !DILocation(line: 0, scope: !741, inlinedAt: !890)
!896 = !DILocation(line: 507, column: 28, scope: !741, inlinedAt: !890)
!897 = distinct !DIAssignID()
!898 = !DILocation(line: 575, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !881, file: !2, line: 575, column: 3)
!900 = !DILocation(line: 575, column: 3, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !2, line: 575, column: 3)
!902 = distinct !DILexicalBlock(scope: !899, file: !2, line: 575, column: 3)
!903 = !DILocation(line: 507, column: 19, scope: !741, inlinedAt: !890)
!904 = !DILocation(line: 576, column: 1, scope: !881)
!905 = distinct !DISubprogram(name: "gsl_sf_expint_Ei_scaled", scope: !2, file: !2, line: 578, type: !769, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !906)
!906 = !{!907, !908, !909}
!907 = !DILocalVariable(name: "x", arg: 1, scope: !905, file: !2, line: 578, type: !150)
!908 = !DILocalVariable(name: "result", scope: !905, file: !2, line: 580, type: !152)
!909 = !DILocalVariable(name: "status", scope: !905, file: !2, line: 580, type: !48)
!910 = distinct !DIAssignID()
!911 = !DILocation(line: 0, scope: !905)
!912 = !DILocation(line: 580, column: 3, scope: !905)
!913 = !DILocation(line: 0, scope: !752, inlinedAt: !914)
!914 = distinct !DILocation(line: 580, column: 3, scope: !905)
!915 = !DILocation(line: 518, column: 44, scope: !757, inlinedAt: !914)
!916 = !DILocation(line: 0, scope: !468, inlinedAt: !917)
!917 = distinct !DILocation(line: 518, column: 18, scope: !757, inlinedAt: !914)
!918 = !DILocation(line: 474, column: 10, scope: !468, inlinedAt: !917)
!919 = !DILocation(line: 0, scope: !757, inlinedAt: !914)
!920 = !DILocation(line: 519, column: 28, scope: !757, inlinedAt: !914)
!921 = distinct !DIAssignID()
!922 = !DILocation(line: 580, column: 3, scope: !923)
!923 = distinct !DILexicalBlock(scope: !905, file: !2, line: 580, column: 3)
!924 = !DILocation(line: 580, column: 3, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 580, column: 3)
!926 = distinct !DILexicalBlock(scope: !923, file: !2, line: 580, column: 3)
!927 = !DILocation(line: 519, column: 19, scope: !757, inlinedAt: !914)
!928 = !DILocation(line: 581, column: 1, scope: !905)
!929 = !DISubprogram(name: "log", scope: !930, file: !930, line: 104, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!931 = !DISubroutineType(types: !932)
!932 = !{!99, !99}
!933 = !DISubprogram(name: "exp", scope: !930, file: !930, line: 95, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!934 = !DILocation(line: 0, scope: !233)
!935 = !DILocation(line: 11, column: 19, scope: !233)
!936 = !DILocation(line: 11, column: 28, scope: !233)
!937 = !{!938, !217, i64 16}
!938 = !{!"cheb_series_struct", !939, i64 0, !940, i64 8, !217, i64 16, !217, i64 24, !940, i64 32}
!939 = !{!"any pointer", !218, i64 0}
!940 = !{!"int", !218, i64 0}
!941 = !DILocation(line: 11, column: 36, scope: !233)
!942 = !{!938, !217, i64 24}
!943 = !DILocation(line: 11, column: 48, scope: !233)
!944 = !DILocation(line: 11, column: 39, scope: !233)
!945 = !DILocation(line: 12, column: 19, scope: !233)
!946 = !DILocation(line: 16, column: 15, scope: !252)
!947 = !{!938, !940, i64 8}
!948 = !DILocation(line: 16, column: 23, scope: !251)
!949 = !DILocation(line: 25, column: 30, scope: !254)
!950 = !{!938, !939, i64 0}
!951 = !DILocation(line: 16, column: 3, scope: !252)
!952 = !DILocation(line: 0, scope: !250)
!953 = !DILocation(line: 18, column: 11, scope: !250)
!954 = !DILocation(line: 18, column: 21, scope: !250)
!955 = !DILocation(line: 19, column: 10, scope: !250)
!956 = !DILocation(line: 19, column: 26, scope: !250)
!957 = !DILocation(line: 19, column: 37, scope: !250)
!958 = !DILocation(line: 19, column: 7, scope: !250)
!959 = !DILocation(line: 16, column: 29, scope: !251)
!960 = distinct !{!960, !951, !961, !274}
!961 = !DILocation(line: 21, column: 3, scope: !252)
!962 = !DILocation(line: 0, scope: !254)
!963 = !DILocation(line: 25, column: 10, scope: !254)
!964 = !DILocation(line: 25, column: 26, scope: !254)
!965 = !DILocation(line: 25, column: 24, scope: !254)
!966 = !DILocation(line: 26, column: 10, scope: !254)
!967 = !DILocation(line: 26, column: 25, scope: !254)
!968 = !DILocation(line: 26, column: 42, scope: !254)
!969 = !DILocation(line: 26, column: 40, scope: !254)
!970 = !DILocation(line: 26, column: 7, scope: !254)
!971 = !DILocation(line: 29, column: 15, scope: !233)
!972 = !DILocation(line: 30, column: 33, scope: !233)
!973 = !DILocation(line: 30, column: 44, scope: !233)
!974 = !DILocation(line: 30, column: 39, scope: !233)
!975 = !DILocation(line: 30, column: 11, scope: !233)
!976 = !DILocation(line: 30, column: 15, scope: !233)
!977 = !DILocation(line: 32, column: 3, scope: !233)
!978 = !DISubprogram(name: "pow", scope: !930, file: !930, line: 140, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!979 = !DISubroutineType(types: !980)
!980 = !{!99, !99, !99}
!981 = !DISubprogram(name: "gsl_sf_gamma_inc_e", scope: !982, file: !982, line: 244, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!983 = !DISubroutineType(types: !984)
!984 = !{!48, !150, !150, !151}
