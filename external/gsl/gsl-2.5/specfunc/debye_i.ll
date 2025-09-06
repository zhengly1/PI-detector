; ModuleID = 'debye.ll'
source_filename = "debye.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"debye.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_1_e(x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_2_e(x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_3_e(x, &result)\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_4_e(x, &result)\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_5_e(x, &result)\00", align 1, !dbg !28
@.str.8 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_6_e(x, &result)\00", align 1, !dbg !30
@adeb1_data = internal unnamed_addr constant [17 x double] [double 0x4003348D1530BF36, double 0x3FC8CBDC15145376, double 0xBF7987AEB27B87C8, double 0x3F3702C614B31758, double 0xBEF7EE4CD95F52ED, double 0x3EBA84659233D7A3, double 0xBE7E7A4272869B1F, double 0x3E41F30B3B70C5F0, double 0xBE05863F0E8BD54B, double 0x3DCA2B93651ADAD4, double 0xBD9015E2376B90AB, double 0x3D53F3DBBFF8E4A8, double -2.214730e-14, double 1.740900e-15, double -1.376000e-16, double 1.090000e-17, double -9.000000e-19], align 16, !dbg !32
@adeb2_data = internal unnamed_addr constant [18 x double] [double 0x4004C14AD682046D, double 0x3FD253530EC17156, double 0xBF84E705C845FB1D, double 0x3F43D25C6EC8CC38, double 0xBF053F46B69BDC3A, double 0x3EC805113FF3B324, double 0xBE8C00CBD64AA487, double 0x3E50AB256FE3B68F, double 0xBE142778B738C1F5, double 0x3DD8AA9985D7384E, double 0xBD9E7C78321A7033, double 0x3D62FE23331E24C2, double -4.232410e-14, double 3.337800e-15, double -2.645000e-16, double 2.110000e-17, double -1.700000e-18, double 0x3BFD83C94FB6D2AC], align 16, !dbg !91
@adeb3_data = internal unnamed_addr constant [17 x double] [double 0x4005A9720D5510F3, double 0x3FD5C3AD23C92C91, double 0xBF8A82FCA578CB81, double 0x3F4A187B72103077, double 0xBF0CA51EB2CC2B35, double 0x3ED075AFE8B0D419, double 0xBE936BE918A46796, double 0x3E575594C21AA7D5, double 0xBE1C6B4AE117BFDB, double 0x3DE17E40E374B905, double 0xBDA5B9BD66041419, double 0x3D6B2E20C9B0EBB8, double 0xBD311BA3921E6E68, double 4.807600e-15, double -3.820000e-16, double 3.050000e-17, double -2.400000e-18], align 16, !dbg !98
@adeb4_data = internal unnamed_addr constant [17 x double] [double 0x40064144C07A0BE1, double 0x3FD7FF9E9F807737, double 0xBF8E9956A53613DD, double 0x3F4EFCEFEE69FD4E, double 0xBF11561AD9180E44, double 0x3ED432BF1D5FBF46, double 0xBE981448037DB3F5, double 0x3E5D29B7729376E2, double 0xBE21DF878C53F7D8, double 0x3DE61E841E58F55A, double 0xBDAB97635FA87CFC, double 0x3D7152D05BA64BEC, double 0xBD35E09533CDFB47, double 6.164800e-15, double -4.911000e-16, double 3.930000e-17, double -3.200000e-18], align 16, !dbg !105
@adeb5_data = internal unnamed_addr constant [17 x double] [double 0x4006AC1652F2C882, double 0x3FD98FEE7B34E11A, double 0xBF90DA04DD15667E, double 0x3F5173D4A527EE52, double 0xBF13D654E281B8C2, double 0x3ED761ADF96E32A7, double 0xBE9C1F8DFA7FA8AC, double 0x3E61269261ED0736, double 0xBE252486A1BD0B5C, double 0x3DEA4A128B58B814, double 0xBDB0763EA6A91EBE, double 0x3D74BDE26CD23384, double -9.333290e-14, double 7.421800e-15, double -5.925000e-16, double 4.750000e-17, double -3.900000e-18], align 16, !dbg !109
@adeb6_data = internal unnamed_addr constant [17 x double] [double 0x4006FB3BD4E1C385, double 0x3FDAB74BEC7CF51B, double 0xBF9211A1BCE440BE, double 0x3F530DE9EDBEB7EE, double 0xBF15F1CDD1F5C413, double 0x3EDA1FA6E1165AAC, double 0xBE9FAA91C86DA54E, double 0x3E636E9BBF564EDD, double 0xBE2813F16FC2791A, double 0x3DEE1138C0B03667, double 0xBDB2E55AFB843C5A, double 0x3D77E20036BF1AA8, double -1.077580e-13, double 0x3D035764F37353D5, double -6.872000e-16, double 5.520000e-17, double -4.400000e-18], align 16, !dbg !113

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !123 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !135, metadata !DIExpression()), !dbg !154
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !136, metadata !DIExpression()), !dbg !154
  tail call void @llvm.dbg.value(metadata double 0x3FFA51A6625307D3, metadata !137, metadata !DIExpression()), !dbg !154
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !138, metadata !DIExpression()), !dbg !154
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !155
  br i1 %3, label %4, label %6, !dbg !156

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !157, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !157
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !157, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 202, i32 noundef 1) #5, !dbg !166
  br label %106, !dbg !166

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E60000000000000, !dbg !168
  br i1 %7, label %8, label %15, !dbg !169

8:                                                ; preds = %6
  %9 = fmul double %0, 2.500000e-01, !dbg !170
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %9), !dbg !172
  %10 = fmul double %0, %0, !dbg !172
  %11 = fdiv double %10, 3.600000e+01, !dbg !173
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %11), !dbg !174
  store double %handler_result1, ptr %1, align 8, !dbg !174, !tbaa !160
  %12 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !175
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !176
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !177
  store double %13, ptr %14, align 8, !dbg !178, !tbaa !165
  br label %106, !dbg !179

15:                                               ; preds = %6
  %16 = fcmp ugt double %0, 4.000000e+00, !dbg !180
  br i1 %16, label %44, label %17, !dbg !181

17:                                               ; preds = %15
  %18 = fmul double %0, %0, !dbg !182
  %19 = fmul double %18, 1.250000e-01, !dbg !183
  %handler_result2 = call double @fAddHandlerDouble(double %19, double -1.000000e+00), !dbg !184
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !139, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata !209, metadata !192, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !193, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !210
  %20 = fmul double %handler_result2, 2.000000e+00, !dbg !184
  %handler_result3 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !211
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double -1.000000e+00), !dbg !212
  %21 = fmul double %handler_result4, 5.000000e-01, !dbg !212
  call void @llvm.dbg.value(metadata double %21, metadata !198, metadata !DIExpression()), !dbg !210
  %22 = fmul double %21, 2.000000e+00, !dbg !213
  call void @llvm.dbg.value(metadata double %22, metadata !199, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata i32 16, metadata !195, metadata !DIExpression()), !dbg !210
  br label %23, !dbg !214

23:                                               ; preds = %23, %17
  %24 = phi i64 [ 16, %17 ], [ %34, %23 ]
  %25 = phi double [ 0.000000e+00, %17 ], [ %handler_result6, %23 ]
  %26 = phi double [ 0.000000e+00, %17 ], [ %handler_result9, %23 ]
  %27 = phi double [ 0.000000e+00, %17 ], [ %25, %23 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !195, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata double %25, metadata !196, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata double %26, metadata !200, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata double %27, metadata !197, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata double %25, metadata !201, metadata !DIExpression()), !dbg !215
  %28 = fmul double %22, %25, !dbg !216
  %handler_result5 = call double @fSubHandlerDouble(double %28, double %27), !dbg !217
  %29 = getelementptr inbounds double, ptr @adeb1_data, i64 %24, !dbg !217
  %30 = load double, ptr %29, align 8, !dbg !217, !tbaa !218
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %30), !dbg !219
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !196, metadata !DIExpression()), !dbg !210
  %31 = tail call double @llvm.fabs.f64(double %28), !dbg !219
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !220
  %handler_result7 = call double @fAddHandlerDouble(double %31, double %32), !dbg !221
  %33 = tail call double @llvm.fabs.f64(double %30), !dbg !221
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %33), !dbg !222
  %handler_result9 = call double @fAddHandlerDouble(double %26, double %handler_result8), !dbg !223
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !200, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata double %25, metadata !197, metadata !DIExpression()), !dbg !210
  %34 = add nsw i64 %24, -1, !dbg !223
  call void @llvm.dbg.value(metadata i64 %34, metadata !195, metadata !DIExpression()), !dbg !210
  %35 = icmp ugt i64 %24, 1, !dbg !224
  br i1 %35, label %23, label %36, !dbg !214, !llvm.loop !225

36:                                               ; preds = %23
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !205, metadata !DIExpression()), !dbg !228
  %37 = fmul double %21, %handler_result6, !dbg !229
  %handler_result10 = call double @fSubHandlerDouble(double %37, double %25), !dbg !230
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FF3348D1530BF36), !dbg !231
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !196, metadata !DIExpression()), !dbg !210
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !231
  %39 = tail call double @llvm.fabs.f64(double %25), !dbg !232
  %handler_result12 = call double @fAddHandlerDouble(double %39, double %38), !dbg !233
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3FF3348D1530BF36), !dbg !234
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double %handler_result13), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !200, metadata !DIExpression()), !dbg !210
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !144, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !208
  %40 = fmul double %handler_result14, 0x3CB0000000000000, !dbg !235
  %handler_result15 = call double @fAddHandlerDouble(double %40, double 9.000000e-19), !dbg !236
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !144, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !208
  %41 = fmul double %0, 2.500000e-01, !dbg !236
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result11, double %41), !dbg !237
  store double %handler_result16, ptr %1, align 8, !dbg !237, !tbaa !160
  %42 = fmul double %41, 0x3CB0000000000000, !dbg !238
  %handler_result17 = call double @fAddHandlerDouble(double %42, double %handler_result15), !dbg !239
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !239
  store double %handler_result17, ptr %43, align 8, !dbg !240, !tbaa !165
  br label %106

44:                                               ; preds = %15
  %45 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !241
  br i1 %45, label %46, label %91, !dbg !242

46:                                               ; preds = %44
  %47 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !243
  %48 = tail call double @llvm.floor.f64(double %47), !dbg !244
  %49 = fptosi double %48 to i32, !dbg !244
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !145, metadata !DIExpression()), !dbg !245
  %50 = fneg double %0, !dbg !246
  %51 = tail call double @exp(double noundef %50) #5, !dbg !247
  tail call void @llvm.dbg.value(metadata double %51, metadata !149, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double poison, metadata !151, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double poison, metadata !152, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !153, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !150, metadata !DIExpression()), !dbg !245
  %52 = icmp sgt i32 %49, 0, !dbg !248
  br i1 %52, label %53, label %84, !dbg !251

53:                                               ; preds = %46
  %54 = sitofp i32 %49 to double, !dbg !252
  tail call void @llvm.dbg.value(metadata double %54, metadata !152, metadata !DIExpression()), !dbg !245
  %55 = fmul double %54, %0, !dbg !253
  tail call void @llvm.dbg.value(metadata double %55, metadata !151, metadata !DIExpression()), !dbg !245
  %56 = and i32 %49, 1, !dbg !251
  %57 = icmp eq i32 %56, 0, !dbg !251
  br i1 %57, label %63, label %58, !dbg !251

58:                                               ; preds = %53
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !153, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double %54, metadata !152, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double %55, metadata !151, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !150, metadata !DIExpression()), !dbg !245
  %59 = fmul double %51, 0.000000e+00, !dbg !254
  tail call void @llvm.dbg.value(metadata double %59, metadata !150, metadata !DIExpression()), !dbg !245
  %60 = fdiv double 1.000000e+00, %55, !dbg !256
  %handler_result18 = call double @fAddHandlerDouble(double %60, double 1.000000e+00), !dbg !257
  %61 = fdiv double %handler_result18, %54, !dbg !257
  %handler_result19 = call double @fAddHandlerDouble(double %59, double %61), !dbg !258
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !150, metadata !DIExpression()), !dbg !245
  %handler_result20 = call double @fAddHandlerDouble(double %54, double -1.000000e+00), !dbg !259
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !152, metadata !DIExpression()), !dbg !245
  %handler_result21 = call double @fSubHandlerDouble(double %55, double %0), !dbg !260
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !151, metadata !DIExpression()), !dbg !245
  %62 = add nsw i32 %49, -1, !dbg !260
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !153, metadata !DIExpression()), !dbg !245
  br label %63, !dbg !251

63:                                               ; preds = %58, %53
  %64 = phi i32 [ %49, %53 ], [ %62, %58 ]
  %65 = phi double [ %54, %53 ], [ %handler_result20, %58 ]
  %66 = phi double [ %55, %53 ], [ %handler_result21, %58 ]
  %67 = phi double [ 0.000000e+00, %53 ], [ %handler_result19, %58 ]
  %68 = phi double [ undef, %53 ], [ %handler_result19, %58 ]
  %69 = icmp eq i32 %49, 1, !dbg !251
  br i1 %69, label %84, label %70, !dbg !251

70:                                               ; preds = %70, %63
  %71 = phi i32 [ %81, %70 ], [ %64, %63 ]
  %72 = phi double [ %handler_result28, %70 ], [ %65, %63 ]
  %73 = phi double [ %handler_result29, %70 ], [ %66, %63 ]
  %74 = phi double [ %handler_result27, %70 ], [ %67, %63 ]
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !153, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double %72, metadata !152, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double %73, metadata !151, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double %74, metadata !150, metadata !DIExpression()), !dbg !245
  %75 = fmul double %51, %74, !dbg !254
  tail call void @llvm.dbg.value(metadata double %75, metadata !150, metadata !DIExpression()), !dbg !245
  %76 = fdiv double 1.000000e+00, %73, !dbg !256
  %handler_result22 = call double @fAddHandlerDouble(double %76, double 1.000000e+00), !dbg !257
  %77 = fdiv double %handler_result22, %72, !dbg !257
  %handler_result23 = call double @fAddHandlerDouble(double %75, double %77), !dbg !258
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !150, metadata !DIExpression()), !dbg !245
  %handler_result24 = call double @fAddHandlerDouble(double %72, double -1.000000e+00), !dbg !259
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !152, metadata !DIExpression()), !dbg !245
  %handler_result25 = call double @fSubHandlerDouble(double %73, double %0), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !151, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !153, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !153, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !245
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !152, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !151, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !150, metadata !DIExpression()), !dbg !245
  %78 = fmul double %51, %handler_result23, !dbg !254
  tail call void @llvm.dbg.value(metadata double %78, metadata !150, metadata !DIExpression()), !dbg !245
  %79 = fdiv double 1.000000e+00, %handler_result25, !dbg !256
  %handler_result26 = call double @fAddHandlerDouble(double %79, double 1.000000e+00), !dbg !257
  %80 = fdiv double %handler_result26, %handler_result24, !dbg !257
  %handler_result27 = call double @fAddHandlerDouble(double %78, double %80), !dbg !258
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !150, metadata !DIExpression()), !dbg !245
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result24, double -1.000000e+00), !dbg !259
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !152, metadata !DIExpression()), !dbg !245
  %handler_result29 = call double @fSubHandlerDouble(double %handler_result25, double %0), !dbg !260
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !151, metadata !DIExpression()), !dbg !245
  %81 = add nsw i32 %71, -2, !dbg !260
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !153, metadata !DIExpression()), !dbg !245
  %82 = add i32 %71, -3, !dbg !248
  %83 = icmp ult i32 %82, -2, !dbg !248
  br i1 %83, label %70, label %84, !dbg !251, !llvm.loop !261

84:                                               ; preds = %70, %63, %46
  %85 = phi double [ 0.000000e+00, %46 ], [ %68, %63 ], [ %handler_result27, %70 ], !dbg !245
  %86 = fdiv double 0x3FFA51A6625307D3, %0, !dbg !263
  %87 = fmul double %51, %85, !dbg !264
  %handler_result30 = call double @fSubHandlerDouble(double %86, double %87), !dbg !265
  store double %handler_result30, ptr %1, align 8, !dbg !265, !tbaa !160
  %88 = tail call double @llvm.fabs.f64(double %handler_result30), !dbg !266
  %89 = fmul double %88, 0x3CB0000000000000, !dbg !267
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !268
  store double %89, ptr %90, align 8, !dbg !269, !tbaa !165
  br label %106

91:                                               ; preds = %44
  %92 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !270
  br i1 %92, label %93, label %101, !dbg !272

93:                                               ; preds = %91
  %94 = fneg double %0, !dbg !273
  %95 = tail call double @exp(double noundef %94) #5, !dbg !275
  %handler_result31 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !276
  %96 = fmul double %handler_result31, %95, !dbg !276
  %handler_result32 = call double @fSubHandlerDouble(double 0x3FFA51A6625307D3, double %96), !dbg !277
  %97 = fdiv double %handler_result32, %0, !dbg !277
  store double %97, ptr %1, align 8, !dbg !278, !tbaa !160
  %98 = tail call double @llvm.fabs.f64(double %97), !dbg !279
  %99 = fmul double %98, 0x3CB0000000000000, !dbg !280
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !281
  store double %99, ptr %100, align 8, !dbg !282, !tbaa !165
  br label %106, !dbg !283

101:                                              ; preds = %91
  %102 = fdiv double 0x3FFA51A6625307D3, %0, !dbg !284
  store double %102, ptr %1, align 8, !dbg !286, !tbaa !160
  %103 = tail call double @llvm.fabs.f64(double %102), !dbg !287
  %104 = fmul double %103, 0x3CB0000000000000, !dbg !288
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !289
  store double %104, ptr %105, align 8, !dbg !290, !tbaa !165
  br label %106, !dbg !291

106:                                              ; preds = %101, %93, %84, %36, %8, %4
  %107 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %36 ], [ 0, %84 ], [ 0, %93 ], [ 0, %101 ], !dbg !292
  ret i32 %107, !dbg !293
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !294 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !299 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !303 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !305, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double 0x40133BA004F00621, metadata !307, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !308, metadata !DIExpression()), !dbg !327
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !328
  br i1 %3, label %4, label %6, !dbg !329

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !330, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !330
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !330, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1) #5, !dbg !333
  br label %122, !dbg !333

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !335
  br i1 %7, label %8, label %14, !dbg !336

8:                                                ; preds = %6
  %9 = fdiv double %0, 3.000000e+00, !dbg !337
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %9), !dbg !339
  %10 = fmul double %0, %0, !dbg !339
  %11 = fdiv double %10, 2.400000e+01, !dbg !340
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %11), !dbg !341
  store double %handler_result1, ptr %1, align 8, !dbg !341, !tbaa !160
  %12 = fmul double %handler_result1, 0x3CB0000000000000, !dbg !342
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !343
  store double %12, ptr %13, align 8, !dbg !344, !tbaa !165
  br label %122, !dbg !345

14:                                               ; preds = %6
  %15 = fcmp ugt double %0, 4.000000e+00, !dbg !346
  br i1 %15, label %44, label %16, !dbg !347

16:                                               ; preds = %14
  %17 = fmul double %0, %0, !dbg !348
  %18 = fmul double %17, 1.250000e-01, !dbg !349
  %handler_result2 = call double @fAddHandlerDouble(double %18, double -1.000000e+00), !dbg !350
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !309, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata !209, metadata !192, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !193, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !353
  %19 = fmul double %handler_result2, 2.000000e+00, !dbg !350
  %handler_result3 = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !354
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double -1.000000e+00), !dbg !355
  %20 = fmul double %handler_result4, 5.000000e-01, !dbg !355
  call void @llvm.dbg.value(metadata double %20, metadata !198, metadata !DIExpression()), !dbg !353
  %21 = fmul double %20, 2.000000e+00, !dbg !356
  call void @llvm.dbg.value(metadata double %21, metadata !199, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i32 17, metadata !195, metadata !DIExpression()), !dbg !353
  br label %22, !dbg !357

22:                                               ; preds = %22, %16
  %23 = phi i64 [ 17, %16 ], [ %33, %22 ]
  %24 = phi double [ 0.000000e+00, %16 ], [ %handler_result6, %22 ]
  %25 = phi double [ 0.000000e+00, %16 ], [ %handler_result9, %22 ]
  %26 = phi double [ 0.000000e+00, %16 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !195, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %24, metadata !196, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %25, metadata !200, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %26, metadata !197, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %24, metadata !201, metadata !DIExpression()), !dbg !358
  %27 = fmul double %21, %24, !dbg !359
  %handler_result5 = call double @fSubHandlerDouble(double %27, double %26), !dbg !360
  %28 = getelementptr inbounds double, ptr @adeb2_data, i64 %23, !dbg !360
  %29 = load double, ptr %28, align 8, !dbg !360, !tbaa !218
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %29), !dbg !361
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !196, metadata !DIExpression()), !dbg !353
  %30 = tail call double @llvm.fabs.f64(double %27), !dbg !361
  %31 = tail call double @llvm.fabs.f64(double %26), !dbg !362
  %handler_result7 = call double @fAddHandlerDouble(double %30, double %31), !dbg !363
  %32 = tail call double @llvm.fabs.f64(double %29), !dbg !363
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %32), !dbg !364
  %handler_result9 = call double @fAddHandlerDouble(double %25, double %handler_result8), !dbg !365
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !200, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %24, metadata !197, metadata !DIExpression()), !dbg !353
  %33 = add nsw i64 %23, -1, !dbg !365
  call void @llvm.dbg.value(metadata i64 %33, metadata !195, metadata !DIExpression()), !dbg !353
  %34 = icmp ugt i64 %23, 1, !dbg !366
  br i1 %34, label %22, label %35, !dbg !357, !llvm.loop !367

