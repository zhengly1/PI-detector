; ModuleID = 'debye.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 202, i32 noundef 1) #6, !dbg !166
  br label %139, !dbg !166

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E60000000000000, !dbg !168
  br i1 %7, label %8, label %17, !dbg !169

8:                                                ; preds = %6
  %9 = fmul double %0, 2.500000e-01, !dbg !170
  %10 = fsub double 1.000000e+00, %9, !dbg !172
  %11 = fmul double %0, %0, !dbg !173
  %12 = fdiv double %11, 3.600000e+01, !dbg !174
  %13 = fadd double %10, %12, !dbg !175
  store double %13, ptr %1, align 8, !dbg !176, !tbaa !160
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !177
  %15 = fmul double %14, 0x3CB0000000000000, !dbg !178
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !179
  store double %15, ptr %16, align 8, !dbg !180, !tbaa !165
  br label %139, !dbg !181

17:                                               ; preds = %6
  %18 = fcmp ugt double %0, 4.000000e+00, !dbg !182
  br i1 %18, label %62, label %19, !dbg !183

19:                                               ; preds = %17
  %20 = fmul double %0, %0, !dbg !184
  %21 = fmul double %20, 1.250000e-01, !dbg !185
  %22 = fadd double %21, -1.000000e+00, !dbg !186
  tail call void @llvm.dbg.value(metadata double %22, metadata !139, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata !188, metadata !189, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %22, metadata !197, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata ptr undef, metadata !198, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !211
  %23 = fmul double %22, 2.000000e+00, !dbg !213
  %24 = fadd double %23, 1.000000e+00, !dbg !214
  %25 = fadd double %24, -1.000000e+00, !dbg !215
  %26 = fmul double %25, 5.000000e-01, !dbg !216
  call void @llvm.dbg.value(metadata double %26, metadata !202, metadata !DIExpression()), !dbg !211
  %27 = fmul double %26, 2.000000e+00, !dbg !217
  call void @llvm.dbg.value(metadata double %27, metadata !203, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !204, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i32 16, metadata !199, metadata !DIExpression()), !dbg !211
  br label %28, !dbg !218

28:                                               ; preds = %28, %19
  %29 = phi i64 [ 16, %19 ], [ %44, %28 ]
  %30 = phi double [ 0.000000e+00, %19 ], [ %37, %28 ]
  %31 = phi double [ 0.000000e+00, %19 ], [ %43, %28 ]
  %32 = phi double [ 0.000000e+00, %19 ], [ %30, %28 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !199, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %30, metadata !200, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %31, metadata !204, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %32, metadata !201, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %30, metadata !205, metadata !DIExpression()), !dbg !219
  %33 = fmul double %27, %30, !dbg !220
  %34 = fsub double %33, %32, !dbg !221
  %35 = getelementptr inbounds double, ptr @adeb1_data, i64 %29, !dbg !222
  %36 = load double, ptr %35, align 8, !dbg !222, !tbaa !223
  %37 = fadd double %34, %36, !dbg !224
  call void @llvm.dbg.value(metadata double %37, metadata !200, metadata !DIExpression()), !dbg !211
  %38 = tail call double @llvm.fabs.f64(double %33), !dbg !225
  %39 = tail call double @llvm.fabs.f64(double %32), !dbg !226
  %40 = fadd double %38, %39, !dbg !227
  %41 = tail call double @llvm.fabs.f64(double %36), !dbg !228
  %42 = fadd double %40, %41, !dbg !229
  %43 = fadd double %31, %42, !dbg !230
  call void @llvm.dbg.value(metadata double %43, metadata !204, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %30, metadata !201, metadata !DIExpression()), !dbg !211
  %44 = add nsw i64 %29, -1, !dbg !231
  call void @llvm.dbg.value(metadata i64 %44, metadata !199, metadata !DIExpression()), !dbg !211
  %45 = icmp ugt i64 %29, 1, !dbg !232
  br i1 %45, label %28, label %46, !dbg !218, !llvm.loop !233

46:                                               ; preds = %28
  call void @llvm.dbg.value(metadata double %37, metadata !209, metadata !DIExpression()), !dbg !236
  %47 = fmul double %26, %37, !dbg !237
  %48 = fsub double %47, %30, !dbg !238
  %49 = fadd double %48, 0x3FF3348D1530BF36, !dbg !239
  call void @llvm.dbg.value(metadata double %49, metadata !200, metadata !DIExpression()), !dbg !211
  %50 = tail call double @llvm.fabs.f64(double %47), !dbg !240
  %51 = tail call double @llvm.fabs.f64(double %30), !dbg !241
  %52 = fadd double %51, %50, !dbg !242
  %53 = fadd double %52, 0x3FF3348D1530BF36, !dbg !243
  %54 = fadd double %43, %53, !dbg !244
  call void @llvm.dbg.value(metadata double %54, metadata !204, metadata !DIExpression()), !dbg !211
  tail call void @llvm.dbg.value(metadata double %49, metadata !144, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !187
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !245
  %56 = fadd double %55, 9.000000e-19, !dbg !246
  tail call void @llvm.dbg.value(metadata double %56, metadata !144, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !187
  %57 = fmul double %0, 2.500000e-01, !dbg !247
  %58 = fsub double %49, %57, !dbg !248
  store double %58, ptr %1, align 8, !dbg !249, !tbaa !160
  %59 = fmul double %57, 0x3CB0000000000000, !dbg !250
  %60 = fadd double %59, %56, !dbg !251
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !252
  store double %60, ptr %61, align 8, !dbg !253, !tbaa !165
  br label %139

62:                                               ; preds = %17
  %63 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !254
  br i1 %63, label %64, label %122, !dbg !255

64:                                               ; preds = %62
  %65 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !256
  %66 = tail call double @llvm.floor.f64(double %65), !dbg !257
  %67 = fptosi double %66 to i32, !dbg !257
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !145, metadata !DIExpression()), !dbg !258
  %68 = fneg double %0, !dbg !259
  %69 = tail call double @exp(double noundef %68) #6, !dbg !260
  tail call void @llvm.dbg.value(metadata double %69, metadata !149, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double poison, metadata !151, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double poison, metadata !152, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !153, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !150, metadata !DIExpression()), !dbg !258
  %70 = icmp sgt i32 %67, 0, !dbg !261
  br i1 %70, label %71, label %114, !dbg !264

71:                                               ; preds = %64
  %72 = sitofp i32 %67 to double, !dbg !265
  tail call void @llvm.dbg.value(metadata double %72, metadata !152, metadata !DIExpression()), !dbg !258
  %73 = fmul double %72, %0, !dbg !266
  tail call void @llvm.dbg.value(metadata double %73, metadata !151, metadata !DIExpression()), !dbg !258
  %74 = and i32 %67, 1, !dbg !264
  %75 = icmp eq i32 %74, 0, !dbg !264
  br i1 %75, label %85, label %76, !dbg !264

76:                                               ; preds = %71
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !153, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double %72, metadata !152, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double %73, metadata !151, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !150, metadata !DIExpression()), !dbg !258
  %77 = fmul double %69, 0.000000e+00, !dbg !267
  tail call void @llvm.dbg.value(metadata double %77, metadata !150, metadata !DIExpression()), !dbg !258
  %78 = fdiv double 1.000000e+00, %73, !dbg !269
  %79 = fadd double %78, 1.000000e+00, !dbg !270
  %80 = fdiv double %79, %72, !dbg !271
  %81 = fadd double %77, %80, !dbg !272
  tail call void @llvm.dbg.value(metadata double %81, metadata !150, metadata !DIExpression()), !dbg !258
  %82 = fadd double %72, -1.000000e+00, !dbg !273
  tail call void @llvm.dbg.value(metadata double %82, metadata !152, metadata !DIExpression()), !dbg !258
  %83 = fsub double %73, %0, !dbg !274
  tail call void @llvm.dbg.value(metadata double %83, metadata !151, metadata !DIExpression()), !dbg !258
  %84 = add nsw i32 %67, -1, !dbg !275
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !153, metadata !DIExpression()), !dbg !258
  br label %85, !dbg !264

85:                                               ; preds = %76, %71
  %86 = phi i32 [ %67, %71 ], [ %84, %76 ]
  %87 = phi double [ %72, %71 ], [ %82, %76 ]
  %88 = phi double [ %73, %71 ], [ %83, %76 ]
  %89 = phi double [ 0.000000e+00, %71 ], [ %81, %76 ]
  %90 = phi double [ undef, %71 ], [ %81, %76 ]
  %91 = icmp eq i32 %67, 1, !dbg !264
  br i1 %91, label %114, label %92, !dbg !264

92:                                               ; preds = %85, %92
  %93 = phi i32 [ %111, %92 ], [ %86, %85 ]
  %94 = phi double [ %109, %92 ], [ %87, %85 ]
  %95 = phi double [ %110, %92 ], [ %88, %85 ]
  %96 = phi double [ %108, %92 ], [ %89, %85 ]
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !153, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double %94, metadata !152, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double %95, metadata !151, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double %96, metadata !150, metadata !DIExpression()), !dbg !258
  %97 = fmul double %69, %96, !dbg !267
  tail call void @llvm.dbg.value(metadata double %97, metadata !150, metadata !DIExpression()), !dbg !258
  %98 = fdiv double 1.000000e+00, %95, !dbg !269
  %99 = fadd double %98, 1.000000e+00, !dbg !270
  %100 = fdiv double %99, %94, !dbg !271
  %101 = fadd double %97, %100, !dbg !272
  tail call void @llvm.dbg.value(metadata double %101, metadata !150, metadata !DIExpression()), !dbg !258
  %102 = fadd double %94, -1.000000e+00, !dbg !273
  tail call void @llvm.dbg.value(metadata double %102, metadata !152, metadata !DIExpression()), !dbg !258
  %103 = fsub double %95, %0, !dbg !274
  tail call void @llvm.dbg.value(metadata double %103, metadata !151, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !153, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !153, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !258
  tail call void @llvm.dbg.value(metadata double %102, metadata !152, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double %103, metadata !151, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata double %101, metadata !150, metadata !DIExpression()), !dbg !258
  %104 = fmul double %69, %101, !dbg !267
  tail call void @llvm.dbg.value(metadata double %104, metadata !150, metadata !DIExpression()), !dbg !258
  %105 = fdiv double 1.000000e+00, %103, !dbg !269
  %106 = fadd double %105, 1.000000e+00, !dbg !270
  %107 = fdiv double %106, %102, !dbg !271
  %108 = fadd double %104, %107, !dbg !272
  tail call void @llvm.dbg.value(metadata double %108, metadata !150, metadata !DIExpression()), !dbg !258
  %109 = fadd double %102, -1.000000e+00, !dbg !273
  tail call void @llvm.dbg.value(metadata double %109, metadata !152, metadata !DIExpression()), !dbg !258
  %110 = fsub double %103, %0, !dbg !274
  tail call void @llvm.dbg.value(metadata double %110, metadata !151, metadata !DIExpression()), !dbg !258
  %111 = add nsw i32 %93, -2, !dbg !275
  tail call void @llvm.dbg.value(metadata i32 %111, metadata !153, metadata !DIExpression()), !dbg !258
  %112 = add i32 %93, -3, !dbg !261
  %113 = icmp ult i32 %112, -2, !dbg !261
  br i1 %113, label %92, label %114, !dbg !264, !llvm.loop !276

114:                                              ; preds = %85, %92, %64
  %115 = phi double [ 0.000000e+00, %64 ], [ %90, %85 ], [ %108, %92 ], !dbg !258
  %116 = fdiv double 0x3FFA51A6625307D3, %0, !dbg !278
  %117 = fmul double %69, %115, !dbg !279
  %118 = fsub double %116, %117, !dbg !280
  store double %118, ptr %1, align 8, !dbg !281, !tbaa !160
  %119 = tail call double @llvm.fabs.f64(double %118), !dbg !282
  %120 = fmul double %119, 0x3CB0000000000000, !dbg !283
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !284
  store double %120, ptr %121, align 8, !dbg !285, !tbaa !165
  br label %139

122:                                              ; preds = %62
  %123 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !286
  br i1 %123, label %124, label %134, !dbg !288

124:                                              ; preds = %122
  %125 = fneg double %0, !dbg !289
  %126 = tail call double @exp(double noundef %125) #6, !dbg !291
  %127 = fadd double %0, 1.000000e+00, !dbg !292
  %128 = fmul double %127, %126, !dbg !293
  %129 = fsub double 0x3FFA51A6625307D3, %128, !dbg !294
  %130 = fdiv double %129, %0, !dbg !295
  store double %130, ptr %1, align 8, !dbg !296, !tbaa !160
  %131 = tail call double @llvm.fabs.f64(double %130), !dbg !297
  %132 = fmul double %131, 0x3CB0000000000000, !dbg !298
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !299
  store double %132, ptr %133, align 8, !dbg !300, !tbaa !165
  br label %139, !dbg !301

134:                                              ; preds = %122
  %135 = fdiv double 0x3FFA51A6625307D3, %0, !dbg !302
  store double %135, ptr %1, align 8, !dbg !304, !tbaa !160
  %136 = tail call double @llvm.fabs.f64(double %135), !dbg !305
  %137 = fmul double %136, 0x3CB0000000000000, !dbg !306
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !307
  store double %137, ptr %138, align 8, !dbg !308, !tbaa !165
  br label %139, !dbg !309

139:                                              ; preds = %134, %124, %114, %46, %8, %4
  %140 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %46 ], [ 0, %114 ], [ 0, %124 ], [ 0, %134 ], !dbg !310
  ret i32 %140, !dbg !311
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !312 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !317 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !321 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !323, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !324, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata double 0x40133BA004F00621, metadata !325, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !326, metadata !DIExpression()), !dbg !345
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !346
  br i1 %3, label %4, label %6, !dbg !347

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !348, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !348
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !348, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1) #6, !dbg !351
  br label %159, !dbg !351

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !353
  br i1 %7, label %8, label %16, !dbg !354

8:                                                ; preds = %6
  %9 = fdiv double %0, 3.000000e+00, !dbg !355
  %10 = fsub double 1.000000e+00, %9, !dbg !357
  %11 = fmul double %0, %0, !dbg !358
  %12 = fdiv double %11, 2.400000e+01, !dbg !359
  %13 = fadd double %10, %12, !dbg !360
  store double %13, ptr %1, align 8, !dbg !361, !tbaa !160
  %14 = fmul double %13, 0x3CB0000000000000, !dbg !362
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !363
  store double %14, ptr %15, align 8, !dbg !364, !tbaa !165
  br label %159, !dbg !365

16:                                               ; preds = %6
  %17 = fcmp ugt double %0, 4.000000e+00, !dbg !366
  br i1 %17, label %62, label %18, !dbg !367

18:                                               ; preds = %16
  %19 = fmul double %0, %0, !dbg !368
  %20 = fmul double %19, 1.250000e-01, !dbg !369
  %21 = fadd double %20, -1.000000e+00, !dbg !370
  tail call void @llvm.dbg.value(metadata double %21, metadata !327, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata !188, metadata !189, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %21, metadata !197, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata ptr undef, metadata !198, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !372
  %22 = fmul double %21, 2.000000e+00, !dbg !374
  %23 = fadd double %22, 1.000000e+00, !dbg !375
  %24 = fadd double %23, -1.000000e+00, !dbg !376
  %25 = fmul double %24, 5.000000e-01, !dbg !377
  call void @llvm.dbg.value(metadata double %25, metadata !202, metadata !DIExpression()), !dbg !372
  %26 = fmul double %25, 2.000000e+00, !dbg !378
  call void @llvm.dbg.value(metadata double %26, metadata !203, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !204, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 17, metadata !199, metadata !DIExpression()), !dbg !372
  br label %27, !dbg !379

27:                                               ; preds = %27, %18
  %28 = phi i64 [ 17, %18 ], [ %43, %27 ]
  %29 = phi double [ 0.000000e+00, %18 ], [ %36, %27 ]
  %30 = phi double [ 0.000000e+00, %18 ], [ %42, %27 ]
  %31 = phi double [ 0.000000e+00, %18 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata i64 %28, metadata !199, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %29, metadata !200, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %30, metadata !204, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %31, metadata !201, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %29, metadata !205, metadata !DIExpression()), !dbg !380
  %32 = fmul double %26, %29, !dbg !381
  %33 = fsub double %32, %31, !dbg !382
  %34 = getelementptr inbounds double, ptr @adeb2_data, i64 %28, !dbg !383
  %35 = load double, ptr %34, align 8, !dbg !383, !tbaa !223
  %36 = fadd double %33, %35, !dbg !384
  call void @llvm.dbg.value(metadata double %36, metadata !200, metadata !DIExpression()), !dbg !372
  %37 = tail call double @llvm.fabs.f64(double %32), !dbg !385
  %38 = tail call double @llvm.fabs.f64(double %31), !dbg !386
  %39 = fadd double %37, %38, !dbg !387
  %40 = tail call double @llvm.fabs.f64(double %35), !dbg !388
  %41 = fadd double %39, %40, !dbg !389
  %42 = fadd double %30, %41, !dbg !390
  call void @llvm.dbg.value(metadata double %42, metadata !204, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata double %29, metadata !201, metadata !DIExpression()), !dbg !372
  %43 = add nsw i64 %28, -1, !dbg !391
  call void @llvm.dbg.value(metadata i64 %43, metadata !199, metadata !DIExpression()), !dbg !372
  %44 = icmp ugt i64 %28, 1, !dbg !392
  br i1 %44, label %27, label %45, !dbg !379, !llvm.loop !393

45:                                               ; preds = %27
  call void @llvm.dbg.value(metadata double %36, metadata !209, metadata !DIExpression()), !dbg !395
  %46 = fmul double %25, %36, !dbg !396
  %47 = fsub double %46, %29, !dbg !397
  %48 = fadd double %47, 0x3FF4C14AD682046D, !dbg !398
  call void @llvm.dbg.value(metadata double %48, metadata !200, metadata !DIExpression()), !dbg !372
  %49 = tail call double @llvm.fabs.f64(double %46), !dbg !399
  %50 = tail call double @llvm.fabs.f64(double %29), !dbg !400
  %51 = fadd double %50, %49, !dbg !401
  %52 = fadd double %51, 0x3FF4C14AD682046D, !dbg !402
  %53 = fadd double %42, %52, !dbg !403
  call void @llvm.dbg.value(metadata double %53, metadata !204, metadata !DIExpression()), !dbg !372
  tail call void @llvm.dbg.value(metadata double %48, metadata !332, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !371
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !404
  %55 = fadd double %54, 0x3BFD83C94FB6D2AC, !dbg !405
  tail call void @llvm.dbg.value(metadata double %55, metadata !332, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !371
  %56 = fdiv double %0, 3.000000e+00, !dbg !406
  %57 = fsub double %48, %56, !dbg !407
  store double %57, ptr %1, align 8, !dbg !408, !tbaa !160
  %58 = fmul double %0, 0x3CB0000000000000, !dbg !409
  %59 = fdiv double %58, 3.000000e+00, !dbg !410
  %60 = fadd double %59, %55, !dbg !411
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !412
  store double %60, ptr %61, align 8, !dbg !413, !tbaa !165
  br label %159

62:                                               ; preds = %16
  %63 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !414
  br i1 %63, label %64, label %135, !dbg !415

64:                                               ; preds = %62
  %65 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !416
  %66 = tail call double @llvm.floor.f64(double %65), !dbg !417
  %67 = fptosi double %66 to i32, !dbg !417
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !333, metadata !DIExpression()), !dbg !418
  %68 = fneg double %0, !dbg !419
  %69 = tail call double @exp(double noundef %68) #6, !dbg !420
  tail call void @llvm.dbg.value(metadata double %69, metadata !336, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double poison, metadata !337, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double poison, metadata !338, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !339, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !340, metadata !DIExpression()), !dbg !418
  %70 = icmp sgt i32 %67, 0, !dbg !421
  br i1 %70, label %71, label %126, !dbg !424

71:                                               ; preds = %64
  %72 = sitofp i32 %67 to double, !dbg !425
  tail call void @llvm.dbg.value(metadata double %72, metadata !338, metadata !DIExpression()), !dbg !418
  %73 = fmul double %72, %0, !dbg !426
  tail call void @llvm.dbg.value(metadata double %73, metadata !337, metadata !DIExpression()), !dbg !418
  %74 = and i32 %67, 1, !dbg !424
  %75 = icmp eq i32 %74, 0, !dbg !424
  br i1 %75, label %88, label %76, !dbg !424

76:                                               ; preds = %71
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !340, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !339, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double %72, metadata !338, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double %73, metadata !337, metadata !DIExpression()), !dbg !418
  %77 = fmul double %69, 0.000000e+00, !dbg !427
  tail call void @llvm.dbg.value(metadata double %77, metadata !339, metadata !DIExpression()), !dbg !418
  %78 = fdiv double 2.000000e+00, %73, !dbg !429
  %79 = fadd double %78, 1.000000e+00, !dbg !430
  %80 = fmul double %73, %73, !dbg !431
  %81 = fdiv double 2.000000e+00, %80, !dbg !432
  %82 = fadd double %79, %81, !dbg !433
  %83 = fdiv double %82, %72, !dbg !434
  %84 = fadd double %77, %83, !dbg !435
  tail call void @llvm.dbg.value(metadata double %84, metadata !339, metadata !DIExpression()), !dbg !418
  %85 = fadd double %72, -1.000000e+00, !dbg !436
  tail call void @llvm.dbg.value(metadata double %85, metadata !338, metadata !DIExpression()), !dbg !418
  %86 = fsub double %73, %0, !dbg !437
  tail call void @llvm.dbg.value(metadata double %86, metadata !337, metadata !DIExpression()), !dbg !418
  %87 = add nsw i32 %67, -1, !dbg !438
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !340, metadata !DIExpression()), !dbg !418
  br label %88, !dbg !424