35:                                               ; preds = %22
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !205, metadata !DIExpression()), !dbg !369
  %36 = fmul double %20, %handler_result6, !dbg !370
  %handler_result10 = call double @fSubHandlerDouble(double %36, double %24), !dbg !371
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FF4C14AD682046D), !dbg !372
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !196, metadata !DIExpression()), !dbg !353
  %37 = tail call double @llvm.fabs.f64(double %36), !dbg !372
  %38 = tail call double @llvm.fabs.f64(double %24), !dbg !373
  %handler_result12 = call double @fAddHandlerDouble(double %38, double %37), !dbg !374
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3FF4C14AD682046D), !dbg !375
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double %handler_result13), !dbg !376
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !200, metadata !DIExpression()), !dbg !353
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !314, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !352
  %39 = fmul double %handler_result14, 0x3CB0000000000000, !dbg !376
  %handler_result15 = call double @fAddHandlerDouble(double %39, double 0x3BFD83C94FB6D2AC), !dbg !377
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !314, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !352
  %40 = fdiv double %0, 3.000000e+00, !dbg !377
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result11, double %40), !dbg !378
  store double %handler_result16, ptr %1, align 8, !dbg !378, !tbaa !160
  %41 = fmul double %0, 0x3CB0000000000000, !dbg !379
  %42 = fdiv double %41, 3.000000e+00, !dbg !380
  %handler_result17 = call double @fAddHandlerDouble(double %42, double %handler_result15), !dbg !381
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !381
  store double %handler_result17, ptr %43, align 8, !dbg !382, !tbaa !165
  br label %122

44:                                               ; preds = %14
  %45 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !383
  br i1 %45, label %46, label %101, !dbg !384

46:                                               ; preds = %44
  %47 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !385
  %48 = tail call double @llvm.floor.f64(double %47), !dbg !386
  %49 = fptosi double %48 to i32, !dbg !386
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !315, metadata !DIExpression()), !dbg !387
  %50 = fneg double %0, !dbg !388
  %51 = tail call double @exp(double noundef %50) #5, !dbg !389
  tail call void @llvm.dbg.value(metadata double %51, metadata !318, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double poison, metadata !319, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double poison, metadata !320, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !321, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !322, metadata !DIExpression()), !dbg !387
  %52 = icmp sgt i32 %49, 0, !dbg !390
  br i1 %52, label %53, label %93, !dbg !393

53:                                               ; preds = %46
  %54 = sitofp i32 %49 to double, !dbg !394
  tail call void @llvm.dbg.value(metadata double %54, metadata !320, metadata !DIExpression()), !dbg !387
  %55 = fmul double %54, %0, !dbg !395
  tail call void @llvm.dbg.value(metadata double %55, metadata !319, metadata !DIExpression()), !dbg !387
  %56 = and i32 %49, 1, !dbg !393
  %57 = icmp eq i32 %56, 0, !dbg !393
  br i1 %57, label %65, label %58, !dbg !393

58:                                               ; preds = %53
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !322, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !321, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %54, metadata !320, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %55, metadata !319, metadata !DIExpression()), !dbg !387
  %59 = fmul double %51, 0.000000e+00, !dbg !396
  tail call void @llvm.dbg.value(metadata double %59, metadata !321, metadata !DIExpression()), !dbg !387
  %60 = fdiv double 2.000000e+00, %55, !dbg !398
  %handler_result18 = call double @fAddHandlerDouble(double %60, double 1.000000e+00), !dbg !399
  %61 = fmul double %55, %55, !dbg !399
  %62 = fdiv double 2.000000e+00, %61, !dbg !400
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %62), !dbg !401
  %63 = fdiv double %handler_result19, %54, !dbg !401
  %handler_result20 = call double @fAddHandlerDouble(double %59, double %63), !dbg !402
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !321, metadata !DIExpression()), !dbg !387
  %handler_result21 = call double @fAddHandlerDouble(double %54, double -1.000000e+00), !dbg !403
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !320, metadata !DIExpression()), !dbg !387
  %handler_result22 = call double @fSubHandlerDouble(double %55, double %0), !dbg !404
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !319, metadata !DIExpression()), !dbg !387
  %64 = add nsw i32 %49, -1, !dbg !404
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !322, metadata !DIExpression()), !dbg !387
  br label %65, !dbg !393

65:                                               ; preds = %58, %53
  %66 = phi i32 [ %49, %53 ], [ %64, %58 ]
  %67 = phi double [ 0.000000e+00, %53 ], [ %handler_result20, %58 ]
  %68 = phi double [ %54, %53 ], [ %handler_result21, %58 ]
  %69 = phi double [ %55, %53 ], [ %handler_result22, %58 ]
  %70 = phi double [ undef, %53 ], [ %handler_result20, %58 ]
  %71 = icmp eq i32 %49, 1, !dbg !393
  br i1 %71, label %90, label %72, !dbg !393

72:                                               ; preds = %72, %65
  %73 = phi i32 [ %87, %72 ], [ %66, %65 ]
  %74 = phi double [ %handler_result30, %72 ], [ %67, %65 ]
  %75 = phi double [ %handler_result31, %72 ], [ %68, %65 ]
  %76 = phi double [ %handler_result32, %72 ], [ %69, %65 ]
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !322, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %74, metadata !321, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %75, metadata !320, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %76, metadata !319, metadata !DIExpression()), !dbg !387
  %77 = fmul double %51, %74, !dbg !396
  tail call void @llvm.dbg.value(metadata double %77, metadata !321, metadata !DIExpression()), !dbg !387
  %78 = fdiv double 2.000000e+00, %76, !dbg !398
  %handler_result23 = call double @fAddHandlerDouble(double %78, double 1.000000e+00), !dbg !399
  %79 = fmul double %76, %76, !dbg !399
  %80 = fdiv double 2.000000e+00, %79, !dbg !400
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double %80), !dbg !401
  %81 = fdiv double %handler_result24, %75, !dbg !401
  %handler_result25 = call double @fAddHandlerDouble(double %77, double %81), !dbg !402
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !321, metadata !DIExpression()), !dbg !387
  %handler_result26 = call double @fAddHandlerDouble(double %75, double -1.000000e+00), !dbg !403
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !320, metadata !DIExpression()), !dbg !387
  %handler_result27 = call double @fSubHandlerDouble(double %76, double %0), !dbg !396
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !319, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !322, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !387
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !322, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !387
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !321, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !320, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !319, metadata !DIExpression()), !dbg !387
  %82 = fmul double %51, %handler_result25, !dbg !396
  tail call void @llvm.dbg.value(metadata double %82, metadata !321, metadata !DIExpression()), !dbg !387
  %83 = fdiv double 2.000000e+00, %handler_result27, !dbg !398
  %handler_result28 = call double @fAddHandlerDouble(double %83, double 1.000000e+00), !dbg !399
  %84 = fmul double %handler_result27, %handler_result27, !dbg !399
  %85 = fdiv double 2.000000e+00, %84, !dbg !400
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double %85), !dbg !401
  %86 = fdiv double %handler_result29, %handler_result26, !dbg !401
  %handler_result30 = call double @fAddHandlerDouble(double %82, double %86), !dbg !402
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !321, metadata !DIExpression()), !dbg !387
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result26, double -1.000000e+00), !dbg !403
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !320, metadata !DIExpression()), !dbg !387
  %handler_result32 = call double @fSubHandlerDouble(double %handler_result27, double %0), !dbg !404
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !319, metadata !DIExpression()), !dbg !387
  %87 = add nsw i32 %73, -2, !dbg !404
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !322, metadata !DIExpression()), !dbg !387
  %88 = add i32 %73, -3, !dbg !390
  %89 = icmp ult i32 %88, -2, !dbg !390
  br i1 %89, label %72, label %90, !dbg !393, !llvm.loop !405

90:                                               ; preds = %72, %65
  %91 = phi double [ %70, %65 ], [ %handler_result30, %72 ], !dbg !407
  %92 = fmul double %91, 2.000000e+00, !dbg !408
  br label %93, !dbg !409

93:                                               ; preds = %90, %46
  %94 = phi double [ 0.000000e+00, %46 ], [ %92, %90 ], !dbg !387
  %95 = fmul double %0, %0, !dbg !409
  %96 = fdiv double 0x40133BA004F00621, %95, !dbg !410
  %97 = fmul double %51, %94, !dbg !411
  %handler_result33 = call double @fSubHandlerDouble(double %96, double %97), !dbg !412
  store double %handler_result33, ptr %1, align 8, !dbg !412, !tbaa !160
  %98 = tail call double @llvm.fabs.f64(double %handler_result33), !dbg !413
  %99 = fmul double %98, 0x3CB0000000000000, !dbg !414
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !415
  store double %99, ptr %100, align 8, !dbg !416, !tbaa !165
  br label %122

101:                                              ; preds = %44
  %102 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !417
  br i1 %102, label %103, label %114, !dbg !418

103:                                              ; preds = %101
  %104 = fmul double %0, %0, !dbg !419
  tail call void @llvm.dbg.value(metadata double %104, metadata !323, metadata !DIExpression()), !dbg !420
  %105 = fmul double %0, 2.000000e+00, !dbg !421
  %handler_result34 = call double @fAddHandlerDouble(double %105, double 2.000000e+00), !dbg !422
  %handler_result35 = call double @fAddHandlerDouble(double %104, double %handler_result34), !dbg !423
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !326, metadata !DIExpression()), !dbg !420
  %106 = fmul double %handler_result35, 2.000000e+00, !dbg !423
  %107 = fneg double %0, !dbg !424
  %108 = tail call double @exp(double noundef %107) #5, !dbg !425
  %109 = fmul double %106, %108, !dbg !426
  %handler_result36 = call double @fSubHandlerDouble(double 0x40133BA004F00621, double %109), !dbg !427
  %110 = fdiv double %handler_result36, %104, !dbg !427
  store double %110, ptr %1, align 8, !dbg !428, !tbaa !160
  %111 = tail call double @llvm.fabs.f64(double %110), !dbg !429
  %112 = fmul double %111, 0x3CB0000000000000, !dbg !430
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !431
  store double %112, ptr %113, align 8, !dbg !432, !tbaa !165
  br label %122

114:                                              ; preds = %101
  %115 = fdiv double 0x40133BA004F00621, %0, !dbg !433
  %116 = fdiv double %115, %0, !dbg !435
  store double %116, ptr %1, align 8, !dbg !436, !tbaa !160
  %117 = fmul double %116, 0x3CB0000000000000, !dbg !437
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !438
  store double %117, ptr %118, align 8, !dbg !439, !tbaa !165
  %119 = tail call double @llvm.fabs.f64(double %116), !dbg !440
  %120 = fcmp olt double %119, 0x10000000000000, !dbg !440
  br i1 %120, label %121, label %122, !dbg !442

121:                                              ; preds = %114
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 297, i32 noundef 15) #5, !dbg !443
  br label %122, !dbg !443

122:                                              ; preds = %121, %114, %103, %93, %35, %8, %4
  %123 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %35 ], [ 0, %93 ], [ 0, %103 ], [ 15, %121 ], [ 0, %114 ], !dbg !445
  ret i32 %123, !dbg !446
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_3_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !447 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !449, metadata !DIExpression()), !dbg !475
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !450, metadata !DIExpression()), !dbg !475
  tail call void @llvm.dbg.value(metadata double 0x40337B587020D351, metadata !451, metadata !DIExpression()), !dbg !475
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !452, metadata !DIExpression()), !dbg !475
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !476
  br i1 %3, label %4, label %6, !dbg !477

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !478, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !478
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !478, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 311, i32 noundef 1) #5, !dbg !481
  br label %128, !dbg !481

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !483
  br i1 %7, label %8, label %15, !dbg !484

8:                                                ; preds = %6
  %9 = fmul double %0, 3.000000e+00, !dbg !485
  %10 = fmul double %9, 1.250000e-01, !dbg !487
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %10), !dbg !488
  %11 = fmul double %0, %0, !dbg !488
  %12 = fdiv double %11, 2.000000e+01, !dbg !489
  %handler_result1 = call double @fAddHandlerDouble(double %12, double %handler_result), !dbg !490
  store double %handler_result1, ptr %1, align 8, !dbg !490, !tbaa !160
  %13 = fmul double %handler_result1, 0x3CB0000000000000, !dbg !491
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !492
  store double %13, ptr %14, align 8, !dbg !493, !tbaa !165
  br label %128, !dbg !494

15:                                               ; preds = %6
  %16 = fcmp ugt double %0, 4.000000e+00, !dbg !495
  br i1 %16, label %44, label %17, !dbg !496

17:                                               ; preds = %15
  %18 = fmul double %0, %0, !dbg !497
  %19 = fmul double %18, 1.250000e-01, !dbg !498
  %handler_result2 = call double @fAddHandlerDouble(double %19, double -1.000000e+00), !dbg !499
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !453, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata !209, metadata !192, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !193, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !502
  %20 = fmul double %handler_result2, 2.000000e+00, !dbg !499
  %handler_result3 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !503
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double -1.000000e+00), !dbg !504
  %21 = fmul double %handler_result4, 5.000000e-01, !dbg !504
  call void @llvm.dbg.value(metadata double %21, metadata !198, metadata !DIExpression()), !dbg !502
  %22 = fmul double %21, 2.000000e+00, !dbg !505
  call void @llvm.dbg.value(metadata double %22, metadata !199, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i32 16, metadata !195, metadata !DIExpression()), !dbg !502
  br label %23, !dbg !506

23:                                               ; preds = %23, %17
  %24 = phi i64 [ 16, %17 ], [ %34, %23 ]
  %25 = phi double [ 0.000000e+00, %17 ], [ %handler_result6, %23 ]
  %26 = phi double [ 0.000000e+00, %17 ], [ %handler_result9, %23 ]
  %27 = phi double [ 0.000000e+00, %17 ], [ %25, %23 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !195, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata double %25, metadata !196, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata double %26, metadata !200, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata double %27, metadata !197, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata double %25, metadata !201, metadata !DIExpression()), !dbg !507
  %28 = fmul double %22, %25, !dbg !508
  %handler_result5 = call double @fSubHandlerDouble(double %28, double %27), !dbg !509
  %29 = getelementptr inbounds double, ptr @adeb3_data, i64 %24, !dbg !509
  %30 = load double, ptr %29, align 8, !dbg !509, !tbaa !218
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %30), !dbg !510
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !196, metadata !DIExpression()), !dbg !502
  %31 = tail call double @llvm.fabs.f64(double %28), !dbg !510
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !511
  %handler_result7 = call double @fAddHandlerDouble(double %31, double %32), !dbg !512
  %33 = tail call double @llvm.fabs.f64(double %30), !dbg !512
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %33), !dbg !513
  %handler_result9 = call double @fAddHandlerDouble(double %26, double %handler_result8), !dbg !514
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !200, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata double %25, metadata !197, metadata !DIExpression()), !dbg !502
  %34 = add nsw i64 %24, -1, !dbg !514
  call void @llvm.dbg.value(metadata i64 %34, metadata !195, metadata !DIExpression()), !dbg !502
  %35 = icmp ugt i64 %24, 1, !dbg !515
  br i1 %35, label %23, label %36, !dbg !506, !llvm.loop !516

36:                                               ; preds = %23
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !205, metadata !DIExpression()), !dbg !518
  %37 = fmul double %21, %handler_result6, !dbg !519
  %handler_result10 = call double @fSubHandlerDouble(double %37, double %25), !dbg !520
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FF5A9720D5510F3), !dbg !521
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !196, metadata !DIExpression()), !dbg !502
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !521
  %39 = tail call double @llvm.fabs.f64(double %25), !dbg !522
  %handler_result12 = call double @fAddHandlerDouble(double %39, double %38), !dbg !523
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3FF5A9720D5510F3), !dbg !524
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double %handler_result13), !dbg !525
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !200, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !458, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !501
  %40 = fmul double %handler_result14, 0x3CB0000000000000, !dbg !525
  %handler_result15 = call double @fAddHandlerDouble(double %40, double 2.400000e-18), !dbg !526
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !458, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !501
  %41 = fmul double %0, 3.750000e-01, !dbg !526
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result11, double %41), !dbg !527
  store double %handler_result16, ptr %1, align 8, !dbg !527, !tbaa !160
  %42 = fmul double %0, 0x3C98000000000000, !dbg !528
  %handler_result17 = call double @fAddHandlerDouble(double %42, double %handler_result15), !dbg !529
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !529
  store double %handler_result17, ptr %43, align 8, !dbg !530, !tbaa !165
  br label %128

44:                                               ; preds = %15
  %45 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !531
  br i1 %45, label %46, label %104, !dbg !532

46:                                               ; preds = %44
  %47 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !533
  %48 = tail call double @llvm.floor.f64(double %47), !dbg !534
  %49 = fptosi double %48 to i32, !dbg !534
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !459, metadata !DIExpression()), !dbg !535
  %50 = fneg double %0, !dbg !536
  %51 = tail call double @exp(double noundef %50) #5, !dbg !537
  tail call void @llvm.dbg.value(metadata double %51, metadata !462, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata double poison, metadata !463, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata double poison, metadata !464, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !465, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !466, metadata !DIExpression()), !dbg !535
  %52 = icmp sgt i32 %49, 0, !dbg !538
  br i1 %52, label %53, label %96, !dbg !539

53:                                               ; preds = %46
  %54 = sitofp i32 %49 to double, !dbg !540
  tail call void @llvm.dbg.value(metadata double %54, metadata !464, metadata !DIExpression()), !dbg !535
  %55 = fmul double %54, %0, !dbg !541
  tail call void @llvm.dbg.value(metadata double %55, metadata !463, metadata !DIExpression()), !dbg !535
  %56 = and i32 %49, 1, !dbg !539
  %57 = icmp eq i32 %56, 0, !dbg !539
  br i1 %57, label %66, label %58, !dbg !539

58:                                               ; preds = %53
  tail call void @llvm.dbg.value(metadata double %55, metadata !463, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !466, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !465, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata double %54, metadata !464, metadata !DIExpression()), !dbg !535
  %59 = fdiv double 1.000000e+00, %55, !dbg !542
  tail call void @llvm.dbg.value(metadata double %59, metadata !467, metadata !DIExpression()), !dbg !543
  %60 = fmul double %51, 0.000000e+00, !dbg !544
  tail call void @llvm.dbg.value(metadata double %60, metadata !465, metadata !DIExpression()), !dbg !535
  %61 = fmul double %59, 6.000000e+00, !dbg !545
  %handler_result18 = call double @fAddHandlerDouble(double %61, double 6.000000e+00), !dbg !546
  %62 = fmul double %59, %handler_result18, !dbg !546
  %handler_result19 = call double @fAddHandlerDouble(double %62, double 3.000000e+00), !dbg !547
  %63 = fmul double %59, %handler_result19, !dbg !547
  %handler_result20 = call double @fAddHandlerDouble(double %63, double 1.000000e+00), !dbg !548
  %64 = fdiv double %handler_result20, %54, !dbg !548
  %handler_result21 = call double @fAddHandlerDouble(double %60, double %64), !dbg !549
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !465, metadata !DIExpression()), !dbg !535
  %handler_result22 = call double @fAddHandlerDouble(double %54, double -1.000000e+00), !dbg !550
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !464, metadata !DIExpression()), !dbg !535
  %handler_result23 = call double @fSubHandlerDouble(double %55, double %0), !dbg !551
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !463, metadata !DIExpression()), !dbg !535
  %65 = add nsw i32 %49, -1, !dbg !551
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !466, metadata !DIExpression()), !dbg !535
  br label %66, !dbg !539

66:                                               ; preds = %58, %53
  %67 = phi double [ %55, %53 ], [ %handler_result23, %58 ]
  %68 = phi i32 [ %49, %53 ], [ %65, %58 ]
  %69 = phi double [ 0.000000e+00, %53 ], [ %handler_result21, %58 ]
  %70 = phi double [ %54, %53 ], [ %handler_result22, %58 ]
  %71 = phi double [ undef, %53 ], [ %handler_result21, %58 ]
  %72 = icmp eq i32 %49, 1, !dbg !539
  br i1 %72, label %93, label %73, !dbg !539

73:                                               ; preds = %73, %66
  %74 = phi double [ %handler_result35, %73 ], [ %67, %66 ]
  %75 = phi i32 [ %90, %73 ], [ %68, %66 ]
  %76 = phi double [ %handler_result33, %73 ], [ %69, %66 ]
  %77 = phi double [ %handler_result34, %73 ], [ %70, %66 ]
  tail call void @llvm.dbg.value(metadata double %74, metadata !463, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !466, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata double %76, metadata !465, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata double %77, metadata !464, metadata !DIExpression()), !dbg !535
  %78 = fdiv double 1.000000e+00, %74, !dbg !542
  tail call void @llvm.dbg.value(metadata double %78, metadata !467, metadata !DIExpression()), !dbg !543
  %79 = fmul double %51, %76, !dbg !544
  tail call void @llvm.dbg.value(metadata double %79, metadata !465, metadata !DIExpression()), !dbg !535
  %80 = fmul double %78, 6.000000e+00, !dbg !545
  %handler_result24 = call double @fAddHandlerDouble(double %80, double 6.000000e+00), !dbg !546
  %81 = fmul double %78, %handler_result24, !dbg !546
  %handler_result25 = call double @fAddHandlerDouble(double %81, double 3.000000e+00), !dbg !547
  %82 = fmul double %78, %handler_result25, !dbg !547
  %handler_result26 = call double @fAddHandlerDouble(double %82, double 1.000000e+00), !dbg !548
  %83 = fdiv double %handler_result26, %77, !dbg !548
  %handler_result27 = call double @fAddHandlerDouble(double %79, double %83), !dbg !549
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !465, metadata !DIExpression()), !dbg !535
  %handler_result28 = call double @fAddHandlerDouble(double %77, double -1.000000e+00), !dbg !550
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !464, metadata !DIExpression()), !dbg !535
  %handler_result29 = call double @fSubHandlerDouble(double %74, double %0), !dbg !542
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !463, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !466, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !535
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !463, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !466, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !535
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !465, metadata !DIExpression()), !dbg !535
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !464, metadata !DIExpression()), !dbg !535
  %84 = fdiv double 1.000000e+00, %handler_result29, !dbg !542
  tail call void @llvm.dbg.value(metadata double %84, metadata !467, metadata !DIExpression()), !dbg !543
  %85 = fmul double %51, %handler_result27, !dbg !544
  tail call void @llvm.dbg.value(metadata double %85, metadata !465, metadata !DIExpression()), !dbg !535
  %86 = fmul double %84, 6.000000e+00, !dbg !545
  %handler_result30 = call double @fAddHandlerDouble(double %86, double 6.000000e+00), !dbg !546
  %87 = fmul double %84, %handler_result30, !dbg !546
  %handler_result31 = call double @fAddHandlerDouble(double %87, double 3.000000e+00), !dbg !547
  %88 = fmul double %84, %handler_result31, !dbg !547
  %handler_result32 = call double @fAddHandlerDouble(double %88, double 1.000000e+00), !dbg !548
  %89 = fdiv double %handler_result32, %handler_result28, !dbg !548
  %handler_result33 = call double @fAddHandlerDouble(double %85, double %89), !dbg !549
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !465, metadata !DIExpression()), !dbg !535
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result28, double -1.000000e+00), !dbg !550
  tail call void @llvm.dbg.value(metadata double %handler_result34, metadata !464, metadata !DIExpression()), !dbg !535
  %handler_result35 = call double @fSubHandlerDouble(double %handler_result29, double %0), !dbg !551
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !463, metadata !DIExpression()), !dbg !535
  %90 = add nsw i32 %75, -2, !dbg !551
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !466, metadata !DIExpression()), !dbg !535
  %91 = add i32 %75, -3, !dbg !538
  %92 = icmp ult i32 %91, -2, !dbg !538
  br i1 %92, label %73, label %93, !dbg !539, !llvm.loop !552

93:                                               ; preds = %73, %66
  %94 = phi double [ %71, %66 ], [ %handler_result33, %73 ], !dbg !554
  %95 = fmul double %94, 3.000000e+00, !dbg !555
  br label %96, !dbg !556

96:                                               ; preds = %93, %46
  %97 = phi double [ 0.000000e+00, %46 ], [ %95, %93 ], !dbg !535
  %98 = fmul double %0, %0, !dbg !556
  %99 = fmul double %98, %0, !dbg !557
  %100 = fdiv double 0x40337B587020D351, %99, !dbg !558
  %101 = fmul double %51, %97, !dbg !559
  %handler_result36 = call double @fSubHandlerDouble(double %100, double %101), !dbg !560
  store double %handler_result36, ptr %1, align 8, !dbg !560, !tbaa !160
  %102 = fmul double %handler_result36, 0x3CB0000000000000, !dbg !561
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !562
  store double %102, ptr %103, align 8, !dbg !563, !tbaa !165
  br label %128

104:                                              ; preds = %44
  %105 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !564
  br i1 %105, label %106, label %119, !dbg !565

106:                                              ; preds = %104
  %107 = fmul double %0, %0, !dbg !566
  %108 = fmul double %107, %0, !dbg !567
  tail call void @llvm.dbg.value(metadata double %108, metadata !471, metadata !DIExpression()), !dbg !568
  %109 = fmul double %0, 6.000000e+00, !dbg !569
  %handler_result37 = call double @fAddHandlerDouble(double %109, double 6.000000e+00), !dbg !570
  %110 = fmul double %0, 3.000000e+00, !dbg !570
  %111 = fmul double %110, %0, !dbg !571
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double %111), !dbg !572
  %handler_result39 = call double @fAddHandlerDouble(double %108, double %handler_result38), !dbg !573
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !474, metadata !DIExpression()), !dbg !568
  %112 = fmul double %handler_result39, 3.000000e+00, !dbg !573
  %113 = fneg double %0, !dbg !574
  %114 = tail call double @exp(double noundef %113) #5, !dbg !575
  %115 = fmul double %112, %114, !dbg !576
  %handler_result40 = call double @fSubHandlerDouble(double 0x40337B587020D351, double %115), !dbg !577
  %116 = fdiv double %handler_result40, %108, !dbg !577
  store double %116, ptr %1, align 8, !dbg !578, !tbaa !160
  %117 = fmul double %116, 0x3CB0000000000000, !dbg !579
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !580
  store double %117, ptr %118, align 8, !dbg !581, !tbaa !165
  br label %128

119:                                              ; preds = %104
  %120 = fdiv double 0x40337B587020D351, %0, !dbg !582
  %121 = fdiv double %120, %0, !dbg !584
  %122 = fdiv double %121, %0, !dbg !585
  store double %122, ptr %1, align 8, !dbg !586, !tbaa !160
  %123 = fmul double %122, 0x3CB0000000000000, !dbg !587
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !588
  store double %123, ptr %124, align 8, !dbg !589, !tbaa !165
  %125 = tail call double @llvm.fabs.f64(double %122), !dbg !590
  %126 = fcmp olt double %125, 0x10000000000000, !dbg !590
  br i1 %126, label %127, label %128, !dbg !592

127:                                              ; preds = %119
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 15) #5, !dbg !593
  br label %128, !dbg !593

128:                                              ; preds = %127, %119, %106, %96, %36, %8, %4
  %129 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %36 ], [ 0, %96 ], [ 0, %106 ], [ 15, %127 ], [ 0, %119 ], !dbg !595
  ret i32 %129, !dbg !596
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_4_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !597 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !599, metadata !DIExpression()), !dbg !626
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !600, metadata !DIExpression()), !dbg !626
  tail call void @llvm.dbg.value(metadata double 0x4058E2E2562FBB35, metadata !601, metadata !DIExpression()), !dbg !626
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !602, metadata !DIExpression()), !dbg !626
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !627
  br i1 %3, label %4, label %6, !dbg !628

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !629, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !629
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !629, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 368, i32 noundef 1) #5, !dbg !632
  br label %109, !dbg !632

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !634
  br i1 %7, label %8, label %15, !dbg !635

8:                                                ; preds = %6
  %9 = fmul double %0, 2.000000e+00, !dbg !636
  %10 = fdiv double %9, 5.000000e+00, !dbg !638
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %10), !dbg !639
  %11 = fmul double %0, %0, !dbg !639
  %12 = fdiv double %11, 1.800000e+01, !dbg !640
  %handler_result1 = call double @fAddHandlerDouble(double %12, double %handler_result), !dbg !641
  store double %handler_result1, ptr %1, align 8, !dbg !641, !tbaa !160
  %13 = fmul double %handler_result1, 0x3CB0000000000000, !dbg !642
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !643
  store double %13, ptr %14, align 8, !dbg !644, !tbaa !165
  br label %109, !dbg !645

15:                                               ; preds = %6
  %16 = fcmp ugt double %0, 4.000000e+00, !dbg !646
  br i1 %16, label %46, label %17, !dbg !647

17:                                               ; preds = %15
  %18 = fmul double %0, %0, !dbg !648
  %19 = fmul double %18, 1.250000e-01, !dbg !649
  %handler_result2 = call double @fAddHandlerDouble(double %19, double -1.000000e+00), !dbg !650
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !603, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata !209, metadata !192, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !193, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !653
  %20 = fmul double %handler_result2, 2.000000e+00, !dbg !650
  %handler_result3 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !654
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double -1.000000e+00), !dbg !655
  %21 = fmul double %handler_result4, 5.000000e-01, !dbg !655
  call void @llvm.dbg.value(metadata double %21, metadata !198, metadata !DIExpression()), !dbg !653
  %22 = fmul double %21, 2.000000e+00, !dbg !656
  call void @llvm.dbg.value(metadata double %22, metadata !199, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 16, metadata !195, metadata !DIExpression()), !dbg !653
  br label %23, !dbg !657

23:                                               ; preds = %23, %17
  %24 = phi i64 [ 16, %17 ], [ %34, %23 ]
  %25 = phi double [ 0.000000e+00, %17 ], [ %handler_result6, %23 ]
  %26 = phi double [ 0.000000e+00, %17 ], [ %handler_result9, %23 ]
  %27 = phi double [ 0.000000e+00, %17 ], [ %25, %23 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !195, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double %25, metadata !196, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double %26, metadata !200, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double %27, metadata !197, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double %25, metadata !201, metadata !DIExpression()), !dbg !658
  %28 = fmul double %22, %25, !dbg !659
  %handler_result5 = call double @fSubHandlerDouble(double %28, double %27), !dbg !660
  %29 = getelementptr inbounds double, ptr @adeb4_data, i64 %24, !dbg !660
  %30 = load double, ptr %29, align 8, !dbg !660, !tbaa !218
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %30), !dbg !661
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !196, metadata !DIExpression()), !dbg !653
  %31 = tail call double @llvm.fabs.f64(double %28), !dbg !661
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !662
  %handler_result7 = call double @fAddHandlerDouble(double %31, double %32), !dbg !663
  %33 = tail call double @llvm.fabs.f64(double %30), !dbg !663
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %33), !dbg !664
  %handler_result9 = call double @fAddHandlerDouble(double %26, double %handler_result8), !dbg !665
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !200, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata double %25, metadata !197, metadata !DIExpression()), !dbg !653
  %34 = add nsw i64 %24, -1, !dbg !665
  call void @llvm.dbg.value(metadata i64 %34, metadata !195, metadata !DIExpression()), !dbg !653
  %35 = icmp ugt i64 %24, 1, !dbg !666
  br i1 %35, label %23, label %36, !dbg !657, !llvm.loop !667

36:                                               ; preds = %23
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !205, metadata !DIExpression()), !dbg !669
  %37 = fmul double %21, %handler_result6, !dbg !670
  %handler_result10 = call double @fSubHandlerDouble(double %37, double %25), !dbg !671
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FF64144C07A0BE1), !dbg !672
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !196, metadata !DIExpression()), !dbg !653
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !672
  %39 = tail call double @llvm.fabs.f64(double %25), !dbg !673
  %handler_result12 = call double @fAddHandlerDouble(double %39, double %38), !dbg !674
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3FF64144C07A0BE1), !dbg !675
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double %handler_result13), !dbg !676
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !200, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !608, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !652
  %40 = fmul double %handler_result14, 0x3CB0000000000000, !dbg !676
  %handler_result15 = call double @fAddHandlerDouble(double %40, double 3.200000e-18), !dbg !677
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !608, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !652
  %41 = fmul double %0, 2.000000e+00, !dbg !677
  %42 = fdiv double %41, 5.000000e+00, !dbg !678
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result11, double %42), !dbg !679
  store double %handler_result16, ptr %1, align 8, !dbg !679, !tbaa !160
  %43 = fmul double %0, 0x3CC0000000000000, !dbg !680
  %44 = fdiv double %43, 5.000000e+00, !dbg !681
  %handler_result17 = call double @fAddHandlerDouble(double %44, double %handler_result15), !dbg !682
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !682
  store double %handler_result17, ptr %45, align 8, !dbg !683, !tbaa !165
  br label %109

46:                                               ; preds = %15
  %47 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !684
  br i1 %47, label %48, label %83, !dbg !685

48:                                               ; preds = %46
  %49 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !686
  %50 = tail call double @llvm.floor.f64(double %49), !dbg !687
  %51 = fptosi double %50 to i32, !dbg !687
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !609, metadata !DIExpression()), !dbg !688
  %52 = fneg double %0, !dbg !689
  %53 = tail call double @exp(double noundef %52) #5, !dbg !690
  tail call void @llvm.dbg.value(metadata double %53, metadata !612, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double poison, metadata !613, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double poison, metadata !614, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !615, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !616, metadata !DIExpression()), !dbg !688
  %54 = icmp sgt i32 %51, 0, !dbg !691
  br i1 %54, label %55, label %74, !dbg !692

55:                                               ; preds = %48
  %56 = sitofp i32 %51 to double, !dbg !693
  tail call void @llvm.dbg.value(metadata double %56, metadata !614, metadata !DIExpression()), !dbg !688
  %57 = fmul double %56, %0, !dbg !694
  tail call void @llvm.dbg.value(metadata double %57, metadata !613, metadata !DIExpression()), !dbg !688
  br label %58, !dbg !692

58:                                               ; preds = %58, %55
  %59 = phi double [ %handler_result24, %58 ], [ %57, %55 ]
  %60 = phi double [ %handler_result23, %58 ], [ %56, %55 ]
  %61 = phi i32 [ %70, %58 ], [ %51, %55 ]
  %62 = phi double [ %handler_result22, %58 ], [ 0.000000e+00, %55 ]
  tail call void @llvm.dbg.value(metadata double %59, metadata !613, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %60, metadata !614, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !616, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %62, metadata !615, metadata !DIExpression()), !dbg !688
  %63 = fdiv double 1.000000e+00, %59, !dbg !695
  tail call void @llvm.dbg.value(metadata double %63, metadata !617, metadata !DIExpression()), !dbg !696
  %64 = fmul double %53, %62, !dbg !697
  tail call void @llvm.dbg.value(metadata double %64, metadata !615, metadata !DIExpression()), !dbg !688
  %65 = fmul double %63, 2.400000e+01, !dbg !698
  %handler_result18 = call double @fAddHandlerDouble(double %65, double 2.400000e+01), !dbg !699
  %66 = fmul double %63, %handler_result18, !dbg !699
  %handler_result19 = call double @fAddHandlerDouble(double %66, double 1.200000e+01), !dbg !700
  %67 = fmul double %63, %handler_result19, !dbg !700
  %handler_result20 = call double @fAddHandlerDouble(double %67, double 4.000000e+00), !dbg !701
  %68 = fmul double %63, %handler_result20, !dbg !701
  %handler_result21 = call double @fAddHandlerDouble(double %68, double 1.000000e+00), !dbg !702
  %69 = fdiv double %handler_result21, %60, !dbg !702
  %handler_result22 = call double @fAddHandlerDouble(double %64, double %69), !dbg !703
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !615, metadata !DIExpression()), !dbg !688
  %handler_result23 = call double @fAddHandlerDouble(double %60, double -1.000000e+00), !dbg !704
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !614, metadata !DIExpression()), !dbg !688
  %handler_result24 = call double @fSubHandlerDouble(double %59, double %0), !dbg !705
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !613, metadata !DIExpression()), !dbg !688
  %70 = add nsw i32 %61, -1, !dbg !705
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !616, metadata !DIExpression()), !dbg !688
  %71 = icmp ugt i32 %61, 1, !dbg !691
  br i1 %71, label %58, label %72, !dbg !692, !llvm.loop !706

72:                                               ; preds = %58
  %73 = fmul double %handler_result22, 4.000000e+00, !dbg !708
  br label %74, !dbg !709

74:                                               ; preds = %72, %48
  %75 = phi double [ 0.000000e+00, %48 ], [ %73, %72 ], !dbg !688
  %76 = fmul double %0, %0, !dbg !709
  %77 = fmul double %76, %0, !dbg !710
  %78 = fmul double %77, %0, !dbg !711
  %79 = fdiv double 0x4058E2E2562FBB35, %78, !dbg !712
  %80 = fmul double %53, %75, !dbg !713
  %handler_result25 = call double @fSubHandlerDouble(double %79, double %80), !dbg !714
  store double %handler_result25, ptr %1, align 8, !dbg !714, !tbaa !160
  %81 = fmul double %handler_result25, 0x3CB0000000000000, !dbg !715
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !716
  store double %81, ptr %82, align 8, !dbg !717, !tbaa !165
  br label %109

83:                                               ; preds = %46
  %84 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !718
  br i1 %84, label %85, label %99, !dbg !719

85:                                               ; preds = %83
  %86 = fmul double %0, %0, !dbg !720
  tail call void @llvm.dbg.value(metadata double %86, metadata !621, metadata !DIExpression()), !dbg !721
  %87 = fmul double %86, %86, !dbg !722
  tail call void @llvm.dbg.value(metadata double %87, metadata !624, metadata !DIExpression()), !dbg !721
  %88 = fmul double %0, 2.400000e+01, !dbg !723
  %handler_result26 = call double @fAddHandlerDouble(double %88, double 2.400000e+01), !dbg !724
  %89 = fmul double %86, 1.200000e+01, !dbg !724
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %89), !dbg !725
  %90 = fmul double %86, 4.000000e+00, !dbg !725
  %91 = fmul double %90, %0, !dbg !726
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double %91), !dbg !727
  %handler_result29 = call double @fAddHandlerDouble(double %87, double %handler_result28), !dbg !728
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !625, metadata !DIExpression()), !dbg !721
  %92 = fmul double %handler_result29, 4.000000e+00, !dbg !728
  %93 = fneg double %0, !dbg !729
  %94 = tail call double @exp(double noundef %93) #5, !dbg !730
  %95 = fmul double %92, %94, !dbg !731
  %handler_result30 = call double @fSubHandlerDouble(double 0x4058E2E2562FBB35, double %95), !dbg !732
  %96 = fdiv double %handler_result30, %87, !dbg !732
  store double %96, ptr %1, align 8, !dbg !733, !tbaa !160
  %97 = fmul double %96, 0x3CB0000000000000, !dbg !734
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !735
  store double %97, ptr %98, align 8, !dbg !736, !tbaa !165
  br label %109

99:                                               ; preds = %83
  %100 = fdiv double 0x4058E2E2562FBB35, %0, !dbg !737
  %101 = fdiv double %100, %0, !dbg !739
  %102 = fdiv double %101, %0, !dbg !740
  %103 = fdiv double %102, %0, !dbg !741
  store double %103, ptr %1, align 8, !dbg !742, !tbaa !160
  %104 = fmul double %103, 0x3CB0000000000000, !dbg !743
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !744
  store double %104, ptr %105, align 8, !dbg !745, !tbaa !165
  %106 = tail call double @llvm.fabs.f64(double %103), !dbg !746
  %107 = fcmp olt double %106, 0x10000000000000, !dbg !746
  br i1 %107, label %108, label %109, !dbg !748

108:                                              ; preds = %99
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 412, i32 noundef 15) #5, !dbg !749
  br label %109, !dbg !749

109:                                              ; preds = %108, %99, %85, %74, %36, %8, %4
  %110 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %36 ], [ 0, %74 ], [ 0, %85 ], [ 15, %108 ], [ 0, %99 ], !dbg !751
  ret i32 %110, !dbg !752
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_5_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !753 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !755, metadata !DIExpression()), !dbg !783
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !756, metadata !DIExpression()), !dbg !783
  tail call void @llvm.dbg.value(metadata double 0x4083133F2791AB68, metadata !757, metadata !DIExpression()), !dbg !783
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !758, metadata !DIExpression()), !dbg !783
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !784
  br i1 %3, label %4, label %6, !dbg !785

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !786, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !786
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !786, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 425, i32 noundef 1) #5, !dbg !789
  br label %114, !dbg !789

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !791
  br i1 %7, label %8, label %15, !dbg !792

8:                                                ; preds = %6
  %9 = fmul double %0, 5.000000e+00, !dbg !793
  %10 = fdiv double %9, 1.200000e+01, !dbg !795
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %10), !dbg !796
  %11 = fmul double %9, %0, !dbg !796
  %12 = fdiv double %11, 8.400000e+01, !dbg !797
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %12), !dbg !798
  store double %handler_result1, ptr %1, align 8, !dbg !798, !tbaa !160
  %13 = fmul double %handler_result1, 0x3CB0000000000000, !dbg !799
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !800
  store double %13, ptr %14, align 8, !dbg !801, !tbaa !165
  br label %114, !dbg !802

15:                                               ; preds = %6
  %16 = fcmp ugt double %0, 4.000000e+00, !dbg !803
  br i1 %16, label %46, label %17, !dbg !804

17:                                               ; preds = %15
  %18 = fmul double %0, %0, !dbg !805
  %19 = fmul double %18, 1.250000e-01, !dbg !806
  %handler_result2 = call double @fAddHandlerDouble(double %19, double -1.000000e+00), !dbg !807
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !759, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata !209, metadata !192, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !193, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !810
  %20 = fmul double %handler_result2, 2.000000e+00, !dbg !807
  %handler_result3 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !811
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double -1.000000e+00), !dbg !812
  %21 = fmul double %handler_result4, 5.000000e-01, !dbg !812
  call void @llvm.dbg.value(metadata double %21, metadata !198, metadata !DIExpression()), !dbg !810
  %22 = fmul double %21, 2.000000e+00, !dbg !813
  call void @llvm.dbg.value(metadata double %22, metadata !199, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i32 16, metadata !195, metadata !DIExpression()), !dbg !810
  br label %23, !dbg !814