88:                                               ; preds = %76, %71
  %89 = phi i32 [ %67, %71 ], [ %87, %76 ]
  %90 = phi double [ 0.000000e+00, %71 ], [ %84, %76 ]
  %91 = phi double [ %72, %71 ], [ %85, %76 ]
  %92 = phi double [ %73, %71 ], [ %86, %76 ]
  %93 = phi double [ undef, %71 ], [ %84, %76 ]
  %94 = icmp eq i32 %67, 1, !dbg !424
  br i1 %94, label %123, label %95, !dbg !424

95:                                               ; preds = %88, %95
  %96 = phi i32 [ %120, %95 ], [ %89, %88 ]
  %97 = phi double [ %117, %95 ], [ %90, %88 ]
  %98 = phi double [ %118, %95 ], [ %91, %88 ]
  %99 = phi double [ %119, %95 ], [ %92, %88 ]
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !340, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double %97, metadata !339, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double %98, metadata !338, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double %99, metadata !337, metadata !DIExpression()), !dbg !418
  %100 = fmul double %69, %97, !dbg !427
  tail call void @llvm.dbg.value(metadata double %100, metadata !339, metadata !DIExpression()), !dbg !418
  %101 = fdiv double 2.000000e+00, %99, !dbg !429
  %102 = fadd double %101, 1.000000e+00, !dbg !430
  %103 = fmul double %99, %99, !dbg !431
  %104 = fdiv double 2.000000e+00, %103, !dbg !432
  %105 = fadd double %102, %104, !dbg !433
  %106 = fdiv double %105, %98, !dbg !434
  %107 = fadd double %100, %106, !dbg !435
  tail call void @llvm.dbg.value(metadata double %107, metadata !339, metadata !DIExpression()), !dbg !418
  %108 = fadd double %98, -1.000000e+00, !dbg !436
  tail call void @llvm.dbg.value(metadata double %108, metadata !338, metadata !DIExpression()), !dbg !418
  %109 = fsub double %99, %0, !dbg !437
  tail call void @llvm.dbg.value(metadata double %109, metadata !337, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !340, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !418
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !340, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !418
  tail call void @llvm.dbg.value(metadata double %107, metadata !339, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double %108, metadata !338, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata double %109, metadata !337, metadata !DIExpression()), !dbg !418
  %110 = fmul double %69, %107, !dbg !427
  tail call void @llvm.dbg.value(metadata double %110, metadata !339, metadata !DIExpression()), !dbg !418
  %111 = fdiv double 2.000000e+00, %109, !dbg !429
  %112 = fadd double %111, 1.000000e+00, !dbg !430
  %113 = fmul double %109, %109, !dbg !431
  %114 = fdiv double 2.000000e+00, %113, !dbg !432
  %115 = fadd double %112, %114, !dbg !433
  %116 = fdiv double %115, %108, !dbg !434
  %117 = fadd double %110, %116, !dbg !435
  tail call void @llvm.dbg.value(metadata double %117, metadata !339, metadata !DIExpression()), !dbg !418
  %118 = fadd double %108, -1.000000e+00, !dbg !436
  tail call void @llvm.dbg.value(metadata double %118, metadata !338, metadata !DIExpression()), !dbg !418
  %119 = fsub double %109, %0, !dbg !437
  tail call void @llvm.dbg.value(metadata double %119, metadata !337, metadata !DIExpression()), !dbg !418
  %120 = add nsw i32 %96, -2, !dbg !438
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !340, metadata !DIExpression()), !dbg !418
  %121 = add i32 %96, -3, !dbg !421
  %122 = icmp ult i32 %121, -2, !dbg !421
  br i1 %122, label %95, label %123, !dbg !424, !llvm.loop !439

123:                                              ; preds = %95, %88
  %124 = phi double [ %93, %88 ], [ %117, %95 ], !dbg !435
  %125 = fmul double %124, 2.000000e+00, !dbg !441
  br label %126, !dbg !442

126:                                              ; preds = %123, %64
  %127 = phi double [ 0.000000e+00, %64 ], [ %125, %123 ], !dbg !418
  %128 = fmul double %0, %0, !dbg !442
  %129 = fdiv double 0x40133BA004F00621, %128, !dbg !443
  %130 = fmul double %69, %127, !dbg !444
  %131 = fsub double %129, %130, !dbg !445
  store double %131, ptr %1, align 8, !dbg !446, !tbaa !160
  %132 = tail call double @llvm.fabs.f64(double %131), !dbg !447
  %133 = fmul double %132, 0x3CB0000000000000, !dbg !448
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !449
  store double %133, ptr %134, align 8, !dbg !450, !tbaa !165
  br label %159

135:                                              ; preds = %62
  %136 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !451
  br i1 %136, label %137, label %151, !dbg !452

137:                                              ; preds = %135
  %138 = fmul double %0, %0, !dbg !453
  tail call void @llvm.dbg.value(metadata double %138, metadata !341, metadata !DIExpression()), !dbg !454
  %139 = fmul double %0, 2.000000e+00, !dbg !455
  %140 = fadd double %139, 2.000000e+00, !dbg !456
  %141 = fadd double %138, %140, !dbg !457
  tail call void @llvm.dbg.value(metadata double %141, metadata !344, metadata !DIExpression()), !dbg !454
  %142 = fmul double %141, 2.000000e+00, !dbg !458
  %143 = fneg double %0, !dbg !459
  %144 = tail call double @exp(double noundef %143) #6, !dbg !460
  %145 = fmul double %142, %144, !dbg !461
  %146 = fsub double 0x40133BA004F00621, %145, !dbg !462
  %147 = fdiv double %146, %138, !dbg !463
  store double %147, ptr %1, align 8, !dbg !464, !tbaa !160
  %148 = tail call double @llvm.fabs.f64(double %147), !dbg !465
  %149 = fmul double %148, 0x3CB0000000000000, !dbg !466
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !467
  store double %149, ptr %150, align 8, !dbg !468, !tbaa !165
  br label %159

151:                                              ; preds = %135
  %152 = fdiv double 0x40133BA004F00621, %0, !dbg !469
  %153 = fdiv double %152, %0, !dbg !471
  store double %153, ptr %1, align 8, !dbg !472, !tbaa !160
  %154 = fmul double %153, 0x3CB0000000000000, !dbg !473
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !474
  store double %154, ptr %155, align 8, !dbg !475, !tbaa !165
  %156 = tail call double @llvm.fabs.f64(double %153), !dbg !476
  %157 = fcmp olt double %156, 0x10000000000000, !dbg !476
  br i1 %157, label %158, label %159, !dbg !478

158:                                              ; preds = %151
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 297, i32 noundef 15) #6, !dbg !479
  br label %159, !dbg !479

159:                                              ; preds = %151, %158, %137, %126, %45, %8, %4
  %160 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %45 ], [ 0, %126 ], [ 0, %137 ], [ 15, %158 ], [ 0, %151 ], !dbg !481
  ret i32 %160, !dbg !482
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_3_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !483 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !485, metadata !DIExpression()), !dbg !511
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !486, metadata !DIExpression()), !dbg !511
  tail call void @llvm.dbg.value(metadata double 0x40337B587020D351, metadata !487, metadata !DIExpression()), !dbg !511
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !488, metadata !DIExpression()), !dbg !511
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !512
  br i1 %3, label %4, label %6, !dbg !513

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !514, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !514
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !514, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 311, i32 noundef 1) #6, !dbg !517
  br label %169, !dbg !517

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !519
  br i1 %7, label %8, label %17, !dbg !520

8:                                                ; preds = %6
  %9 = fmul double %0, 3.000000e+00, !dbg !521
  %10 = fmul double %9, 1.250000e-01, !dbg !523
  %11 = fsub double 1.000000e+00, %10, !dbg !524
  %12 = fmul double %0, %0, !dbg !525
  %13 = fdiv double %12, 2.000000e+01, !dbg !526
  %14 = fadd double %13, %11, !dbg !527
  store double %14, ptr %1, align 8, !dbg !528, !tbaa !160
  %15 = fmul double %14, 0x3CB0000000000000, !dbg !529
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !530
  store double %15, ptr %16, align 8, !dbg !531, !tbaa !165
  br label %169, !dbg !532

17:                                               ; preds = %6
  %18 = fcmp ugt double %0, 4.000000e+00, !dbg !533
  br i1 %18, label %62, label %19, !dbg !534

19:                                               ; preds = %17
  %20 = fmul double %0, %0, !dbg !535
  %21 = fmul double %20, 1.250000e-01, !dbg !536
  %22 = fadd double %21, -1.000000e+00, !dbg !537
  tail call void @llvm.dbg.value(metadata double %22, metadata !489, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata !188, metadata !189, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata double %22, metadata !197, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr undef, metadata !198, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !539
  %23 = fmul double %22, 2.000000e+00, !dbg !541
  %24 = fadd double %23, 1.000000e+00, !dbg !542
  %25 = fadd double %24, -1.000000e+00, !dbg !543
  %26 = fmul double %25, 5.000000e-01, !dbg !544
  call void @llvm.dbg.value(metadata double %26, metadata !202, metadata !DIExpression()), !dbg !539
  %27 = fmul double %26, 2.000000e+00, !dbg !545
  call void @llvm.dbg.value(metadata double %27, metadata !203, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !204, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 16, metadata !199, metadata !DIExpression()), !dbg !539
  br label %28, !dbg !546

28:                                               ; preds = %28, %19
  %29 = phi i64 [ 16, %19 ], [ %44, %28 ]
  %30 = phi double [ 0.000000e+00, %19 ], [ %37, %28 ]
  %31 = phi double [ 0.000000e+00, %19 ], [ %43, %28 ]
  %32 = phi double [ 0.000000e+00, %19 ], [ %30, %28 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !199, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata double %30, metadata !200, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata double %31, metadata !204, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata double %32, metadata !201, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata double %30, metadata !205, metadata !DIExpression()), !dbg !547
  %33 = fmul double %27, %30, !dbg !548
  %34 = fsub double %33, %32, !dbg !549
  %35 = getelementptr inbounds double, ptr @adeb3_data, i64 %29, !dbg !550
  %36 = load double, ptr %35, align 8, !dbg !550, !tbaa !223
  %37 = fadd double %34, %36, !dbg !551
  call void @llvm.dbg.value(metadata double %37, metadata !200, metadata !DIExpression()), !dbg !539
  %38 = tail call double @llvm.fabs.f64(double %33), !dbg !552
  %39 = tail call double @llvm.fabs.f64(double %32), !dbg !553
  %40 = fadd double %38, %39, !dbg !554
  %41 = tail call double @llvm.fabs.f64(double %36), !dbg !555
  %42 = fadd double %40, %41, !dbg !556
  %43 = fadd double %31, %42, !dbg !557
  call void @llvm.dbg.value(metadata double %43, metadata !204, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata double %30, metadata !201, metadata !DIExpression()), !dbg !539
  %44 = add nsw i64 %29, -1, !dbg !558
  call void @llvm.dbg.value(metadata i64 %44, metadata !199, metadata !DIExpression()), !dbg !539
  %45 = icmp ugt i64 %29, 1, !dbg !559
  br i1 %45, label %28, label %46, !dbg !546, !llvm.loop !560

46:                                               ; preds = %28
  call void @llvm.dbg.value(metadata double %37, metadata !209, metadata !DIExpression()), !dbg !562
  %47 = fmul double %26, %37, !dbg !563
  %48 = fsub double %47, %30, !dbg !564
  %49 = fadd double %48, 0x3FF5A9720D5510F3, !dbg !565
  call void @llvm.dbg.value(metadata double %49, metadata !200, metadata !DIExpression()), !dbg !539
  %50 = tail call double @llvm.fabs.f64(double %47), !dbg !566
  %51 = tail call double @llvm.fabs.f64(double %30), !dbg !567
  %52 = fadd double %51, %50, !dbg !568
  %53 = fadd double %52, 0x3FF5A9720D5510F3, !dbg !569
  %54 = fadd double %43, %53, !dbg !570
  call void @llvm.dbg.value(metadata double %54, metadata !204, metadata !DIExpression()), !dbg !539
  tail call void @llvm.dbg.value(metadata double %49, metadata !494, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !538
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !571
  %56 = fadd double %55, 2.400000e-18, !dbg !572
  tail call void @llvm.dbg.value(metadata double %56, metadata !494, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !538
  %57 = fmul double %0, 3.750000e-01, !dbg !573
  %58 = fsub double %49, %57, !dbg !574
  store double %58, ptr %1, align 8, !dbg !575, !tbaa !160
  %59 = fmul double %0, 0x3C98000000000000, !dbg !576
  %60 = fadd double %59, %56, !dbg !577
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !578
  store double %60, ptr %61, align 8, !dbg !579, !tbaa !165
  br label %169

62:                                               ; preds = %17
  %63 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !580
  br i1 %63, label %64, label %141, !dbg !581

64:                                               ; preds = %62
  %65 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !582
  %66 = tail call double @llvm.floor.f64(double %65), !dbg !583
  %67 = fptosi double %66 to i32, !dbg !583
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !495, metadata !DIExpression()), !dbg !584
  %68 = fneg double %0, !dbg !585
  %69 = tail call double @exp(double noundef %68) #6, !dbg !586
  tail call void @llvm.dbg.value(metadata double %69, metadata !498, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata double poison, metadata !499, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata double poison, metadata !500, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !501, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !502, metadata !DIExpression()), !dbg !584
  %70 = icmp sgt i32 %67, 0, !dbg !587
  br i1 %70, label %71, label %132, !dbg !588

71:                                               ; preds = %64
  %72 = sitofp i32 %67 to double, !dbg !589
  tail call void @llvm.dbg.value(metadata double %72, metadata !500, metadata !DIExpression()), !dbg !584
  %73 = fmul double %72, %0, !dbg !590
  tail call void @llvm.dbg.value(metadata double %73, metadata !499, metadata !DIExpression()), !dbg !584
  %74 = and i32 %67, 1, !dbg !588
  %75 = icmp eq i32 %74, 0, !dbg !588
  br i1 %75, label %90, label %76, !dbg !588

76:                                               ; preds = %71
  tail call void @llvm.dbg.value(metadata double %73, metadata !499, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !502, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !501, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata double %72, metadata !500, metadata !DIExpression()), !dbg !584
  %77 = fdiv double 1.000000e+00, %73, !dbg !591
  tail call void @llvm.dbg.value(metadata double %77, metadata !503, metadata !DIExpression()), !dbg !592
  %78 = fmul double %69, 0.000000e+00, !dbg !593
  tail call void @llvm.dbg.value(metadata double %78, metadata !501, metadata !DIExpression()), !dbg !584
  %79 = fmul double %77, 6.000000e+00, !dbg !594
  %80 = fadd double %79, 6.000000e+00, !dbg !595
  %81 = fmul double %77, %80, !dbg !596
  %82 = fadd double %81, 3.000000e+00, !dbg !597
  %83 = fmul double %77, %82, !dbg !598
  %84 = fadd double %83, 1.000000e+00, !dbg !599
  %85 = fdiv double %84, %72, !dbg !600
  %86 = fadd double %78, %85, !dbg !601
  tail call void @llvm.dbg.value(metadata double %86, metadata !501, metadata !DIExpression()), !dbg !584
  %87 = fadd double %72, -1.000000e+00, !dbg !602
  tail call void @llvm.dbg.value(metadata double %87, metadata !500, metadata !DIExpression()), !dbg !584
  %88 = fsub double %73, %0, !dbg !603
  tail call void @llvm.dbg.value(metadata double %88, metadata !499, metadata !DIExpression()), !dbg !584
  %89 = add nsw i32 %67, -1, !dbg !604
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !502, metadata !DIExpression()), !dbg !584
  br label %90, !dbg !588

90:                                               ; preds = %76, %71
  %91 = phi double [ %73, %71 ], [ %88, %76 ]
  %92 = phi i32 [ %67, %71 ], [ %89, %76 ]
  %93 = phi double [ 0.000000e+00, %71 ], [ %86, %76 ]
  %94 = phi double [ %72, %71 ], [ %87, %76 ]
  %95 = phi double [ undef, %71 ], [ %86, %76 ]
  %96 = icmp eq i32 %67, 1, !dbg !588
  br i1 %96, label %129, label %97, !dbg !588

97:                                               ; preds = %90, %97
  %98 = phi double [ %125, %97 ], [ %91, %90 ]
  %99 = phi i32 [ %126, %97 ], [ %92, %90 ]
  %100 = phi double [ %123, %97 ], [ %93, %90 ]
  %101 = phi double [ %124, %97 ], [ %94, %90 ]
  tail call void @llvm.dbg.value(metadata double %98, metadata !499, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !502, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata double %100, metadata !501, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata double %101, metadata !500, metadata !DIExpression()), !dbg !584
  %102 = fdiv double 1.000000e+00, %98, !dbg !591
  tail call void @llvm.dbg.value(metadata double %102, metadata !503, metadata !DIExpression()), !dbg !592
  %103 = fmul double %69, %100, !dbg !593
  tail call void @llvm.dbg.value(metadata double %103, metadata !501, metadata !DIExpression()), !dbg !584
  %104 = fmul double %102, 6.000000e+00, !dbg !594
  %105 = fadd double %104, 6.000000e+00, !dbg !595
  %106 = fmul double %102, %105, !dbg !596
  %107 = fadd double %106, 3.000000e+00, !dbg !597
  %108 = fmul double %102, %107, !dbg !598
  %109 = fadd double %108, 1.000000e+00, !dbg !599
  %110 = fdiv double %109, %101, !dbg !600
  %111 = fadd double %103, %110, !dbg !601
  tail call void @llvm.dbg.value(metadata double %111, metadata !501, metadata !DIExpression()), !dbg !584
  %112 = fadd double %101, -1.000000e+00, !dbg !602
  tail call void @llvm.dbg.value(metadata double %112, metadata !500, metadata !DIExpression()), !dbg !584
  %113 = fsub double %98, %0, !dbg !603
  tail call void @llvm.dbg.value(metadata double %113, metadata !499, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !584
  tail call void @llvm.dbg.value(metadata double %113, metadata !499, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !584
  tail call void @llvm.dbg.value(metadata double %111, metadata !501, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata double %112, metadata !500, metadata !DIExpression()), !dbg !584
  %114 = fdiv double 1.000000e+00, %113, !dbg !591
  tail call void @llvm.dbg.value(metadata double %114, metadata !503, metadata !DIExpression()), !dbg !592
  %115 = fmul double %69, %111, !dbg !593
  tail call void @llvm.dbg.value(metadata double %115, metadata !501, metadata !DIExpression()), !dbg !584
  %116 = fmul double %114, 6.000000e+00, !dbg !594
  %117 = fadd double %116, 6.000000e+00, !dbg !595
  %118 = fmul double %114, %117, !dbg !596
  %119 = fadd double %118, 3.000000e+00, !dbg !597
  %120 = fmul double %114, %119, !dbg !598
  %121 = fadd double %120, 1.000000e+00, !dbg !599
  %122 = fdiv double %121, %112, !dbg !600
  %123 = fadd double %115, %122, !dbg !601
  tail call void @llvm.dbg.value(metadata double %123, metadata !501, metadata !DIExpression()), !dbg !584
  %124 = fadd double %112, -1.000000e+00, !dbg !602
  tail call void @llvm.dbg.value(metadata double %124, metadata !500, metadata !DIExpression()), !dbg !584
  %125 = fsub double %113, %0, !dbg !603
  tail call void @llvm.dbg.value(metadata double %125, metadata !499, metadata !DIExpression()), !dbg !584
  %126 = add nsw i32 %99, -2, !dbg !604
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !502, metadata !DIExpression()), !dbg !584
  %127 = add i32 %99, -3, !dbg !587
  %128 = icmp ult i32 %127, -2, !dbg !587
  br i1 %128, label %97, label %129, !dbg !588, !llvm.loop !605

129:                                              ; preds = %97, %90
  %130 = phi double [ %95, %90 ], [ %123, %97 ], !dbg !601
  %131 = fmul double %130, 3.000000e+00, !dbg !607
  br label %132, !dbg !608

132:                                              ; preds = %129, %64
  %133 = phi double [ 0.000000e+00, %64 ], [ %131, %129 ], !dbg !584
  %134 = fmul double %0, %0, !dbg !608
  %135 = fmul double %134, %0, !dbg !609
  %136 = fdiv double 0x40337B587020D351, %135, !dbg !610
  %137 = fmul double %69, %133, !dbg !611
  %138 = fsub double %136, %137, !dbg !612
  store double %138, ptr %1, align 8, !dbg !613, !tbaa !160
  %139 = fmul double %138, 0x3CB0000000000000, !dbg !614
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !615
  store double %139, ptr %140, align 8, !dbg !616, !tbaa !165
  br label %169

141:                                              ; preds = %62
  %142 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !617
  br i1 %142, label %143, label %160, !dbg !618

143:                                              ; preds = %141
  %144 = fmul double %0, %0, !dbg !619
  %145 = fmul double %144, %0, !dbg !620
  tail call void @llvm.dbg.value(metadata double %145, metadata !507, metadata !DIExpression()), !dbg !621
  %146 = fmul double %0, 6.000000e+00, !dbg !622
  %147 = fadd double %146, 6.000000e+00, !dbg !623
  %148 = fmul double %0, 3.000000e+00, !dbg !624
  %149 = fmul double %148, %0, !dbg !625
  %150 = fadd double %147, %149, !dbg !626
  %151 = fadd double %145, %150, !dbg !627
  tail call void @llvm.dbg.value(metadata double %151, metadata !510, metadata !DIExpression()), !dbg !621
  %152 = fmul double %151, 3.000000e+00, !dbg !628
  %153 = fneg double %0, !dbg !629
  %154 = tail call double @exp(double noundef %153) #6, !dbg !630
  %155 = fmul double %152, %154, !dbg !631
  %156 = fsub double 0x40337B587020D351, %155, !dbg !632
  %157 = fdiv double %156, %145, !dbg !633
  store double %157, ptr %1, align 8, !dbg !634, !tbaa !160
  %158 = fmul double %157, 0x3CB0000000000000, !dbg !635
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !636
  store double %158, ptr %159, align 8, !dbg !637, !tbaa !165
  br label %169

160:                                              ; preds = %141
  %161 = fdiv double 0x40337B587020D351, %0, !dbg !638
  %162 = fdiv double %161, %0, !dbg !640
  %163 = fdiv double %162, %0, !dbg !641
  store double %163, ptr %1, align 8, !dbg !642, !tbaa !160
  %164 = fmul double %163, 0x3CB0000000000000, !dbg !643
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !644
  store double %164, ptr %165, align 8, !dbg !645, !tbaa !165
  %166 = tail call double @llvm.fabs.f64(double %163), !dbg !646
  %167 = fcmp olt double %166, 0x10000000000000, !dbg !646
  br i1 %167, label %168, label %169, !dbg !648

168:                                              ; preds = %160
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 15) #6, !dbg !649
  br label %169, !dbg !649

169:                                              ; preds = %160, %168, %143, %132, %46, %8, %4
  %170 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %46 ], [ 0, %132 ], [ 0, %143 ], [ 15, %168 ], [ 0, %160 ], !dbg !651
  ret i32 %170, !dbg !652
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_4_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !653 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !655, metadata !DIExpression()), !dbg !682
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !656, metadata !DIExpression()), !dbg !682
  tail call void @llvm.dbg.value(metadata double 0x4058E2E2562FBB35, metadata !657, metadata !DIExpression()), !dbg !682
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !658, metadata !DIExpression()), !dbg !682
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !683
  br i1 %3, label %4, label %6, !dbg !684

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !685, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !685
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !685, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 368, i32 noundef 1) #6, !dbg !688
  br label %140, !dbg !688

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !690
  br i1 %7, label %8, label %17, !dbg !691