23:                                               ; preds = %23, %17
  %24 = phi i64 [ 16, %17 ], [ %34, %23 ]
  %25 = phi double [ 0.000000e+00, %17 ], [ %handler_result6, %23 ]
  %26 = phi double [ 0.000000e+00, %17 ], [ %handler_result9, %23 ]
  %27 = phi double [ 0.000000e+00, %17 ], [ %25, %23 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !195, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %25, metadata !196, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %26, metadata !200, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %27, metadata !197, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %25, metadata !201, metadata !DIExpression()), !dbg !815
  %28 = fmul double %22, %25, !dbg !816
  %handler_result5 = call double @fSubHandlerDouble(double %28, double %27), !dbg !817
  %29 = getelementptr inbounds double, ptr @adeb5_data, i64 %24, !dbg !817
  %30 = load double, ptr %29, align 8, !dbg !817, !tbaa !218
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %30), !dbg !818
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !196, metadata !DIExpression()), !dbg !810
  %31 = tail call double @llvm.fabs.f64(double %28), !dbg !818
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !819
  %handler_result7 = call double @fAddHandlerDouble(double %31, double %32), !dbg !820
  %33 = tail call double @llvm.fabs.f64(double %30), !dbg !820
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %33), !dbg !821
  %handler_result9 = call double @fAddHandlerDouble(double %26, double %handler_result8), !dbg !822
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !200, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %25, metadata !197, metadata !DIExpression()), !dbg !810
  %34 = add nsw i64 %24, -1, !dbg !822
  call void @llvm.dbg.value(metadata i64 %34, metadata !195, metadata !DIExpression()), !dbg !810
  %35 = icmp ugt i64 %24, 1, !dbg !823
  br i1 %35, label %23, label %36, !dbg !814, !llvm.loop !824

36:                                               ; preds = %23
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !205, metadata !DIExpression()), !dbg !826
  %37 = fmul double %21, %handler_result6, !dbg !827
  %handler_result10 = call double @fSubHandlerDouble(double %37, double %25), !dbg !828
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FF6AC1652F2C882), !dbg !829
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !196, metadata !DIExpression()), !dbg !810
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !829
  %39 = tail call double @llvm.fabs.f64(double %25), !dbg !830
  %handler_result12 = call double @fAddHandlerDouble(double %39, double %38), !dbg !831
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3FF6AC1652F2C882), !dbg !832
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double %handler_result13), !dbg !833
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !200, metadata !DIExpression()), !dbg !810
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !764, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !809
  %40 = fmul double %handler_result14, 0x3CB0000000000000, !dbg !833
  %handler_result15 = call double @fAddHandlerDouble(double %40, double 3.900000e-18), !dbg !834
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !764, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !809
  %41 = fmul double %0, 5.000000e+00, !dbg !834
  %42 = fdiv double %41, 1.200000e+01, !dbg !835
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result11, double %42), !dbg !836
  store double %handler_result16, ptr %1, align 8, !dbg !836, !tbaa !160
  %43 = fmul double %0, 0x3CD4000000000000, !dbg !837
  %44 = fdiv double %43, 1.200000e+01, !dbg !838
  %handler_result17 = call double @fAddHandlerDouble(double %44, double %handler_result15), !dbg !839
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !839
  store double %handler_result17, ptr %45, align 8, !dbg !840, !tbaa !165
  br label %114

46:                                               ; preds = %15
  %47 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !841
  br i1 %47, label %48, label %85, !dbg !842

48:                                               ; preds = %46
  %49 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !843
  %50 = tail call double @llvm.floor.f64(double %49), !dbg !844
  %51 = fptosi double %50 to i32, !dbg !844
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !765, metadata !DIExpression()), !dbg !845
  %52 = fneg double %0, !dbg !846
  %53 = tail call double @exp(double noundef %52) #5, !dbg !847
  tail call void @llvm.dbg.value(metadata double %53, metadata !768, metadata !DIExpression()), !dbg !845
  tail call void @llvm.dbg.value(metadata double poison, metadata !769, metadata !DIExpression()), !dbg !845
  tail call void @llvm.dbg.value(metadata double poison, metadata !770, metadata !DIExpression()), !dbg !845
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !771, metadata !DIExpression()), !dbg !845
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !772, metadata !DIExpression()), !dbg !845
  %54 = icmp sgt i32 %51, 0, !dbg !848
  br i1 %54, label %55, label %75, !dbg !849

55:                                               ; preds = %48
  %56 = sitofp i32 %51 to double, !dbg !850
  tail call void @llvm.dbg.value(metadata double %56, metadata !770, metadata !DIExpression()), !dbg !845
  %57 = fmul double %56, %0, !dbg !851
  tail call void @llvm.dbg.value(metadata double %57, metadata !769, metadata !DIExpression()), !dbg !845
  br label %58, !dbg !849

58:                                               ; preds = %58, %55
  %59 = phi double [ %handler_result25, %58 ], [ %57, %55 ]
  %60 = phi double [ %handler_result24, %58 ], [ %56, %55 ]
  %61 = phi double [ %handler_result23, %58 ], [ 0.000000e+00, %55 ]
  %62 = phi i32 [ %71, %58 ], [ %51, %55 ]
  tail call void @llvm.dbg.value(metadata double %59, metadata !769, metadata !DIExpression()), !dbg !845
  tail call void @llvm.dbg.value(metadata double %60, metadata !770, metadata !DIExpression()), !dbg !845
  tail call void @llvm.dbg.value(metadata double %61, metadata !771, metadata !DIExpression()), !dbg !845
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !772, metadata !DIExpression()), !dbg !845
  %63 = fdiv double 1.000000e+00, %59, !dbg !852
  tail call void @llvm.dbg.value(metadata double %63, metadata !773, metadata !DIExpression()), !dbg !853
  %64 = fmul double %53, %61, !dbg !854
  tail call void @llvm.dbg.value(metadata double %64, metadata !771, metadata !DIExpression()), !dbg !845
  %65 = fmul double %63, 1.200000e+02, !dbg !855
  %handler_result18 = call double @fAddHandlerDouble(double %65, double 1.200000e+02), !dbg !856
  %66 = fmul double %63, %handler_result18, !dbg !856
  %handler_result19 = call double @fAddHandlerDouble(double %66, double 6.000000e+01), !dbg !857
  %67 = fmul double %63, %handler_result19, !dbg !857
  %handler_result20 = call double @fAddHandlerDouble(double %67, double 2.000000e+01), !dbg !858
  %68 = fmul double %63, %handler_result20, !dbg !858
  %handler_result21 = call double @fAddHandlerDouble(double %68, double 5.000000e+00), !dbg !859
  %69 = fmul double %63, %handler_result21, !dbg !859
  %handler_result22 = call double @fAddHandlerDouble(double %69, double 1.000000e+00), !dbg !860
  %70 = fdiv double %handler_result22, %60, !dbg !860
  %handler_result23 = call double @fAddHandlerDouble(double %64, double %70), !dbg !861
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !771, metadata !DIExpression()), !dbg !845
  %handler_result24 = call double @fAddHandlerDouble(double %60, double -1.000000e+00), !dbg !862
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !770, metadata !DIExpression()), !dbg !845
  %handler_result25 = call double @fSubHandlerDouble(double %59, double %0), !dbg !863
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !769, metadata !DIExpression()), !dbg !845
  %71 = add nsw i32 %62, -1, !dbg !863
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !772, metadata !DIExpression()), !dbg !845
  %72 = icmp ugt i32 %62, 1, !dbg !848
  br i1 %72, label %58, label %73, !dbg !849, !llvm.loop !864

73:                                               ; preds = %58
  %74 = fmul double %handler_result23, 5.000000e+00, !dbg !866
  br label %75, !dbg !867

75:                                               ; preds = %73, %48
  %76 = phi double [ 0.000000e+00, %48 ], [ %74, %73 ], !dbg !845
  %77 = fmul double %0, %0, !dbg !867
  %78 = fmul double %77, %0, !dbg !868
  %79 = fmul double %78, %0, !dbg !869
  %80 = fmul double %79, %0, !dbg !870
  %81 = fdiv double 0x4083133F2791AB68, %80, !dbg !871
  %82 = fmul double %53, %76, !dbg !872
  %handler_result26 = call double @fSubHandlerDouble(double %81, double %82), !dbg !873
  store double %handler_result26, ptr %1, align 8, !dbg !873, !tbaa !160
  %83 = fmul double %handler_result26, 0x3CB0000000000000, !dbg !874
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !875
  store double %83, ptr %84, align 8, !dbg !876, !tbaa !165
  br label %114

85:                                               ; preds = %46
  %86 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !877
  br i1 %86, label %87, label %103, !dbg !878

87:                                               ; preds = %85
  %88 = fmul double %0, %0, !dbg !879
  tail call void @llvm.dbg.value(metadata double %88, metadata !777, metadata !DIExpression()), !dbg !880
  %89 = fmul double %88, %88, !dbg !881
  tail call void @llvm.dbg.value(metadata double %89, metadata !780, metadata !DIExpression()), !dbg !880
  %90 = fmul double %89, %0, !dbg !882
  tail call void @llvm.dbg.value(metadata double %90, metadata !781, metadata !DIExpression()), !dbg !880
  %91 = fmul double %0, 1.200000e+02, !dbg !883
  %handler_result27 = call double @fAddHandlerDouble(double %91, double 1.200000e+02), !dbg !884
  %92 = fmul double %88, 6.000000e+01, !dbg !884
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double %92), !dbg !885
  %93 = fmul double %88, 2.000000e+01, !dbg !885
  %94 = fmul double %93, %0, !dbg !886
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double %94), !dbg !887
  %95 = fmul double %89, 5.000000e+00, !dbg !887
  %handler_result30 = call double @fAddHandlerDouble(double %95, double %handler_result29), !dbg !888
  %handler_result31 = call double @fAddHandlerDouble(double %90, double %handler_result30), !dbg !889
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !782, metadata !DIExpression()), !dbg !880
  %96 = fmul double %handler_result31, 5.000000e+00, !dbg !889
  %97 = fneg double %0, !dbg !890
  %98 = tail call double @exp(double noundef %97) #5, !dbg !891
  %99 = fmul double %96, %98, !dbg !892
  %handler_result32 = call double @fSubHandlerDouble(double 0x4083133F2791AB68, double %99), !dbg !893
  %100 = fdiv double %handler_result32, %90, !dbg !893
  store double %100, ptr %1, align 8, !dbg !894, !tbaa !160
  %101 = fmul double %100, 0x3CB0000000000000, !dbg !895
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !896
  store double %101, ptr %102, align 8, !dbg !897, !tbaa !165
  br label %114

103:                                              ; preds = %85
  %104 = fdiv double 0x4083133F2791AB68, %0, !dbg !898
  %105 = fdiv double %104, %0, !dbg !900
  %106 = fdiv double %105, %0, !dbg !901
  %107 = fdiv double %106, %0, !dbg !902
  %108 = fdiv double %107, %0, !dbg !903
  store double %108, ptr %1, align 8, !dbg !904, !tbaa !160
  %109 = fmul double %108, 0x3CB0000000000000, !dbg !905
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !906
  store double %109, ptr %110, align 8, !dbg !907, !tbaa !165
  %111 = tail call double @llvm.fabs.f64(double %108), !dbg !908
  %112 = fcmp olt double %111, 0x10000000000000, !dbg !908
  br i1 %112, label %113, label %114, !dbg !910

113:                                              ; preds = %103
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 470, i32 noundef 15) #5, !dbg !911
  br label %114, !dbg !911

114:                                              ; preds = %113, %103, %87, %75, %36, %8, %4
  %115 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %36 ], [ 0, %75 ], [ 0, %87 ], [ 15, %113 ], [ 0, %103 ], !dbg !913
  ret i32 %115, !dbg !914
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_6_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !915 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !917, metadata !DIExpression()), !dbg !945
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !918, metadata !DIExpression()), !dbg !945
  tail call void @llvm.dbg.value(metadata double 0x40B10411A201F28E, metadata !919, metadata !DIExpression()), !dbg !945
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !920, metadata !DIExpression()), !dbg !945
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !946
  br i1 %3, label %4, label %6, !dbg !947

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !948, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !948
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !948, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 483, i32 noundef 1) #5, !dbg !951
  br label %119, !dbg !951

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !953
  br i1 %7, label %8, label %15, !dbg !954

8:                                                ; preds = %6
  %9 = fmul double %0, 3.000000e+00, !dbg !955
  %10 = fdiv double %9, 7.000000e+00, !dbg !957
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %10), !dbg !958
  %11 = fmul double %0, %0, !dbg !958
  %12 = fmul double %11, 6.250000e-02, !dbg !959
  %handler_result1 = call double @fAddHandlerDouble(double %12, double %handler_result), !dbg !960
  store double %handler_result1, ptr %1, align 8, !dbg !960, !tbaa !160
  %13 = fmul double %handler_result1, 0x3CB0000000000000, !dbg !961
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !962
  store double %13, ptr %14, align 8, !dbg !963, !tbaa !165
  br label %119, !dbg !964

15:                                               ; preds = %6
  %16 = fcmp ugt double %0, 4.000000e+00, !dbg !965
  br i1 %16, label %46, label %17, !dbg !966

17:                                               ; preds = %15
  %18 = fmul double %0, %0, !dbg !967
  %19 = fmul double %18, 1.250000e-01, !dbg !968
  %handler_result2 = call double @fAddHandlerDouble(double %19, double -1.000000e+00), !dbg !969
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !921, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata !209, metadata !192, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !193, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr undef, metadata !194, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !196, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !972
  %20 = fmul double %handler_result2, 2.000000e+00, !dbg !969
  %handler_result3 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !973
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double -1.000000e+00), !dbg !974
  %21 = fmul double %handler_result4, 5.000000e-01, !dbg !974
  call void @llvm.dbg.value(metadata double %21, metadata !198, metadata !DIExpression()), !dbg !972
  %22 = fmul double %21, 2.000000e+00, !dbg !975
  call void @llvm.dbg.value(metadata double %22, metadata !199, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata i32 16, metadata !195, metadata !DIExpression()), !dbg !972
  br label %23, !dbg !976

23:                                               ; preds = %23, %17
  %24 = phi i64 [ 16, %17 ], [ %34, %23 ]
  %25 = phi double [ 0.000000e+00, %17 ], [ %handler_result6, %23 ]
  %26 = phi double [ 0.000000e+00, %17 ], [ %handler_result9, %23 ]
  %27 = phi double [ 0.000000e+00, %17 ], [ %25, %23 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !195, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double %25, metadata !196, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double %26, metadata !200, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double %27, metadata !197, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double %25, metadata !201, metadata !DIExpression()), !dbg !977
  %28 = fmul double %22, %25, !dbg !978
  %handler_result5 = call double @fSubHandlerDouble(double %28, double %27), !dbg !979
  %29 = getelementptr inbounds double, ptr @adeb6_data, i64 %24, !dbg !979
  %30 = load double, ptr %29, align 8, !dbg !979, !tbaa !218
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %30), !dbg !980
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !196, metadata !DIExpression()), !dbg !972
  %31 = tail call double @llvm.fabs.f64(double %28), !dbg !980
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !981
  %handler_result7 = call double @fAddHandlerDouble(double %31, double %32), !dbg !982
  %33 = tail call double @llvm.fabs.f64(double %30), !dbg !982
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %33), !dbg !983
  %handler_result9 = call double @fAddHandlerDouble(double %26, double %handler_result8), !dbg !984
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !200, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata double %25, metadata !197, metadata !DIExpression()), !dbg !972
  %34 = add nsw i64 %24, -1, !dbg !984
  call void @llvm.dbg.value(metadata i64 %34, metadata !195, metadata !DIExpression()), !dbg !972
  %35 = icmp ugt i64 %24, 1, !dbg !985
  br i1 %35, label %23, label %36, !dbg !976, !llvm.loop !986

36:                                               ; preds = %23
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !205, metadata !DIExpression()), !dbg !988
  %37 = fmul double %21, %handler_result6, !dbg !989
  %handler_result10 = call double @fSubHandlerDouble(double %37, double %25), !dbg !990
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FF6FB3BD4E1C385), !dbg !991
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !196, metadata !DIExpression()), !dbg !972
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !991
  %39 = tail call double @llvm.fabs.f64(double %25), !dbg !992
  %handler_result12 = call double @fAddHandlerDouble(double %39, double %38), !dbg !993
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3FF6FB3BD4E1C385), !dbg !994
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double %handler_result13), !dbg !995
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !200, metadata !DIExpression()), !dbg !972
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !926, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !971
  %40 = fmul double %handler_result14, 0x3CB0000000000000, !dbg !995
  %handler_result15 = call double @fAddHandlerDouble(double %40, double 4.400000e-18), !dbg !996
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !926, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !971
  %41 = fmul double %0, 3.000000e+00, !dbg !996
  %42 = fdiv double %41, 7.000000e+00, !dbg !997
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result11, double %42), !dbg !998
  store double %handler_result16, ptr %1, align 8, !dbg !998, !tbaa !160
  %43 = fmul double %0, 0x3CC8000000000000, !dbg !999
  %44 = fdiv double %43, 7.000000e+00, !dbg !1000
  %handler_result17 = call double @fAddHandlerDouble(double %44, double %handler_result15), !dbg !1001
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1001
  store double %handler_result17, ptr %45, align 8, !dbg !1002, !tbaa !165
  br label %119

46:                                               ; preds = %15
  %47 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !1003
  br i1 %47, label %48, label %87, !dbg !1004

48:                                               ; preds = %46
  %49 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !1005
  %50 = tail call double @llvm.floor.f64(double %49), !dbg !1006
  %51 = fptosi double %50 to i32, !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !927, metadata !DIExpression()), !dbg !1007
  %52 = fneg double %0, !dbg !1008
  %53 = tail call double @exp(double noundef %52) #5, !dbg !1009
  tail call void @llvm.dbg.value(metadata double %53, metadata !930, metadata !DIExpression()), !dbg !1007
  tail call void @llvm.dbg.value(metadata double poison, metadata !931, metadata !DIExpression()), !dbg !1007
  tail call void @llvm.dbg.value(metadata double poison, metadata !932, metadata !DIExpression()), !dbg !1007
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !933, metadata !DIExpression()), !dbg !1007
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !934, metadata !DIExpression()), !dbg !1007
  %54 = icmp sgt i32 %51, 0, !dbg !1010
  br i1 %54, label %55, label %76, !dbg !1011

55:                                               ; preds = %48
  %56 = sitofp i32 %51 to double, !dbg !1012
  tail call void @llvm.dbg.value(metadata double %56, metadata !932, metadata !DIExpression()), !dbg !1007
  %57 = fmul double %56, %0, !dbg !1013
  tail call void @llvm.dbg.value(metadata double %57, metadata !931, metadata !DIExpression()), !dbg !1007
  br label %58, !dbg !1011

58:                                               ; preds = %58, %55
  %59 = phi double [ %handler_result26, %58 ], [ %57, %55 ]
  %60 = phi double [ %handler_result25, %58 ], [ %56, %55 ]
  %61 = phi double [ %handler_result24, %58 ], [ 0.000000e+00, %55 ]
  %62 = phi i32 [ %72, %58 ], [ %51, %55 ]
  tail call void @llvm.dbg.value(metadata double %59, metadata !931, metadata !DIExpression()), !dbg !1007
  tail call void @llvm.dbg.value(metadata double %60, metadata !932, metadata !DIExpression()), !dbg !1007
  tail call void @llvm.dbg.value(metadata double %61, metadata !933, metadata !DIExpression()), !dbg !1007
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !934, metadata !DIExpression()), !dbg !1007
  %63 = fdiv double 1.000000e+00, %59, !dbg !1014
  tail call void @llvm.dbg.value(metadata double %63, metadata !935, metadata !DIExpression()), !dbg !1015
  %64 = fmul double %53, %61, !dbg !1016
  tail call void @llvm.dbg.value(metadata double %64, metadata !933, metadata !DIExpression()), !dbg !1007
  %65 = fmul double %63, 7.200000e+02, !dbg !1017
  %handler_result18 = call double @fAddHandlerDouble(double %65, double 7.200000e+02), !dbg !1018
  %66 = fmul double %63, %handler_result18, !dbg !1018
  %handler_result19 = call double @fAddHandlerDouble(double %66, double 3.600000e+02), !dbg !1019
  %67 = fmul double %63, %handler_result19, !dbg !1019
  %handler_result20 = call double @fAddHandlerDouble(double %67, double 1.200000e+02), !dbg !1020
  %68 = fmul double %63, %handler_result20, !dbg !1020
  %handler_result21 = call double @fAddHandlerDouble(double %68, double 3.000000e+01), !dbg !1021
  %69 = fmul double %63, %handler_result21, !dbg !1021
  %handler_result22 = call double @fAddHandlerDouble(double %69, double 6.000000e+00), !dbg !1022
  %70 = fmul double %63, %handler_result22, !dbg !1022
  %handler_result23 = call double @fAddHandlerDouble(double %70, double 1.000000e+00), !dbg !1023
  %71 = fdiv double %handler_result23, %60, !dbg !1023
  %handler_result24 = call double @fAddHandlerDouble(double %64, double %71), !dbg !1024
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !933, metadata !DIExpression()), !dbg !1007
  %handler_result25 = call double @fAddHandlerDouble(double %60, double -1.000000e+00), !dbg !1025
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !932, metadata !DIExpression()), !dbg !1007
  %handler_result26 = call double @fSubHandlerDouble(double %59, double %0), !dbg !1026
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !931, metadata !DIExpression()), !dbg !1007
  %72 = add nsw i32 %62, -1, !dbg !1026
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !934, metadata !DIExpression()), !dbg !1007
  %73 = icmp ugt i32 %62, 1, !dbg !1010
  br i1 %73, label %58, label %74, !dbg !1011, !llvm.loop !1027