8:                                                ; preds = %6
  %9 = fmul double %0, 2.000000e+00, !dbg !692
  %10 = fdiv double %9, 5.000000e+00, !dbg !694
  %11 = fsub double 1.000000e+00, %10, !dbg !695
  %12 = fmul double %0, %0, !dbg !696
  %13 = fdiv double %12, 1.800000e+01, !dbg !697
  %14 = fadd double %13, %11, !dbg !698
  store double %14, ptr %1, align 8, !dbg !699, !tbaa !160
  %15 = fmul double %14, 0x3CB0000000000000, !dbg !700
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !701
  store double %15, ptr %16, align 8, !dbg !702, !tbaa !165
  br label %140, !dbg !703

17:                                               ; preds = %6
  %18 = fcmp ugt double %0, 4.000000e+00, !dbg !704
  br i1 %18, label %64, label %19, !dbg !705

19:                                               ; preds = %17
  %20 = fmul double %0, %0, !dbg !706
  %21 = fmul double %20, 1.250000e-01, !dbg !707
  %22 = fadd double %21, -1.000000e+00, !dbg !708
  tail call void @llvm.dbg.value(metadata double %22, metadata !659, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata !188, metadata !189, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %22, metadata !197, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata ptr undef, metadata !198, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !710
  %23 = fmul double %22, 2.000000e+00, !dbg !712
  %24 = fadd double %23, 1.000000e+00, !dbg !713
  %25 = fadd double %24, -1.000000e+00, !dbg !714
  %26 = fmul double %25, 5.000000e-01, !dbg !715
  call void @llvm.dbg.value(metadata double %26, metadata !202, metadata !DIExpression()), !dbg !710
  %27 = fmul double %26, 2.000000e+00, !dbg !716
  call void @llvm.dbg.value(metadata double %27, metadata !203, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !204, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32 16, metadata !199, metadata !DIExpression()), !dbg !710
  br label %28, !dbg !717

28:                                               ; preds = %28, %19
  %29 = phi i64 [ 16, %19 ], [ %44, %28 ]
  %30 = phi double [ 0.000000e+00, %19 ], [ %37, %28 ]
  %31 = phi double [ 0.000000e+00, %19 ], [ %43, %28 ]
  %32 = phi double [ 0.000000e+00, %19 ], [ %30, %28 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !199, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %30, metadata !200, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %31, metadata !204, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %32, metadata !201, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %30, metadata !205, metadata !DIExpression()), !dbg !718
  %33 = fmul double %27, %30, !dbg !719
  %34 = fsub double %33, %32, !dbg !720
  %35 = getelementptr inbounds double, ptr @adeb4_data, i64 %29, !dbg !721
  %36 = load double, ptr %35, align 8, !dbg !721, !tbaa !223
  %37 = fadd double %34, %36, !dbg !722
  call void @llvm.dbg.value(metadata double %37, metadata !200, metadata !DIExpression()), !dbg !710
  %38 = tail call double @llvm.fabs.f64(double %33), !dbg !723
  %39 = tail call double @llvm.fabs.f64(double %32), !dbg !724
  %40 = fadd double %38, %39, !dbg !725
  %41 = tail call double @llvm.fabs.f64(double %36), !dbg !726
  %42 = fadd double %40, %41, !dbg !727
  %43 = fadd double %31, %42, !dbg !728
  call void @llvm.dbg.value(metadata double %43, metadata !204, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata double %30, metadata !201, metadata !DIExpression()), !dbg !710
  %44 = add nsw i64 %29, -1, !dbg !729
  call void @llvm.dbg.value(metadata i64 %44, metadata !199, metadata !DIExpression()), !dbg !710
  %45 = icmp ugt i64 %29, 1, !dbg !730
  br i1 %45, label %28, label %46, !dbg !717, !llvm.loop !731

46:                                               ; preds = %28
  call void @llvm.dbg.value(metadata double %37, metadata !209, metadata !DIExpression()), !dbg !733
  %47 = fmul double %26, %37, !dbg !734
  %48 = fsub double %47, %30, !dbg !735
  %49 = fadd double %48, 0x3FF64144C07A0BE1, !dbg !736
  call void @llvm.dbg.value(metadata double %49, metadata !200, metadata !DIExpression()), !dbg !710
  %50 = tail call double @llvm.fabs.f64(double %47), !dbg !737
  %51 = tail call double @llvm.fabs.f64(double %30), !dbg !738
  %52 = fadd double %51, %50, !dbg !739
  %53 = fadd double %52, 0x3FF64144C07A0BE1, !dbg !740
  %54 = fadd double %43, %53, !dbg !741
  call void @llvm.dbg.value(metadata double %54, metadata !204, metadata !DIExpression()), !dbg !710
  tail call void @llvm.dbg.value(metadata double %49, metadata !664, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !709
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !742
  %56 = fadd double %55, 3.200000e-18, !dbg !743
  tail call void @llvm.dbg.value(metadata double %56, metadata !664, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !709
  %57 = fmul double %0, 2.000000e+00, !dbg !744
  %58 = fdiv double %57, 5.000000e+00, !dbg !745
  %59 = fsub double %49, %58, !dbg !746
  store double %59, ptr %1, align 8, !dbg !747, !tbaa !160
  %60 = fmul double %0, 0x3CC0000000000000, !dbg !748
  %61 = fdiv double %60, 5.000000e+00, !dbg !749
  %62 = fadd double %61, %56, !dbg !750
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !751
  store double %62, ptr %63, align 8, !dbg !752, !tbaa !165
  br label %140

64:                                               ; preds = %17
  %65 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !753
  br i1 %65, label %66, label %109, !dbg !754

66:                                               ; preds = %64
  %67 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !755
  %68 = tail call double @llvm.floor.f64(double %67), !dbg !756
  %69 = fptosi double %68 to i32, !dbg !756
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !665, metadata !DIExpression()), !dbg !757
  %70 = fneg double %0, !dbg !758
  %71 = tail call double @exp(double noundef %70) #6, !dbg !759
  tail call void @llvm.dbg.value(metadata double %71, metadata !668, metadata !DIExpression()), !dbg !757
  tail call void @llvm.dbg.value(metadata double poison, metadata !669, metadata !DIExpression()), !dbg !757
  tail call void @llvm.dbg.value(metadata double poison, metadata !670, metadata !DIExpression()), !dbg !757
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !671, metadata !DIExpression()), !dbg !757
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !672, metadata !DIExpression()), !dbg !757
  %72 = icmp sgt i32 %69, 0, !dbg !760
  br i1 %72, label %73, label %99, !dbg !761

73:                                               ; preds = %66
  %74 = sitofp i32 %69 to double, !dbg !762
  tail call void @llvm.dbg.value(metadata double %74, metadata !670, metadata !DIExpression()), !dbg !757
  %75 = fmul double %74, %0, !dbg !763
  tail call void @llvm.dbg.value(metadata double %75, metadata !669, metadata !DIExpression()), !dbg !757
  br label %76, !dbg !761

76:                                               ; preds = %73, %76
  %77 = phi double [ %94, %76 ], [ %75, %73 ]
  %78 = phi double [ %93, %76 ], [ %74, %73 ]
  %79 = phi i32 [ %95, %76 ], [ %69, %73 ]
  %80 = phi double [ %92, %76 ], [ 0.000000e+00, %73 ]
  tail call void @llvm.dbg.value(metadata double %77, metadata !669, metadata !DIExpression()), !dbg !757
  tail call void @llvm.dbg.value(metadata double %78, metadata !670, metadata !DIExpression()), !dbg !757
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !672, metadata !DIExpression()), !dbg !757
  tail call void @llvm.dbg.value(metadata double %80, metadata !671, metadata !DIExpression()), !dbg !757
  %81 = fdiv double 1.000000e+00, %77, !dbg !764
  tail call void @llvm.dbg.value(metadata double %81, metadata !673, metadata !DIExpression()), !dbg !765
  %82 = fmul double %71, %80, !dbg !766
  tail call void @llvm.dbg.value(metadata double %82, metadata !671, metadata !DIExpression()), !dbg !757
  %83 = fmul double %81, 2.400000e+01, !dbg !767
  %84 = fadd double %83, 2.400000e+01, !dbg !768
  %85 = fmul double %81, %84, !dbg !769
  %86 = fadd double %85, 1.200000e+01, !dbg !770
  %87 = fmul double %81, %86, !dbg !771
  %88 = fadd double %87, 4.000000e+00, !dbg !772
  %89 = fmul double %81, %88, !dbg !773
  %90 = fadd double %89, 1.000000e+00, !dbg !774
  %91 = fdiv double %90, %78, !dbg !775
  %92 = fadd double %82, %91, !dbg !776
  tail call void @llvm.dbg.value(metadata double %92, metadata !671, metadata !DIExpression()), !dbg !757
  %93 = fadd double %78, -1.000000e+00, !dbg !777
  tail call void @llvm.dbg.value(metadata double %93, metadata !670, metadata !DIExpression()), !dbg !757
  %94 = fsub double %77, %0, !dbg !778
  tail call void @llvm.dbg.value(metadata double %94, metadata !669, metadata !DIExpression()), !dbg !757
  %95 = add nsw i32 %79, -1, !dbg !779
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !672, metadata !DIExpression()), !dbg !757
  %96 = icmp ugt i32 %79, 1, !dbg !760
  br i1 %96, label %76, label %97, !dbg !761, !llvm.loop !780

97:                                               ; preds = %76
  %98 = fmul double %92, 4.000000e+00, !dbg !782
  br label %99, !dbg !783

99:                                               ; preds = %97, %66
  %100 = phi double [ 0.000000e+00, %66 ], [ %98, %97 ], !dbg !757
  %101 = fmul double %0, %0, !dbg !783
  %102 = fmul double %101, %0, !dbg !784
  %103 = fmul double %102, %0, !dbg !785
  %104 = fdiv double 0x4058E2E2562FBB35, %103, !dbg !786
  %105 = fmul double %71, %100, !dbg !787
  %106 = fsub double %104, %105, !dbg !788
  store double %106, ptr %1, align 8, !dbg !789, !tbaa !160
  %107 = fmul double %106, 0x3CB0000000000000, !dbg !790
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !791
  store double %107, ptr %108, align 8, !dbg !792, !tbaa !165
  br label %140

109:                                              ; preds = %64
  %110 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !793
  br i1 %110, label %111, label %130, !dbg !794

111:                                              ; preds = %109
  %112 = fmul double %0, %0, !dbg !795
  tail call void @llvm.dbg.value(metadata double %112, metadata !677, metadata !DIExpression()), !dbg !796
  %113 = fmul double %112, %112, !dbg !797
  tail call void @llvm.dbg.value(metadata double %113, metadata !680, metadata !DIExpression()), !dbg !796
  %114 = fmul double %0, 2.400000e+01, !dbg !798
  %115 = fadd double %114, 2.400000e+01, !dbg !799
  %116 = fmul double %112, 1.200000e+01, !dbg !800
  %117 = fadd double %115, %116, !dbg !801
  %118 = fmul double %112, 4.000000e+00, !dbg !802
  %119 = fmul double %118, %0, !dbg !803
  %120 = fadd double %117, %119, !dbg !804
  %121 = fadd double %113, %120, !dbg !805
  tail call void @llvm.dbg.value(metadata double %121, metadata !681, metadata !DIExpression()), !dbg !796
  %122 = fmul double %121, 4.000000e+00, !dbg !806
  %123 = fneg double %0, !dbg !807
  %124 = tail call double @exp(double noundef %123) #6, !dbg !808
  %125 = fmul double %122, %124, !dbg !809
  %126 = fsub double 0x4058E2E2562FBB35, %125, !dbg !810
  %127 = fdiv double %126, %113, !dbg !811
  store double %127, ptr %1, align 8, !dbg !812, !tbaa !160
  %128 = fmul double %127, 0x3CB0000000000000, !dbg !813
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !814
  store double %128, ptr %129, align 8, !dbg !815, !tbaa !165
  br label %140

130:                                              ; preds = %109
  %131 = fdiv double 0x4058E2E2562FBB35, %0, !dbg !816
  %132 = fdiv double %131, %0, !dbg !818
  %133 = fdiv double %132, %0, !dbg !819
  %134 = fdiv double %133, %0, !dbg !820
  store double %134, ptr %1, align 8, !dbg !821, !tbaa !160
  %135 = fmul double %134, 0x3CB0000000000000, !dbg !822
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !823
  store double %135, ptr %136, align 8, !dbg !824, !tbaa !165
  %137 = tail call double @llvm.fabs.f64(double %134), !dbg !825
  %138 = fcmp olt double %137, 0x10000000000000, !dbg !825
  br i1 %138, label %139, label %140, !dbg !827

139:                                              ; preds = %130
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 412, i32 noundef 15) #6, !dbg !828
  br label %140, !dbg !828

140:                                              ; preds = %130, %139, %111, %99, %46, %8, %4
  %141 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %46 ], [ 0, %99 ], [ 0, %111 ], [ 15, %139 ], [ 0, %130 ], !dbg !830
  ret i32 %141, !dbg !831
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_5_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !832 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !834, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !835, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double 0x4083133F2791AB68, metadata !836, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !837, metadata !DIExpression()), !dbg !862
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !863
  br i1 %3, label %4, label %6, !dbg !864

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !865, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !865
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !865, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 425, i32 noundef 1) #6, !dbg !868
  br label %147, !dbg !868

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !870
  br i1 %7, label %8, label %17, !dbg !871

8:                                                ; preds = %6
  %9 = fmul double %0, 5.000000e+00, !dbg !872
  %10 = fdiv double %9, 1.200000e+01, !dbg !874
  %11 = fsub double 1.000000e+00, %10, !dbg !875
  %12 = fmul double %9, %0, !dbg !876
  %13 = fdiv double %12, 8.400000e+01, !dbg !877
  %14 = fadd double %11, %13, !dbg !878
  store double %14, ptr %1, align 8, !dbg !879, !tbaa !160
  %15 = fmul double %14, 0x3CB0000000000000, !dbg !880
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !881
  store double %15, ptr %16, align 8, !dbg !882, !tbaa !165
  br label %147, !dbg !883

17:                                               ; preds = %6
  %18 = fcmp ugt double %0, 4.000000e+00, !dbg !884
  br i1 %18, label %64, label %19, !dbg !885

19:                                               ; preds = %17
  %20 = fmul double %0, %0, !dbg !886
  %21 = fmul double %20, 1.250000e-01, !dbg !887
  %22 = fadd double %21, -1.000000e+00, !dbg !888
  tail call void @llvm.dbg.value(metadata double %22, metadata !838, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata !188, metadata !189, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double %22, metadata !197, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr undef, metadata !198, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !890
  %23 = fmul double %22, 2.000000e+00, !dbg !892
  %24 = fadd double %23, 1.000000e+00, !dbg !893
  %25 = fadd double %24, -1.000000e+00, !dbg !894
  %26 = fmul double %25, 5.000000e-01, !dbg !895
  call void @llvm.dbg.value(metadata double %26, metadata !202, metadata !DIExpression()), !dbg !890
  %27 = fmul double %26, 2.000000e+00, !dbg !896
  call void @llvm.dbg.value(metadata double %27, metadata !203, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !204, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata i32 16, metadata !199, metadata !DIExpression()), !dbg !890
  br label %28, !dbg !897

28:                                               ; preds = %28, %19
  %29 = phi i64 [ 16, %19 ], [ %44, %28 ]
  %30 = phi double [ 0.000000e+00, %19 ], [ %37, %28 ]
  %31 = phi double [ 0.000000e+00, %19 ], [ %43, %28 ]
  %32 = phi double [ 0.000000e+00, %19 ], [ %30, %28 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !199, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double %30, metadata !200, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double %31, metadata !204, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double %32, metadata !201, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double %30, metadata !205, metadata !DIExpression()), !dbg !898
  %33 = fmul double %27, %30, !dbg !899
  %34 = fsub double %33, %32, !dbg !900
  %35 = getelementptr inbounds double, ptr @adeb5_data, i64 %29, !dbg !901
  %36 = load double, ptr %35, align 8, !dbg !901, !tbaa !223
  %37 = fadd double %34, %36, !dbg !902
  call void @llvm.dbg.value(metadata double %37, metadata !200, metadata !DIExpression()), !dbg !890
  %38 = tail call double @llvm.fabs.f64(double %33), !dbg !903
  %39 = tail call double @llvm.fabs.f64(double %32), !dbg !904
  %40 = fadd double %38, %39, !dbg !905
  %41 = tail call double @llvm.fabs.f64(double %36), !dbg !906
  %42 = fadd double %40, %41, !dbg !907
  %43 = fadd double %31, %42, !dbg !908
  call void @llvm.dbg.value(metadata double %43, metadata !204, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double %30, metadata !201, metadata !DIExpression()), !dbg !890
  %44 = add nsw i64 %29, -1, !dbg !909
  call void @llvm.dbg.value(metadata i64 %44, metadata !199, metadata !DIExpression()), !dbg !890
  %45 = icmp ugt i64 %29, 1, !dbg !910
  br i1 %45, label %28, label %46, !dbg !897, !llvm.loop !911

46:                                               ; preds = %28
  call void @llvm.dbg.value(metadata double %37, metadata !209, metadata !DIExpression()), !dbg !913
  %47 = fmul double %26, %37, !dbg !914
  %48 = fsub double %47, %30, !dbg !915
  %49 = fadd double %48, 0x3FF6AC1652F2C882, !dbg !916
  call void @llvm.dbg.value(metadata double %49, metadata !200, metadata !DIExpression()), !dbg !890
  %50 = tail call double @llvm.fabs.f64(double %47), !dbg !917
  %51 = tail call double @llvm.fabs.f64(double %30), !dbg !918
  %52 = fadd double %51, %50, !dbg !919
  %53 = fadd double %52, 0x3FF6AC1652F2C882, !dbg !920
  %54 = fadd double %43, %53, !dbg !921
  call void @llvm.dbg.value(metadata double %54, metadata !204, metadata !DIExpression()), !dbg !890
  tail call void @llvm.dbg.value(metadata double %49, metadata !843, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !889
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !922
  %56 = fadd double %55, 3.900000e-18, !dbg !923
  tail call void @llvm.dbg.value(metadata double %56, metadata !843, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !889
  %57 = fmul double %0, 5.000000e+00, !dbg !924
  %58 = fdiv double %57, 1.200000e+01, !dbg !925
  %59 = fsub double %49, %58, !dbg !926
  store double %59, ptr %1, align 8, !dbg !927, !tbaa !160
  %60 = fmul double %0, 0x3CD4000000000000, !dbg !928
  %61 = fdiv double %60, 1.200000e+01, !dbg !929
  %62 = fadd double %61, %56, !dbg !930
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !931
  store double %62, ptr %63, align 8, !dbg !932, !tbaa !165
  br label %147

64:                                               ; preds = %17
  %65 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !933
  br i1 %65, label %66, label %112, !dbg !934

66:                                               ; preds = %64
  %67 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !935
  %68 = tail call double @llvm.floor.f64(double %67), !dbg !936
  %69 = fptosi double %68 to i32, !dbg !936
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !844, metadata !DIExpression()), !dbg !937
  %70 = fneg double %0, !dbg !938
  %71 = tail call double @exp(double noundef %70) #6, !dbg !939
  tail call void @llvm.dbg.value(metadata double %71, metadata !847, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata double poison, metadata !848, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata double poison, metadata !849, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !850, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !851, metadata !DIExpression()), !dbg !937
  %72 = icmp sgt i32 %69, 0, !dbg !940
  br i1 %72, label %73, label %101, !dbg !941

73:                                               ; preds = %66
  %74 = sitofp i32 %69 to double, !dbg !942
  tail call void @llvm.dbg.value(metadata double %74, metadata !849, metadata !DIExpression()), !dbg !937
  %75 = fmul double %74, %0, !dbg !943
  tail call void @llvm.dbg.value(metadata double %75, metadata !848, metadata !DIExpression()), !dbg !937
  br label %76, !dbg !941

76:                                               ; preds = %73, %76
  %77 = phi double [ %96, %76 ], [ %75, %73 ]
  %78 = phi double [ %95, %76 ], [ %74, %73 ]
  %79 = phi double [ %94, %76 ], [ 0.000000e+00, %73 ]
  %80 = phi i32 [ %97, %76 ], [ %69, %73 ]
  tail call void @llvm.dbg.value(metadata double %77, metadata !848, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata double %78, metadata !849, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata double %79, metadata !850, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !851, metadata !DIExpression()), !dbg !937
  %81 = fdiv double 1.000000e+00, %77, !dbg !944
  tail call void @llvm.dbg.value(metadata double %81, metadata !852, metadata !DIExpression()), !dbg !945
  %82 = fmul double %71, %79, !dbg !946
  tail call void @llvm.dbg.value(metadata double %82, metadata !850, metadata !DIExpression()), !dbg !937
  %83 = fmul double %81, 1.200000e+02, !dbg !947
  %84 = fadd double %83, 1.200000e+02, !dbg !948
  %85 = fmul double %81, %84, !dbg !949
  %86 = fadd double %85, 6.000000e+01, !dbg !950
  %87 = fmul double %81, %86, !dbg !951
  %88 = fadd double %87, 2.000000e+01, !dbg !952
  %89 = fmul double %81, %88, !dbg !953
  %90 = fadd double %89, 5.000000e+00, !dbg !954
  %91 = fmul double %81, %90, !dbg !955
  %92 = fadd double %91, 1.000000e+00, !dbg !956
  %93 = fdiv double %92, %78, !dbg !957
  %94 = fadd double %82, %93, !dbg !958
  tail call void @llvm.dbg.value(metadata double %94, metadata !850, metadata !DIExpression()), !dbg !937
  %95 = fadd double %78, -1.000000e+00, !dbg !959
  tail call void @llvm.dbg.value(metadata double %95, metadata !849, metadata !DIExpression()), !dbg !937
  %96 = fsub double %77, %0, !dbg !960
  tail call void @llvm.dbg.value(metadata double %96, metadata !848, metadata !DIExpression()), !dbg !937
  %97 = add nsw i32 %80, -1, !dbg !961
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !851, metadata !DIExpression()), !dbg !937
  %98 = icmp ugt i32 %80, 1, !dbg !940
  br i1 %98, label %76, label %99, !dbg !941, !llvm.loop !962

99:                                               ; preds = %76
  %100 = fmul double %94, 5.000000e+00, !dbg !964
  br label %101, !dbg !965

101:                                              ; preds = %99, %66
  %102 = phi double [ 0.000000e+00, %66 ], [ %100, %99 ], !dbg !937
  %103 = fmul double %0, %0, !dbg !965
  %104 = fmul double %103, %0, !dbg !966
  %105 = fmul double %104, %0, !dbg !967
  %106 = fmul double %105, %0, !dbg !968
  %107 = fdiv double 0x4083133F2791AB68, %106, !dbg !969
  %108 = fmul double %71, %102, !dbg !970
  %109 = fsub double %107, %108, !dbg !971
  store double %109, ptr %1, align 8, !dbg !972, !tbaa !160
  %110 = fmul double %109, 0x3CB0000000000000, !dbg !973
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !974
  store double %110, ptr %111, align 8, !dbg !975, !tbaa !165
  br label %147

112:                                              ; preds = %64
  %113 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !976
  br i1 %113, label %114, label %136, !dbg !977

114:                                              ; preds = %112
  %115 = fmul double %0, %0, !dbg !978
  tail call void @llvm.dbg.value(metadata double %115, metadata !856, metadata !DIExpression()), !dbg !979
  %116 = fmul double %115, %115, !dbg !980
  tail call void @llvm.dbg.value(metadata double %116, metadata !859, metadata !DIExpression()), !dbg !979
  %117 = fmul double %116, %0, !dbg !981
  tail call void @llvm.dbg.value(metadata double %117, metadata !860, metadata !DIExpression()), !dbg !979
  %118 = fmul double %0, 1.200000e+02, !dbg !982
  %119 = fadd double %118, 1.200000e+02, !dbg !983
  %120 = fmul double %115, 6.000000e+01, !dbg !984
  %121 = fadd double %119, %120, !dbg !985
  %122 = fmul double %115, 2.000000e+01, !dbg !986
  %123 = fmul double %122, %0, !dbg !987
  %124 = fadd double %121, %123, !dbg !988
  %125 = fmul double %116, 5.000000e+00, !dbg !989
  %126 = fadd double %125, %124, !dbg !990
  %127 = fadd double %117, %126, !dbg !991
  tail call void @llvm.dbg.value(metadata double %127, metadata !861, metadata !DIExpression()), !dbg !979
  %128 = fmul double %127, 5.000000e+00, !dbg !992
  %129 = fneg double %0, !dbg !993
  %130 = tail call double @exp(double noundef %129) #6, !dbg !994
  %131 = fmul double %128, %130, !dbg !995
  %132 = fsub double 0x4083133F2791AB68, %131, !dbg !996
  %133 = fdiv double %132, %117, !dbg !997
  store double %133, ptr %1, align 8, !dbg !998, !tbaa !160
  %134 = fmul double %133, 0x3CB0000000000000, !dbg !999
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1000
  store double %134, ptr %135, align 8, !dbg !1001, !tbaa !165
  br label %147

136:                                              ; preds = %112
  %137 = fdiv double 0x4083133F2791AB68, %0, !dbg !1002
  %138 = fdiv double %137, %0, !dbg !1004
  %139 = fdiv double %138, %0, !dbg !1005
  %140 = fdiv double %139, %0, !dbg !1006
  %141 = fdiv double %140, %0, !dbg !1007
  store double %141, ptr %1, align 8, !dbg !1008, !tbaa !160
  %142 = fmul double %141, 0x3CB0000000000000, !dbg !1009
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1010
  store double %142, ptr %143, align 8, !dbg !1011, !tbaa !165
  %144 = tail call double @llvm.fabs.f64(double %141), !dbg !1012
  %145 = fcmp olt double %144, 0x10000000000000, !dbg !1012
  br i1 %145, label %146, label %147, !dbg !1014

146:                                              ; preds = %136
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 470, i32 noundef 15) #6, !dbg !1015
  br label %147, !dbg !1015

147:                                              ; preds = %136, %146, %114, %101, %46, %8, %4
  %148 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %46 ], [ 0, %101 ], [ 0, %114 ], [ 15, %146 ], [ 0, %136 ], !dbg !1017
  ret i32 %148, !dbg !1018
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_debye_6_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1019 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1021, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1022, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata double 0x40B10411A201F28E, metadata !1023, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !1024, metadata !DIExpression()), !dbg !1049
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !1050
  br i1 %3, label %4, label %6, !dbg !1051

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !1052, !tbaa !160
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1052
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !1052, !tbaa !165
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 483, i32 noundef 1) #6, !dbg !1055
  br label %154, !dbg !1055

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E66A09E667F3BCD, !dbg !1057
  br i1 %7, label %8, label %17, !dbg !1058

8:                                                ; preds = %6
  %9 = fmul double %0, 3.000000e+00, !dbg !1059
  %10 = fdiv double %9, 7.000000e+00, !dbg !1061
  %11 = fsub double 1.000000e+00, %10, !dbg !1062
  %12 = fmul double %0, %0, !dbg !1063
  %13 = fmul double %12, 6.250000e-02, !dbg !1064
  %14 = fadd double %13, %11, !dbg !1065
  store double %14, ptr %1, align 8, !dbg !1066, !tbaa !160
  %15 = fmul double %14, 0x3CB0000000000000, !dbg !1067
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1068
  store double %15, ptr %16, align 8, !dbg !1069, !tbaa !165
  br label %154, !dbg !1070

17:                                               ; preds = %6
  %18 = fcmp ugt double %0, 4.000000e+00, !dbg !1071
  br i1 %18, label %64, label %19, !dbg !1072

19:                                               ; preds = %17
  %20 = fmul double %0, %0, !dbg !1073
  %21 = fmul double %20, 1.250000e-01, !dbg !1074
  %22 = fadd double %21, -1.000000e+00, !dbg !1075
  tail call void @llvm.dbg.value(metadata double %22, metadata !1025, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata !188, metadata !189, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata double %22, metadata !197, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata ptr undef, metadata !198, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !200, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !1077
  %23 = fmul double %22, 2.000000e+00, !dbg !1079
  %24 = fadd double %23, 1.000000e+00, !dbg !1080
  %25 = fadd double %24, -1.000000e+00, !dbg !1081
  %26 = fmul double %25, 5.000000e-01, !dbg !1082
  call void @llvm.dbg.value(metadata double %26, metadata !202, metadata !DIExpression()), !dbg !1077
  %27 = fmul double %26, 2.000000e+00, !dbg !1083
  call void @llvm.dbg.value(metadata double %27, metadata !203, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !204, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i32 16, metadata !199, metadata !DIExpression()), !dbg !1077
  br label %28, !dbg !1084

28:                                               ; preds = %28, %19
  %29 = phi i64 [ 16, %19 ], [ %44, %28 ]
  %30 = phi double [ 0.000000e+00, %19 ], [ %37, %28 ]
  %31 = phi double [ 0.000000e+00, %19 ], [ %43, %28 ]
  %32 = phi double [ 0.000000e+00, %19 ], [ %30, %28 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !199, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata double %30, metadata !200, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata double %31, metadata !204, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata double %32, metadata !201, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata double %30, metadata !205, metadata !DIExpression()), !dbg !1085
  %33 = fmul double %27, %30, !dbg !1086
  %34 = fsub double %33, %32, !dbg !1087
  %35 = getelementptr inbounds double, ptr @adeb6_data, i64 %29, !dbg !1088
  %36 = load double, ptr %35, align 8, !dbg !1088, !tbaa !223
  %37 = fadd double %34, %36, !dbg !1089
  call void @llvm.dbg.value(metadata double %37, metadata !200, metadata !DIExpression()), !dbg !1077
  %38 = tail call double @llvm.fabs.f64(double %33), !dbg !1090
  %39 = tail call double @llvm.fabs.f64(double %32), !dbg !1091
  %40 = fadd double %38, %39, !dbg !1092
  %41 = tail call double @llvm.fabs.f64(double %36), !dbg !1093
  %42 = fadd double %40, %41, !dbg !1094
  %43 = fadd double %31, %42, !dbg !1095
  call void @llvm.dbg.value(metadata double %43, metadata !204, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata double %30, metadata !201, metadata !DIExpression()), !dbg !1077
  %44 = add nsw i64 %29, -1, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %44, metadata !199, metadata !DIExpression()), !dbg !1077
  %45 = icmp ugt i64 %29, 1, !dbg !1097
  br i1 %45, label %28, label %46, !dbg !1084, !llvm.loop !1098

46:                                               ; preds = %28
  call void @llvm.dbg.value(metadata double %37, metadata !209, metadata !DIExpression()), !dbg !1100
  %47 = fmul double %26, %37, !dbg !1101
  %48 = fsub double %47, %30, !dbg !1102
  %49 = fadd double %48, 0x3FF6FB3BD4E1C385, !dbg !1103
  call void @llvm.dbg.value(metadata double %49, metadata !200, metadata !DIExpression()), !dbg !1077
  %50 = tail call double @llvm.fabs.f64(double %47), !dbg !1104
  %51 = tail call double @llvm.fabs.f64(double %30), !dbg !1105
  %52 = fadd double %51, %50, !dbg !1106
  %53 = fadd double %52, 0x3FF6FB3BD4E1C385, !dbg !1107
  %54 = fadd double %43, %53, !dbg !1108
  call void @llvm.dbg.value(metadata double %54, metadata !204, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %49, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1076
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !1109
  %56 = fadd double %55, 4.400000e-18, !dbg !1110
  tail call void @llvm.dbg.value(metadata double %56, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1076
  %57 = fmul double %0, 3.000000e+00, !dbg !1111
  %58 = fdiv double %57, 7.000000e+00, !dbg !1112
  %59 = fsub double %49, %58, !dbg !1113
  store double %59, ptr %1, align 8, !dbg !1114, !tbaa !160
  %60 = fmul double %0, 0x3CC8000000000000, !dbg !1115
  %61 = fdiv double %60, 7.000000e+00, !dbg !1116
  %62 = fadd double %61, %56, !dbg !1117
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1118
  store double %62, ptr %63, align 8, !dbg !1119, !tbaa !165
  br label %154

64:                                               ; preds = %17
  %65 = fcmp olt double %0, 0x4041ACDD632F662A, !dbg !1120
  br i1 %65, label %66, label %115, !dbg !1121

66:                                               ; preds = %64
  %67 = fdiv double 0x4086232BDD7ABCD2, %0, !dbg !1122
  %68 = tail call double @llvm.floor.f64(double %67), !dbg !1123
  %69 = fptosi double %68 to i32, !dbg !1123
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !1031, metadata !DIExpression()), !dbg !1124
  %70 = fneg double %0, !dbg !1125
  %71 = tail call double @exp(double noundef %70) #6, !dbg !1126
  tail call void @llvm.dbg.value(metadata double %71, metadata !1034, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata double poison, metadata !1035, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata double poison, metadata !1036, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1037, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !1038, metadata !DIExpression()), !dbg !1124
  %72 = icmp sgt i32 %69, 0, !dbg !1127
  br i1 %72, label %73, label %103, !dbg !1128

73:                                               ; preds = %66
  %74 = sitofp i32 %69 to double, !dbg !1129
  tail call void @llvm.dbg.value(metadata double %74, metadata !1036, metadata !DIExpression()), !dbg !1124
  %75 = fmul double %74, %0, !dbg !1130
  tail call void @llvm.dbg.value(metadata double %75, metadata !1035, metadata !DIExpression()), !dbg !1124
  br label %76, !dbg !1128

76:                                               ; preds = %73, %76
  %77 = phi double [ %98, %76 ], [ %75, %73 ]
  %78 = phi double [ %97, %76 ], [ %74, %73 ]
  %79 = phi double [ %96, %76 ], [ 0.000000e+00, %73 ]
  %80 = phi i32 [ %99, %76 ], [ %69, %73 ]
  tail call void @llvm.dbg.value(metadata double %77, metadata !1035, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata double %78, metadata !1036, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata double %79, metadata !1037, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1038, metadata !DIExpression()), !dbg !1124
  %81 = fdiv double 1.000000e+00, %77, !dbg !1131
  tail call void @llvm.dbg.value(metadata double %81, metadata !1039, metadata !DIExpression()), !dbg !1132
  %82 = fmul double %71, %79, !dbg !1133
  tail call void @llvm.dbg.value(metadata double %82, metadata !1037, metadata !DIExpression()), !dbg !1124
  %83 = fmul double %81, 7.200000e+02, !dbg !1134
  %84 = fadd double %83, 7.200000e+02, !dbg !1135
  %85 = fmul double %81, %84, !dbg !1136
  %86 = fadd double %85, 3.600000e+02, !dbg !1137
  %87 = fmul double %81, %86, !dbg !1138
  %88 = fadd double %87, 1.200000e+02, !dbg !1139
  %89 = fmul double %81, %88, !dbg !1140
  %90 = fadd double %89, 3.000000e+01, !dbg !1141
  %91 = fmul double %81, %90, !dbg !1142
  %92 = fadd double %91, 6.000000e+00, !dbg !1143
  %93 = fmul double %81, %92, !dbg !1144
  %94 = fadd double %93, 1.000000e+00, !dbg !1145
  %95 = fdiv double %94, %78, !dbg !1146
  %96 = fadd double %82, %95, !dbg !1147
  tail call void @llvm.dbg.value(metadata double %96, metadata !1037, metadata !DIExpression()), !dbg !1124
  %97 = fadd double %78, -1.000000e+00, !dbg !1148
  tail call void @llvm.dbg.value(metadata double %97, metadata !1036, metadata !DIExpression()), !dbg !1124
  %98 = fsub double %77, %0, !dbg !1149
  tail call void @llvm.dbg.value(metadata double %98, metadata !1035, metadata !DIExpression()), !dbg !1124
  %99 = add nsw i32 %80, -1, !dbg !1150
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !1038, metadata !DIExpression()), !dbg !1124
  %100 = icmp ugt i32 %80, 1, !dbg !1127
  br i1 %100, label %76, label %101, !dbg !1128, !llvm.loop !1151

101:                                              ; preds = %76
  %102 = fmul double %96, 6.000000e+00, !dbg !1153
  br label %103, !dbg !1154

103:                                              ; preds = %101, %66
  %104 = phi double [ 0.000000e+00, %66 ], [ %102, %101 ], !dbg !1124
  %105 = fmul double %0, %0, !dbg !1154
  %106 = fmul double %105, %0, !dbg !1155
  %107 = fmul double %106, %0, !dbg !1156
  %108 = fmul double %107, %0, !dbg !1157
  %109 = fmul double %108, %0, !dbg !1158
  %110 = fdiv double 0x40B10411A201F28E, %109, !dbg !1159
  %111 = fmul double %71, %104, !dbg !1160
  %112 = fsub double %110, %111, !dbg !1161
  store double %112, ptr %1, align 8, !dbg !1162, !tbaa !160
  %113 = fmul double %112, 0x3CB0000000000000, !dbg !1163
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1164
  store double %113, ptr %114, align 8, !dbg !1165, !tbaa !165
  br label %154

115:                                              ; preds = %64
  %116 = fcmp olt double %0, 0x4086232BDD7ABCD2, !dbg !1166
  br i1 %116, label %117, label %142, !dbg !1167

117:                                              ; preds = %115
  %118 = fmul double %0, %0, !dbg !1168
  tail call void @llvm.dbg.value(metadata double %118, metadata !1043, metadata !DIExpression()), !dbg !1169
  %119 = fmul double %118, %118, !dbg !1170
  tail call void @llvm.dbg.value(metadata double %119, metadata !1046, metadata !DIExpression()), !dbg !1169
  %120 = fmul double %118, %119, !dbg !1171
  tail call void @llvm.dbg.value(metadata double %120, metadata !1047, metadata !DIExpression()), !dbg !1169
  %121 = fmul double %0, 7.200000e+02, !dbg !1172
  %122 = fadd double %121, 7.200000e+02, !dbg !1173
  %123 = fmul double %118, 3.600000e+02, !dbg !1174
  %124 = fadd double %122, %123, !dbg !1175
  %125 = fmul double %118, 1.200000e+02, !dbg !1176
  %126 = fmul double %125, %0, !dbg !1177
  %127 = fadd double %124, %126, !dbg !1178
  %128 = fmul double %119, 3.000000e+01, !dbg !1179
  %129 = fadd double %128, %127, !dbg !1180
  %130 = fmul double %119, 6.000000e+00, !dbg !1181
  %131 = fmul double %130, %0, !dbg !1182
  %132 = fadd double %131, %129, !dbg !1183
  %133 = fadd double %120, %132, !dbg !1184
  tail call void @llvm.dbg.value(metadata double %133, metadata !1048, metadata !DIExpression()), !dbg !1169
  %134 = fmul double %133, 6.000000e+00, !dbg !1185
  %135 = fneg double %0, !dbg !1186
  %136 = tail call double @exp(double noundef %135) #6, !dbg !1187
  %137 = fmul double %134, %136, !dbg !1188
  %138 = fsub double 0x40B10411A201F28E, %137, !dbg !1189
  %139 = fdiv double %138, %120, !dbg !1190
  store double %139, ptr %1, align 8, !dbg !1191, !tbaa !160
  %140 = fmul double %139, 0x3CB0000000000000, !dbg !1192
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1193
  store double %140, ptr %141, align 8, !dbg !1194, !tbaa !165
  br label %154

142:                                              ; preds = %115
  %143 = fdiv double 0x40B10411A201F28E, %0, !dbg !1195
  %144 = fdiv double %143, %0, !dbg !1197
  %145 = fdiv double %144, %0, !dbg !1198
  %146 = fdiv double %145, %0, !dbg !1199
  %147 = fdiv double %146, %0, !dbg !1200
  %148 = fdiv double %147, %0, !dbg !1201
  store double %148, ptr %1, align 8, !dbg !1202, !tbaa !160
  %149 = fmul double %148, 0x3CB0000000000000, !dbg !1203
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1204
  store double %149, ptr %150, align 8, !dbg !1205, !tbaa !165
  %151 = tail call double @llvm.fabs.f64(double %148), !dbg !1206
  %152 = fcmp olt double %151, 0x10000000000000, !dbg !1206
  br i1 %152, label %153, label %154, !dbg !1208

153:                                              ; preds = %142
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 528, i32 noundef 15) #6, !dbg !1209
  br label %154, !dbg !1209