74:                                               ; preds = %58
  %75 = fmul double %handler_result24, 6.000000e+00, !dbg !1029
  br label %76, !dbg !1030

76:                                               ; preds = %74, %48
  %77 = phi double [ 0.000000e+00, %48 ], [ %75, %74 ], !dbg !1007
  %78 = fmul double %0, %0, !dbg !1030
  %79 = fmul double %78, %0, !dbg !1031
  %80 = fmul double %79, %0, !dbg !1032
  %81 = fmul double %80, %0, !dbg !1033
  %82 = fmul double %81, %0, !dbg !1034
  %83 = fdiv double 0x40B10411A201F28E, %82, !dbg !1035
  %84 = fmul double %53, %77, !dbg !1036
  %handler_result27 = call double @fSubHandlerDouble(double %83, double %84), !dbg !1037
  store double %handler_result27, ptr %1, align 8, !dbg !1037, !tbaa !160
  %85 = fmul double %handler_result27, 0x3CB0000000000000, !dbg !1038
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1039
  store double %85, ptr %86, align 8, !dbg !1040, !tbaa !165
  br label %119

87:                                               ; preds = %46
  %88 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !1041
  br i1 %88, label %89, label %107, !dbg !1042

89:                                               ; preds = %87
  %90 = fmul double %0, %0, !dbg !1043
  tail call void @llvm.dbg.value(metadata double %90, metadata !939, metadata !DIExpression()), !dbg !1044
  %91 = fmul double %90, %90, !dbg !1045
  tail call void @llvm.dbg.value(metadata double %91, metadata !942, metadata !DIExpression()), !dbg !1044
  %92 = fmul double %90, %91, !dbg !1046
  tail call void @llvm.dbg.value(metadata double %92, metadata !943, metadata !DIExpression()), !dbg !1044
  %93 = fmul double %0, 7.200000e+02, !dbg !1047
  %handler_result28 = call double @fAddHandlerDouble(double %93, double 7.200000e+02), !dbg !1048
  %94 = fmul double %90, 3.600000e+02, !dbg !1048
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double %94), !dbg !1049
  %95 = fmul double %90, 1.200000e+02, !dbg !1049
  %96 = fmul double %95, %0, !dbg !1050
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double %96), !dbg !1051
  %97 = fmul double %91, 3.000000e+01, !dbg !1051
  %handler_result31 = call double @fAddHandlerDouble(double %97, double %handler_result30), !dbg !1052
  %98 = fmul double %91, 6.000000e+00, !dbg !1052
  %99 = fmul double %98, %0, !dbg !1053
  %handler_result32 = call double @fAddHandlerDouble(double %99, double %handler_result31), !dbg !1054
  %handler_result33 = call double @fAddHandlerDouble(double %92, double %handler_result32), !dbg !1055
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !944, metadata !DIExpression()), !dbg !1044
  %100 = fmul double %handler_result33, 6.000000e+00, !dbg !1055
  %101 = fneg double %0, !dbg !1056
  %102 = tail call double @exp(double noundef %101) #5, !dbg !1057
  %103 = fmul double %100, %102, !dbg !1058
  %handler_result34 = call double @fSubHandlerDouble(double 0x40B10411A201F28E, double %103), !dbg !1059
  %104 = fdiv double %handler_result34, %92, !dbg !1059
  store double %104, ptr %1, align 8, !dbg !1060, !tbaa !160
  %105 = fmul double %104, 0x3CB0000000000000, !dbg !1061
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1062
  store double %105, ptr %106, align 8, !dbg !1063, !tbaa !165
  br label %119

107:                                              ; preds = %87
  %108 = fdiv double 0x40B10411A201F28E, %0, !dbg !1064
  %109 = fdiv double %108, %0, !dbg !1066
  %110 = fdiv double %109, %0, !dbg !1067
  %111 = fdiv double %110, %0, !dbg !1068
  %112 = fdiv double %111, %0, !dbg !1069
  %113 = fdiv double %112, %0, !dbg !1070
  store double %113, ptr %1, align 8, !dbg !1071, !tbaa !160
  %114 = fmul double %113, 0x3CB0000000000000, !dbg !1072
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1073
  store double %114, ptr %115, align 8, !dbg !1074, !tbaa !165
  %116 = tail call double @llvm.fabs.f64(double %113), !dbg !1075
  %117 = fcmp olt double %116, 0x10000000000000, !dbg !1075
  br i1 %117, label %118, label %119, !dbg !1077

118:                                              ; preds = %107
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 528, i32 noundef 15) #5, !dbg !1078
  br label %119, !dbg !1078

119:                                              ; preds = %118, %107, %89, %76, %36, %8, %4
  %120 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %36 ], [ 0, %76 ], [ 0, %89 ], [ 15, %118 ], [ 0, %107 ], !dbg !1080
  ret i32 %120, !dbg !1081
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_1(double noundef %0) local_unnamed_addr #0 !dbg !1082 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1089
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1087, metadata !DIExpression(), metadata !1089, metadata ptr %2, metadata !DIExpression()), !dbg !1090
  tail call void @llvm.dbg.value(metadata double %0, metadata !1086, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !1091
  %3 = call i32 @gsl_sf_debye_1_e(double noundef %0, ptr noundef nonnull %2), !dbg !1091, !range !1092
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1088, metadata !DIExpression()), !dbg !1090
  %4 = icmp eq i32 %3, 0, !dbg !1093
  br i1 %4, label %6, label %5, !dbg !1091

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 540, i32 noundef 1) #5, !dbg !1095
  br label %6, !dbg !1095

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1091, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !1098
  ret double %7, !dbg !1098
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_2(double noundef %0) local_unnamed_addr #0 !dbg !1099 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1104
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1102, metadata !DIExpression(), metadata !1104, metadata ptr %2, metadata !DIExpression()), !dbg !1105
  tail call void @llvm.dbg.value(metadata double %0, metadata !1101, metadata !DIExpression()), !dbg !1105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !1106
  %3 = call i32 @gsl_sf_debye_2_e(double noundef %0, ptr noundef nonnull %2), !dbg !1106, !range !1107
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1103, metadata !DIExpression()), !dbg !1105
  %4 = icmp eq i32 %3, 0, !dbg !1108
  br i1 %4, label %6, label %5, !dbg !1106

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef %3) #5, !dbg !1110
  br label %6, !dbg !1110

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1106, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !1113
  ret double %7, !dbg !1113
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_3(double noundef %0) local_unnamed_addr #0 !dbg !1114 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1119
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1117, metadata !DIExpression(), metadata !1119, metadata ptr %2, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %0, metadata !1116, metadata !DIExpression()), !dbg !1120
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !1121
  %3 = call i32 @gsl_sf_debye_3_e(double noundef %0, ptr noundef nonnull %2), !dbg !1121, !range !1107
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1118, metadata !DIExpression()), !dbg !1120
  %4 = icmp eq i32 %3, 0, !dbg !1122
  br i1 %4, label %6, label %5, !dbg !1121

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 550, i32 noundef %3) #5, !dbg !1124
  br label %6, !dbg !1124

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1121, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !1127
  ret double %7, !dbg !1127
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_4(double noundef %0) local_unnamed_addr #0 !dbg !1128 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1133
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1131, metadata !DIExpression(), metadata !1133, metadata ptr %2, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata double %0, metadata !1130, metadata !DIExpression()), !dbg !1134
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !1135
  %3 = call i32 @gsl_sf_debye_4_e(double noundef %0, ptr noundef nonnull %2), !dbg !1135, !range !1107
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1132, metadata !DIExpression()), !dbg !1134
  %4 = icmp eq i32 %3, 0, !dbg !1136
  br i1 %4, label %6, label %5, !dbg !1135

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 555, i32 noundef %3) #5, !dbg !1138
  br label %6, !dbg !1138

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1135, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !1141
  ret double %7, !dbg !1141
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_5(double noundef %0) local_unnamed_addr #0 !dbg !1142 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1147
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1145, metadata !DIExpression(), metadata !1147, metadata ptr %2, metadata !DIExpression()), !dbg !1148
  tail call void @llvm.dbg.value(metadata double %0, metadata !1144, metadata !DIExpression()), !dbg !1148
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !1149
  %3 = call i32 @gsl_sf_debye_5_e(double noundef %0, ptr noundef nonnull %2), !dbg !1149, !range !1107
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1146, metadata !DIExpression()), !dbg !1148
  %4 = icmp eq i32 %3, 0, !dbg !1150
  br i1 %4, label %6, label %5, !dbg !1149

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 560, i32 noundef %3) #5, !dbg !1152
  br label %6, !dbg !1152

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1149, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !1155
  ret double %7, !dbg !1155
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_6(double noundef %0) local_unnamed_addr #0 !dbg !1156 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1161
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1159, metadata !DIExpression(), metadata !1161, metadata ptr %2, metadata !DIExpression()), !dbg !1162
  tail call void @llvm.dbg.value(metadata double %0, metadata !1158, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !1163
  %3 = call i32 @gsl_sf_debye_6_e(double noundef %0, ptr noundef nonnull %2), !dbg !1163, !range !1107
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1160, metadata !DIExpression()), !dbg !1162
  %4 = icmp eq i32 %3, 0, !dbg !1164
  br i1 %4, label %6, label %5, !dbg !1163

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 565, i32 noundef %3) #5, !dbg !1166
  br label %6, !dbg !1166

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1163, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !1169
  ret double %7, !dbg !1169
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "debye.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "63b540c8856238152305ad2764d9f254")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 29)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 550, type: !19, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 555, type: !19, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !19, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 565, type: !19, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "adeb1_data", scope: !34, file: !2, line: 34, type: !100, isLocal: true, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, globals: !75, splitDebugInlining: false, nameTableKind: None)
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
!75 = !{!0, !7, !12, !17, !22, !24, !26, !28, !30, !76, !32, !89, !91, !96, !98, !103, !105, !107, !109, !111, !113}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "adeb1_cs", scope: !34, file: !2, line: 53, type: !78, isLocal: true, isDefinition: true)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !79, line: 29, baseType: !80)
!79 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !79, line: 22, size: 320, elements: !81)
!81 = !{!82, !85, !86, !87, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !80, file: !79, line: 23, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !80, file: !79, line: 24, baseType: !38, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !80, file: !79, line: 25, baseType: !84, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !80, file: !79, line: 26, baseType: !84, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !80, file: !79, line: 27, baseType: !38, size: 32, offset: 256)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "adeb2_cs", scope: !34, file: !2, line: 80, type: !78, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "adeb2_data", scope: !34, file: !2, line: 60, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1152, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 18)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "adeb3_cs", scope: !34, file: !2, line: 106, type: !78, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "adeb3_data", scope: !34, file: !2, line: 87, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1088, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 17)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "adeb4_cs", scope: !34, file: !2, line: 132, type: !78, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "adeb4_data", scope: !34, file: !2, line: 113, type: !100, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "adeb5_cs", scope: !34, file: !2, line: 158, type: !78, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "adeb5_data", scope: !34, file: !2, line: 139, type: !100, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "adeb6_cs", scope: !34, file: !2, line: 184, type: !78, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "adeb6_data", scope: !34, file: !2, line: 165, type: !100, isLocal: true, isDefinition: true)
!115 = !{i32 7, !"Dwarf Version", i32 5}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 4}
!118 = !{i32 8, !"PIC Level", i32 2}
!119 = !{i32 7, !"PIE Level", i32 2}
!120 = !{i32 7, !"uwtable", i32 2}
!121 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!122 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!123 = distinct !DISubprogram(name: "gsl_sf_debye_1_e", scope: !2, file: !2, line: 194, type: !124, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !134)
!124 = !DISubroutineType(types: !125)
!125 = !{!38, !126, !127}
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !129, line: 41, baseType: !130)
!129 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !129, line: 37, size: 128, elements: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !130, file: !129, line: 38, baseType: !84, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !130, file: !129, line: 39, baseType: !84, size: 64, offset: 64)
!134 = !{!135, !136, !137, !138, !139, !144, !145, !149, !150, !151, !152, !153}
!135 = !DILocalVariable(name: "x", arg: 1, scope: !123, file: !2, line: 194, type: !126)
!136 = !DILocalVariable(name: "result", arg: 2, scope: !123, file: !2, line: 194, type: !127)
!137 = !DILocalVariable(name: "val_infinity", scope: !123, file: !2, line: 196, type: !126)
!138 = !DILocalVariable(name: "xcut", scope: !123, file: !2, line: 197, type: !126)
!139 = !DILocalVariable(name: "t", scope: !140, file: !2, line: 210, type: !126)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 209, column: 21)
!141 = distinct !DILexicalBlock(scope: !142, file: !2, line: 209, column: 11)
!142 = distinct !DILexicalBlock(scope: !143, file: !2, line: 204, column: 11)
!143 = distinct !DILexicalBlock(scope: !123, file: !2, line: 201, column: 6)
!144 = !DILocalVariable(name: "c", scope: !140, file: !2, line: 211, type: !128)
!145 = !DILocalVariable(name: "nexp", scope: !146, file: !2, line: 218, type: !148)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 217, column: 47)
!147 = distinct !DILexicalBlock(scope: !141, file: !2, line: 217, column: 11)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!149 = !DILocalVariable(name: "ex", scope: !146, file: !2, line: 219, type: !126)
!150 = !DILocalVariable(name: "sum", scope: !146, file: !2, line: 220, type: !84)
!151 = !DILocalVariable(name: "xk", scope: !146, file: !2, line: 221, type: !84)
!152 = !DILocalVariable(name: "rk", scope: !146, file: !2, line: 222, type: !84)
!153 = !DILocalVariable(name: "i", scope: !146, file: !2, line: 223, type: !38)
!154 = !DILocation(line: 0, scope: !123)
!155 = !DILocation(line: 201, column: 8, scope: !143)
!156 = !DILocation(line: 201, column: 6, scope: !123)
!157 = !DILocation(line: 202, column: 5, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 202, column: 5)
!159 = distinct !DILexicalBlock(scope: !143, file: !2, line: 201, column: 15)
!160 = !{!161, !162, i64 0}
!161 = !{!"gsl_sf_result_struct", !162, i64 0, !162, i64 8}
!162 = !{!"double", !163, i64 0}
!163 = !{!"omnipotent char", !164, i64 0}
!164 = !{!"Simple C/C++ TBAA"}
!165 = !{!161, !162, i64 8}
!166 = !DILocation(line: 202, column: 5, scope: !167)
!167 = distinct !DILexicalBlock(scope: !158, file: !2, line: 202, column: 5)
!168 = !DILocation(line: 204, column: 13, scope: !142)
!169 = !DILocation(line: 204, column: 11, scope: !143)
!170 = !DILocation(line: 205, column: 29, scope: !171)
!171 = distinct !DILexicalBlock(scope: !142, file: !2, line: 204, column: 41)
!172 = !DILocation(line: 205, column: 35, scope: !171)
!173 = !DILocation(line: 205, column: 37, scope: !171)
!174 = !DILocation(line: 205, column: 17, scope: !171)
!175 = !DILocation(line: 206, column: 37, scope: !171)
!176 = !DILocation(line: 206, column: 35, scope: !171)
!177 = !DILocation(line: 206, column: 13, scope: !171)
!178 = !DILocation(line: 206, column: 17, scope: !171)
!179 = !DILocation(line: 207, column: 5, scope: !171)
!180 = !DILocation(line: 209, column: 13, scope: !141)
!181 = !DILocation(line: 209, column: 11, scope: !142)
!182 = !DILocation(line: 210, column: 23, scope: !140)
!183 = !DILocation(line: 210, column: 25, scope: !140)
!184 = !DILocation(line: 11, column: 19, scope: !185, inlinedAt: !207)
!185 = distinct !DISubprogram(name: "cheb_eval_e", scope: !186, file: !186, line: 3, type: !187, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !191)
!186 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!187 = !DISubroutineType(types: !188)
!188 = !{!38, !189, !126, !127}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !205}
!192 = !DILocalVariable(name: "cs", arg: 1, scope: !185, file: !186, line: 3, type: !189)
!193 = !DILocalVariable(name: "x", arg: 2, scope: !185, file: !186, line: 4, type: !126)
!194 = !DILocalVariable(name: "result", arg: 3, scope: !185, file: !186, line: 5, type: !127)
!195 = !DILocalVariable(name: "j", scope: !185, file: !186, line: 7, type: !38)
!196 = !DILocalVariable(name: "d", scope: !185, file: !186, line: 8, type: !84)
!197 = !DILocalVariable(name: "dd", scope: !185, file: !186, line: 9, type: !84)
!198 = !DILocalVariable(name: "y", scope: !185, file: !186, line: 11, type: !84)
!199 = !DILocalVariable(name: "y2", scope: !185, file: !186, line: 12, type: !84)
!200 = !DILocalVariable(name: "e", scope: !185, file: !186, line: 14, type: !84)
!201 = !DILocalVariable(name: "temp", scope: !202, file: !186, line: 17, type: !84)
!202 = distinct !DILexicalBlock(scope: !203, file: !186, line: 16, column: 33)
!203 = distinct !DILexicalBlock(scope: !204, file: !186, line: 16, column: 3)
!204 = distinct !DILexicalBlock(scope: !185, file: !186, line: 16, column: 3)
!205 = !DILocalVariable(name: "temp", scope: !206, file: !186, line: 24, type: !84)
!206 = distinct !DILexicalBlock(scope: !185, file: !186, line: 23, column: 3)
!207 = distinct !DILocation(line: 212, column: 5, scope: !140)
!208 = !DILocation(line: 0, scope: !140)
!209 = !{}
!210 = !DILocation(line: 0, scope: !185, inlinedAt: !207)
!211 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !207)
!212 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !207)
!213 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !207)
!214 = !DILocation(line: 16, column: 3, scope: !204, inlinedAt: !207)
!215 = !DILocation(line: 0, scope: !202, inlinedAt: !207)
!216 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !207)
!217 = !DILocation(line: 18, column: 21, scope: !202, inlinedAt: !207)
!218 = !{!162, !162, i64 0}
!219 = !DILocation(line: 19, column: 10, scope: !202, inlinedAt: !207)
!220 = !DILocation(line: 19, column: 26, scope: !202, inlinedAt: !207)
!221 = !DILocation(line: 19, column: 37, scope: !202, inlinedAt: !207)
!222 = !DILocation(line: 19, column: 7, scope: !202, inlinedAt: !207)
!223 = !DILocation(line: 16, column: 29, scope: !203, inlinedAt: !207)
!224 = !DILocation(line: 16, column: 23, scope: !203, inlinedAt: !207)
!225 = distinct !{!225, !214, !226, !227}
!226 = !DILocation(line: 21, column: 3, scope: !204, inlinedAt: !207)
!227 = !{!"llvm.loop.mustprogress"}
!228 = !DILocation(line: 0, scope: !206, inlinedAt: !207)
!229 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !207)
!230 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !207)
!231 = !DILocation(line: 26, column: 10, scope: !206, inlinedAt: !207)
!232 = !DILocation(line: 26, column: 25, scope: !206, inlinedAt: !207)
!233 = !DILocation(line: 26, column: 34, scope: !206, inlinedAt: !207)
!234 = !DILocation(line: 26, column: 7, scope: !206, inlinedAt: !207)
!235 = !DILocation(line: 30, column: 33, scope: !185, inlinedAt: !207)
!236 = !DILocation(line: 213, column: 32, scope: !140)
!237 = !DILocation(line: 213, column: 17, scope: !140)
!238 = !DILocation(line: 214, column: 36, scope: !140)
!239 = !DILocation(line: 214, column: 13, scope: !140)
!240 = !DILocation(line: 214, column: 17, scope: !140)
!241 = !DILocation(line: 217, column: 13, scope: !147)
!242 = !DILocation(line: 217, column: 11, scope: !141)
!243 = !DILocation(line: 218, column: 32, scope: !146)
!244 = !DILocation(line: 218, column: 22, scope: !146)
!245 = !DILocation(line: 0, scope: !146)
!246 = !DILocation(line: 219, column: 28, scope: !146)
!247 = !DILocation(line: 219, column: 24, scope: !146)
!248 = !DILocation(line: 224, column: 18, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 224, column: 5)
!250 = distinct !DILexicalBlock(scope: !146, file: !2, line: 224, column: 5)
!251 = !DILocation(line: 224, column: 5, scope: !250)
!252 = !DILocation(line: 221, column: 18, scope: !146)
!253 = !DILocation(line: 221, column: 23, scope: !146)
!254 = !DILocation(line: 225, column: 11, scope: !255)
!255 = distinct !DILexicalBlock(scope: !249, file: !2, line: 224, column: 28)
!256 = !DILocation(line: 226, column: 24, scope: !255)
!257 = !DILocation(line: 226, column: 28, scope: !255)
!258 = !DILocation(line: 227, column: 10, scope: !255)
!259 = !DILocation(line: 228, column: 10, scope: !255)
!260 = !DILocation(line: 224, column: 24, scope: !249)
!261 = distinct !{!261, !251, !262, !227}
!262 = !DILocation(line: 229, column: 5, scope: !250)
!263 = !DILocation(line: 230, column: 31, scope: !146)
!264 = !DILocation(line: 230, column: 39, scope: !146)
!265 = !DILocation(line: 230, column: 17, scope: !146)
!266 = !DILocation(line: 231, column: 37, scope: !146)
!267 = !DILocation(line: 231, column: 35, scope: !146)
!268 = !DILocation(line: 231, column: 13, scope: !146)
!269 = !DILocation(line: 231, column: 17, scope: !146)
!270 = !DILocation(line: 234, column: 13, scope: !271)
!271 = distinct !DILexicalBlock(scope: !147, file: !2, line: 234, column: 11)
!272 = !DILocation(line: 234, column: 11, scope: !147)
!273 = !DILocation(line: 235, column: 39, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !2, line: 234, column: 21)
!275 = !DILocation(line: 235, column: 35, scope: !274)
!276 = !DILocation(line: 235, column: 42, scope: !274)
!277 = !DILocation(line: 235, column: 52, scope: !274)
!278 = !DILocation(line: 235, column: 17, scope: !274)
!279 = !DILocation(line: 236, column: 37, scope: !274)
!280 = !DILocation(line: 236, column: 35, scope: !274)
!281 = !DILocation(line: 236, column: 13, scope: !274)
!282 = !DILocation(line: 236, column: 17, scope: !274)
!283 = !DILocation(line: 237, column: 5, scope: !274)
!284 = !DILocation(line: 240, column: 31, scope: !285)
!285 = distinct !DILexicalBlock(scope: !271, file: !2, line: 239, column: 8)
!286 = !DILocation(line: 240, column: 17, scope: !285)
!287 = !DILocation(line: 241, column: 37, scope: !285)
!288 = !DILocation(line: 241, column: 35, scope: !285)
!289 = !DILocation(line: 241, column: 13, scope: !285)
!290 = !DILocation(line: 241, column: 17, scope: !285)
!291 = !DILocation(line: 242, column: 5, scope: !285)
!292 = !DILocation(line: 0, scope: !143)
!293 = !DILocation(line: 244, column: 1, scope: !123)
!294 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297, !297, !38, !38}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!299 = !DISubprogram(name: "exp", scope: !300, file: !300, line: 95, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!301 = !DISubroutineType(types: !302)
!302 = !{!84, !84}
!303 = distinct !DISubprogram(name: "gsl_sf_debye_2_e", scope: !2, file: !2, line: 247, type: !124, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !304)
!304 = !{!305, !306, !307, !308, !309, !314, !315, !318, !319, !320, !321, !322, !323, !326}
!305 = !DILocalVariable(name: "x", arg: 1, scope: !303, file: !2, line: 247, type: !126)
!306 = !DILocalVariable(name: "result", arg: 2, scope: !303, file: !2, line: 247, type: !127)
!307 = !DILocalVariable(name: "val_infinity", scope: !303, file: !2, line: 249, type: !126)
!308 = !DILocalVariable(name: "xcut", scope: !303, file: !2, line: 250, type: !126)
!309 = !DILocalVariable(name: "t", scope: !310, file: !2, line: 263, type: !126)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 262, column: 21)
!311 = distinct !DILexicalBlock(scope: !312, file: !2, line: 262, column: 11)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 257, column: 11)
!313 = distinct !DILexicalBlock(scope: !303, file: !2, line: 254, column: 6)
!314 = !DILocalVariable(name: "c", scope: !310, file: !2, line: 264, type: !128)
!315 = !DILocalVariable(name: "nexp", scope: !316, file: !2, line: 271, type: !148)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 270, column: 47)
!317 = distinct !DILexicalBlock(scope: !311, file: !2, line: 270, column: 11)
!318 = !DILocalVariable(name: "ex", scope: !316, file: !2, line: 272, type: !126)
!319 = !DILocalVariable(name: "xk", scope: !316, file: !2, line: 273, type: !84)
!320 = !DILocalVariable(name: "rk", scope: !316, file: !2, line: 274, type: !84)
!321 = !DILocalVariable(name: "sum", scope: !316, file: !2, line: 275, type: !84)
!322 = !DILocalVariable(name: "i", scope: !316, file: !2, line: 276, type: !38)
!323 = !DILocalVariable(name: "x2", scope: !324, file: !2, line: 288, type: !126)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 287, column: 21)
!325 = distinct !DILexicalBlock(scope: !317, file: !2, line: 287, column: 11)
!326 = !DILocalVariable(name: "sum", scope: !324, file: !2, line: 289, type: !126)
!327 = !DILocation(line: 0, scope: !303)
!328 = !DILocation(line: 254, column: 8, scope: !313)
!329 = !DILocation(line: 254, column: 6, scope: !303)
!330 = !DILocation(line: 255, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 255, column: 5)
!332 = distinct !DILexicalBlock(scope: !313, file: !2, line: 254, column: 15)
!333 = !DILocation(line: 255, column: 5, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !2, line: 255, column: 5)
!335 = !DILocation(line: 257, column: 13, scope: !312)
!336 = !DILocation(line: 257, column: 11, scope: !313)
!337 = !DILocation(line: 258, column: 26, scope: !338)
!338 = distinct !DILexicalBlock(scope: !312, file: !2, line: 257, column: 49)
!339 = !DILocation(line: 258, column: 34, scope: !338)
!340 = !DILocation(line: 258, column: 36, scope: !338)
!341 = !DILocation(line: 258, column: 17, scope: !338)
!342 = !DILocation(line: 259, column: 35, scope: !338)
!343 = !DILocation(line: 259, column: 13, scope: !338)
!344 = !DILocation(line: 259, column: 17, scope: !338)
!345 = !DILocation(line: 260, column: 5, scope: !338)
!346 = !DILocation(line: 262, column: 13, scope: !311)
!347 = !DILocation(line: 262, column: 11, scope: !312)
!348 = !DILocation(line: 263, column: 23, scope: !310)
!349 = !DILocation(line: 263, column: 25, scope: !310)
!350 = !DILocation(line: 11, column: 19, scope: !185, inlinedAt: !351)
!351 = distinct !DILocation(line: 265, column: 5, scope: !310)
!352 = !DILocation(line: 0, scope: !310)
!353 = !DILocation(line: 0, scope: !185, inlinedAt: !351)
!354 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !351)
!355 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !351)
!356 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !351)
!357 = !DILocation(line: 16, column: 3, scope: !204, inlinedAt: !351)
!358 = !DILocation(line: 0, scope: !202, inlinedAt: !351)
!359 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !351)
!360 = !DILocation(line: 18, column: 21, scope: !202, inlinedAt: !351)
!361 = !DILocation(line: 19, column: 10, scope: !202, inlinedAt: !351)
!362 = !DILocation(line: 19, column: 26, scope: !202, inlinedAt: !351)
!363 = !DILocation(line: 19, column: 37, scope: !202, inlinedAt: !351)
!364 = !DILocation(line: 19, column: 7, scope: !202, inlinedAt: !351)
!365 = !DILocation(line: 16, column: 29, scope: !203, inlinedAt: !351)
!366 = !DILocation(line: 16, column: 23, scope: !203, inlinedAt: !351)
!367 = distinct !{!367, !357, !368, !227}
!368 = !DILocation(line: 21, column: 3, scope: !204, inlinedAt: !351)
!369 = !DILocation(line: 0, scope: !206, inlinedAt: !351)
!370 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !351)
!371 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !351)
!372 = !DILocation(line: 26, column: 10, scope: !206, inlinedAt: !351)
!373 = !DILocation(line: 26, column: 25, scope: !206, inlinedAt: !351)
!374 = !DILocation(line: 26, column: 34, scope: !206, inlinedAt: !351)
!375 = !DILocation(line: 26, column: 7, scope: !206, inlinedAt: !351)
!376 = !DILocation(line: 30, column: 33, scope: !185, inlinedAt: !351)
!377 = !DILocation(line: 266, column: 28, scope: !310)
!378 = !DILocation(line: 266, column: 17, scope: !310)
!379 = !DILocation(line: 267, column: 43, scope: !310)
!380 = !DILocation(line: 267, column: 46, scope: !310)
!381 = !DILocation(line: 267, column: 13, scope: !310)
!382 = !DILocation(line: 267, column: 17, scope: !310)
!383 = !DILocation(line: 270, column: 13, scope: !317)
!384 = !DILocation(line: 270, column: 11, scope: !311)
!385 = !DILocation(line: 271, column: 32, scope: !316)
!386 = !DILocation(line: 271, column: 22, scope: !316)
!387 = !DILocation(line: 0, scope: !316)
!388 = !DILocation(line: 272, column: 28, scope: !316)
!389 = !DILocation(line: 272, column: 24, scope: !316)
!390 = !DILocation(line: 277, column: 18, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 277, column: 5)
!392 = distinct !DILexicalBlock(scope: !316, file: !2, line: 277, column: 5)
!393 = !DILocation(line: 277, column: 5, scope: !392)
!394 = !DILocation(line: 273, column: 18, scope: !316)
!395 = !DILocation(line: 273, column: 23, scope: !316)
!396 = !DILocation(line: 278, column: 11, scope: !397)
!397 = distinct !DILexicalBlock(scope: !391, file: !2, line: 277, column: 28)
!398 = !DILocation(line: 279, column: 24, scope: !397)
!399 = !DILocation(line: 279, column: 37, scope: !397)
!400 = !DILocation(line: 279, column: 33, scope: !397)
!401 = !DILocation(line: 279, column: 43, scope: !397)
!402 = !DILocation(line: 280, column: 10, scope: !397)
!403 = !DILocation(line: 281, column: 10, scope: !397)
!404 = !DILocation(line: 277, column: 24, scope: !391)
!405 = distinct !{!405, !393, !406, !227}
!406 = !DILocation(line: 282, column: 5, scope: !392)
!407 = !DILocation(line: 279, column: 11, scope: !397)
!408 = !DILocation(line: 283, column: 44, scope: !316)
!409 = !DILocation(line: 283, column: 34, scope: !316)
!410 = !DILocation(line: 283, column: 31, scope: !316)
!411 = !DILocation(line: 283, column: 50, scope: !316)
!412 = !DILocation(line: 283, column: 17, scope: !316)
!413 = !DILocation(line: 284, column: 37, scope: !316)
!414 = !DILocation(line: 284, column: 35, scope: !316)
!415 = !DILocation(line: 284, column: 13, scope: !316)
!416 = !DILocation(line: 284, column: 17, scope: !316)
!417 = !DILocation(line: 287, column: 13, scope: !325)
!418 = !DILocation(line: 287, column: 11, scope: !317)
!419 = !DILocation(line: 288, column: 25, scope: !324)
!420 = !DILocation(line: 0, scope: !324)
!421 = !DILocation(line: 289, column: 33, scope: !324)
!422 = !DILocation(line: 289, column: 36, scope: !324)
!423 = !DILocation(line: 290, column: 39, scope: !324)
!424 = !DILocation(line: 290, column: 51, scope: !324)
!425 = !DILocation(line: 290, column: 47, scope: !324)
!426 = !DILocation(line: 290, column: 45, scope: !324)
!427 = !DILocation(line: 290, column: 56, scope: !324)
!428 = !DILocation(line: 290, column: 17, scope: !324)
!429 = !DILocation(line: 291, column: 37, scope: !324)
!430 = !DILocation(line: 291, column: 35, scope: !324)
!431 = !DILocation(line: 291, column: 13, scope: !324)
!432 = !DILocation(line: 291, column: 17, scope: !324)
!433 = !DILocation(line: 295, column: 32, scope: !434)
!434 = distinct !DILexicalBlock(scope: !325, file: !2, line: 294, column: 8)
!435 = !DILocation(line: 295, column: 35, scope: !434)
!436 = !DILocation(line: 295, column: 17, scope: !434)
!437 = !DILocation(line: 296, column: 35, scope: !434)
!438 = !DILocation(line: 296, column: 13, scope: !434)
!439 = !DILocation(line: 296, column: 17, scope: !434)
!440 = !DILocation(line: 297, column: 5, scope: !441)
!441 = distinct !DILexicalBlock(scope: !434, file: !2, line: 297, column: 5)
!442 = !DILocation(line: 297, column: 5, scope: !434)
!443 = !DILocation(line: 297, column: 5, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !2, line: 297, column: 5)
!445 = !DILocation(line: 0, scope: !313)
!446 = !DILocation(line: 300, column: 1, scope: !303)
!447 = distinct !DISubprogram(name: "gsl_sf_debye_3_e", scope: !2, file: !2, line: 303, type: !124, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !448)
!448 = !{!449, !450, !451, !452, !453, !458, !459, !462, !463, !464, !465, !466, !467, !471, !474}
!449 = !DILocalVariable(name: "x", arg: 1, scope: !447, file: !2, line: 303, type: !126)
!450 = !DILocalVariable(name: "result", arg: 2, scope: !447, file: !2, line: 303, type: !127)
!451 = !DILocalVariable(name: "val_infinity", scope: !447, file: !2, line: 305, type: !126)
!452 = !DILocalVariable(name: "xcut", scope: !447, file: !2, line: 306, type: !126)
!453 = !DILocalVariable(name: "t", scope: !454, file: !2, line: 319, type: !126)
!454 = distinct !DILexicalBlock(scope: !455, file: !2, line: 318, column: 21)
!455 = distinct !DILexicalBlock(scope: !456, file: !2, line: 318, column: 11)
!456 = distinct !DILexicalBlock(scope: !457, file: !2, line: 313, column: 11)
!457 = distinct !DILexicalBlock(scope: !447, file: !2, line: 310, column: 6)
!458 = !DILocalVariable(name: "c", scope: !454, file: !2, line: 320, type: !128)
!459 = !DILocalVariable(name: "nexp", scope: !460, file: !2, line: 327, type: !148)
!460 = distinct !DILexicalBlock(scope: !461, file: !2, line: 326, column: 47)
!461 = distinct !DILexicalBlock(scope: !455, file: !2, line: 326, column: 11)
!462 = !DILocalVariable(name: "ex", scope: !460, file: !2, line: 328, type: !126)
!463 = !DILocalVariable(name: "xk", scope: !460, file: !2, line: 329, type: !84)
!464 = !DILocalVariable(name: "rk", scope: !460, file: !2, line: 330, type: !84)
!465 = !DILocalVariable(name: "sum", scope: !460, file: !2, line: 331, type: !84)
!466 = !DILocalVariable(name: "i", scope: !460, file: !2, line: 332, type: !38)
!467 = !DILocalVariable(name: "xk_inv", scope: !468, file: !2, line: 334, type: !84)
!468 = distinct !DILexicalBlock(scope: !469, file: !2, line: 333, column: 28)
!469 = distinct !DILexicalBlock(scope: !470, file: !2, line: 333, column: 5)
!470 = distinct !DILexicalBlock(scope: !460, file: !2, line: 333, column: 5)
!471 = !DILocalVariable(name: "x3", scope: !472, file: !2, line: 345, type: !126)
!472 = distinct !DILexicalBlock(scope: !473, file: !2, line: 344, column: 21)
!473 = distinct !DILexicalBlock(scope: !461, file: !2, line: 344, column: 11)
!474 = !DILocalVariable(name: "sum", scope: !472, file: !2, line: 346, type: !126)
!475 = !DILocation(line: 0, scope: !447)
!476 = !DILocation(line: 310, column: 8, scope: !457)
!477 = !DILocation(line: 310, column: 6, scope: !447)
!478 = !DILocation(line: 311, column: 5, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !2, line: 311, column: 5)
!480 = distinct !DILexicalBlock(scope: !457, file: !2, line: 310, column: 15)
!481 = !DILocation(line: 311, column: 5, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !2, line: 311, column: 5)
!483 = !DILocation(line: 313, column: 13, scope: !456)
!484 = !DILocation(line: 313, column: 11, scope: !457)
!485 = !DILocation(line: 314, column: 28, scope: !486)
!486 = distinct !DILexicalBlock(scope: !456, file: !2, line: 313, column: 49)
!487 = !DILocation(line: 314, column: 30, scope: !486)
!488 = !DILocation(line: 314, column: 38, scope: !486)
!489 = !DILocation(line: 314, column: 40, scope: !486)
!490 = !DILocation(line: 314, column: 17, scope: !486)
!491 = !DILocation(line: 315, column: 35, scope: !486)
!492 = !DILocation(line: 315, column: 13, scope: !486)
!493 = !DILocation(line: 315, column: 17, scope: !486)
!494 = !DILocation(line: 316, column: 5, scope: !486)
!495 = !DILocation(line: 318, column: 13, scope: !455)
!496 = !DILocation(line: 318, column: 11, scope: !456)
!497 = !DILocation(line: 319, column: 23, scope: !454)
!498 = !DILocation(line: 319, column: 25, scope: !454)
!499 = !DILocation(line: 11, column: 19, scope: !185, inlinedAt: !500)
!500 = distinct !DILocation(line: 321, column: 5, scope: !454)
!501 = !DILocation(line: 0, scope: !454)
!502 = !DILocation(line: 0, scope: !185, inlinedAt: !500)
!503 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !500)
!504 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !500)
!505 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !500)
!506 = !DILocation(line: 16, column: 3, scope: !204, inlinedAt: !500)
!507 = !DILocation(line: 0, scope: !202, inlinedAt: !500)
!508 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !500)
!509 = !DILocation(line: 18, column: 21, scope: !202, inlinedAt: !500)
!510 = !DILocation(line: 19, column: 10, scope: !202, inlinedAt: !500)
!511 = !DILocation(line: 19, column: 26, scope: !202, inlinedAt: !500)
!512 = !DILocation(line: 19, column: 37, scope: !202, inlinedAt: !500)
!513 = !DILocation(line: 19, column: 7, scope: !202, inlinedAt: !500)
!514 = !DILocation(line: 16, column: 29, scope: !203, inlinedAt: !500)
!515 = !DILocation(line: 16, column: 23, scope: !203, inlinedAt: !500)
!516 = distinct !{!516, !506, !517, !227}
!517 = !DILocation(line: 21, column: 3, scope: !204, inlinedAt: !500)
!518 = !DILocation(line: 0, scope: !206, inlinedAt: !500)
!519 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !500)
!520 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !500)
!521 = !DILocation(line: 26, column: 10, scope: !206, inlinedAt: !500)
!522 = !DILocation(line: 26, column: 25, scope: !206, inlinedAt: !500)
!523 = !DILocation(line: 26, column: 34, scope: !206, inlinedAt: !500)
!524 = !DILocation(line: 26, column: 7, scope: !206, inlinedAt: !500)
!525 = !DILocation(line: 30, column: 33, scope: !185, inlinedAt: !500)
!526 = !DILocation(line: 322, column: 32, scope: !454)
!527 = !DILocation(line: 322, column: 17, scope: !454)
!528 = !DILocation(line: 323, column: 50, scope: !454)
!529 = !DILocation(line: 323, column: 13, scope: !454)
!530 = !DILocation(line: 323, column: 17, scope: !454)
!531 = !DILocation(line: 326, column: 13, scope: !461)
!532 = !DILocation(line: 326, column: 11, scope: !455)
!533 = !DILocation(line: 327, column: 32, scope: !460)
!534 = !DILocation(line: 327, column: 22, scope: !460)
!535 = !DILocation(line: 0, scope: !460)
!536 = !DILocation(line: 328, column: 28, scope: !460)
!537 = !DILocation(line: 328, column: 24, scope: !460)
!538 = !DILocation(line: 333, column: 18, scope: !469)
!539 = !DILocation(line: 333, column: 5, scope: !470)
!540 = !DILocation(line: 329, column: 18, scope: !460)
!541 = !DILocation(line: 329, column: 23, scope: !460)
!542 = !DILocation(line: 334, column: 26, scope: !468)
!543 = !DILocation(line: 0, scope: !468)
!544 = !DILocation(line: 335, column: 11, scope: !468)
!545 = !DILocation(line: 336, column: 20, scope: !468)
!546 = !DILocation(line: 336, column: 34, scope: !468)
!547 = !DILocation(line: 336, column: 48, scope: !468)
!548 = !DILocation(line: 336, column: 63, scope: !468)
!549 = !DILocation(line: 337, column: 10, scope: !468)
!550 = !DILocation(line: 338, column: 10, scope: !468)
!551 = !DILocation(line: 333, column: 24, scope: !469)
!552 = distinct !{!552, !539, !553, !227}
!553 = !DILocation(line: 339, column: 5, scope: !470)
!554 = !DILocation(line: 336, column: 11, scope: !468)
!555 = !DILocation(line: 340, column: 46, scope: !460)
!556 = !DILocation(line: 340, column: 34, scope: !460)
!557 = !DILocation(line: 340, column: 36, scope: !460)
!558 = !DILocation(line: 340, column: 31, scope: !460)
!559 = !DILocation(line: 340, column: 52, scope: !460)
!560 = !DILocation(line: 340, column: 17, scope: !460)
!561 = !DILocation(line: 341, column: 35, scope: !460)
!562 = !DILocation(line: 341, column: 13, scope: !460)
!563 = !DILocation(line: 341, column: 17, scope: !460)
!564 = !DILocation(line: 344, column: 13, scope: !473)
!565 = !DILocation(line: 344, column: 11, scope: !461)
!566 = !DILocation(line: 345, column: 24, scope: !472)
!567 = !DILocation(line: 345, column: 26, scope: !472)
!568 = !DILocation(line: 0, scope: !472)
!569 = !DILocation(line: 346, column: 33, scope: !472)
!570 = !DILocation(line: 346, column: 41, scope: !472)
!571 = !DILocation(line: 346, column: 43, scope: !472)
!572 = !DILocation(line: 346, column: 46, scope: !472)
!573 = !DILocation(line: 347, column: 39, scope: !472)
!574 = !DILocation(line: 347, column: 51, scope: !472)
!575 = !DILocation(line: 347, column: 47, scope: !472)
!576 = !DILocation(line: 347, column: 45, scope: !472)
!577 = !DILocation(line: 347, column: 56, scope: !472)
!578 = !DILocation(line: 347, column: 17, scope: !472)
!579 = !DILocation(line: 348, column: 35, scope: !472)
!580 = !DILocation(line: 348, column: 13, scope: !472)
!581 = !DILocation(line: 348, column: 17, scope: !472)
!582 = !DILocation(line: 352, column: 33, scope: !583)
!583 = distinct !DILexicalBlock(scope: !473, file: !2, line: 351, column: 8)
!584 = !DILocation(line: 352, column: 36, scope: !583)
!585 = !DILocation(line: 352, column: 39, scope: !583)
!586 = !DILocation(line: 352, column: 17, scope: !583)
!587 = !DILocation(line: 353, column: 35, scope: !583)
!588 = !DILocation(line: 353, column: 13, scope: !583)
!589 = !DILocation(line: 353, column: 17, scope: !583)
!590 = !DILocation(line: 354, column: 5, scope: !591)
!591 = distinct !DILexicalBlock(scope: !583, file: !2, line: 354, column: 5)
!592 = !DILocation(line: 354, column: 5, scope: !583)
!593 = !DILocation(line: 354, column: 5, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !2, line: 354, column: 5)
!595 = !DILocation(line: 0, scope: !457)
!596 = !DILocation(line: 357, column: 1, scope: !447)
!597 = distinct !DISubprogram(name: "gsl_sf_debye_4_e", scope: !2, file: !2, line: 360, type: !124, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !598)
!598 = !{!599, !600, !601, !602, !603, !608, !609, !612, !613, !614, !615, !616, !617, !621, !624, !625}
!599 = !DILocalVariable(name: "x", arg: 1, scope: !597, file: !2, line: 360, type: !126)
!600 = !DILocalVariable(name: "result", arg: 2, scope: !597, file: !2, line: 360, type: !127)
!601 = !DILocalVariable(name: "val_infinity", scope: !597, file: !2, line: 362, type: !126)
!602 = !DILocalVariable(name: "xcut", scope: !597, file: !2, line: 363, type: !126)
!603 = !DILocalVariable(name: "t", scope: !604, file: !2, line: 376, type: !126)
!604 = distinct !DILexicalBlock(scope: !605, file: !2, line: 375, column: 21)
!605 = distinct !DILexicalBlock(scope: !606, file: !2, line: 375, column: 11)
!606 = distinct !DILexicalBlock(scope: !607, file: !2, line: 370, column: 11)
!607 = distinct !DILexicalBlock(scope: !597, file: !2, line: 367, column: 6)
!608 = !DILocalVariable(name: "c", scope: !604, file: !2, line: 377, type: !128)
!609 = !DILocalVariable(name: "nexp", scope: !610, file: !2, line: 384, type: !148)
!610 = distinct !DILexicalBlock(scope: !611, file: !2, line: 383, column: 47)
!611 = distinct !DILexicalBlock(scope: !605, file: !2, line: 383, column: 11)
!612 = !DILocalVariable(name: "ex", scope: !610, file: !2, line: 385, type: !126)
!613 = !DILocalVariable(name: "xk", scope: !610, file: !2, line: 386, type: !84)
!614 = !DILocalVariable(name: "rk", scope: !610, file: !2, line: 387, type: !84)
!615 = !DILocalVariable(name: "sum", scope: !610, file: !2, line: 388, type: !84)
!616 = !DILocalVariable(name: "i", scope: !610, file: !2, line: 389, type: !38)
!617 = !DILocalVariable(name: "xk_inv", scope: !618, file: !2, line: 391, type: !84)
!618 = distinct !DILexicalBlock(scope: !619, file: !2, line: 390, column: 28)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 390, column: 5)
!620 = distinct !DILexicalBlock(scope: !610, file: !2, line: 390, column: 5)
!621 = !DILocalVariable(name: "x2", scope: !622, file: !2, line: 402, type: !126)
!622 = distinct !DILexicalBlock(scope: !623, file: !2, line: 401, column: 21)
!623 = distinct !DILexicalBlock(scope: !611, file: !2, line: 401, column: 11)
!624 = !DILocalVariable(name: "x4", scope: !622, file: !2, line: 403, type: !126)
!625 = !DILocalVariable(name: "sum", scope: !622, file: !2, line: 404, type: !126)
!626 = !DILocation(line: 0, scope: !597)
!627 = !DILocation(line: 367, column: 8, scope: !607)
!628 = !DILocation(line: 367, column: 6, scope: !597)
!629 = !DILocation(line: 368, column: 5, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !2, line: 368, column: 5)
!631 = distinct !DILexicalBlock(scope: !607, file: !2, line: 367, column: 15)
!632 = !DILocation(line: 368, column: 5, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !2, line: 368, column: 5)
!634 = !DILocation(line: 370, column: 13, scope: !606)
!635 = !DILocation(line: 370, column: 11, scope: !607)
!636 = !DILocation(line: 371, column: 28, scope: !637)
!637 = distinct !DILexicalBlock(scope: !606, file: !2, line: 370, column: 49)
!638 = !DILocation(line: 371, column: 30, scope: !637)
!639 = !DILocation(line: 371, column: 38, scope: !637)
!640 = !DILocation(line: 371, column: 40, scope: !637)
!641 = !DILocation(line: 371, column: 17, scope: !637)
!642 = !DILocation(line: 372, column: 35, scope: !637)
!643 = !DILocation(line: 372, column: 13, scope: !637)
!644 = !DILocation(line: 372, column: 17, scope: !637)
!645 = !DILocation(line: 373, column: 5, scope: !637)
!646 = !DILocation(line: 375, column: 13, scope: !605)
!647 = !DILocation(line: 375, column: 11, scope: !606)
!648 = !DILocation(line: 376, column: 23, scope: !604)
!649 = !DILocation(line: 376, column: 25, scope: !604)
!650 = !DILocation(line: 11, column: 19, scope: !185, inlinedAt: !651)
!651 = distinct !DILocation(line: 378, column: 5, scope: !604)
!652 = !DILocation(line: 0, scope: !604)
!653 = !DILocation(line: 0, scope: !185, inlinedAt: !651)
!654 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !651)
!655 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !651)
!656 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !651)
!657 = !DILocation(line: 16, column: 3, scope: !204, inlinedAt: !651)
!658 = !DILocation(line: 0, scope: !202, inlinedAt: !651)
!659 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !651)
!660 = !DILocation(line: 18, column: 21, scope: !202, inlinedAt: !651)
!661 = !DILocation(line: 19, column: 10, scope: !202, inlinedAt: !651)
!662 = !DILocation(line: 19, column: 26, scope: !202, inlinedAt: !651)
!663 = !DILocation(line: 19, column: 37, scope: !202, inlinedAt: !651)
!664 = !DILocation(line: 19, column: 7, scope: !202, inlinedAt: !651)
!665 = !DILocation(line: 16, column: 29, scope: !203, inlinedAt: !651)
!666 = !DILocation(line: 16, column: 23, scope: !203, inlinedAt: !651)
!667 = distinct !{!667, !657, !668, !227}
!668 = !DILocation(line: 21, column: 3, scope: !204, inlinedAt: !651)
!669 = !DILocation(line: 0, scope: !206, inlinedAt: !651)
!670 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !651)
!671 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !651)
!672 = !DILocation(line: 26, column: 10, scope: !206, inlinedAt: !651)
!673 = !DILocation(line: 26, column: 25, scope: !206, inlinedAt: !651)
!674 = !DILocation(line: 26, column: 34, scope: !206, inlinedAt: !651)
!675 = !DILocation(line: 26, column: 7, scope: !206, inlinedAt: !651)
!676 = !DILocation(line: 30, column: 33, scope: !185, inlinedAt: !651)
!677 = !DILocation(line: 379, column: 30, scope: !604)
!678 = !DILocation(line: 379, column: 32, scope: !604)
!679 = !DILocation(line: 379, column: 17, scope: !604)
!680 = !DILocation(line: 380, column: 48, scope: !604)
!681 = !DILocation(line: 380, column: 50, scope: !604)
!682 = !DILocation(line: 380, column: 13, scope: !604)
!683 = !DILocation(line: 380, column: 17, scope: !604)
!684 = !DILocation(line: 383, column: 13, scope: !611)
!685 = !DILocation(line: 383, column: 11, scope: !605)
!686 = !DILocation(line: 384, column: 32, scope: !610)
!687 = !DILocation(line: 384, column: 22, scope: !610)
!688 = !DILocation(line: 0, scope: !610)
!689 = !DILocation(line: 385, column: 28, scope: !610)
!690 = !DILocation(line: 385, column: 24, scope: !610)
!691 = !DILocation(line: 390, column: 18, scope: !619)
!692 = !DILocation(line: 390, column: 5, scope: !620)
!693 = !DILocation(line: 386, column: 18, scope: !610)
!694 = !DILocation(line: 386, column: 23, scope: !610)
!695 = !DILocation(line: 391, column: 26, scope: !618)
!696 = !DILocation(line: 0, scope: !618)
!697 = !DILocation(line: 392, column: 11, scope: !618)
!698 = !DILocation(line: 393, column: 22, scope: !618)
!699 = !DILocation(line: 393, column: 37, scope: !618)
!700 = !DILocation(line: 393, column: 52, scope: !618)
!701 = !DILocation(line: 393, column: 66, scope: !618)
!702 = !DILocation(line: 393, column: 81, scope: !618)
!703 = !DILocation(line: 394, column: 10, scope: !618)
!704 = !DILocation(line: 395, column: 10, scope: !618)
!705 = !DILocation(line: 390, column: 24, scope: !619)
!706 = distinct !{!706, !692, !707, !227}
!707 = !DILocation(line: 396, column: 5, scope: !620)
!708 = !DILocation(line: 397, column: 48, scope: !610)
!709 = !DILocation(line: 397, column: 34, scope: !610)
!710 = !DILocation(line: 397, column: 36, scope: !610)
!711 = !DILocation(line: 397, column: 38, scope: !610)
!712 = !DILocation(line: 397, column: 31, scope: !610)
!713 = !DILocation(line: 397, column: 54, scope: !610)
!714 = !DILocation(line: 397, column: 17, scope: !610)
!715 = !DILocation(line: 398, column: 35, scope: !610)
!716 = !DILocation(line: 398, column: 13, scope: !610)
!717 = !DILocation(line: 398, column: 17, scope: !610)
!718 = !DILocation(line: 401, column: 13, scope: !623)
!719 = !DILocation(line: 401, column: 11, scope: !611)
!720 = !DILocation(line: 402, column: 24, scope: !622)
!721 = !DILocation(line: 0, scope: !622)
!722 = !DILocation(line: 403, column: 25, scope: !622)
!723 = !DILocation(line: 404, column: 35, scope: !622)
!724 = !DILocation(line: 404, column: 44, scope: !622)
!725 = !DILocation(line: 404, column: 53, scope: !622)
!726 = !DILocation(line: 404, column: 56, scope: !622)
!727 = !DILocation(line: 404, column: 59, scope: !622)
!728 = !DILocation(line: 405, column: 39, scope: !622)
!729 = !DILocation(line: 405, column: 51, scope: !622)
!730 = !DILocation(line: 405, column: 47, scope: !622)
!731 = !DILocation(line: 405, column: 45, scope: !622)
!732 = !DILocation(line: 405, column: 56, scope: !622)
!733 = !DILocation(line: 405, column: 17, scope: !622)
!734 = !DILocation(line: 406, column: 35, scope: !622)
!735 = !DILocation(line: 406, column: 13, scope: !622)
!736 = !DILocation(line: 406, column: 17, scope: !622)
!737 = !DILocation(line: 410, column: 34, scope: !738)
!738 = distinct !DILexicalBlock(scope: !623, file: !2, line: 409, column: 8)
!739 = !DILocation(line: 410, column: 37, scope: !738)
!740 = !DILocation(line: 410, column: 40, scope: !738)
!741 = !DILocation(line: 410, column: 43, scope: !738)
!742 = !DILocation(line: 410, column: 17, scope: !738)
!743 = !DILocation(line: 411, column: 35, scope: !738)
!744 = !DILocation(line: 411, column: 13, scope: !738)
!745 = !DILocation(line: 411, column: 17, scope: !738)
!746 = !DILocation(line: 412, column: 5, scope: !747)
!747 = distinct !DILexicalBlock(scope: !738, file: !2, line: 412, column: 5)
!748 = !DILocation(line: 412, column: 5, scope: !738)
!749 = !DILocation(line: 412, column: 5, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !2, line: 412, column: 5)
!751 = !DILocation(line: 0, scope: !607)
!752 = !DILocation(line: 415, column: 1, scope: !597)
!753 = distinct !DISubprogram(name: "gsl_sf_debye_5_e", scope: !2, file: !2, line: 417, type: !124, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !754)
!754 = !{!755, !756, !757, !758, !759, !764, !765, !768, !769, !770, !771, !772, !773, !777, !780, !781, !782}
!755 = !DILocalVariable(name: "x", arg: 1, scope: !753, file: !2, line: 417, type: !126)
!756 = !DILocalVariable(name: "result", arg: 2, scope: !753, file: !2, line: 417, type: !127)
!757 = !DILocalVariable(name: "val_infinity", scope: !753, file: !2, line: 419, type: !126)
!758 = !DILocalVariable(name: "xcut", scope: !753, file: !2, line: 420, type: !126)
!759 = !DILocalVariable(name: "t", scope: !760, file: !2, line: 433, type: !126)
!760 = distinct !DILexicalBlock(scope: !761, file: !2, line: 432, column: 21)
!761 = distinct !DILexicalBlock(scope: !762, file: !2, line: 432, column: 11)
!762 = distinct !DILexicalBlock(scope: !763, file: !2, line: 427, column: 11)
!763 = distinct !DILexicalBlock(scope: !753, file: !2, line: 424, column: 6)
!764 = !DILocalVariable(name: "c", scope: !760, file: !2, line: 434, type: !128)
!765 = !DILocalVariable(name: "nexp", scope: !766, file: !2, line: 441, type: !148)
!766 = distinct !DILexicalBlock(scope: !767, file: !2, line: 440, column: 47)
!767 = distinct !DILexicalBlock(scope: !761, file: !2, line: 440, column: 11)
!768 = !DILocalVariable(name: "ex", scope: !766, file: !2, line: 442, type: !126)
!769 = !DILocalVariable(name: "xk", scope: !766, file: !2, line: 443, type: !84)
!770 = !DILocalVariable(name: "rk", scope: !766, file: !2, line: 444, type: !84)
!771 = !DILocalVariable(name: "sum", scope: !766, file: !2, line: 445, type: !84)
!772 = !DILocalVariable(name: "i", scope: !766, file: !2, line: 446, type: !38)
!773 = !DILocalVariable(name: "xk_inv", scope: !774, file: !2, line: 448, type: !84)
!774 = distinct !DILexicalBlock(scope: !775, file: !2, line: 447, column: 28)
!775 = distinct !DILexicalBlock(scope: !776, file: !2, line: 447, column: 5)
!776 = distinct !DILexicalBlock(scope: !766, file: !2, line: 447, column: 5)
!777 = !DILocalVariable(name: "x2", scope: !778, file: !2, line: 459, type: !126)
!778 = distinct !DILexicalBlock(scope: !779, file: !2, line: 458, column: 21)
!779 = distinct !DILexicalBlock(scope: !767, file: !2, line: 458, column: 11)
!780 = !DILocalVariable(name: "x4", scope: !778, file: !2, line: 460, type: !126)
!781 = !DILocalVariable(name: "x5", scope: !778, file: !2, line: 461, type: !126)
!782 = !DILocalVariable(name: "sum", scope: !778, file: !2, line: 462, type: !126)
!783 = !DILocation(line: 0, scope: !753)
!784 = !DILocation(line: 424, column: 8, scope: !763)
!785 = !DILocation(line: 424, column: 6, scope: !753)
!786 = !DILocation(line: 425, column: 5, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !2, line: 425, column: 5)
!788 = distinct !DILexicalBlock(scope: !763, file: !2, line: 424, column: 15)
!789 = !DILocation(line: 425, column: 5, scope: !790)
!790 = distinct !DILexicalBlock(scope: !787, file: !2, line: 425, column: 5)
!791 = !DILocation(line: 427, column: 13, scope: !762)
!792 = !DILocation(line: 427, column: 11, scope: !763)
!793 = !DILocation(line: 428, column: 28, scope: !794)
!794 = distinct !DILexicalBlock(scope: !762, file: !2, line: 427, column: 49)
!795 = !DILocation(line: 428, column: 30, scope: !794)
!796 = !DILocation(line: 428, column: 43, scope: !794)
!797 = !DILocation(line: 428, column: 45, scope: !794)
!798 = !DILocation(line: 428, column: 17, scope: !794)
!799 = !DILocation(line: 429, column: 35, scope: !794)
!800 = !DILocation(line: 429, column: 13, scope: !794)
!801 = !DILocation(line: 429, column: 17, scope: !794)
!802 = !DILocation(line: 430, column: 5, scope: !794)
!803 = !DILocation(line: 432, column: 13, scope: !761)
!804 = !DILocation(line: 432, column: 11, scope: !762)
!805 = !DILocation(line: 433, column: 23, scope: !760)
!806 = !DILocation(line: 433, column: 25, scope: !760)
!807 = !DILocation(line: 11, column: 19, scope: !185, inlinedAt: !808)
!808 = distinct !DILocation(line: 435, column: 5, scope: !760)
!809 = !DILocation(line: 0, scope: !760)
!810 = !DILocation(line: 0, scope: !185, inlinedAt: !808)
!811 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !808)
!812 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !808)
!813 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !808)
!814 = !DILocation(line: 16, column: 3, scope: !204, inlinedAt: !808)
!815 = !DILocation(line: 0, scope: !202, inlinedAt: !808)
!816 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !808)
!817 = !DILocation(line: 18, column: 21, scope: !202, inlinedAt: !808)
!818 = !DILocation(line: 19, column: 10, scope: !202, inlinedAt: !808)
!819 = !DILocation(line: 19, column: 26, scope: !202, inlinedAt: !808)
!820 = !DILocation(line: 19, column: 37, scope: !202, inlinedAt: !808)
!821 = !DILocation(line: 19, column: 7, scope: !202, inlinedAt: !808)
!822 = !DILocation(line: 16, column: 29, scope: !203, inlinedAt: !808)
!823 = !DILocation(line: 16, column: 23, scope: !203, inlinedAt: !808)
!824 = distinct !{!824, !814, !825, !227}
!825 = !DILocation(line: 21, column: 3, scope: !204, inlinedAt: !808)
!826 = !DILocation(line: 0, scope: !206, inlinedAt: !808)
!827 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !808)
!828 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !808)
!829 = !DILocation(line: 26, column: 10, scope: !206, inlinedAt: !808)
!830 = !DILocation(line: 26, column: 25, scope: !206, inlinedAt: !808)
!831 = !DILocation(line: 26, column: 34, scope: !206, inlinedAt: !808)
!832 = !DILocation(line: 26, column: 7, scope: !206, inlinedAt: !808)
!833 = !DILocation(line: 30, column: 33, scope: !185, inlinedAt: !808)
!834 = !DILocation(line: 436, column: 30, scope: !760)
!835 = !DILocation(line: 436, column: 32, scope: !760)
!836 = !DILocation(line: 436, column: 17, scope: !760)
!837 = !DILocation(line: 437, column: 48, scope: !760)
!838 = !DILocation(line: 437, column: 50, scope: !760)
!839 = !DILocation(line: 437, column: 13, scope: !760)
!840 = !DILocation(line: 437, column: 17, scope: !760)
!841 = !DILocation(line: 440, column: 13, scope: !767)
!842 = !DILocation(line: 440, column: 11, scope: !761)
!843 = !DILocation(line: 441, column: 32, scope: !766)
!844 = !DILocation(line: 441, column: 22, scope: !766)
!845 = !DILocation(line: 0, scope: !766)
!846 = !DILocation(line: 442, column: 28, scope: !766)
!847 = !DILocation(line: 442, column: 24, scope: !766)
!848 = !DILocation(line: 447, column: 18, scope: !775)
!849 = !DILocation(line: 447, column: 5, scope: !776)
!850 = !DILocation(line: 443, column: 18, scope: !766)
!851 = !DILocation(line: 443, column: 23, scope: !766)
!852 = !DILocation(line: 448, column: 26, scope: !774)
!853 = !DILocation(line: 0, scope: !774)
!854 = !DILocation(line: 449, column: 11, scope: !774)
!855 = !DILocation(line: 450, column: 24, scope: !774)
!856 = !DILocation(line: 450, column: 40, scope: !774)
!857 = !DILocation(line: 450, column: 55, scope: !774)
!858 = !DILocation(line: 450, column: 70, scope: !774)
!859 = !DILocation(line: 450, column: 84, scope: !774)
!860 = !DILocation(line: 450, column: 98, scope: !774)
!861 = !DILocation(line: 451, column: 10, scope: !774)
!862 = !DILocation(line: 452, column: 10, scope: !774)
!863 = !DILocation(line: 447, column: 24, scope: !775)
!864 = distinct !{!864, !849, !865, !227}
!865 = !DILocation(line: 453, column: 5, scope: !776)
!866 = !DILocation(line: 454, column: 50, scope: !766)
!867 = !DILocation(line: 454, column: 34, scope: !766)
!868 = !DILocation(line: 454, column: 36, scope: !766)
!869 = !DILocation(line: 454, column: 38, scope: !766)
!870 = !DILocation(line: 454, column: 40, scope: !766)
!871 = !DILocation(line: 454, column: 31, scope: !766)
!872 = !DILocation(line: 454, column: 56, scope: !766)
!873 = !DILocation(line: 454, column: 17, scope: !766)
!874 = !DILocation(line: 455, column: 35, scope: !766)
!875 = !DILocation(line: 455, column: 13, scope: !766)
!876 = !DILocation(line: 455, column: 17, scope: !766)
!877 = !DILocation(line: 458, column: 13, scope: !779)
!878 = !DILocation(line: 458, column: 11, scope: !767)
!879 = !DILocation(line: 459, column: 24, scope: !778)
!880 = !DILocation(line: 0, scope: !778)
!881 = !DILocation(line: 460, column: 25, scope: !778)
!882 = !DILocation(line: 461, column: 25, scope: !778)
!883 = !DILocation(line: 462, column: 37, scope: !778)
!884 = !DILocation(line: 462, column: 46, scope: !778)
!885 = !DILocation(line: 462, column: 56, scope: !778)
!886 = !DILocation(line: 462, column: 59, scope: !778)
!887 = !DILocation(line: 462, column: 67, scope: !778)
!888 = !DILocation(line: 462, column: 71, scope: !778)
!889 = !DILocation(line: 463, column: 39, scope: !778)
!890 = !DILocation(line: 463, column: 51, scope: !778)
!891 = !DILocation(line: 463, column: 47, scope: !778)
!892 = !DILocation(line: 463, column: 45, scope: !778)
!893 = !DILocation(line: 463, column: 56, scope: !778)
!894 = !DILocation(line: 463, column: 17, scope: !778)
!895 = !DILocation(line: 464, column: 35, scope: !778)
!896 = !DILocation(line: 464, column: 13, scope: !778)
!897 = !DILocation(line: 464, column: 17, scope: !778)
!898 = !DILocation(line: 468, column: 35, scope: !899)
!899 = distinct !DILexicalBlock(scope: !779, file: !2, line: 467, column: 8)
!900 = !DILocation(line: 468, column: 38, scope: !899)
!901 = !DILocation(line: 468, column: 41, scope: !899)
!902 = !DILocation(line: 468, column: 44, scope: !899)
!903 = !DILocation(line: 468, column: 47, scope: !899)
!904 = !DILocation(line: 468, column: 17, scope: !899)
!905 = !DILocation(line: 469, column: 35, scope: !899)
!906 = !DILocation(line: 469, column: 13, scope: !899)
!907 = !DILocation(line: 469, column: 17, scope: !899)
!908 = !DILocation(line: 470, column: 5, scope: !909)
!909 = distinct !DILexicalBlock(scope: !899, file: !2, line: 470, column: 5)
!910 = !DILocation(line: 470, column: 5, scope: !899)
!911 = !DILocation(line: 470, column: 5, scope: !912)
!912 = distinct !DILexicalBlock(scope: !909, file: !2, line: 470, column: 5)
!913 = !DILocation(line: 0, scope: !763)
!914 = !DILocation(line: 473, column: 1, scope: !753)
!915 = distinct !DISubprogram(name: "gsl_sf_debye_6_e", scope: !2, file: !2, line: 475, type: !124, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !916)
!916 = !{!917, !918, !919, !920, !921, !926, !927, !930, !931, !932, !933, !934, !935, !939, !942, !943, !944}
!917 = !DILocalVariable(name: "x", arg: 1, scope: !915, file: !2, line: 475, type: !126)
!918 = !DILocalVariable(name: "result", arg: 2, scope: !915, file: !2, line: 475, type: !127)
!919 = !DILocalVariable(name: "val_infinity", scope: !915, file: !2, line: 477, type: !126)
!920 = !DILocalVariable(name: "xcut", scope: !915, file: !2, line: 478, type: !126)
!921 = !DILocalVariable(name: "t", scope: !922, file: !2, line: 491, type: !126)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 490, column: 21)
!923 = distinct !DILexicalBlock(scope: !924, file: !2, line: 490, column: 11)
!924 = distinct !DILexicalBlock(scope: !925, file: !2, line: 485, column: 11)
!925 = distinct !DILexicalBlock(scope: !915, file: !2, line: 482, column: 6)
!926 = !DILocalVariable(name: "c", scope: !922, file: !2, line: 492, type: !128)
!927 = !DILocalVariable(name: "nexp", scope: !928, file: !2, line: 499, type: !148)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 498, column: 47)
!929 = distinct !DILexicalBlock(scope: !923, file: !2, line: 498, column: 11)
!930 = !DILocalVariable(name: "ex", scope: !928, file: !2, line: 500, type: !126)
!931 = !DILocalVariable(name: "xk", scope: !928, file: !2, line: 501, type: !84)
!932 = !DILocalVariable(name: "rk", scope: !928, file: !2, line: 502, type: !84)
!933 = !DILocalVariable(name: "sum", scope: !928, file: !2, line: 503, type: !84)
!934 = !DILocalVariable(name: "i", scope: !928, file: !2, line: 504, type: !38)
!935 = !DILocalVariable(name: "xk_inv", scope: !936, file: !2, line: 506, type: !84)
!936 = distinct !DILexicalBlock(scope: !937, file: !2, line: 505, column: 28)
!937 = distinct !DILexicalBlock(scope: !938, file: !2, line: 505, column: 5)
!938 = distinct !DILexicalBlock(scope: !928, file: !2, line: 505, column: 5)
!939 = !DILocalVariable(name: "x2", scope: !940, file: !2, line: 517, type: !126)
!940 = distinct !DILexicalBlock(scope: !941, file: !2, line: 516, column: 21)
!941 = distinct !DILexicalBlock(scope: !929, file: !2, line: 516, column: 11)
!942 = !DILocalVariable(name: "x4", scope: !940, file: !2, line: 518, type: !126)
!943 = !DILocalVariable(name: "x6", scope: !940, file: !2, line: 519, type: !126)
!944 = !DILocalVariable(name: "sum", scope: !940, file: !2, line: 520, type: !126)
!945 = !DILocation(line: 0, scope: !915)
!946 = !DILocation(line: 482, column: 8, scope: !925)
!947 = !DILocation(line: 482, column: 6, scope: !915)
!948 = !DILocation(line: 483, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !2, line: 483, column: 5)
!950 = distinct !DILexicalBlock(scope: !925, file: !2, line: 482, column: 15)
!951 = !DILocation(line: 483, column: 5, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !2, line: 483, column: 5)
!953 = !DILocation(line: 485, column: 13, scope: !924)
!954 = !DILocation(line: 485, column: 11, scope: !925)
!955 = !DILocation(line: 486, column: 28, scope: !956)
!956 = distinct !DILexicalBlock(scope: !924, file: !2, line: 485, column: 49)
!957 = !DILocation(line: 486, column: 30, scope: !956)
!958 = !DILocation(line: 486, column: 38, scope: !956)
!959 = !DILocation(line: 486, column: 40, scope: !956)
!960 = !DILocation(line: 486, column: 17, scope: !956)
!961 = !DILocation(line: 487, column: 35, scope: !956)
!962 = !DILocation(line: 487, column: 13, scope: !956)
!963 = !DILocation(line: 487, column: 17, scope: !956)
!964 = !DILocation(line: 488, column: 5, scope: !956)
!965 = !DILocation(line: 490, column: 13, scope: !923)
!966 = !DILocation(line: 490, column: 11, scope: !924)
!967 = !DILocation(line: 491, column: 23, scope: !922)
!968 = !DILocation(line: 491, column: 25, scope: !922)
!969 = !DILocation(line: 11, column: 19, scope: !185, inlinedAt: !970)
!970 = distinct !DILocation(line: 493, column: 5, scope: !922)
!971 = !DILocation(line: 0, scope: !922)
!972 = !DILocation(line: 0, scope: !185, inlinedAt: !970)
!973 = !DILocation(line: 11, column: 30, scope: !185, inlinedAt: !970)
!974 = !DILocation(line: 11, column: 39, scope: !185, inlinedAt: !970)
!975 = !DILocation(line: 12, column: 19, scope: !185, inlinedAt: !970)
!976 = !DILocation(line: 16, column: 3, scope: !204, inlinedAt: !970)
!977 = !DILocation(line: 0, scope: !202, inlinedAt: !970)
!978 = !DILocation(line: 18, column: 11, scope: !202, inlinedAt: !970)
!979 = !DILocation(line: 18, column: 21, scope: !202, inlinedAt: !970)
!980 = !DILocation(line: 19, column: 10, scope: !202, inlinedAt: !970)
!981 = !DILocation(line: 19, column: 26, scope: !202, inlinedAt: !970)
!982 = !DILocation(line: 19, column: 37, scope: !202, inlinedAt: !970)
!983 = !DILocation(line: 19, column: 7, scope: !202, inlinedAt: !970)
!984 = !DILocation(line: 16, column: 29, scope: !203, inlinedAt: !970)
!985 = !DILocation(line: 16, column: 23, scope: !203, inlinedAt: !970)
!986 = distinct !{!986, !976, !987, !227}
!987 = !DILocation(line: 21, column: 3, scope: !204, inlinedAt: !970)
!988 = !DILocation(line: 0, scope: !206, inlinedAt: !970)
!989 = !DILocation(line: 25, column: 10, scope: !206, inlinedAt: !970)
!990 = !DILocation(line: 25, column: 18, scope: !206, inlinedAt: !970)
!991 = !DILocation(line: 26, column: 10, scope: !206, inlinedAt: !970)
!992 = !DILocation(line: 26, column: 25, scope: !206, inlinedAt: !970)
!993 = !DILocation(line: 26, column: 34, scope: !206, inlinedAt: !970)
!994 = !DILocation(line: 26, column: 7, scope: !206, inlinedAt: !970)
!995 = !DILocation(line: 30, column: 33, scope: !185, inlinedAt: !970)
!996 = !DILocation(line: 494, column: 30, scope: !922)
!997 = !DILocation(line: 494, column: 32, scope: !922)
!998 = !DILocation(line: 494, column: 17, scope: !922)
!999 = !DILocation(line: 495, column: 48, scope: !922)
!1000 = !DILocation(line: 495, column: 50, scope: !922)
!1001 = !DILocation(line: 495, column: 13, scope: !922)
!1002 = !DILocation(line: 495, column: 17, scope: !922)
!1003 = !DILocation(line: 498, column: 13, scope: !929)
!1004 = !DILocation(line: 498, column: 11, scope: !923)
!1005 = !DILocation(line: 499, column: 32, scope: !928)
!1006 = !DILocation(line: 499, column: 22, scope: !928)
!1007 = !DILocation(line: 0, scope: !928)
!1008 = !DILocation(line: 500, column: 28, scope: !928)
!1009 = !DILocation(line: 500, column: 24, scope: !928)
!1010 = !DILocation(line: 505, column: 18, scope: !937)
!1011 = !DILocation(line: 505, column: 5, scope: !938)
!1012 = !DILocation(line: 501, column: 18, scope: !928)
!1013 = !DILocation(line: 501, column: 23, scope: !928)
!1014 = !DILocation(line: 506, column: 26, scope: !936)
!1015 = !DILocation(line: 0, scope: !936)
!1016 = !DILocation(line: 507, column: 11, scope: !936)
!1017 = !DILocation(line: 508, column: 25, scope: !936)
!1018 = !DILocation(line: 508, column: 41, scope: !936)
!1019 = !DILocation(line: 508, column: 57, scope: !936)
!1020 = !DILocation(line: 508, column: 73, scope: !936)
!1021 = !DILocation(line: 508, column: 88, scope: !936)
!1022 = !DILocation(line: 508, column: 101, scope: !936)
!1023 = !DILocation(line: 508, column: 115, scope: !936)
!1024 = !DILocation(line: 509, column: 10, scope: !936)
!1025 = !DILocation(line: 510, column: 10, scope: !936)
!1026 = !DILocation(line: 505, column: 24, scope: !937)
!1027 = distinct !{!1027, !1011, !1028, !227}
!1028 = !DILocation(line: 511, column: 5, scope: !938)
!1029 = !DILocation(line: 512, column: 52, scope: !928)
!1030 = !DILocation(line: 512, column: 34, scope: !928)
!1031 = !DILocation(line: 512, column: 36, scope: !928)
!1032 = !DILocation(line: 512, column: 38, scope: !928)
!1033 = !DILocation(line: 512, column: 40, scope: !928)
!1034 = !DILocation(line: 512, column: 42, scope: !928)
!1035 = !DILocation(line: 512, column: 31, scope: !928)
!1036 = !DILocation(line: 512, column: 58, scope: !928)
!1037 = !DILocation(line: 512, column: 17, scope: !928)
!1038 = !DILocation(line: 513, column: 35, scope: !928)
!1039 = !DILocation(line: 513, column: 13, scope: !928)
!1040 = !DILocation(line: 513, column: 17, scope: !928)
!1041 = !DILocation(line: 516, column: 13, scope: !941)
!1042 = !DILocation(line: 516, column: 11, scope: !929)
!1043 = !DILocation(line: 517, column: 24, scope: !940)
!1044 = !DILocation(line: 0, scope: !940)
!1045 = !DILocation(line: 518, column: 25, scope: !940)
!1046 = !DILocation(line: 519, column: 25, scope: !940)
!1047 = !DILocation(line: 520, column: 37, scope: !940)
!1048 = !DILocation(line: 520, column: 47, scope: !940)
!1049 = !DILocation(line: 520, column: 58, scope: !940)
!1050 = !DILocation(line: 520, column: 61, scope: !940)
!1051 = !DILocation(line: 520, column: 70, scope: !940)
!1052 = !DILocation(line: 520, column: 79, scope: !940)
!1053 = !DILocation(line: 520, column: 82, scope: !940)
!1054 = !DILocation(line: 520, column: 85, scope: !940)
!1055 = !DILocation(line: 521, column: 39, scope: !940)
!1056 = !DILocation(line: 521, column: 51, scope: !940)
!1057 = !DILocation(line: 521, column: 47, scope: !940)
!1058 = !DILocation(line: 521, column: 45, scope: !940)
!1059 = !DILocation(line: 521, column: 56, scope: !940)
!1060 = !DILocation(line: 521, column: 17, scope: !940)
!1061 = !DILocation(line: 522, column: 35, scope: !940)
!1062 = !DILocation(line: 522, column: 13, scope: !940)
!1063 = !DILocation(line: 522, column: 17, scope: !940)
!1064 = !DILocation(line: 526, column: 36, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !941, file: !2, line: 525, column: 8)
!1066 = !DILocation(line: 526, column: 39, scope: !1065)
!1067 = !DILocation(line: 526, column: 42, scope: !1065)
!1068 = !DILocation(line: 526, column: 45, scope: !1065)
!1069 = !DILocation(line: 526, column: 48, scope: !1065)
!1070 = !DILocation(line: 526, column: 51, scope: !1065)
!1071 = !DILocation(line: 526, column: 17, scope: !1065)
!1072 = !DILocation(line: 527, column: 35, scope: !1065)
!1073 = !DILocation(line: 527, column: 13, scope: !1065)
!1074 = !DILocation(line: 527, column: 17, scope: !1065)
!1075 = !DILocation(line: 528, column: 5, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 528, column: 5)
!1077 = !DILocation(line: 528, column: 5, scope: !1065)
!1078 = !DILocation(line: 528, column: 5, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 528, column: 5)
!1080 = !DILocation(line: 0, scope: !925)
!1081 = !DILocation(line: 531, column: 1, scope: !915)
!1082 = distinct !DISubprogram(name: "gsl_sf_debye_1", scope: !2, file: !2, line: 538, type: !1083, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1085)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!84, !126}
!1085 = !{!1086, !1087, !1088}
!1086 = !DILocalVariable(name: "x", arg: 1, scope: !1082, file: !2, line: 538, type: !126)
!1087 = !DILocalVariable(name: "result", scope: !1082, file: !2, line: 540, type: !128)
!1088 = !DILocalVariable(name: "status", scope: !1082, file: !2, line: 540, type: !38)
!1089 = distinct !DIAssignID()
!1090 = !DILocation(line: 0, scope: !1082)
!1091 = !DILocation(line: 540, column: 3, scope: !1082)
!1092 = !{i32 0, i32 2}
!1093 = !DILocation(line: 540, column: 3, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 540, column: 3)
!1095 = !DILocation(line: 540, column: 3, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 540, column: 3)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 540, column: 3)
!1098 = !DILocation(line: 541, column: 1, scope: !1082)
!1099 = distinct !DISubprogram(name: "gsl_sf_debye_2", scope: !2, file: !2, line: 543, type: !1083, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1100)
!1100 = !{!1101, !1102, !1103}
!1101 = !DILocalVariable(name: "x", arg: 1, scope: !1099, file: !2, line: 543, type: !126)
!1102 = !DILocalVariable(name: "result", scope: !1099, file: !2, line: 545, type: !128)
!1103 = !DILocalVariable(name: "status", scope: !1099, file: !2, line: 545, type: !38)
!1104 = distinct !DIAssignID()
!1105 = !DILocation(line: 0, scope: !1099)
!1106 = !DILocation(line: 545, column: 3, scope: !1099)
!1107 = !{i32 0, i32 16}
!1108 = !DILocation(line: 545, column: 3, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 545, column: 3)
!1110 = !DILocation(line: 545, column: 3, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 545, column: 3)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 545, column: 3)
!1113 = !DILocation(line: 546, column: 1, scope: !1099)
!1114 = distinct !DISubprogram(name: "gsl_sf_debye_3", scope: !2, file: !2, line: 548, type: !1083, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DILocalVariable(name: "x", arg: 1, scope: !1114, file: !2, line: 548, type: !126)
!1117 = !DILocalVariable(name: "result", scope: !1114, file: !2, line: 550, type: !128)
!1118 = !DILocalVariable(name: "status", scope: !1114, file: !2, line: 550, type: !38)
!1119 = distinct !DIAssignID()
!1120 = !DILocation(line: 0, scope: !1114)
!1121 = !DILocation(line: 550, column: 3, scope: !1114)
!1122 = !DILocation(line: 550, column: 3, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 550, column: 3)
!1124 = !DILocation(line: 550, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 550, column: 3)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 550, column: 3)
!1127 = !DILocation(line: 551, column: 1, scope: !1114)
!1128 = distinct !DISubprogram(name: "gsl_sf_debye_4", scope: !2, file: !2, line: 553, type: !1083, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1129)
!1129 = !{!1130, !1131, !1132}
!1130 = !DILocalVariable(name: "x", arg: 1, scope: !1128, file: !2, line: 553, type: !126)
!1131 = !DILocalVariable(name: "result", scope: !1128, file: !2, line: 555, type: !128)
!1132 = !DILocalVariable(name: "status", scope: !1128, file: !2, line: 555, type: !38)
!1133 = distinct !DIAssignID()
!1134 = !DILocation(line: 0, scope: !1128)
!1135 = !DILocation(line: 555, column: 3, scope: !1128)
!1136 = !DILocation(line: 555, column: 3, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 555, column: 3)
!1138 = !DILocation(line: 555, column: 3, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 555, column: 3)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 555, column: 3)
!1141 = !DILocation(line: 556, column: 1, scope: !1128)
!1142 = distinct !DISubprogram(name: "gsl_sf_debye_5", scope: !2, file: !2, line: 558, type: !1083, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1143)
!1143 = !{!1144, !1145, !1146}
!1144 = !DILocalVariable(name: "x", arg: 1, scope: !1142, file: !2, line: 558, type: !126)
!1145 = !DILocalVariable(name: "result", scope: !1142, file: !2, line: 560, type: !128)
!1146 = !DILocalVariable(name: "status", scope: !1142, file: !2, line: 560, type: !38)
!1147 = distinct !DIAssignID()
!1148 = !DILocation(line: 0, scope: !1142)
!1149 = !DILocation(line: 560, column: 3, scope: !1142)
!1150 = !DILocation(line: 560, column: 3, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 560, column: 3)
!1152 = !DILocation(line: 560, column: 3, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 560, column: 3)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 560, column: 3)
!1155 = !DILocation(line: 561, column: 1, scope: !1142)
!1156 = distinct !DISubprogram(name: "gsl_sf_debye_6", scope: !2, file: !2, line: 563, type: !1083, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1157)
!1157 = !{!1158, !1159, !1160}
!1158 = !DILocalVariable(name: "x", arg: 1, scope: !1156, file: !2, line: 563, type: !126)
!1159 = !DILocalVariable(name: "result", scope: !1156, file: !2, line: 565, type: !128)
!1160 = !DILocalVariable(name: "status", scope: !1156, file: !2, line: 565, type: !38)
!1161 = distinct !DIAssignID()
!1162 = !DILocation(line: 0, scope: !1156)
!1163 = !DILocation(line: 565, column: 3, scope: !1156)
!1164 = !DILocation(line: 565, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 565, column: 3)
!1166 = !DILocation(line: 565, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 565, column: 3)
!1168 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 565, column: 3)
!1169 = !DILocation(line: 566, column: 1, scope: !1156)