154:                                              ; preds = %142, %153, %117, %103, %46, %8, %4
  %155 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %46 ], [ 0, %103 ], [ 0, %117 ], [ 15, %153 ], [ 0, %142 ], !dbg !1211
  ret i32 %155, !dbg !1212
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_1(double noundef %0) local_unnamed_addr #0 !dbg !1213 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1220
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1218, metadata !DIExpression(), metadata !1220, metadata ptr %2, metadata !DIExpression()), !dbg !1221
  tail call void @llvm.dbg.value(metadata double %0, metadata !1217, metadata !DIExpression()), !dbg !1221
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1222
  %3 = call i32 @gsl_sf_debye_1_e(double noundef %0, ptr noundef nonnull %2), !dbg !1222, !range !1223
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1219, metadata !DIExpression()), !dbg !1221
  %4 = icmp eq i32 %3, 0, !dbg !1224
  br i1 %4, label %6, label %5, !dbg !1222

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 540, i32 noundef 1) #6, !dbg !1226
  br label %6, !dbg !1226

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1222, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1229
  ret double %7, !dbg !1229
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_2(double noundef %0) local_unnamed_addr #0 !dbg !1230 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1235
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1233, metadata !DIExpression(), metadata !1235, metadata ptr %2, metadata !DIExpression()), !dbg !1236
  tail call void @llvm.dbg.value(metadata double %0, metadata !1232, metadata !DIExpression()), !dbg !1236
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1237
  %3 = call i32 @gsl_sf_debye_2_e(double noundef %0, ptr noundef nonnull %2), !dbg !1237, !range !1238
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1234, metadata !DIExpression()), !dbg !1236
  %4 = icmp eq i32 %3, 0, !dbg !1239
  br i1 %4, label %6, label %5, !dbg !1237

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef %3) #6, !dbg !1241
  br label %6, !dbg !1241

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1237, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1244
  ret double %7, !dbg !1244
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_3(double noundef %0) local_unnamed_addr #0 !dbg !1245 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1250
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1248, metadata !DIExpression(), metadata !1250, metadata ptr %2, metadata !DIExpression()), !dbg !1251
  tail call void @llvm.dbg.value(metadata double %0, metadata !1247, metadata !DIExpression()), !dbg !1251
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1252
  %3 = call i32 @gsl_sf_debye_3_e(double noundef %0, ptr noundef nonnull %2), !dbg !1252, !range !1238
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1249, metadata !DIExpression()), !dbg !1251
  %4 = icmp eq i32 %3, 0, !dbg !1253
  br i1 %4, label %6, label %5, !dbg !1252

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 550, i32 noundef %3) #6, !dbg !1255
  br label %6, !dbg !1255

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1252, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1258
  ret double %7, !dbg !1258
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_4(double noundef %0) local_unnamed_addr #0 !dbg !1259 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1264
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1262, metadata !DIExpression(), metadata !1264, metadata ptr %2, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %0, metadata !1261, metadata !DIExpression()), !dbg !1265
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1266
  %3 = call i32 @gsl_sf_debye_4_e(double noundef %0, ptr noundef nonnull %2), !dbg !1266, !range !1238
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1263, metadata !DIExpression()), !dbg !1265
  %4 = icmp eq i32 %3, 0, !dbg !1267
  br i1 %4, label %6, label %5, !dbg !1266

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 555, i32 noundef %3) #6, !dbg !1269
  br label %6, !dbg !1269

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1266, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1272
  ret double %7, !dbg !1272
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_5(double noundef %0) local_unnamed_addr #0 !dbg !1273 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1278
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1276, metadata !DIExpression(), metadata !1278, metadata ptr %2, metadata !DIExpression()), !dbg !1279
  tail call void @llvm.dbg.value(metadata double %0, metadata !1275, metadata !DIExpression()), !dbg !1279
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1280
  %3 = call i32 @gsl_sf_debye_5_e(double noundef %0, ptr noundef nonnull %2), !dbg !1280, !range !1238
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1277, metadata !DIExpression()), !dbg !1279
  %4 = icmp eq i32 %3, 0, !dbg !1281
  br i1 %4, label %6, label %5, !dbg !1280

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 560, i32 noundef %3) #6, !dbg !1283
  br label %6, !dbg !1283

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1280, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1286
  ret double %7, !dbg !1286
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_debye_6(double noundef %0) local_unnamed_addr #0 !dbg !1287 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1292
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1290, metadata !DIExpression(), metadata !1292, metadata ptr %2, metadata !DIExpression()), !dbg !1293
  tail call void @llvm.dbg.value(metadata double %0, metadata !1289, metadata !DIExpression()), !dbg !1293
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1294
  %3 = call i32 @gsl_sf_debye_6_e(double noundef %0, ptr noundef nonnull %2), !dbg !1294, !range !1238
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1291, metadata !DIExpression()), !dbg !1293
  %4 = icmp eq i32 %3, 0, !dbg !1295
  br i1 %4, label %6, label %5, !dbg !1294

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 565, i32 noundef %3) #6, !dbg !1297
  br label %6, !dbg !1297

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1294, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1300
  ret double %7, !dbg !1300
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!172 = !DILocation(line: 205, column: 23, scope: !171)
!173 = !DILocation(line: 205, column: 35, scope: !171)
!174 = !DILocation(line: 205, column: 37, scope: !171)
!175 = !DILocation(line: 205, column: 32, scope: !171)
!176 = !DILocation(line: 205, column: 17, scope: !171)
!177 = !DILocation(line: 206, column: 37, scope: !171)
!178 = !DILocation(line: 206, column: 35, scope: !171)
!179 = !DILocation(line: 206, column: 13, scope: !171)
!180 = !DILocation(line: 206, column: 17, scope: !171)
!181 = !DILocation(line: 207, column: 5, scope: !171)
!182 = !DILocation(line: 209, column: 13, scope: !141)
!183 = !DILocation(line: 209, column: 11, scope: !142)
!184 = !DILocation(line: 210, column: 23, scope: !140)
!185 = !DILocation(line: 210, column: 25, scope: !140)
!186 = !DILocation(line: 210, column: 30, scope: !140)
!187 = !DILocation(line: 0, scope: !140)
!188 = !{}
!189 = !DILocalVariable(name: "cs", arg: 1, scope: !190, file: !191, line: 3, type: !194)
!190 = distinct !DISubprogram(name: "cheb_eval_e", scope: !191, file: !191, line: 3, type: !192, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !196)
!191 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!192 = !DISubroutineType(types: !193)
!193 = !{!38, !194, !126, !127}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!196 = !{!189, !197, !198, !199, !200, !201, !202, !203, !204, !205, !209}
!197 = !DILocalVariable(name: "x", arg: 2, scope: !190, file: !191, line: 4, type: !126)
!198 = !DILocalVariable(name: "result", arg: 3, scope: !190, file: !191, line: 5, type: !127)
!199 = !DILocalVariable(name: "j", scope: !190, file: !191, line: 7, type: !38)
!200 = !DILocalVariable(name: "d", scope: !190, file: !191, line: 8, type: !84)
!201 = !DILocalVariable(name: "dd", scope: !190, file: !191, line: 9, type: !84)
!202 = !DILocalVariable(name: "y", scope: !190, file: !191, line: 11, type: !84)
!203 = !DILocalVariable(name: "y2", scope: !190, file: !191, line: 12, type: !84)
!204 = !DILocalVariable(name: "e", scope: !190, file: !191, line: 14, type: !84)
!205 = !DILocalVariable(name: "temp", scope: !206, file: !191, line: 17, type: !84)
!206 = distinct !DILexicalBlock(scope: !207, file: !191, line: 16, column: 33)
!207 = distinct !DILexicalBlock(scope: !208, file: !191, line: 16, column: 3)
!208 = distinct !DILexicalBlock(scope: !190, file: !191, line: 16, column: 3)
!209 = !DILocalVariable(name: "temp", scope: !210, file: !191, line: 24, type: !84)
!210 = distinct !DILexicalBlock(scope: !190, file: !191, line: 23, column: 3)
!211 = !DILocation(line: 0, scope: !190, inlinedAt: !212)
!212 = distinct !DILocation(line: 212, column: 5, scope: !140)
!213 = !DILocation(line: 11, column: 19, scope: !190, inlinedAt: !212)
!214 = !DILocation(line: 11, column: 22, scope: !190, inlinedAt: !212)
!215 = !DILocation(line: 11, column: 30, scope: !190, inlinedAt: !212)
!216 = !DILocation(line: 11, column: 39, scope: !190, inlinedAt: !212)
!217 = !DILocation(line: 12, column: 19, scope: !190, inlinedAt: !212)
!218 = !DILocation(line: 16, column: 3, scope: !208, inlinedAt: !212)
!219 = !DILocation(line: 0, scope: !206, inlinedAt: !212)
!220 = !DILocation(line: 18, column: 11, scope: !206, inlinedAt: !212)
!221 = !DILocation(line: 18, column: 14, scope: !206, inlinedAt: !212)
!222 = !DILocation(line: 18, column: 21, scope: !206, inlinedAt: !212)
!223 = !{!162, !162, i64 0}
!224 = !DILocation(line: 18, column: 19, scope: !206, inlinedAt: !212)
!225 = !DILocation(line: 19, column: 10, scope: !206, inlinedAt: !212)
!226 = !DILocation(line: 19, column: 26, scope: !206, inlinedAt: !212)
!227 = !DILocation(line: 19, column: 24, scope: !206, inlinedAt: !212)
!228 = !DILocation(line: 19, column: 37, scope: !206, inlinedAt: !212)
!229 = !DILocation(line: 19, column: 35, scope: !206, inlinedAt: !212)
!230 = !DILocation(line: 19, column: 7, scope: !206, inlinedAt: !212)
!231 = !DILocation(line: 16, column: 29, scope: !207, inlinedAt: !212)
!232 = !DILocation(line: 16, column: 23, scope: !207, inlinedAt: !212)
!233 = distinct !{!233, !218, !234, !235}
!234 = !DILocation(line: 21, column: 3, scope: !208, inlinedAt: !212)
!235 = !{!"llvm.loop.mustprogress"}
!236 = !DILocation(line: 0, scope: !210, inlinedAt: !212)
!237 = !DILocation(line: 25, column: 10, scope: !210, inlinedAt: !212)
!238 = !DILocation(line: 25, column: 13, scope: !210, inlinedAt: !212)
!239 = !DILocation(line: 25, column: 18, scope: !210, inlinedAt: !212)
!240 = !DILocation(line: 26, column: 10, scope: !210, inlinedAt: !212)
!241 = !DILocation(line: 26, column: 25, scope: !210, inlinedAt: !212)
!242 = !DILocation(line: 26, column: 23, scope: !210, inlinedAt: !212)
!243 = !DILocation(line: 26, column: 34, scope: !210, inlinedAt: !212)
!244 = !DILocation(line: 26, column: 7, scope: !210, inlinedAt: !212)
!245 = !DILocation(line: 30, column: 33, scope: !190, inlinedAt: !212)
!246 = !DILocation(line: 30, column: 37, scope: !190, inlinedAt: !212)
!247 = !DILocation(line: 213, column: 32, scope: !140)
!248 = !DILocation(line: 213, column: 25, scope: !140)
!249 = !DILocation(line: 213, column: 17, scope: !140)
!250 = !DILocation(line: 214, column: 36, scope: !140)
!251 = !DILocation(line: 214, column: 25, scope: !140)
!252 = !DILocation(line: 214, column: 13, scope: !140)
!253 = !DILocation(line: 214, column: 17, scope: !140)
!254 = !DILocation(line: 217, column: 13, scope: !147)
!255 = !DILocation(line: 217, column: 11, scope: !141)
!256 = !DILocation(line: 218, column: 32, scope: !146)
!257 = !DILocation(line: 218, column: 22, scope: !146)
!258 = !DILocation(line: 0, scope: !146)
!259 = !DILocation(line: 219, column: 28, scope: !146)
!260 = !DILocation(line: 219, column: 24, scope: !146)
!261 = !DILocation(line: 224, column: 18, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !2, line: 224, column: 5)
!263 = distinct !DILexicalBlock(scope: !146, file: !2, line: 224, column: 5)
!264 = !DILocation(line: 224, column: 5, scope: !263)
!265 = !DILocation(line: 221, column: 18, scope: !146)
!266 = !DILocation(line: 221, column: 23, scope: !146)
!267 = !DILocation(line: 225, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !2, line: 224, column: 28)
!269 = !DILocation(line: 226, column: 24, scope: !268)
!270 = !DILocation(line: 226, column: 19, scope: !268)
!271 = !DILocation(line: 226, column: 28, scope: !268)
!272 = !DILocation(line: 226, column: 11, scope: !268)
!273 = !DILocation(line: 227, column: 10, scope: !268)
!274 = !DILocation(line: 228, column: 10, scope: !268)
!275 = !DILocation(line: 224, column: 24, scope: !262)
!276 = distinct !{!276, !264, !277, !235}
!277 = !DILocation(line: 229, column: 5, scope: !263)
!278 = !DILocation(line: 230, column: 31, scope: !146)
!279 = !DILocation(line: 230, column: 39, scope: !146)
!280 = !DILocation(line: 230, column: 34, scope: !146)
!281 = !DILocation(line: 230, column: 17, scope: !146)
!282 = !DILocation(line: 231, column: 37, scope: !146)
!283 = !DILocation(line: 231, column: 35, scope: !146)
!284 = !DILocation(line: 231, column: 13, scope: !146)
!285 = !DILocation(line: 231, column: 17, scope: !146)
!286 = !DILocation(line: 234, column: 13, scope: !287)
!287 = distinct !DILexicalBlock(scope: !147, file: !2, line: 234, column: 11)
!288 = !DILocation(line: 234, column: 11, scope: !147)
!289 = !DILocation(line: 235, column: 39, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !2, line: 234, column: 21)
!291 = !DILocation(line: 235, column: 35, scope: !290)
!292 = !DILocation(line: 235, column: 45, scope: !290)
!293 = !DILocation(line: 235, column: 42, scope: !290)
!294 = !DILocation(line: 235, column: 33, scope: !290)
!295 = !DILocation(line: 235, column: 52, scope: !290)
!296 = !DILocation(line: 235, column: 17, scope: !290)
!297 = !DILocation(line: 236, column: 37, scope: !290)
!298 = !DILocation(line: 236, column: 35, scope: !290)
!299 = !DILocation(line: 236, column: 13, scope: !290)
!300 = !DILocation(line: 236, column: 17, scope: !290)
!301 = !DILocation(line: 237, column: 5, scope: !290)
!302 = !DILocation(line: 240, column: 31, scope: !303)
!303 = distinct !DILexicalBlock(scope: !287, file: !2, line: 239, column: 8)
!304 = !DILocation(line: 240, column: 17, scope: !303)
!305 = !DILocation(line: 241, column: 37, scope: !303)
!306 = !DILocation(line: 241, column: 35, scope: !303)
!307 = !DILocation(line: 241, column: 13, scope: !303)
!308 = !DILocation(line: 241, column: 17, scope: !303)
!309 = !DILocation(line: 242, column: 5, scope: !303)
!310 = !DILocation(line: 0, scope: !143)
!311 = !DILocation(line: 244, column: 1, scope: !123)
!312 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315, !315, !38, !38}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!317 = !DISubprogram(name: "exp", scope: !318, file: !318, line: 95, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!319 = !DISubroutineType(types: !320)
!320 = !{!84, !84}
!321 = distinct !DISubprogram(name: "gsl_sf_debye_2_e", scope: !2, file: !2, line: 247, type: !124, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !322)
!322 = !{!323, !324, !325, !326, !327, !332, !333, !336, !337, !338, !339, !340, !341, !344}
!323 = !DILocalVariable(name: "x", arg: 1, scope: !321, file: !2, line: 247, type: !126)
!324 = !DILocalVariable(name: "result", arg: 2, scope: !321, file: !2, line: 247, type: !127)
!325 = !DILocalVariable(name: "val_infinity", scope: !321, file: !2, line: 249, type: !126)
!326 = !DILocalVariable(name: "xcut", scope: !321, file: !2, line: 250, type: !126)
!327 = !DILocalVariable(name: "t", scope: !328, file: !2, line: 263, type: !126)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 262, column: 21)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 262, column: 11)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 257, column: 11)
!331 = distinct !DILexicalBlock(scope: !321, file: !2, line: 254, column: 6)
!332 = !DILocalVariable(name: "c", scope: !328, file: !2, line: 264, type: !128)
!333 = !DILocalVariable(name: "nexp", scope: !334, file: !2, line: 271, type: !148)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 270, column: 47)
!335 = distinct !DILexicalBlock(scope: !329, file: !2, line: 270, column: 11)
!336 = !DILocalVariable(name: "ex", scope: !334, file: !2, line: 272, type: !126)
!337 = !DILocalVariable(name: "xk", scope: !334, file: !2, line: 273, type: !84)
!338 = !DILocalVariable(name: "rk", scope: !334, file: !2, line: 274, type: !84)
!339 = !DILocalVariable(name: "sum", scope: !334, file: !2, line: 275, type: !84)
!340 = !DILocalVariable(name: "i", scope: !334, file: !2, line: 276, type: !38)
!341 = !DILocalVariable(name: "x2", scope: !342, file: !2, line: 288, type: !126)
!342 = distinct !DILexicalBlock(scope: !343, file: !2, line: 287, column: 21)
!343 = distinct !DILexicalBlock(scope: !335, file: !2, line: 287, column: 11)
!344 = !DILocalVariable(name: "sum", scope: !342, file: !2, line: 289, type: !126)
!345 = !DILocation(line: 0, scope: !321)
!346 = !DILocation(line: 254, column: 8, scope: !331)
!347 = !DILocation(line: 254, column: 6, scope: !321)
!348 = !DILocation(line: 255, column: 5, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 255, column: 5)
!350 = distinct !DILexicalBlock(scope: !331, file: !2, line: 254, column: 15)
!351 = !DILocation(line: 255, column: 5, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !2, line: 255, column: 5)
!353 = !DILocation(line: 257, column: 13, scope: !330)
!354 = !DILocation(line: 257, column: 11, scope: !331)
!355 = !DILocation(line: 258, column: 26, scope: !356)
!356 = distinct !DILexicalBlock(scope: !330, file: !2, line: 257, column: 49)
!357 = !DILocation(line: 258, column: 23, scope: !356)
!358 = !DILocation(line: 258, column: 34, scope: !356)
!359 = !DILocation(line: 258, column: 36, scope: !356)
!360 = !DILocation(line: 258, column: 31, scope: !356)
!361 = !DILocation(line: 258, column: 17, scope: !356)
!362 = !DILocation(line: 259, column: 35, scope: !356)
!363 = !DILocation(line: 259, column: 13, scope: !356)
!364 = !DILocation(line: 259, column: 17, scope: !356)
!365 = !DILocation(line: 260, column: 5, scope: !356)
!366 = !DILocation(line: 262, column: 13, scope: !329)
!367 = !DILocation(line: 262, column: 11, scope: !330)
!368 = !DILocation(line: 263, column: 23, scope: !328)
!369 = !DILocation(line: 263, column: 25, scope: !328)
!370 = !DILocation(line: 263, column: 30, scope: !328)
!371 = !DILocation(line: 0, scope: !328)
!372 = !DILocation(line: 0, scope: !190, inlinedAt: !373)
!373 = distinct !DILocation(line: 265, column: 5, scope: !328)
!374 = !DILocation(line: 11, column: 19, scope: !190, inlinedAt: !373)
!375 = !DILocation(line: 11, column: 22, scope: !190, inlinedAt: !373)
!376 = !DILocation(line: 11, column: 30, scope: !190, inlinedAt: !373)
!377 = !DILocation(line: 11, column: 39, scope: !190, inlinedAt: !373)
!378 = !DILocation(line: 12, column: 19, scope: !190, inlinedAt: !373)
!379 = !DILocation(line: 16, column: 3, scope: !208, inlinedAt: !373)
!380 = !DILocation(line: 0, scope: !206, inlinedAt: !373)
!381 = !DILocation(line: 18, column: 11, scope: !206, inlinedAt: !373)
!382 = !DILocation(line: 18, column: 14, scope: !206, inlinedAt: !373)
!383 = !DILocation(line: 18, column: 21, scope: !206, inlinedAt: !373)
!384 = !DILocation(line: 18, column: 19, scope: !206, inlinedAt: !373)
!385 = !DILocation(line: 19, column: 10, scope: !206, inlinedAt: !373)
!386 = !DILocation(line: 19, column: 26, scope: !206, inlinedAt: !373)
!387 = !DILocation(line: 19, column: 24, scope: !206, inlinedAt: !373)
!388 = !DILocation(line: 19, column: 37, scope: !206, inlinedAt: !373)
!389 = !DILocation(line: 19, column: 35, scope: !206, inlinedAt: !373)
!390 = !DILocation(line: 19, column: 7, scope: !206, inlinedAt: !373)
!391 = !DILocation(line: 16, column: 29, scope: !207, inlinedAt: !373)
!392 = !DILocation(line: 16, column: 23, scope: !207, inlinedAt: !373)
!393 = distinct !{!393, !379, !394, !235}
!394 = !DILocation(line: 21, column: 3, scope: !208, inlinedAt: !373)
!395 = !DILocation(line: 0, scope: !210, inlinedAt: !373)
!396 = !DILocation(line: 25, column: 10, scope: !210, inlinedAt: !373)
!397 = !DILocation(line: 25, column: 13, scope: !210, inlinedAt: !373)
!398 = !DILocation(line: 25, column: 18, scope: !210, inlinedAt: !373)
!399 = !DILocation(line: 26, column: 10, scope: !210, inlinedAt: !373)
!400 = !DILocation(line: 26, column: 25, scope: !210, inlinedAt: !373)
!401 = !DILocation(line: 26, column: 23, scope: !210, inlinedAt: !373)
!402 = !DILocation(line: 26, column: 34, scope: !210, inlinedAt: !373)
!403 = !DILocation(line: 26, column: 7, scope: !210, inlinedAt: !373)
!404 = !DILocation(line: 30, column: 33, scope: !190, inlinedAt: !373)
!405 = !DILocation(line: 30, column: 37, scope: !190, inlinedAt: !373)
!406 = !DILocation(line: 266, column: 28, scope: !328)
!407 = !DILocation(line: 266, column: 25, scope: !328)
!408 = !DILocation(line: 266, column: 17, scope: !328)
!409 = !DILocation(line: 267, column: 43, scope: !328)
!410 = !DILocation(line: 267, column: 46, scope: !328)
!411 = !DILocation(line: 267, column: 25, scope: !328)
!412 = !DILocation(line: 267, column: 13, scope: !328)
!413 = !DILocation(line: 267, column: 17, scope: !328)
!414 = !DILocation(line: 270, column: 13, scope: !335)
!415 = !DILocation(line: 270, column: 11, scope: !329)
!416 = !DILocation(line: 271, column: 32, scope: !334)
!417 = !DILocation(line: 271, column: 22, scope: !334)
!418 = !DILocation(line: 0, scope: !334)
!419 = !DILocation(line: 272, column: 28, scope: !334)
!420 = !DILocation(line: 272, column: 24, scope: !334)
!421 = !DILocation(line: 277, column: 18, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !2, line: 277, column: 5)
!423 = distinct !DILexicalBlock(scope: !334, file: !2, line: 277, column: 5)
!424 = !DILocation(line: 277, column: 5, scope: !423)
!425 = !DILocation(line: 273, column: 18, scope: !334)
!426 = !DILocation(line: 273, column: 23, scope: !334)
!427 = !DILocation(line: 278, column: 11, scope: !428)
!428 = distinct !DILexicalBlock(scope: !422, file: !2, line: 277, column: 28)
!429 = !DILocation(line: 279, column: 24, scope: !428)
!430 = !DILocation(line: 279, column: 19, scope: !428)
!431 = !DILocation(line: 279, column: 37, scope: !428)
!432 = !DILocation(line: 279, column: 33, scope: !428)
!433 = !DILocation(line: 279, column: 28, scope: !428)
!434 = !DILocation(line: 279, column: 43, scope: !428)
!435 = !DILocation(line: 279, column: 11, scope: !428)
!436 = !DILocation(line: 280, column: 10, scope: !428)
!437 = !DILocation(line: 281, column: 10, scope: !428)
!438 = !DILocation(line: 277, column: 24, scope: !422)
!439 = distinct !{!439, !424, !440, !235}
!440 = !DILocation(line: 282, column: 5, scope: !423)
!441 = !DILocation(line: 283, column: 44, scope: !334)
!442 = !DILocation(line: 283, column: 34, scope: !334)
!443 = !DILocation(line: 283, column: 31, scope: !334)
!444 = !DILocation(line: 283, column: 50, scope: !334)
!445 = !DILocation(line: 283, column: 38, scope: !334)
!446 = !DILocation(line: 283, column: 17, scope: !334)
!447 = !DILocation(line: 284, column: 37, scope: !334)
!448 = !DILocation(line: 284, column: 35, scope: !334)
!449 = !DILocation(line: 284, column: 13, scope: !334)
!450 = !DILocation(line: 284, column: 17, scope: !334)
!451 = !DILocation(line: 287, column: 13, scope: !343)
!452 = !DILocation(line: 287, column: 11, scope: !335)
!453 = !DILocation(line: 288, column: 25, scope: !342)
!454 = !DILocation(line: 0, scope: !342)
!455 = !DILocation(line: 289, column: 33, scope: !342)
!456 = !DILocation(line: 289, column: 28, scope: !342)
!457 = !DILocation(line: 289, column: 36, scope: !342)
!458 = !DILocation(line: 290, column: 39, scope: !342)
!459 = !DILocation(line: 290, column: 51, scope: !342)
!460 = !DILocation(line: 290, column: 47, scope: !342)
!461 = !DILocation(line: 290, column: 45, scope: !342)
!462 = !DILocation(line: 290, column: 33, scope: !342)
!463 = !DILocation(line: 290, column: 56, scope: !342)
!464 = !DILocation(line: 290, column: 17, scope: !342)
!465 = !DILocation(line: 291, column: 37, scope: !342)
!466 = !DILocation(line: 291, column: 35, scope: !342)
!467 = !DILocation(line: 291, column: 13, scope: !342)
!468 = !DILocation(line: 291, column: 17, scope: !342)
!469 = !DILocation(line: 295, column: 32, scope: !470)
!470 = distinct !DILexicalBlock(scope: !343, file: !2, line: 294, column: 8)
!471 = !DILocation(line: 295, column: 35, scope: !470)
!472 = !DILocation(line: 295, column: 17, scope: !470)
!473 = !DILocation(line: 296, column: 35, scope: !470)
!474 = !DILocation(line: 296, column: 13, scope: !470)
!475 = !DILocation(line: 296, column: 17, scope: !470)
!476 = !DILocation(line: 297, column: 5, scope: !477)
!477 = distinct !DILexicalBlock(scope: !470, file: !2, line: 297, column: 5)
!478 = !DILocation(line: 297, column: 5, scope: !470)
!479 = !DILocation(line: 297, column: 5, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !2, line: 297, column: 5)
!481 = !DILocation(line: 0, scope: !331)
!482 = !DILocation(line: 300, column: 1, scope: !321)
!483 = distinct !DISubprogram(name: "gsl_sf_debye_3_e", scope: !2, file: !2, line: 303, type: !124, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !484)
!484 = !{!485, !486, !487, !488, !489, !494, !495, !498, !499, !500, !501, !502, !503, !507, !510}
!485 = !DILocalVariable(name: "x", arg: 1, scope: !483, file: !2, line: 303, type: !126)
!486 = !DILocalVariable(name: "result", arg: 2, scope: !483, file: !2, line: 303, type: !127)
!487 = !DILocalVariable(name: "val_infinity", scope: !483, file: !2, line: 305, type: !126)
!488 = !DILocalVariable(name: "xcut", scope: !483, file: !2, line: 306, type: !126)
!489 = !DILocalVariable(name: "t", scope: !490, file: !2, line: 319, type: !126)
!490 = distinct !DILexicalBlock(scope: !491, file: !2, line: 318, column: 21)
!491 = distinct !DILexicalBlock(scope: !492, file: !2, line: 318, column: 11)
!492 = distinct !DILexicalBlock(scope: !493, file: !2, line: 313, column: 11)
!493 = distinct !DILexicalBlock(scope: !483, file: !2, line: 310, column: 6)
!494 = !DILocalVariable(name: "c", scope: !490, file: !2, line: 320, type: !128)
!495 = !DILocalVariable(name: "nexp", scope: !496, file: !2, line: 327, type: !148)
!496 = distinct !DILexicalBlock(scope: !497, file: !2, line: 326, column: 47)
!497 = distinct !DILexicalBlock(scope: !491, file: !2, line: 326, column: 11)
!498 = !DILocalVariable(name: "ex", scope: !496, file: !2, line: 328, type: !126)
!499 = !DILocalVariable(name: "xk", scope: !496, file: !2, line: 329, type: !84)
!500 = !DILocalVariable(name: "rk", scope: !496, file: !2, line: 330, type: !84)
!501 = !DILocalVariable(name: "sum", scope: !496, file: !2, line: 331, type: !84)
!502 = !DILocalVariable(name: "i", scope: !496, file: !2, line: 332, type: !38)
!503 = !DILocalVariable(name: "xk_inv", scope: !504, file: !2, line: 334, type: !84)
!504 = distinct !DILexicalBlock(scope: !505, file: !2, line: 333, column: 28)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 333, column: 5)
!506 = distinct !DILexicalBlock(scope: !496, file: !2, line: 333, column: 5)
!507 = !DILocalVariable(name: "x3", scope: !508, file: !2, line: 345, type: !126)
!508 = distinct !DILexicalBlock(scope: !509, file: !2, line: 344, column: 21)
!509 = distinct !DILexicalBlock(scope: !497, file: !2, line: 344, column: 11)
!510 = !DILocalVariable(name: "sum", scope: !508, file: !2, line: 346, type: !126)
!511 = !DILocation(line: 0, scope: !483)
!512 = !DILocation(line: 310, column: 8, scope: !493)
!513 = !DILocation(line: 310, column: 6, scope: !483)
!514 = !DILocation(line: 311, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !2, line: 311, column: 5)
!516 = distinct !DILexicalBlock(scope: !493, file: !2, line: 310, column: 15)
!517 = !DILocation(line: 311, column: 5, scope: !518)
!518 = distinct !DILexicalBlock(scope: !515, file: !2, line: 311, column: 5)
!519 = !DILocation(line: 313, column: 13, scope: !492)
!520 = !DILocation(line: 313, column: 11, scope: !493)
!521 = !DILocation(line: 314, column: 28, scope: !522)
!522 = distinct !DILexicalBlock(scope: !492, file: !2, line: 313, column: 49)
!523 = !DILocation(line: 314, column: 30, scope: !522)
!524 = !DILocation(line: 314, column: 23, scope: !522)
!525 = !DILocation(line: 314, column: 38, scope: !522)
!526 = !DILocation(line: 314, column: 40, scope: !522)
!527 = !DILocation(line: 314, column: 35, scope: !522)
!528 = !DILocation(line: 314, column: 17, scope: !522)
!529 = !DILocation(line: 315, column: 35, scope: !522)
!530 = !DILocation(line: 315, column: 13, scope: !522)
!531 = !DILocation(line: 315, column: 17, scope: !522)
!532 = !DILocation(line: 316, column: 5, scope: !522)
!533 = !DILocation(line: 318, column: 13, scope: !491)
!534 = !DILocation(line: 318, column: 11, scope: !492)
!535 = !DILocation(line: 319, column: 23, scope: !490)
!536 = !DILocation(line: 319, column: 25, scope: !490)
!537 = !DILocation(line: 319, column: 30, scope: !490)
!538 = !DILocation(line: 0, scope: !490)
!539 = !DILocation(line: 0, scope: !190, inlinedAt: !540)
!540 = distinct !DILocation(line: 321, column: 5, scope: !490)
!541 = !DILocation(line: 11, column: 19, scope: !190, inlinedAt: !540)
!542 = !DILocation(line: 11, column: 22, scope: !190, inlinedAt: !540)
!543 = !DILocation(line: 11, column: 30, scope: !190, inlinedAt: !540)
!544 = !DILocation(line: 11, column: 39, scope: !190, inlinedAt: !540)
!545 = !DILocation(line: 12, column: 19, scope: !190, inlinedAt: !540)
!546 = !DILocation(line: 16, column: 3, scope: !208, inlinedAt: !540)
!547 = !DILocation(line: 0, scope: !206, inlinedAt: !540)
!548 = !DILocation(line: 18, column: 11, scope: !206, inlinedAt: !540)
!549 = !DILocation(line: 18, column: 14, scope: !206, inlinedAt: !540)
!550 = !DILocation(line: 18, column: 21, scope: !206, inlinedAt: !540)
!551 = !DILocation(line: 18, column: 19, scope: !206, inlinedAt: !540)
!552 = !DILocation(line: 19, column: 10, scope: !206, inlinedAt: !540)
!553 = !DILocation(line: 19, column: 26, scope: !206, inlinedAt: !540)
!554 = !DILocation(line: 19, column: 24, scope: !206, inlinedAt: !540)
!555 = !DILocation(line: 19, column: 37, scope: !206, inlinedAt: !540)
!556 = !DILocation(line: 19, column: 35, scope: !206, inlinedAt: !540)
!557 = !DILocation(line: 19, column: 7, scope: !206, inlinedAt: !540)
!558 = !DILocation(line: 16, column: 29, scope: !207, inlinedAt: !540)
!559 = !DILocation(line: 16, column: 23, scope: !207, inlinedAt: !540)
!560 = distinct !{!560, !546, !561, !235}
!561 = !DILocation(line: 21, column: 3, scope: !208, inlinedAt: !540)
!562 = !DILocation(line: 0, scope: !210, inlinedAt: !540)
!563 = !DILocation(line: 25, column: 10, scope: !210, inlinedAt: !540)
!564 = !DILocation(line: 25, column: 13, scope: !210, inlinedAt: !540)
!565 = !DILocation(line: 25, column: 18, scope: !210, inlinedAt: !540)
!566 = !DILocation(line: 26, column: 10, scope: !210, inlinedAt: !540)
!567 = !DILocation(line: 26, column: 25, scope: !210, inlinedAt: !540)
!568 = !DILocation(line: 26, column: 23, scope: !210, inlinedAt: !540)
!569 = !DILocation(line: 26, column: 34, scope: !210, inlinedAt: !540)
!570 = !DILocation(line: 26, column: 7, scope: !210, inlinedAt: !540)
!571 = !DILocation(line: 30, column: 33, scope: !190, inlinedAt: !540)
!572 = !DILocation(line: 30, column: 37, scope: !190, inlinedAt: !540)
!573 = !DILocation(line: 322, column: 32, scope: !490)
!574 = !DILocation(line: 322, column: 25, scope: !490)
!575 = !DILocation(line: 322, column: 17, scope: !490)
!576 = !DILocation(line: 323, column: 50, scope: !490)
!577 = !DILocation(line: 323, column: 25, scope: !490)
!578 = !DILocation(line: 323, column: 13, scope: !490)
!579 = !DILocation(line: 323, column: 17, scope: !490)
!580 = !DILocation(line: 326, column: 13, scope: !497)
!581 = !DILocation(line: 326, column: 11, scope: !491)
!582 = !DILocation(line: 327, column: 32, scope: !496)
!583 = !DILocation(line: 327, column: 22, scope: !496)
!584 = !DILocation(line: 0, scope: !496)
!585 = !DILocation(line: 328, column: 28, scope: !496)
!586 = !DILocation(line: 328, column: 24, scope: !496)
!587 = !DILocation(line: 333, column: 18, scope: !505)
!588 = !DILocation(line: 333, column: 5, scope: !506)
!589 = !DILocation(line: 329, column: 18, scope: !496)
!590 = !DILocation(line: 329, column: 23, scope: !496)
!591 = !DILocation(line: 334, column: 26, scope: !504)
!592 = !DILocation(line: 0, scope: !504)
!593 = !DILocation(line: 335, column: 11, scope: !504)
!594 = !DILocation(line: 336, column: 20, scope: !504)
!595 = !DILocation(line: 336, column: 28, scope: !504)
!596 = !DILocation(line: 336, column: 34, scope: !504)
!597 = !DILocation(line: 336, column: 42, scope: !504)
!598 = !DILocation(line: 336, column: 48, scope: !504)
!599 = !DILocation(line: 336, column: 56, scope: !504)
!600 = !DILocation(line: 336, column: 63, scope: !504)
!601 = !DILocation(line: 336, column: 11, scope: !504)
!602 = !DILocation(line: 337, column: 10, scope: !504)
!603 = !DILocation(line: 338, column: 10, scope: !504)
!604 = !DILocation(line: 333, column: 24, scope: !505)
!605 = distinct !{!605, !588, !606, !235}
!606 = !DILocation(line: 339, column: 5, scope: !506)
!607 = !DILocation(line: 340, column: 46, scope: !496)
!608 = !DILocation(line: 340, column: 34, scope: !496)
!609 = !DILocation(line: 340, column: 36, scope: !496)
!610 = !DILocation(line: 340, column: 31, scope: !496)
!611 = !DILocation(line: 340, column: 52, scope: !496)
!612 = !DILocation(line: 340, column: 40, scope: !496)
!613 = !DILocation(line: 340, column: 17, scope: !496)
!614 = !DILocation(line: 341, column: 35, scope: !496)
!615 = !DILocation(line: 341, column: 13, scope: !496)
!616 = !DILocation(line: 341, column: 17, scope: !496)
!617 = !DILocation(line: 344, column: 13, scope: !509)
!618 = !DILocation(line: 344, column: 11, scope: !497)
!619 = !DILocation(line: 345, column: 24, scope: !508)
!620 = !DILocation(line: 345, column: 26, scope: !508)
!621 = !DILocation(line: 0, scope: !508)
!622 = !DILocation(line: 346, column: 33, scope: !508)
!623 = !DILocation(line: 346, column: 28, scope: !508)
!624 = !DILocation(line: 346, column: 41, scope: !508)
!625 = !DILocation(line: 346, column: 43, scope: !508)
!626 = !DILocation(line: 346, column: 36, scope: !508)
!627 = !DILocation(line: 346, column: 46, scope: !508)
!628 = !DILocation(line: 347, column: 39, scope: !508)
!629 = !DILocation(line: 347, column: 51, scope: !508)
!630 = !DILocation(line: 347, column: 47, scope: !508)
!631 = !DILocation(line: 347, column: 45, scope: !508)
!632 = !DILocation(line: 347, column: 33, scope: !508)
!633 = !DILocation(line: 347, column: 56, scope: !508)
!634 = !DILocation(line: 347, column: 17, scope: !508)
!635 = !DILocation(line: 348, column: 35, scope: !508)
!636 = !DILocation(line: 348, column: 13, scope: !508)
!637 = !DILocation(line: 348, column: 17, scope: !508)
!638 = !DILocation(line: 352, column: 33, scope: !639)
!639 = distinct !DILexicalBlock(scope: !509, file: !2, line: 351, column: 8)
!640 = !DILocation(line: 352, column: 36, scope: !639)
!641 = !DILocation(line: 352, column: 39, scope: !639)
!642 = !DILocation(line: 352, column: 17, scope: !639)
!643 = !DILocation(line: 353, column: 35, scope: !639)
!644 = !DILocation(line: 353, column: 13, scope: !639)
!645 = !DILocation(line: 353, column: 17, scope: !639)
!646 = !DILocation(line: 354, column: 5, scope: !647)
!647 = distinct !DILexicalBlock(scope: !639, file: !2, line: 354, column: 5)
!648 = !DILocation(line: 354, column: 5, scope: !639)
!649 = !DILocation(line: 354, column: 5, scope: !650)
!650 = distinct !DILexicalBlock(scope: !647, file: !2, line: 354, column: 5)
!651 = !DILocation(line: 0, scope: !493)
!652 = !DILocation(line: 357, column: 1, scope: !483)
!653 = distinct !DISubprogram(name: "gsl_sf_debye_4_e", scope: !2, file: !2, line: 360, type: !124, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !654)
!654 = !{!655, !656, !657, !658, !659, !664, !665, !668, !669, !670, !671, !672, !673, !677, !680, !681}
!655 = !DILocalVariable(name: "x", arg: 1, scope: !653, file: !2, line: 360, type: !126)
!656 = !DILocalVariable(name: "result", arg: 2, scope: !653, file: !2, line: 360, type: !127)
!657 = !DILocalVariable(name: "val_infinity", scope: !653, file: !2, line: 362, type: !126)
!658 = !DILocalVariable(name: "xcut", scope: !653, file: !2, line: 363, type: !126)
!659 = !DILocalVariable(name: "t", scope: !660, file: !2, line: 376, type: !126)
!660 = distinct !DILexicalBlock(scope: !661, file: !2, line: 375, column: 21)
!661 = distinct !DILexicalBlock(scope: !662, file: !2, line: 375, column: 11)
!662 = distinct !DILexicalBlock(scope: !663, file: !2, line: 370, column: 11)
!663 = distinct !DILexicalBlock(scope: !653, file: !2, line: 367, column: 6)
!664 = !DILocalVariable(name: "c", scope: !660, file: !2, line: 377, type: !128)
!665 = !DILocalVariable(name: "nexp", scope: !666, file: !2, line: 384, type: !148)
!666 = distinct !DILexicalBlock(scope: !667, file: !2, line: 383, column: 47)
!667 = distinct !DILexicalBlock(scope: !661, file: !2, line: 383, column: 11)
!668 = !DILocalVariable(name: "ex", scope: !666, file: !2, line: 385, type: !126)
!669 = !DILocalVariable(name: "xk", scope: !666, file: !2, line: 386, type: !84)
!670 = !DILocalVariable(name: "rk", scope: !666, file: !2, line: 387, type: !84)
!671 = !DILocalVariable(name: "sum", scope: !666, file: !2, line: 388, type: !84)
!672 = !DILocalVariable(name: "i", scope: !666, file: !2, line: 389, type: !38)
!673 = !DILocalVariable(name: "xk_inv", scope: !674, file: !2, line: 391, type: !84)
!674 = distinct !DILexicalBlock(scope: !675, file: !2, line: 390, column: 28)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 390, column: 5)
!676 = distinct !DILexicalBlock(scope: !666, file: !2, line: 390, column: 5)
!677 = !DILocalVariable(name: "x2", scope: !678, file: !2, line: 402, type: !126)
!678 = distinct !DILexicalBlock(scope: !679, file: !2, line: 401, column: 21)
!679 = distinct !DILexicalBlock(scope: !667, file: !2, line: 401, column: 11)
!680 = !DILocalVariable(name: "x4", scope: !678, file: !2, line: 403, type: !126)
!681 = !DILocalVariable(name: "sum", scope: !678, file: !2, line: 404, type: !126)
!682 = !DILocation(line: 0, scope: !653)
!683 = !DILocation(line: 367, column: 8, scope: !663)
!684 = !DILocation(line: 367, column: 6, scope: !653)
!685 = !DILocation(line: 368, column: 5, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !2, line: 368, column: 5)
!687 = distinct !DILexicalBlock(scope: !663, file: !2, line: 367, column: 15)
!688 = !DILocation(line: 368, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !2, line: 368, column: 5)
!690 = !DILocation(line: 370, column: 13, scope: !662)
!691 = !DILocation(line: 370, column: 11, scope: !663)
!692 = !DILocation(line: 371, column: 28, scope: !693)
!693 = distinct !DILexicalBlock(scope: !662, file: !2, line: 370, column: 49)
!694 = !DILocation(line: 371, column: 30, scope: !693)
!695 = !DILocation(line: 371, column: 23, scope: !693)
!696 = !DILocation(line: 371, column: 38, scope: !693)
!697 = !DILocation(line: 371, column: 40, scope: !693)
!698 = !DILocation(line: 371, column: 35, scope: !693)
!699 = !DILocation(line: 371, column: 17, scope: !693)
!700 = !DILocation(line: 372, column: 35, scope: !693)
!701 = !DILocation(line: 372, column: 13, scope: !693)
!702 = !DILocation(line: 372, column: 17, scope: !693)
!703 = !DILocation(line: 373, column: 5, scope: !693)
!704 = !DILocation(line: 375, column: 13, scope: !661)
!705 = !DILocation(line: 375, column: 11, scope: !662)
!706 = !DILocation(line: 376, column: 23, scope: !660)
!707 = !DILocation(line: 376, column: 25, scope: !660)
!708 = !DILocation(line: 376, column: 30, scope: !660)
!709 = !DILocation(line: 0, scope: !660)
!710 = !DILocation(line: 0, scope: !190, inlinedAt: !711)
!711 = distinct !DILocation(line: 378, column: 5, scope: !660)
!712 = !DILocation(line: 11, column: 19, scope: !190, inlinedAt: !711)
!713 = !DILocation(line: 11, column: 22, scope: !190, inlinedAt: !711)
!714 = !DILocation(line: 11, column: 30, scope: !190, inlinedAt: !711)
!715 = !DILocation(line: 11, column: 39, scope: !190, inlinedAt: !711)
!716 = !DILocation(line: 12, column: 19, scope: !190, inlinedAt: !711)
!717 = !DILocation(line: 16, column: 3, scope: !208, inlinedAt: !711)
!718 = !DILocation(line: 0, scope: !206, inlinedAt: !711)
!719 = !DILocation(line: 18, column: 11, scope: !206, inlinedAt: !711)
!720 = !DILocation(line: 18, column: 14, scope: !206, inlinedAt: !711)
!721 = !DILocation(line: 18, column: 21, scope: !206, inlinedAt: !711)
!722 = !DILocation(line: 18, column: 19, scope: !206, inlinedAt: !711)
!723 = !DILocation(line: 19, column: 10, scope: !206, inlinedAt: !711)
!724 = !DILocation(line: 19, column: 26, scope: !206, inlinedAt: !711)
!725 = !DILocation(line: 19, column: 24, scope: !206, inlinedAt: !711)
!726 = !DILocation(line: 19, column: 37, scope: !206, inlinedAt: !711)
!727 = !DILocation(line: 19, column: 35, scope: !206, inlinedAt: !711)
!728 = !DILocation(line: 19, column: 7, scope: !206, inlinedAt: !711)
!729 = !DILocation(line: 16, column: 29, scope: !207, inlinedAt: !711)
!730 = !DILocation(line: 16, column: 23, scope: !207, inlinedAt: !711)
!731 = distinct !{!731, !717, !732, !235}
!732 = !DILocation(line: 21, column: 3, scope: !208, inlinedAt: !711)
!733 = !DILocation(line: 0, scope: !210, inlinedAt: !711)
!734 = !DILocation(line: 25, column: 10, scope: !210, inlinedAt: !711)
!735 = !DILocation(line: 25, column: 13, scope: !210, inlinedAt: !711)
!736 = !DILocation(line: 25, column: 18, scope: !210, inlinedAt: !711)
!737 = !DILocation(line: 26, column: 10, scope: !210, inlinedAt: !711)
!738 = !DILocation(line: 26, column: 25, scope: !210, inlinedAt: !711)
!739 = !DILocation(line: 26, column: 23, scope: !210, inlinedAt: !711)
!740 = !DILocation(line: 26, column: 34, scope: !210, inlinedAt: !711)
!741 = !DILocation(line: 26, column: 7, scope: !210, inlinedAt: !711)
!742 = !DILocation(line: 30, column: 33, scope: !190, inlinedAt: !711)
!743 = !DILocation(line: 30, column: 37, scope: !190, inlinedAt: !711)
!744 = !DILocation(line: 379, column: 30, scope: !660)
!745 = !DILocation(line: 379, column: 32, scope: !660)
!746 = !DILocation(line: 379, column: 25, scope: !660)
!747 = !DILocation(line: 379, column: 17, scope: !660)
!748 = !DILocation(line: 380, column: 48, scope: !660)
!749 = !DILocation(line: 380, column: 50, scope: !660)
!750 = !DILocation(line: 380, column: 25, scope: !660)
!751 = !DILocation(line: 380, column: 13, scope: !660)
!752 = !DILocation(line: 380, column: 17, scope: !660)
!753 = !DILocation(line: 383, column: 13, scope: !667)
!754 = !DILocation(line: 383, column: 11, scope: !661)
!755 = !DILocation(line: 384, column: 32, scope: !666)
!756 = !DILocation(line: 384, column: 22, scope: !666)
!757 = !DILocation(line: 0, scope: !666)
!758 = !DILocation(line: 385, column: 28, scope: !666)
!759 = !DILocation(line: 385, column: 24, scope: !666)
!760 = !DILocation(line: 390, column: 18, scope: !675)
!761 = !DILocation(line: 390, column: 5, scope: !676)
!762 = !DILocation(line: 386, column: 18, scope: !666)
!763 = !DILocation(line: 386, column: 23, scope: !666)
!764 = !DILocation(line: 391, column: 26, scope: !674)
!765 = !DILocation(line: 0, scope: !674)
!766 = !DILocation(line: 392, column: 11, scope: !674)
!767 = !DILocation(line: 393, column: 22, scope: !674)
!768 = !DILocation(line: 393, column: 30, scope: !674)
!769 = !DILocation(line: 393, column: 37, scope: !674)
!770 = !DILocation(line: 393, column: 45, scope: !674)
!771 = !DILocation(line: 393, column: 52, scope: !674)
!772 = !DILocation(line: 393, column: 60, scope: !674)
!773 = !DILocation(line: 393, column: 66, scope: !674)
!774 = !DILocation(line: 393, column: 74, scope: !674)
!775 = !DILocation(line: 393, column: 81, scope: !674)
!776 = !DILocation(line: 393, column: 11, scope: !674)
!777 = !DILocation(line: 394, column: 10, scope: !674)
!778 = !DILocation(line: 395, column: 10, scope: !674)
!779 = !DILocation(line: 390, column: 24, scope: !675)
!780 = distinct !{!780, !761, !781, !235}
!781 = !DILocation(line: 396, column: 5, scope: !676)
!782 = !DILocation(line: 397, column: 48, scope: !666)
!783 = !DILocation(line: 397, column: 34, scope: !666)
!784 = !DILocation(line: 397, column: 36, scope: !666)
!785 = !DILocation(line: 397, column: 38, scope: !666)
!786 = !DILocation(line: 397, column: 31, scope: !666)
!787 = !DILocation(line: 397, column: 54, scope: !666)
!788 = !DILocation(line: 397, column: 42, scope: !666)
!789 = !DILocation(line: 397, column: 17, scope: !666)
!790 = !DILocation(line: 398, column: 35, scope: !666)
!791 = !DILocation(line: 398, column: 13, scope: !666)
!792 = !DILocation(line: 398, column: 17, scope: !666)
!793 = !DILocation(line: 401, column: 13, scope: !679)
!794 = !DILocation(line: 401, column: 11, scope: !667)
!795 = !DILocation(line: 402, column: 24, scope: !678)
!796 = !DILocation(line: 0, scope: !678)
!797 = !DILocation(line: 403, column: 25, scope: !678)
!798 = !DILocation(line: 404, column: 35, scope: !678)
!799 = !DILocation(line: 404, column: 29, scope: !678)
!800 = !DILocation(line: 404, column: 44, scope: !678)
!801 = !DILocation(line: 404, column: 38, scope: !678)
!802 = !DILocation(line: 404, column: 53, scope: !678)
!803 = !DILocation(line: 404, column: 56, scope: !678)
!804 = !DILocation(line: 404, column: 48, scope: !678)
!805 = !DILocation(line: 404, column: 59, scope: !678)
!806 = !DILocation(line: 405, column: 39, scope: !678)
!807 = !DILocation(line: 405, column: 51, scope: !678)
!808 = !DILocation(line: 405, column: 47, scope: !678)
!809 = !DILocation(line: 405, column: 45, scope: !678)
!810 = !DILocation(line: 405, column: 33, scope: !678)
!811 = !DILocation(line: 405, column: 56, scope: !678)
!812 = !DILocation(line: 405, column: 17, scope: !678)
!813 = !DILocation(line: 406, column: 35, scope: !678)
!814 = !DILocation(line: 406, column: 13, scope: !678)
!815 = !DILocation(line: 406, column: 17, scope: !678)
!816 = !DILocation(line: 410, column: 34, scope: !817)
!817 = distinct !DILexicalBlock(scope: !679, file: !2, line: 409, column: 8)
!818 = !DILocation(line: 410, column: 37, scope: !817)
!819 = !DILocation(line: 410, column: 40, scope: !817)
!820 = !DILocation(line: 410, column: 43, scope: !817)
!821 = !DILocation(line: 410, column: 17, scope: !817)
!822 = !DILocation(line: 411, column: 35, scope: !817)
!823 = !DILocation(line: 411, column: 13, scope: !817)
!824 = !DILocation(line: 411, column: 17, scope: !817)
!825 = !DILocation(line: 412, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !817, file: !2, line: 412, column: 5)
!827 = !DILocation(line: 412, column: 5, scope: !817)
!828 = !DILocation(line: 412, column: 5, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !2, line: 412, column: 5)
!830 = !DILocation(line: 0, scope: !663)
!831 = !DILocation(line: 415, column: 1, scope: !653)
!832 = distinct !DISubprogram(name: "gsl_sf_debye_5_e", scope: !2, file: !2, line: 417, type: !124, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !833)
!833 = !{!834, !835, !836, !837, !838, !843, !844, !847, !848, !849, !850, !851, !852, !856, !859, !860, !861}
!834 = !DILocalVariable(name: "x", arg: 1, scope: !832, file: !2, line: 417, type: !126)
!835 = !DILocalVariable(name: "result", arg: 2, scope: !832, file: !2, line: 417, type: !127)
!836 = !DILocalVariable(name: "val_infinity", scope: !832, file: !2, line: 419, type: !126)
!837 = !DILocalVariable(name: "xcut", scope: !832, file: !2, line: 420, type: !126)
!838 = !DILocalVariable(name: "t", scope: !839, file: !2, line: 433, type: !126)
!839 = distinct !DILexicalBlock(scope: !840, file: !2, line: 432, column: 21)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 432, column: 11)
!841 = distinct !DILexicalBlock(scope: !842, file: !2, line: 427, column: 11)
!842 = distinct !DILexicalBlock(scope: !832, file: !2, line: 424, column: 6)
!843 = !DILocalVariable(name: "c", scope: !839, file: !2, line: 434, type: !128)
!844 = !DILocalVariable(name: "nexp", scope: !845, file: !2, line: 441, type: !148)
!845 = distinct !DILexicalBlock(scope: !846, file: !2, line: 440, column: 47)
!846 = distinct !DILexicalBlock(scope: !840, file: !2, line: 440, column: 11)
!847 = !DILocalVariable(name: "ex", scope: !845, file: !2, line: 442, type: !126)
!848 = !DILocalVariable(name: "xk", scope: !845, file: !2, line: 443, type: !84)
!849 = !DILocalVariable(name: "rk", scope: !845, file: !2, line: 444, type: !84)
!850 = !DILocalVariable(name: "sum", scope: !845, file: !2, line: 445, type: !84)
!851 = !DILocalVariable(name: "i", scope: !845, file: !2, line: 446, type: !38)
!852 = !DILocalVariable(name: "xk_inv", scope: !853, file: !2, line: 448, type: !84)
!853 = distinct !DILexicalBlock(scope: !854, file: !2, line: 447, column: 28)
!854 = distinct !DILexicalBlock(scope: !855, file: !2, line: 447, column: 5)
!855 = distinct !DILexicalBlock(scope: !845, file: !2, line: 447, column: 5)
!856 = !DILocalVariable(name: "x2", scope: !857, file: !2, line: 459, type: !126)
!857 = distinct !DILexicalBlock(scope: !858, file: !2, line: 458, column: 21)
!858 = distinct !DILexicalBlock(scope: !846, file: !2, line: 458, column: 11)
!859 = !DILocalVariable(name: "x4", scope: !857, file: !2, line: 460, type: !126)
!860 = !DILocalVariable(name: "x5", scope: !857, file: !2, line: 461, type: !126)
!861 = !DILocalVariable(name: "sum", scope: !857, file: !2, line: 462, type: !126)
!862 = !DILocation(line: 0, scope: !832)
!863 = !DILocation(line: 424, column: 8, scope: !842)
!864 = !DILocation(line: 424, column: 6, scope: !832)
!865 = !DILocation(line: 425, column: 5, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !2, line: 425, column: 5)
!867 = distinct !DILexicalBlock(scope: !842, file: !2, line: 424, column: 15)
!868 = !DILocation(line: 425, column: 5, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !2, line: 425, column: 5)
!870 = !DILocation(line: 427, column: 13, scope: !841)
!871 = !DILocation(line: 427, column: 11, scope: !842)
!872 = !DILocation(line: 428, column: 28, scope: !873)
!873 = distinct !DILexicalBlock(scope: !841, file: !2, line: 427, column: 49)
!874 = !DILocation(line: 428, column: 30, scope: !873)
!875 = !DILocation(line: 428, column: 23, scope: !873)
!876 = !DILocation(line: 428, column: 43, scope: !873)
!877 = !DILocation(line: 428, column: 45, scope: !873)
!878 = !DILocation(line: 428, column: 36, scope: !873)
!879 = !DILocation(line: 428, column: 17, scope: !873)
!880 = !DILocation(line: 429, column: 35, scope: !873)
!881 = !DILocation(line: 429, column: 13, scope: !873)
!882 = !DILocation(line: 429, column: 17, scope: !873)
!883 = !DILocation(line: 430, column: 5, scope: !873)
!884 = !DILocation(line: 432, column: 13, scope: !840)
!885 = !DILocation(line: 432, column: 11, scope: !841)
!886 = !DILocation(line: 433, column: 23, scope: !839)
!887 = !DILocation(line: 433, column: 25, scope: !839)
!888 = !DILocation(line: 433, column: 30, scope: !839)
!889 = !DILocation(line: 0, scope: !839)
!890 = !DILocation(line: 0, scope: !190, inlinedAt: !891)
!891 = distinct !DILocation(line: 435, column: 5, scope: !839)
!892 = !DILocation(line: 11, column: 19, scope: !190, inlinedAt: !891)
!893 = !DILocation(line: 11, column: 22, scope: !190, inlinedAt: !891)
!894 = !DILocation(line: 11, column: 30, scope: !190, inlinedAt: !891)
!895 = !DILocation(line: 11, column: 39, scope: !190, inlinedAt: !891)
!896 = !DILocation(line: 12, column: 19, scope: !190, inlinedAt: !891)
!897 = !DILocation(line: 16, column: 3, scope: !208, inlinedAt: !891)
!898 = !DILocation(line: 0, scope: !206, inlinedAt: !891)
!899 = !DILocation(line: 18, column: 11, scope: !206, inlinedAt: !891)
!900 = !DILocation(line: 18, column: 14, scope: !206, inlinedAt: !891)
!901 = !DILocation(line: 18, column: 21, scope: !206, inlinedAt: !891)
!902 = !DILocation(line: 18, column: 19, scope: !206, inlinedAt: !891)
!903 = !DILocation(line: 19, column: 10, scope: !206, inlinedAt: !891)
!904 = !DILocation(line: 19, column: 26, scope: !206, inlinedAt: !891)
!905 = !DILocation(line: 19, column: 24, scope: !206, inlinedAt: !891)
!906 = !DILocation(line: 19, column: 37, scope: !206, inlinedAt: !891)
!907 = !DILocation(line: 19, column: 35, scope: !206, inlinedAt: !891)
!908 = !DILocation(line: 19, column: 7, scope: !206, inlinedAt: !891)
!909 = !DILocation(line: 16, column: 29, scope: !207, inlinedAt: !891)
!910 = !DILocation(line: 16, column: 23, scope: !207, inlinedAt: !891)
!911 = distinct !{!911, !897, !912, !235}
!912 = !DILocation(line: 21, column: 3, scope: !208, inlinedAt: !891)
!913 = !DILocation(line: 0, scope: !210, inlinedAt: !891)
!914 = !DILocation(line: 25, column: 10, scope: !210, inlinedAt: !891)
!915 = !DILocation(line: 25, column: 13, scope: !210, inlinedAt: !891)
!916 = !DILocation(line: 25, column: 18, scope: !210, inlinedAt: !891)
!917 = !DILocation(line: 26, column: 10, scope: !210, inlinedAt: !891)
!918 = !DILocation(line: 26, column: 25, scope: !210, inlinedAt: !891)
!919 = !DILocation(line: 26, column: 23, scope: !210, inlinedAt: !891)
!920 = !DILocation(line: 26, column: 34, scope: !210, inlinedAt: !891)
!921 = !DILocation(line: 26, column: 7, scope: !210, inlinedAt: !891)
!922 = !DILocation(line: 30, column: 33, scope: !190, inlinedAt: !891)
!923 = !DILocation(line: 30, column: 37, scope: !190, inlinedAt: !891)
!924 = !DILocation(line: 436, column: 30, scope: !839)
!925 = !DILocation(line: 436, column: 32, scope: !839)
!926 = !DILocation(line: 436, column: 25, scope: !839)
!927 = !DILocation(line: 436, column: 17, scope: !839)
!928 = !DILocation(line: 437, column: 48, scope: !839)
!929 = !DILocation(line: 437, column: 50, scope: !839)
!930 = !DILocation(line: 437, column: 25, scope: !839)
!931 = !DILocation(line: 437, column: 13, scope: !839)
!932 = !DILocation(line: 437, column: 17, scope: !839)
!933 = !DILocation(line: 440, column: 13, scope: !846)
!934 = !DILocation(line: 440, column: 11, scope: !840)
!935 = !DILocation(line: 441, column: 32, scope: !845)
!936 = !DILocation(line: 441, column: 22, scope: !845)
!937 = !DILocation(line: 0, scope: !845)
!938 = !DILocation(line: 442, column: 28, scope: !845)
!939 = !DILocation(line: 442, column: 24, scope: !845)
!940 = !DILocation(line: 447, column: 18, scope: !854)
!941 = !DILocation(line: 447, column: 5, scope: !855)
!942 = !DILocation(line: 443, column: 18, scope: !845)
!943 = !DILocation(line: 443, column: 23, scope: !845)
!944 = !DILocation(line: 448, column: 26, scope: !853)
!945 = !DILocation(line: 0, scope: !853)
!946 = !DILocation(line: 449, column: 11, scope: !853)
!947 = !DILocation(line: 450, column: 24, scope: !853)
!948 = !DILocation(line: 450, column: 32, scope: !853)
!949 = !DILocation(line: 450, column: 40, scope: !853)
!950 = !DILocation(line: 450, column: 48, scope: !853)
!951 = !DILocation(line: 450, column: 55, scope: !853)
!952 = !DILocation(line: 450, column: 63, scope: !853)
!953 = !DILocation(line: 450, column: 70, scope: !853)
!954 = !DILocation(line: 450, column: 78, scope: !853)
!955 = !DILocation(line: 450, column: 84, scope: !853)
!956 = !DILocation(line: 450, column: 91, scope: !853)
!957 = !DILocation(line: 450, column: 98, scope: !853)
!958 = !DILocation(line: 450, column: 11, scope: !853)
!959 = !DILocation(line: 451, column: 10, scope: !853)
!960 = !DILocation(line: 452, column: 10, scope: !853)
!961 = !DILocation(line: 447, column: 24, scope: !854)
!962 = distinct !{!962, !941, !963, !235}
!963 = !DILocation(line: 453, column: 5, scope: !855)
!964 = !DILocation(line: 454, column: 50, scope: !845)
!965 = !DILocation(line: 454, column: 34, scope: !845)
!966 = !DILocation(line: 454, column: 36, scope: !845)
!967 = !DILocation(line: 454, column: 38, scope: !845)
!968 = !DILocation(line: 454, column: 40, scope: !845)
!969 = !DILocation(line: 454, column: 31, scope: !845)
!970 = !DILocation(line: 454, column: 56, scope: !845)
!971 = !DILocation(line: 454, column: 44, scope: !845)
!972 = !DILocation(line: 454, column: 17, scope: !845)
!973 = !DILocation(line: 455, column: 35, scope: !845)
!974 = !DILocation(line: 455, column: 13, scope: !845)
!975 = !DILocation(line: 455, column: 17, scope: !845)
!976 = !DILocation(line: 458, column: 13, scope: !858)
!977 = !DILocation(line: 458, column: 11, scope: !846)
!978 = !DILocation(line: 459, column: 24, scope: !857)
!979 = !DILocation(line: 0, scope: !857)
!980 = !DILocation(line: 460, column: 25, scope: !857)
!981 = !DILocation(line: 461, column: 25, scope: !857)
!982 = !DILocation(line: 462, column: 37, scope: !857)
!983 = !DILocation(line: 462, column: 30, scope: !857)
!984 = !DILocation(line: 462, column: 46, scope: !857)
!985 = !DILocation(line: 462, column: 40, scope: !857)
!986 = !DILocation(line: 462, column: 56, scope: !857)
!987 = !DILocation(line: 462, column: 59, scope: !857)
!988 = !DILocation(line: 462, column: 50, scope: !857)
!989 = !DILocation(line: 462, column: 67, scope: !857)
!990 = !DILocation(line: 462, column: 62, scope: !857)
!991 = !DILocation(line: 462, column: 71, scope: !857)
!992 = !DILocation(line: 463, column: 39, scope: !857)
!993 = !DILocation(line: 463, column: 51, scope: !857)
!994 = !DILocation(line: 463, column: 47, scope: !857)
!995 = !DILocation(line: 463, column: 45, scope: !857)
!996 = !DILocation(line: 463, column: 33, scope: !857)
!997 = !DILocation(line: 463, column: 56, scope: !857)
!998 = !DILocation(line: 463, column: 17, scope: !857)
!999 = !DILocation(line: 464, column: 35, scope: !857)
!1000 = !DILocation(line: 464, column: 13, scope: !857)
!1001 = !DILocation(line: 464, column: 17, scope: !857)
!1002 = !DILocation(line: 468, column: 35, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !858, file: !2, line: 467, column: 8)
!1004 = !DILocation(line: 468, column: 38, scope: !1003)
!1005 = !DILocation(line: 468, column: 41, scope: !1003)
!1006 = !DILocation(line: 468, column: 44, scope: !1003)
!1007 = !DILocation(line: 468, column: 47, scope: !1003)
!1008 = !DILocation(line: 468, column: 17, scope: !1003)
!1009 = !DILocation(line: 469, column: 35, scope: !1003)
!1010 = !DILocation(line: 469, column: 13, scope: !1003)
!1011 = !DILocation(line: 469, column: 17, scope: !1003)
!1012 = !DILocation(line: 470, column: 5, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 470, column: 5)
!1014 = !DILocation(line: 470, column: 5, scope: !1003)
!1015 = !DILocation(line: 470, column: 5, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 470, column: 5)
!1017 = !DILocation(line: 0, scope: !842)
!1018 = !DILocation(line: 473, column: 1, scope: !832)
!1019 = distinct !DISubprogram(name: "gsl_sf_debye_6_e", scope: !2, file: !2, line: 475, type: !124, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1030, !1031, !1034, !1035, !1036, !1037, !1038, !1039, !1043, !1046, !1047, !1048}
!1021 = !DILocalVariable(name: "x", arg: 1, scope: !1019, file: !2, line: 475, type: !126)
!1022 = !DILocalVariable(name: "result", arg: 2, scope: !1019, file: !2, line: 475, type: !127)
!1023 = !DILocalVariable(name: "val_infinity", scope: !1019, file: !2, line: 477, type: !126)
!1024 = !DILocalVariable(name: "xcut", scope: !1019, file: !2, line: 478, type: !126)
!1025 = !DILocalVariable(name: "t", scope: !1026, file: !2, line: 491, type: !126)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 490, column: 21)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 490, column: 11)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 485, column: 11)
!1029 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 482, column: 6)
!1030 = !DILocalVariable(name: "c", scope: !1026, file: !2, line: 492, type: !128)
!1031 = !DILocalVariable(name: "nexp", scope: !1032, file: !2, line: 499, type: !148)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 498, column: 47)
!1033 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 498, column: 11)
!1034 = !DILocalVariable(name: "ex", scope: !1032, file: !2, line: 500, type: !126)
!1035 = !DILocalVariable(name: "xk", scope: !1032, file: !2, line: 501, type: !84)
!1036 = !DILocalVariable(name: "rk", scope: !1032, file: !2, line: 502, type: !84)
!1037 = !DILocalVariable(name: "sum", scope: !1032, file: !2, line: 503, type: !84)
!1038 = !DILocalVariable(name: "i", scope: !1032, file: !2, line: 504, type: !38)
!1039 = !DILocalVariable(name: "xk_inv", scope: !1040, file: !2, line: 506, type: !84)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 505, column: 28)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 505, column: 5)
!1042 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 505, column: 5)
!1043 = !DILocalVariable(name: "x2", scope: !1044, file: !2, line: 517, type: !126)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 516, column: 21)
!1045 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 516, column: 11)
!1046 = !DILocalVariable(name: "x4", scope: !1044, file: !2, line: 518, type: !126)
!1047 = !DILocalVariable(name: "x6", scope: !1044, file: !2, line: 519, type: !126)
!1048 = !DILocalVariable(name: "sum", scope: !1044, file: !2, line: 520, type: !126)
!1049 = !DILocation(line: 0, scope: !1019)
!1050 = !DILocation(line: 482, column: 8, scope: !1029)
!1051 = !DILocation(line: 482, column: 6, scope: !1019)
!1052 = !DILocation(line: 483, column: 5, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 483, column: 5)
!1054 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 482, column: 15)
!1055 = !DILocation(line: 483, column: 5, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 483, column: 5)
!1057 = !DILocation(line: 485, column: 13, scope: !1028)
!1058 = !DILocation(line: 485, column: 11, scope: !1029)
!1059 = !DILocation(line: 486, column: 28, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 485, column: 49)
!1061 = !DILocation(line: 486, column: 30, scope: !1060)
!1062 = !DILocation(line: 486, column: 23, scope: !1060)
!1063 = !DILocation(line: 486, column: 38, scope: !1060)
!1064 = !DILocation(line: 486, column: 40, scope: !1060)
!1065 = !DILocation(line: 486, column: 35, scope: !1060)
!1066 = !DILocation(line: 486, column: 17, scope: !1060)
!1067 = !DILocation(line: 487, column: 35, scope: !1060)
!1068 = !DILocation(line: 487, column: 13, scope: !1060)
!1069 = !DILocation(line: 487, column: 17, scope: !1060)
!1070 = !DILocation(line: 488, column: 5, scope: !1060)
!1071 = !DILocation(line: 490, column: 13, scope: !1027)
!1072 = !DILocation(line: 490, column: 11, scope: !1028)
!1073 = !DILocation(line: 491, column: 23, scope: !1026)
!1074 = !DILocation(line: 491, column: 25, scope: !1026)
!1075 = !DILocation(line: 491, column: 30, scope: !1026)
!1076 = !DILocation(line: 0, scope: !1026)
!1077 = !DILocation(line: 0, scope: !190, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 493, column: 5, scope: !1026)
!1079 = !DILocation(line: 11, column: 19, scope: !190, inlinedAt: !1078)
!1080 = !DILocation(line: 11, column: 22, scope: !190, inlinedAt: !1078)
!1081 = !DILocation(line: 11, column: 30, scope: !190, inlinedAt: !1078)
!1082 = !DILocation(line: 11, column: 39, scope: !190, inlinedAt: !1078)
!1083 = !DILocation(line: 12, column: 19, scope: !190, inlinedAt: !1078)
!1084 = !DILocation(line: 16, column: 3, scope: !208, inlinedAt: !1078)
!1085 = !DILocation(line: 0, scope: !206, inlinedAt: !1078)
!1086 = !DILocation(line: 18, column: 11, scope: !206, inlinedAt: !1078)
!1087 = !DILocation(line: 18, column: 14, scope: !206, inlinedAt: !1078)
!1088 = !DILocation(line: 18, column: 21, scope: !206, inlinedAt: !1078)
!1089 = !DILocation(line: 18, column: 19, scope: !206, inlinedAt: !1078)
!1090 = !DILocation(line: 19, column: 10, scope: !206, inlinedAt: !1078)
!1091 = !DILocation(line: 19, column: 26, scope: !206, inlinedAt: !1078)
!1092 = !DILocation(line: 19, column: 24, scope: !206, inlinedAt: !1078)
!1093 = !DILocation(line: 19, column: 37, scope: !206, inlinedAt: !1078)
!1094 = !DILocation(line: 19, column: 35, scope: !206, inlinedAt: !1078)
!1095 = !DILocation(line: 19, column: 7, scope: !206, inlinedAt: !1078)
!1096 = !DILocation(line: 16, column: 29, scope: !207, inlinedAt: !1078)
!1097 = !DILocation(line: 16, column: 23, scope: !207, inlinedAt: !1078)
!1098 = distinct !{!1098, !1084, !1099, !235}
!1099 = !DILocation(line: 21, column: 3, scope: !208, inlinedAt: !1078)
!1100 = !DILocation(line: 0, scope: !210, inlinedAt: !1078)
!1101 = !DILocation(line: 25, column: 10, scope: !210, inlinedAt: !1078)
!1102 = !DILocation(line: 25, column: 13, scope: !210, inlinedAt: !1078)
!1103 = !DILocation(line: 25, column: 18, scope: !210, inlinedAt: !1078)
!1104 = !DILocation(line: 26, column: 10, scope: !210, inlinedAt: !1078)
!1105 = !DILocation(line: 26, column: 25, scope: !210, inlinedAt: !1078)
!1106 = !DILocation(line: 26, column: 23, scope: !210, inlinedAt: !1078)
!1107 = !DILocation(line: 26, column: 34, scope: !210, inlinedAt: !1078)
!1108 = !DILocation(line: 26, column: 7, scope: !210, inlinedAt: !1078)
!1109 = !DILocation(line: 30, column: 33, scope: !190, inlinedAt: !1078)
!1110 = !DILocation(line: 30, column: 37, scope: !190, inlinedAt: !1078)
!1111 = !DILocation(line: 494, column: 30, scope: !1026)
!1112 = !DILocation(line: 494, column: 32, scope: !1026)
!1113 = !DILocation(line: 494, column: 25, scope: !1026)
!1114 = !DILocation(line: 494, column: 17, scope: !1026)
!1115 = !DILocation(line: 495, column: 48, scope: !1026)
!1116 = !DILocation(line: 495, column: 50, scope: !1026)
!1117 = !DILocation(line: 495, column: 25, scope: !1026)
!1118 = !DILocation(line: 495, column: 13, scope: !1026)
!1119 = !DILocation(line: 495, column: 17, scope: !1026)
!1120 = !DILocation(line: 498, column: 13, scope: !1033)
!1121 = !DILocation(line: 498, column: 11, scope: !1027)
!1122 = !DILocation(line: 499, column: 32, scope: !1032)
!1123 = !DILocation(line: 499, column: 22, scope: !1032)
!1124 = !DILocation(line: 0, scope: !1032)
!1125 = !DILocation(line: 500, column: 28, scope: !1032)
!1126 = !DILocation(line: 500, column: 24, scope: !1032)
!1127 = !DILocation(line: 505, column: 18, scope: !1041)
!1128 = !DILocation(line: 505, column: 5, scope: !1042)
!1129 = !DILocation(line: 501, column: 18, scope: !1032)
!1130 = !DILocation(line: 501, column: 23, scope: !1032)
!1131 = !DILocation(line: 506, column: 26, scope: !1040)
!1132 = !DILocation(line: 0, scope: !1040)
!1133 = !DILocation(line: 507, column: 11, scope: !1040)
!1134 = !DILocation(line: 508, column: 25, scope: !1040)
!1135 = !DILocation(line: 508, column: 33, scope: !1040)
!1136 = !DILocation(line: 508, column: 41, scope: !1040)
!1137 = !DILocation(line: 508, column: 49, scope: !1040)
!1138 = !DILocation(line: 508, column: 57, scope: !1040)
!1139 = !DILocation(line: 508, column: 65, scope: !1040)
!1140 = !DILocation(line: 508, column: 73, scope: !1040)
!1141 = !DILocation(line: 508, column: 81, scope: !1040)
!1142 = !DILocation(line: 508, column: 88, scope: !1040)
!1143 = !DILocation(line: 508, column: 95, scope: !1040)
!1144 = !DILocation(line: 508, column: 101, scope: !1040)
!1145 = !DILocation(line: 508, column: 108, scope: !1040)
!1146 = !DILocation(line: 508, column: 115, scope: !1040)
!1147 = !DILocation(line: 508, column: 11, scope: !1040)
!1148 = !DILocation(line: 509, column: 10, scope: !1040)
!1149 = !DILocation(line: 510, column: 10, scope: !1040)
!1150 = !DILocation(line: 505, column: 24, scope: !1041)
!1151 = distinct !{!1151, !1128, !1152, !235}
!1152 = !DILocation(line: 511, column: 5, scope: !1042)
!1153 = !DILocation(line: 512, column: 52, scope: !1032)
!1154 = !DILocation(line: 512, column: 34, scope: !1032)
!1155 = !DILocation(line: 512, column: 36, scope: !1032)
!1156 = !DILocation(line: 512, column: 38, scope: !1032)
!1157 = !DILocation(line: 512, column: 40, scope: !1032)
!1158 = !DILocation(line: 512, column: 42, scope: !1032)
!1159 = !DILocation(line: 512, column: 31, scope: !1032)
!1160 = !DILocation(line: 512, column: 58, scope: !1032)
!1161 = !DILocation(line: 512, column: 46, scope: !1032)
!1162 = !DILocation(line: 512, column: 17, scope: !1032)
!1163 = !DILocation(line: 513, column: 35, scope: !1032)
!1164 = !DILocation(line: 513, column: 13, scope: !1032)
!1165 = !DILocation(line: 513, column: 17, scope: !1032)
!1166 = !DILocation(line: 516, column: 13, scope: !1045)
!1167 = !DILocation(line: 516, column: 11, scope: !1033)
!1168 = !DILocation(line: 517, column: 24, scope: !1044)
!1169 = !DILocation(line: 0, scope: !1044)
!1170 = !DILocation(line: 518, column: 25, scope: !1044)
!1171 = !DILocation(line: 519, column: 25, scope: !1044)
!1172 = !DILocation(line: 520, column: 37, scope: !1044)
!1173 = !DILocation(line: 520, column: 30, scope: !1044)
!1174 = !DILocation(line: 520, column: 47, scope: !1044)
!1175 = !DILocation(line: 520, column: 40, scope: !1044)
!1176 = !DILocation(line: 520, column: 58, scope: !1044)
!1177 = !DILocation(line: 520, column: 61, scope: !1044)
!1178 = !DILocation(line: 520, column: 51, scope: !1044)
!1179 = !DILocation(line: 520, column: 70, scope: !1044)
!1180 = !DILocation(line: 520, column: 64, scope: !1044)
!1181 = !DILocation(line: 520, column: 79, scope: !1044)
!1182 = !DILocation(line: 520, column: 82, scope: !1044)
!1183 = !DILocation(line: 520, column: 74, scope: !1044)
!1184 = !DILocation(line: 520, column: 85, scope: !1044)
!1185 = !DILocation(line: 521, column: 39, scope: !1044)
!1186 = !DILocation(line: 521, column: 51, scope: !1044)
!1187 = !DILocation(line: 521, column: 47, scope: !1044)
!1188 = !DILocation(line: 521, column: 45, scope: !1044)
!1189 = !DILocation(line: 521, column: 33, scope: !1044)
!1190 = !DILocation(line: 521, column: 56, scope: !1044)
!1191 = !DILocation(line: 521, column: 17, scope: !1044)
!1192 = !DILocation(line: 522, column: 35, scope: !1044)
!1193 = !DILocation(line: 522, column: 13, scope: !1044)
!1194 = !DILocation(line: 522, column: 17, scope: !1044)
!1195 = !DILocation(line: 526, column: 36, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 525, column: 8)
!1197 = !DILocation(line: 526, column: 39, scope: !1196)
!1198 = !DILocation(line: 526, column: 42, scope: !1196)
!1199 = !DILocation(line: 526, column: 45, scope: !1196)
!1200 = !DILocation(line: 526, column: 48, scope: !1196)
!1201 = !DILocation(line: 526, column: 51, scope: !1196)
!1202 = !DILocation(line: 526, column: 17, scope: !1196)
!1203 = !DILocation(line: 527, column: 35, scope: !1196)
!1204 = !DILocation(line: 527, column: 13, scope: !1196)
!1205 = !DILocation(line: 527, column: 17, scope: !1196)
!1206 = !DILocation(line: 528, column: 5, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 528, column: 5)
!1208 = !DILocation(line: 528, column: 5, scope: !1196)
!1209 = !DILocation(line: 528, column: 5, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 528, column: 5)
!1211 = !DILocation(line: 0, scope: !1029)
!1212 = !DILocation(line: 531, column: 1, scope: !1019)
!1213 = distinct !DISubprogram(name: "gsl_sf_debye_1", scope: !2, file: !2, line: 538, type: !1214, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!84, !126}
!1216 = !{!1217, !1218, !1219}
!1217 = !DILocalVariable(name: "x", arg: 1, scope: !1213, file: !2, line: 538, type: !126)
!1218 = !DILocalVariable(name: "result", scope: !1213, file: !2, line: 540, type: !128)
!1219 = !DILocalVariable(name: "status", scope: !1213, file: !2, line: 540, type: !38)
!1220 = distinct !DIAssignID()
!1221 = !DILocation(line: 0, scope: !1213)
!1222 = !DILocation(line: 540, column: 3, scope: !1213)
!1223 = !{i32 0, i32 2}
!1224 = !DILocation(line: 540, column: 3, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 540, column: 3)
!1226 = !DILocation(line: 540, column: 3, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 540, column: 3)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 540, column: 3)
!1229 = !DILocation(line: 541, column: 1, scope: !1213)
!1230 = distinct !DISubprogram(name: "gsl_sf_debye_2", scope: !2, file: !2, line: 543, type: !1214, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1231)
!1231 = !{!1232, !1233, !1234}
!1232 = !DILocalVariable(name: "x", arg: 1, scope: !1230, file: !2, line: 543, type: !126)
!1233 = !DILocalVariable(name: "result", scope: !1230, file: !2, line: 545, type: !128)
!1234 = !DILocalVariable(name: "status", scope: !1230, file: !2, line: 545, type: !38)
!1235 = distinct !DIAssignID()
!1236 = !DILocation(line: 0, scope: !1230)
!1237 = !DILocation(line: 545, column: 3, scope: !1230)
!1238 = !{i32 0, i32 16}
!1239 = !DILocation(line: 545, column: 3, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 545, column: 3)
!1241 = !DILocation(line: 545, column: 3, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 545, column: 3)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 545, column: 3)
!1244 = !DILocation(line: 546, column: 1, scope: !1230)
!1245 = distinct !DISubprogram(name: "gsl_sf_debye_3", scope: !2, file: !2, line: 548, type: !1214, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1246)
!1246 = !{!1247, !1248, !1249}
!1247 = !DILocalVariable(name: "x", arg: 1, scope: !1245, file: !2, line: 548, type: !126)
!1248 = !DILocalVariable(name: "result", scope: !1245, file: !2, line: 550, type: !128)
!1249 = !DILocalVariable(name: "status", scope: !1245, file: !2, line: 550, type: !38)
!1250 = distinct !DIAssignID()
!1251 = !DILocation(line: 0, scope: !1245)
!1252 = !DILocation(line: 550, column: 3, scope: !1245)
!1253 = !DILocation(line: 550, column: 3, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 550, column: 3)
!1255 = !DILocation(line: 550, column: 3, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 550, column: 3)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 550, column: 3)
!1258 = !DILocation(line: 551, column: 1, scope: !1245)
!1259 = distinct !DISubprogram(name: "gsl_sf_debye_4", scope: !2, file: !2, line: 553, type: !1214, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1260)
!1260 = !{!1261, !1262, !1263}
!1261 = !DILocalVariable(name: "x", arg: 1, scope: !1259, file: !2, line: 553, type: !126)
!1262 = !DILocalVariable(name: "result", scope: !1259, file: !2, line: 555, type: !128)
!1263 = !DILocalVariable(name: "status", scope: !1259, file: !2, line: 555, type: !38)
!1264 = distinct !DIAssignID()
!1265 = !DILocation(line: 0, scope: !1259)
!1266 = !DILocation(line: 555, column: 3, scope: !1259)
!1267 = !DILocation(line: 555, column: 3, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 555, column: 3)
!1269 = !DILocation(line: 555, column: 3, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 555, column: 3)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 555, column: 3)
!1272 = !DILocation(line: 556, column: 1, scope: !1259)
!1273 = distinct !DISubprogram(name: "gsl_sf_debye_5", scope: !2, file: !2, line: 558, type: !1214, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1274)
!1274 = !{!1275, !1276, !1277}
!1275 = !DILocalVariable(name: "x", arg: 1, scope: !1273, file: !2, line: 558, type: !126)
!1276 = !DILocalVariable(name: "result", scope: !1273, file: !2, line: 560, type: !128)
!1277 = !DILocalVariable(name: "status", scope: !1273, file: !2, line: 560, type: !38)
!1278 = distinct !DIAssignID()
!1279 = !DILocation(line: 0, scope: !1273)
!1280 = !DILocation(line: 560, column: 3, scope: !1273)
!1281 = !DILocation(line: 560, column: 3, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 560, column: 3)
!1283 = !DILocation(line: 560, column: 3, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 560, column: 3)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 560, column: 3)
!1286 = !DILocation(line: 561, column: 1, scope: !1273)
!1287 = distinct !DISubprogram(name: "gsl_sf_debye_6", scope: !2, file: !2, line: 563, type: !1214, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1288)
!1288 = !{!1289, !1290, !1291}
!1289 = !DILocalVariable(name: "x", arg: 1, scope: !1287, file: !2, line: 563, type: !126)
!1290 = !DILocalVariable(name: "result", scope: !1287, file: !2, line: 565, type: !128)
!1291 = !DILocalVariable(name: "status", scope: !1287, file: !2, line: 565, type: !38)
!1292 = distinct !DIAssignID()
!1293 = !DILocation(line: 0, scope: !1287)
!1294 = !DILocation(line: 565, column: 3, scope: !1287)
!1295 = !DILocation(line: 565, column: 3, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 565, column: 3)
!1297 = !DILocation(line: 565, column: 3, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 565, column: 3)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 565, column: 3)
!1300 = !DILocation(line: 566, column: 1, scope: !1287)
