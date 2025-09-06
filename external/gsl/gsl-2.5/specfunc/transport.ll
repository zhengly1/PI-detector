; ModuleID = 'transport.c'
source_filename = "transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"transport.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_2_e(x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_3_e(x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_4_e(x, &result)\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_5_e(x, &result)\00", align 1, !dbg !26
@transport2_data = internal unnamed_addr constant [18 x double] [double 0x3FFABF87E1C2EC5A, double 0xBFC2E8FE05B7962E, double 0x3F8E5AAC37970104, double 0xBF5741F3FCD8EC6D, double 0x3F21200673AC48C2, double 0xBEE891C0FF6AB45C, double 0x3EB156342B6F95A3, double 0xBE7835E3255CABA5, double 0x3E40C9D5DA57D05B, double 0xBE072C952CD0DB82, double 0x3DCFE205175455EF, double 0xBD95E1157E634485, double 4.259610e-13, double -3.642200e-14, double 3.111000e-15, double -2.650000e-16, double 2.300000e-17, double -1.900000e-18], align 16, !dbg !28
@transport3_data = internal unnamed_addr constant [18 x double] [double 0x3FE86268210BF994, double 0xBFBB0D7A0737D22F, double 0x3F8887D23DA99021, double 0xBF53E591B41BDEEF, double 0x3F1E47BE4B1355CF, double 0xBEE630F3EBFC4735, double 0x3EAFCAAC8324D282, double 0xBE767277EA433DA4, double 0x3E3F666E33A011A8, double 0xBE05D20AD0633D40, double 0x3DCE30271CB6635B, double 0xBD94CFEA591C410C, double 0x3D5C9FB537436EE8, double -3.489710e-14, double 2.989200e-15, double -2.560000e-16, double 2.190000e-17, double -1.900000e-18], align 16, !dbg !88
@transport4_data = internal unnamed_addr constant [18 x double] [double 0x3FDEC4B96CE072D7, double 0xBFB4EDD0F63A372D, double 0x3F84890A0D717976, double 0xBF515DAF65D257C9, double 0x3F1B1E74322AC8DA, double 0xBEE439BA7381C78A, double 0x3EAD585D8DBDE38E, double 0xBE74EB745E2FBF7D, double 0x3E3D7C2282A13B94, double 0xBE049D474D98CD42, double 0x3DCCA993D8D1E82A, double 0xBD93D7E0D24F3E5F, double 0x3D5B637D8630A2EA, double -3.349360e-14, double 2.876700e-15, double -2.467000e-16, double 2.110000e-17, double -1.800000e-18], align 16, !dbg !95
@transport5_data = internal unnamed_addr constant [18 x double] [double 0x3FD641FDB8C434D0, double 0xBFB10353423E261E, double 0x3F81A2AE9B8EEFF8, double 0xBF4ECA8224607386, double 0x3F188B91C4AA294E, double 0xBEE29322F19BD157, double 0x3EAB3E4BF1523CF8, double 0xBE73959CA06AE57E, double 0x3E3BC986C095CE12, double 0xBE03887E5037223C, double 0x3DCB482E98E7C80D, double -4.310940e-12, double 3.731000e-13, double -3.219800e-14, double 2.772000e-15, double -2.380000e-16, double 2.100000e-17, double -1.800000e-18], align 16, !dbg !99

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_transport_2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !109 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !121, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !122, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata double 0x400A51A6625307D3, metadata !123, metadata !DIExpression()), !dbg !152
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !153
  br i1 %3, label %4, label %6, !dbg !154

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !155, !tbaa !158
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !155
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !155, !tbaa !163
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 178, i32 noundef 1) #7, !dbg !164
  br label %174, !dbg !164

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x3E68000000000000, !dbg !166
  br i1 %7, label %8, label %15, !dbg !167

8:                                                ; preds = %6
  store double %0, ptr %1, align 8, !dbg !168, !tbaa !158
  %9 = tail call double @llvm.fabs.f64(double %0), !dbg !170
  %10 = fmul double %9, 0x3CB0000000000000, !dbg !171
  %11 = fmul double %0, %0, !dbg !172
  %12 = fmul double %11, 5.000000e-01, !dbg !173
  %13 = fadd double %10, %12, !dbg !174
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !175
  store double %13, ptr %14, align 8, !dbg !176, !tbaa !163
  br label %174, !dbg !177

15:                                               ; preds = %6
  %16 = fcmp ugt double %0, 4.000000e+00, !dbg !178
  br i1 %16, label %62, label %17, !dbg !179

17:                                               ; preds = %15
  %18 = fmul double %0, %0, !dbg !180
  %19 = fmul double %18, 1.250000e-01, !dbg !181
  %20 = fadd double %19, -5.000000e-01, !dbg !182
  %21 = fadd double %20, -5.000000e-01, !dbg !183
  tail call void @llvm.dbg.value(metadata double %21, metadata !124, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata !185, metadata !186, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %21, metadata !194, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata ptr undef, metadata !195, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !208
  %22 = fmul double %21, 2.000000e+00, !dbg !210
  %23 = fadd double %22, 1.000000e+00, !dbg !211
  %24 = fadd double %23, -1.000000e+00, !dbg !212
  %25 = fmul double %24, 5.000000e-01, !dbg !213
  call void @llvm.dbg.value(metadata double %25, metadata !199, metadata !DIExpression()), !dbg !208
  %26 = fmul double %25, 2.000000e+00, !dbg !214
  call void @llvm.dbg.value(metadata double %26, metadata !200, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i32 17, metadata !196, metadata !DIExpression()), !dbg !208
  br label %27, !dbg !215

27:                                               ; preds = %27, %17
  %28 = phi i64 [ 17, %17 ], [ %43, %27 ]
  %29 = phi double [ 0.000000e+00, %17 ], [ %36, %27 ]
  %30 = phi double [ 0.000000e+00, %17 ], [ %42, %27 ]
  %31 = phi double [ 0.000000e+00, %17 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata i64 %28, metadata !196, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %29, metadata !197, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %30, metadata !201, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %31, metadata !198, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %29, metadata !202, metadata !DIExpression()), !dbg !216
  %32 = fmul double %26, %29, !dbg !217
  %33 = fsub double %32, %31, !dbg !218
  %34 = getelementptr inbounds double, ptr @transport2_data, i64 %28, !dbg !219
  %35 = load double, ptr %34, align 8, !dbg !219, !tbaa !220
  %36 = fadd double %33, %35, !dbg !221
  call void @llvm.dbg.value(metadata double %36, metadata !197, metadata !DIExpression()), !dbg !208
  %37 = tail call double @llvm.fabs.f64(double %32), !dbg !222
  %38 = tail call double @llvm.fabs.f64(double %31), !dbg !223
  %39 = fadd double %37, %38, !dbg !224
  %40 = tail call double @llvm.fabs.f64(double %35), !dbg !225
  %41 = fadd double %39, %40, !dbg !226
  %42 = fadd double %30, %41, !dbg !227
  call void @llvm.dbg.value(metadata double %42, metadata !201, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %29, metadata !198, metadata !DIExpression()), !dbg !208
  %43 = add nsw i64 %28, -1, !dbg !228
  call void @llvm.dbg.value(metadata i64 %43, metadata !196, metadata !DIExpression()), !dbg !208
  %44 = icmp ugt i64 %28, 1, !dbg !229
  br i1 %44, label %27, label %45, !dbg !215, !llvm.loop !230

45:                                               ; preds = %27
  call void @llvm.dbg.value(metadata double %36, metadata !206, metadata !DIExpression()), !dbg !233
  %46 = fmul double %25, %36, !dbg !234
  %47 = fsub double %46, %29, !dbg !235
  %48 = fadd double %47, 0x3FEABF87E1C2EC5A, !dbg !236
  call void @llvm.dbg.value(metadata double %48, metadata !197, metadata !DIExpression()), !dbg !208
  %49 = tail call double @llvm.fabs.f64(double %46), !dbg !237
  %50 = tail call double @llvm.fabs.f64(double %29), !dbg !238
  %51 = fadd double %50, %49, !dbg !239
  %52 = fadd double %51, 0x3FEABF87E1C2EC5A, !dbg !240
  %53 = fadd double %42, %52, !dbg !241
  call void @llvm.dbg.value(metadata double %53, metadata !201, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata double %48, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !184
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !242
  %55 = fadd double %54, 1.900000e-18, !dbg !243
  tail call void @llvm.dbg.value(metadata double %55, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !184
  %56 = fmul double %48, %0, !dbg !244
  store double %56, ptr %1, align 8, !dbg !245, !tbaa !158
  %57 = fmul double %55, %0, !dbg !246
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !247
  %59 = tail call double @llvm.fabs.f64(double %56), !dbg !248
  %60 = fmul double %59, 0x3CC0000000000000, !dbg !249
  %61 = fadd double %60, %57, !dbg !250
  store double %61, ptr %58, align 8, !dbg !250, !tbaa !163
  br label %174

62:                                               ; preds = %15
  %63 = fcmp olt double %0, 0x404205966F2B4F12, !dbg !251
  br i1 %63, label %64, label %133, !dbg !252

64:                                               ; preds = %62
  %65 = fdiv double 0x404205966F2B4F12, %0, !dbg !253
  %66 = fptosi double %65 to i32, !dbg !254
  %67 = add i32 %66, 1, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !130, metadata !DIExpression()), !dbg !256
  %68 = fneg double %0, !dbg !257
  %69 = tail call double @exp(double noundef %68) #7, !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !259, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i32 2, metadata !264, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double %69, metadata !265, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double %0, metadata !266, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i32 1, metadata !269, metadata !DIExpression()), !dbg !277
  %70 = icmp slt i32 %66, 0, !dbg !279
  br i1 %70, label %115, label %71, !dbg !280

71:                                               ; preds = %64
  %72 = sitofp i32 %67 to double, !dbg !281
  tail call void @llvm.dbg.value(metadata double %72, metadata !267, metadata !DIExpression()), !dbg !277
  %73 = icmp eq i32 %66, 0, !dbg !280
  br i1 %73, label %100, label %74, !dbg !280

74:                                               ; preds = %71
  %75 = and i32 %67, -2, !dbg !280
  br label %76, !dbg !280

76:                                               ; preds = %76, %74
  %77 = phi double [ %72, %74 ], [ %97, %76 ]
  %78 = phi double [ 0.000000e+00, %74 ], [ %96, %76 ]
  %79 = phi i32 [ 0, %74 ], [ %98, %76 ]
  tail call void @llvm.dbg.value(metadata double %77, metadata !267, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double %78, metadata !268, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !282
  %80 = fmul double %77, %0, !dbg !283
  %81 = fdiv double 1.000000e+00, %80, !dbg !284
  tail call void @llvm.dbg.value(metadata double %81, metadata !274, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !282
  %82 = fadd double %81, 1.000000e+00, !dbg !285
  tail call void @llvm.dbg.value(metadata i32 2, metadata !276, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !275, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double %82, metadata !270, metadata !DIExpression()), !dbg !282
  %83 = fmul double %82, 2.000000e+00, !dbg !289
  %84 = fmul double %81, %83, !dbg !290
  %85 = fadd double %84, 1.000000e+00, !dbg !285
  tail call void @llvm.dbg.value(metadata double %85, metadata !270, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !275, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i32 3, metadata !276, metadata !DIExpression()), !dbg !282
  %86 = fmul double %69, %78, !dbg !291
  tail call void @llvm.dbg.value(metadata double %86, metadata !268, metadata !DIExpression()), !dbg !277
  %87 = fadd double %86, %85, !dbg !292
  tail call void @llvm.dbg.value(metadata double %87, metadata !268, metadata !DIExpression()), !dbg !277
  %88 = fadd double %77, -1.000000e+00, !dbg !293
  tail call void @llvm.dbg.value(metadata double %88, metadata !267, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !277
  tail call void @llvm.dbg.value(metadata double %88, metadata !267, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !277
  tail call void @llvm.dbg.value(metadata double %87, metadata !268, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !282
  %89 = fmul double %88, %0, !dbg !283
  %90 = fdiv double 1.000000e+00, %89, !dbg !284
  tail call void @llvm.dbg.value(metadata double %90, metadata !274, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !282
  %91 = fadd double %90, 1.000000e+00, !dbg !285
  tail call void @llvm.dbg.value(metadata i32 2, metadata !276, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !275, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double %91, metadata !270, metadata !DIExpression()), !dbg !282
  %92 = fmul double %91, 2.000000e+00, !dbg !289
  %93 = fmul double %90, %92, !dbg !290
  %94 = fadd double %93, 1.000000e+00, !dbg !285
  tail call void @llvm.dbg.value(metadata double %94, metadata !270, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !275, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i32 3, metadata !276, metadata !DIExpression()), !dbg !282
  %95 = fmul double %69, %87, !dbg !291
  tail call void @llvm.dbg.value(metadata double %95, metadata !268, metadata !DIExpression()), !dbg !277
  %96 = fadd double %95, %94, !dbg !292
  tail call void @llvm.dbg.value(metadata double %96, metadata !268, metadata !DIExpression()), !dbg !277
  %97 = fadd double %88, -1.000000e+00, !dbg !293
  tail call void @llvm.dbg.value(metadata double %97, metadata !267, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !277
  %98 = add i32 %79, 2, !dbg !280
  %99 = icmp eq i32 %98, %75, !dbg !280
  br i1 %99, label %100, label %76, !dbg !280, !llvm.loop !294

100:                                              ; preds = %76, %71
  %101 = phi double [ undef, %71 ], [ %96, %76 ]
  %102 = phi double [ %72, %71 ], [ %97, %76 ]
  %103 = phi double [ 0.000000e+00, %71 ], [ %96, %76 ]
  %104 = and i32 %66, 1, !dbg !280
  %105 = icmp eq i32 %104, 0, !dbg !280
  br i1 %105, label %106, label %115, !dbg !280

106:                                              ; preds = %100
  tail call void @llvm.dbg.value(metadata double %102, metadata !267, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double %103, metadata !268, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !282
  %107 = fmul double %102, %0, !dbg !283
  %108 = fdiv double 1.000000e+00, %107, !dbg !284
  tail call void @llvm.dbg.value(metadata double %108, metadata !274, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !282
  %109 = fadd double %108, 1.000000e+00, !dbg !285
  tail call void @llvm.dbg.value(metadata i32 2, metadata !276, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !275, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double %109, metadata !270, metadata !DIExpression()), !dbg !282
  %110 = fmul double %109, 2.000000e+00, !dbg !289
  %111 = fmul double %108, %110, !dbg !290
  %112 = fadd double %111, 1.000000e+00, !dbg !285
  tail call void @llvm.dbg.value(metadata double %112, metadata !270, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !275, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i32 3, metadata !276, metadata !DIExpression()), !dbg !282
  %113 = fmul double %69, %103, !dbg !291
  tail call void @llvm.dbg.value(metadata double %113, metadata !268, metadata !DIExpression()), !dbg !277
  %114 = fadd double %113, %112, !dbg !292
  tail call void @llvm.dbg.value(metadata double %114, metadata !268, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !277
  br label %115, !dbg !296

115:                                              ; preds = %106, %100, %64
  %116 = phi double [ 0.000000e+00, %64 ], [ %101, %100 ], [ %114, %106 ], !dbg !277
  tail call void @llvm.dbg.value(metadata double %116, metadata !134, metadata !DIExpression()), !dbg !256
  %117 = tail call double @log(double noundef %0) #7, !dbg !296
  %118 = fmul double %117, 2.000000e+00, !dbg !297
  %119 = fsub double %118, %0, !dbg !298
  %120 = tail call double @log(double noundef %116) #7, !dbg !299
  %121 = fadd double %120, %119, !dbg !300
  tail call void @llvm.dbg.value(metadata double %121, metadata !135, metadata !DIExpression()), !dbg !256
  %122 = fcmp olt double %121, 0xC04205966F2B4F12, !dbg !301
  br i1 %122, label %123, label %125, !dbg !302

123:                                              ; preds = %115
  store double 0x400A51A6625307D3, ptr %1, align 8, !dbg !303, !tbaa !158
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !305
  store double 0x3CDA51A6625307D3, ptr %124, align 8, !dbg !306, !tbaa !163
  br label %174, !dbg !307

125:                                              ; preds = %115
  %126 = tail call double @exp(double noundef %121) #7, !dbg !308
  tail call void @llvm.dbg.value(metadata double %126, metadata !136, metadata !DIExpression()), !dbg !309
  %127 = fsub double 0x400A51A6625307D3, %126, !dbg !310
  store double %127, ptr %1, align 8, !dbg !311, !tbaa !158
  %128 = tail call double @llvm.fabs.f64(double %121), !dbg !312
  %129 = fmul double %128, %126, !dbg !313
  %130 = fadd double %129, 0x400A51A6625307D3, !dbg !314
  %131 = fmul double %130, 0x3CC0000000000000, !dbg !315
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !316
  store double %131, ptr %132, align 8, !dbg !317, !tbaa !163
  br label %174

133:                                              ; preds = %62
  %134 = fcmp olt double %0, 0x4340000000000000, !dbg !318
  br i1 %134, label %135, label %158, !dbg !319

135:                                              ; preds = %133
  %136 = fdiv double 1.000000e+00, %0, !dbg !320
  %137 = fadd double %136, 1.000000e+00, !dbg !322
  %138 = fmul double %137, 2.000000e+00, !dbg !323
  %139 = fmul double %136, %138, !dbg !324
  %140 = fadd double %139, 1.000000e+00, !dbg !322
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !267, metadata !DIExpression()), !dbg !325
  tail call void @llvm.dbg.value(metadata i32 1, metadata !269, metadata !DIExpression()), !dbg !325
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !325
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double %136, metadata !274, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double %140, metadata !142, metadata !DIExpression()), !dbg !327
  %141 = tail call double @log(double noundef %0) #7, !dbg !328
  %142 = fmul double %141, 2.000000e+00, !dbg !329
  %143 = fsub double %142, %0, !dbg !330
  %144 = tail call double @log(double noundef %140) #7, !dbg !331
  %145 = fadd double %144, %143, !dbg !332
  tail call void @llvm.dbg.value(metadata double %145, metadata !143, metadata !DIExpression()), !dbg !327
  %146 = fcmp olt double %145, 0xC04205966F2B4F12, !dbg !333
  br i1 %146, label %147, label %149, !dbg !334

147:                                              ; preds = %135
  store double 0x400A51A6625307D3, ptr %1, align 8, !dbg !335, !tbaa !158
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !337
  store double 0x3CDA51A6625307D3, ptr %148, align 8, !dbg !338, !tbaa !163
  br label %174, !dbg !339

149:                                              ; preds = %135
  %150 = tail call double @exp(double noundef %145) #7, !dbg !340
  tail call void @llvm.dbg.value(metadata double %150, metadata !144, metadata !DIExpression()), !dbg !341
  %151 = fsub double 0x400A51A6625307D3, %150, !dbg !342
  store double %151, ptr %1, align 8, !dbg !343, !tbaa !158
  %152 = tail call double @llvm.fabs.f64(double %145), !dbg !344
  %153 = fadd double %152, 1.000000e+00, !dbg !345
  %154 = fmul double %153, %150, !dbg !346
  %155 = fadd double %154, 0x400A51A6625307D3, !dbg !347
  %156 = fmul double %155, 0x3CC0000000000000, !dbg !348
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !349
  store double %156, ptr %157, align 8, !dbg !350, !tbaa !163
  br label %174

158:                                              ; preds = %133
  %159 = tail call double @log(double noundef %0) #7, !dbg !351
  %160 = fmul double %159, 2.000000e+00, !dbg !352
  %161 = fsub double %160, %0, !dbg !353
  tail call void @llvm.dbg.value(metadata double %161, metadata !147, metadata !DIExpression()), !dbg !354
  %162 = fcmp olt double %161, 0xC04205966F2B4F12, !dbg !355
  br i1 %162, label %163, label %165, !dbg !356

163:                                              ; preds = %158
  store double 0x400A51A6625307D3, ptr %1, align 8, !dbg !357, !tbaa !158
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !359
  store double 0x3CDA51A6625307D3, ptr %164, align 8, !dbg !360, !tbaa !163
  br label %174, !dbg !361

165:                                              ; preds = %158
  %166 = tail call double @exp(double noundef %161) #7, !dbg !362
  tail call void @llvm.dbg.value(metadata double %166, metadata !149, metadata !DIExpression()), !dbg !363
  %167 = fsub double 0x400A51A6625307D3, %166, !dbg !364
  store double %167, ptr %1, align 8, !dbg !365, !tbaa !158
  %168 = tail call double @llvm.fabs.f64(double %161), !dbg !366
  %169 = fadd double %168, 1.000000e+00, !dbg !367
  %170 = fmul double %169, %166, !dbg !368
  %171 = fadd double %170, 0x400A51A6625307D3, !dbg !369
  %172 = fmul double %171, 0x3CC0000000000000, !dbg !370
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !371
  store double %172, ptr %173, align 8, !dbg !372, !tbaa !163
  br label %174

174:                                              ; preds = %163, %165, %147, %149, %123, %125, %45, %8, %4
  %175 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 0, %45 ], [ 0, %125 ], [ 0, %123 ], [ 0, %149 ], [ 0, %147 ], [ 0, %165 ], [ 0, %163 ], !dbg !373
  ret i32 %175, !dbg !374
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !375 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !380 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !384 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_transport_3_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !385 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !387, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !388, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata double 0x401CD97007680932, metadata !389, metadata !DIExpression()), !dbg !419
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !420
  br i1 %3, label %4, label %6, !dbg !421

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !422, !tbaa !158
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !422
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !422, !tbaa !163
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 248, i32 noundef 1) #7, !dbg !425
  br label %190, !dbg !425

6:                                                ; preds = %2
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !427
  br i1 %7, label %8, label %9, !dbg !428

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !429
  br label %190, !dbg !431

9:                                                ; preds = %6
  %10 = fcmp olt double %0, 0x3E68000000000000, !dbg !432
  br i1 %10, label %11, label %19, !dbg !433

11:                                               ; preds = %9
  %12 = fmul double %0, 5.000000e-01, !dbg !434
  %13 = fmul double %12, %0, !dbg !436
  store double %13, ptr %1, align 8, !dbg !437, !tbaa !158
  %14 = fmul double %13, 0x3CC0000000000000, !dbg !438
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !439
  store double %14, ptr %15, align 8, !dbg !440, !tbaa !163
  %16 = tail call double @llvm.fabs.f64(double %13), !dbg !441
  %17 = fcmp olt double %16, 0x10000000000000, !dbg !441
  br i1 %17, label %18, label %190, !dbg !443

18:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 258, i32 noundef 15) #7, !dbg !444
  br label %190, !dbg !444

19:                                               ; preds = %9
  %20 = fcmp ugt double %0, 4.000000e+00, !dbg !446
  br i1 %20, label %66, label %21, !dbg !447

21:                                               ; preds = %19
  %22 = fmul double %0, %0, !dbg !448
  tail call void @llvm.dbg.value(metadata double %22, metadata !390, metadata !DIExpression()), !dbg !449
  %23 = fmul double %22, 1.250000e-01, !dbg !450
  %24 = fadd double %23, -5.000000e-01, !dbg !451
  %25 = fadd double %24, -5.000000e-01, !dbg !452
  tail call void @llvm.dbg.value(metadata double %25, metadata !396, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata !185, metadata !186, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata double %25, metadata !194, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata ptr undef, metadata !195, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !453
  %26 = fmul double %25, 2.000000e+00, !dbg !455
  %27 = fadd double %26, 1.000000e+00, !dbg !456
  %28 = fadd double %27, -1.000000e+00, !dbg !457
  %29 = fmul double %28, 5.000000e-01, !dbg !458
  call void @llvm.dbg.value(metadata double %29, metadata !199, metadata !DIExpression()), !dbg !453
  %30 = fmul double %29, 2.000000e+00, !dbg !459
  call void @llvm.dbg.value(metadata double %30, metadata !200, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 17, metadata !196, metadata !DIExpression()), !dbg !453
  br label %31, !dbg !460

31:                                               ; preds = %31, %21
  %32 = phi i64 [ 17, %21 ], [ %47, %31 ]
  %33 = phi double [ 0.000000e+00, %21 ], [ %40, %31 ]
  %34 = phi double [ 0.000000e+00, %21 ], [ %46, %31 ]
  %35 = phi double [ 0.000000e+00, %21 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata i64 %32, metadata !196, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata double %33, metadata !197, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata double %34, metadata !201, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata double %35, metadata !198, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata double %33, metadata !202, metadata !DIExpression()), !dbg !461
  %36 = fmul double %30, %33, !dbg !462
  %37 = fsub double %36, %35, !dbg !463
  %38 = getelementptr inbounds double, ptr @transport3_data, i64 %32, !dbg !464
  %39 = load double, ptr %38, align 8, !dbg !464, !tbaa !220
  %40 = fadd double %37, %39, !dbg !465
  call void @llvm.dbg.value(metadata double %40, metadata !197, metadata !DIExpression()), !dbg !453
  %41 = tail call double @llvm.fabs.f64(double %36), !dbg !466
  %42 = tail call double @llvm.fabs.f64(double %35), !dbg !467
  %43 = fadd double %41, %42, !dbg !468
  %44 = tail call double @llvm.fabs.f64(double %39), !dbg !469
  %45 = fadd double %43, %44, !dbg !470
  %46 = fadd double %34, %45, !dbg !471
  call void @llvm.dbg.value(metadata double %46, metadata !201, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata double %33, metadata !198, metadata !DIExpression()), !dbg !453
  %47 = add nsw i64 %32, -1, !dbg !472
  call void @llvm.dbg.value(metadata i64 %47, metadata !196, metadata !DIExpression()), !dbg !453
  %48 = icmp ugt i64 %32, 1, !dbg !473
  br i1 %48, label %31, label %49, !dbg !460, !llvm.loop !474

49:                                               ; preds = %31
  call void @llvm.dbg.value(metadata double %40, metadata !206, metadata !DIExpression()), !dbg !476
  %50 = fmul double %29, %40, !dbg !477
  %51 = fsub double %50, %33, !dbg !478
  %52 = fadd double %51, 0x3FD86268210BF994, !dbg !479
  call void @llvm.dbg.value(metadata double %52, metadata !197, metadata !DIExpression()), !dbg !453
  %53 = tail call double @llvm.fabs.f64(double %50), !dbg !480
  %54 = tail call double @llvm.fabs.f64(double %33), !dbg !481
  %55 = fadd double %54, %53, !dbg !482
  %56 = fadd double %55, 0x3FD86268210BF994, !dbg !483
  %57 = fadd double %46, %56, !dbg !484
  call void @llvm.dbg.value(metadata double %57, metadata !201, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double %52, metadata !397, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !449
  %58 = fmul double %57, 0x3CB0000000000000, !dbg !485
  %59 = fadd double %58, 1.900000e-18, !dbg !486
  tail call void @llvm.dbg.value(metadata double %59, metadata !397, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !449
  %60 = fmul double %22, %52, !dbg !487
  store double %60, ptr %1, align 8, !dbg !488, !tbaa !158
  %61 = fmul double %22, %59, !dbg !489
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !490
  %63 = tail call double @llvm.fabs.f64(double %60), !dbg !491
  %64 = fmul double %63, 0x3CB0000000000000, !dbg !492
  %65 = fadd double %64, %61, !dbg !493
  store double %65, ptr %62, align 8, !dbg !493, !tbaa !163
  br label %190

66:                                               ; preds = %19
  %67 = fcmp olt double %0, 0x404205966F2B4F12, !dbg !494
  br i1 %67, label %68, label %146, !dbg !495

68:                                               ; preds = %66
  %69 = fdiv double 0x404205966F2B4F12, %0, !dbg !496
  %70 = fptosi double %69 to i32, !dbg !497
  %71 = add i32 %70, 1, !dbg !498
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !398, metadata !DIExpression()), !dbg !499
  %72 = fneg double %0, !dbg !500
  %73 = tail call double @exp(double noundef %72) #7, !dbg !501
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !259, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 3, metadata !264, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double %73, metadata !265, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double %0, metadata !266, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 1, metadata !269, metadata !DIExpression()), !dbg !502
  %74 = icmp slt i32 %70, 0, !dbg !504
  br i1 %74, label %128, label %75, !dbg !505

75:                                               ; preds = %68
  %76 = sitofp i32 %71 to double, !dbg !506
  tail call void @llvm.dbg.value(metadata double %76, metadata !267, metadata !DIExpression()), !dbg !502
  %77 = icmp eq i32 %70, 0, !dbg !505
  br i1 %77, label %110, label %78, !dbg !505

78:                                               ; preds = %75
  %79 = and i32 %71, -2, !dbg !505
  br label %80, !dbg !505

80:                                               ; preds = %80, %78
  %81 = phi double [ %76, %78 ], [ %107, %80 ]
  %82 = phi double [ 0.000000e+00, %78 ], [ %106, %80 ]
  %83 = phi i32 [ 0, %78 ], [ %108, %80 ]
  tail call void @llvm.dbg.value(metadata double %81, metadata !267, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double %82, metadata !268, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !507
  %84 = fmul double %81, %0, !dbg !508
  %85 = fdiv double 1.000000e+00, %84, !dbg !509
  tail call void @llvm.dbg.value(metadata double %85, metadata !274, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  %86 = fadd double %85, 1.000000e+00, !dbg !510
  tail call void @llvm.dbg.value(metadata i32 2, metadata !276, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %86, metadata !270, metadata !DIExpression()), !dbg !507
  %87 = fmul double %86, 2.000000e+00, !dbg !511
  %88 = fmul double %85, %87, !dbg !512
  %89 = fadd double %88, 1.000000e+00, !dbg !510
  tail call void @llvm.dbg.value(metadata i32 3, metadata !276, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %89, metadata !270, metadata !DIExpression()), !dbg !507
  %90 = fmul double %89, 3.000000e+00, !dbg !511
  %91 = fmul double %85, %90, !dbg !512
  %92 = fadd double %91, 1.000000e+00, !dbg !510
  tail call void @llvm.dbg.value(metadata double %92, metadata !270, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 4.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 4, metadata !276, metadata !DIExpression()), !dbg !507
  %93 = fmul double %73, %82, !dbg !513
  tail call void @llvm.dbg.value(metadata double %93, metadata !268, metadata !DIExpression()), !dbg !502
  %94 = fadd double %93, %92, !dbg !514
  tail call void @llvm.dbg.value(metadata double %94, metadata !268, metadata !DIExpression()), !dbg !502
  %95 = fadd double %81, -1.000000e+00, !dbg !515
  tail call void @llvm.dbg.value(metadata double %95, metadata !267, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !502
  tail call void @llvm.dbg.value(metadata double %95, metadata !267, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !502
  tail call void @llvm.dbg.value(metadata double %94, metadata !268, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !507
  %96 = fmul double %95, %0, !dbg !508
  %97 = fdiv double 1.000000e+00, %96, !dbg !509
  tail call void @llvm.dbg.value(metadata double %97, metadata !274, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  %98 = fadd double %97, 1.000000e+00, !dbg !510
  tail call void @llvm.dbg.value(metadata i32 2, metadata !276, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %98, metadata !270, metadata !DIExpression()), !dbg !507
  %99 = fmul double %98, 2.000000e+00, !dbg !511
  %100 = fmul double %97, %99, !dbg !512
  %101 = fadd double %100, 1.000000e+00, !dbg !510
  tail call void @llvm.dbg.value(metadata i32 3, metadata !276, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %101, metadata !270, metadata !DIExpression()), !dbg !507
  %102 = fmul double %101, 3.000000e+00, !dbg !511
  %103 = fmul double %97, %102, !dbg !512
  %104 = fadd double %103, 1.000000e+00, !dbg !510
  tail call void @llvm.dbg.value(metadata double %104, metadata !270, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 4.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 4, metadata !276, metadata !DIExpression()), !dbg !507
  %105 = fmul double %73, %94, !dbg !513
  tail call void @llvm.dbg.value(metadata double %105, metadata !268, metadata !DIExpression()), !dbg !502
  %106 = fadd double %105, %104, !dbg !514
  tail call void @llvm.dbg.value(metadata double %106, metadata !268, metadata !DIExpression()), !dbg !502
  %107 = fadd double %95, -1.000000e+00, !dbg !515
  tail call void @llvm.dbg.value(metadata double %107, metadata !267, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !502
  %108 = add i32 %83, 2, !dbg !505
  %109 = icmp eq i32 %108, %79, !dbg !505
  br i1 %109, label %110, label %80, !dbg !505, !llvm.loop !516

110:                                              ; preds = %80, %75
  %111 = phi double [ undef, %75 ], [ %106, %80 ]
  %112 = phi double [ %76, %75 ], [ %107, %80 ]
  %113 = phi double [ 0.000000e+00, %75 ], [ %106, %80 ]
  %114 = and i32 %70, 1, !dbg !505
  %115 = icmp eq i32 %114, 0, !dbg !505
  br i1 %115, label %116, label %128, !dbg !505

116:                                              ; preds = %110
  tail call void @llvm.dbg.value(metadata double %112, metadata !267, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double %113, metadata !268, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !507
  %117 = fmul double %112, %0, !dbg !508
  %118 = fdiv double 1.000000e+00, %117, !dbg !509
  tail call void @llvm.dbg.value(metadata double %118, metadata !274, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  %119 = fadd double %118, 1.000000e+00, !dbg !510
  tail call void @llvm.dbg.value(metadata i32 2, metadata !276, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %119, metadata !270, metadata !DIExpression()), !dbg !507
  %120 = fmul double %119, 2.000000e+00, !dbg !511
  %121 = fmul double %118, %120, !dbg !512
  %122 = fadd double %121, 1.000000e+00, !dbg !510
  tail call void @llvm.dbg.value(metadata i32 3, metadata !276, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %122, metadata !270, metadata !DIExpression()), !dbg !507
  %123 = fmul double %122, 3.000000e+00, !dbg !511
  %124 = fmul double %118, %123, !dbg !512
  %125 = fadd double %124, 1.000000e+00, !dbg !510
  tail call void @llvm.dbg.value(metadata double %125, metadata !270, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 4.000000e+00, metadata !275, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 4, metadata !276, metadata !DIExpression()), !dbg !507
  %126 = fmul double %73, %113, !dbg !513
  tail call void @llvm.dbg.value(metadata double %126, metadata !268, metadata !DIExpression()), !dbg !502
  %127 = fadd double %126, %125, !dbg !514
  tail call void @llvm.dbg.value(metadata double %127, metadata !268, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !502
  br label %128, !dbg !518

128:                                              ; preds = %116, %110, %68
  %129 = phi double [ 0.000000e+00, %68 ], [ %111, %110 ], [ %127, %116 ], !dbg !502
  tail call void @llvm.dbg.value(metadata double %129, metadata !401, metadata !DIExpression()), !dbg !499
  %130 = tail call double @log(double noundef %0) #7, !dbg !518
  %131 = fmul double %130, 3.000000e+00, !dbg !519
  %132 = fsub double %131, %0, !dbg !520
  %133 = tail call double @log(double noundef %129) #7, !dbg !521
  %134 = fadd double %133, %132, !dbg !522
  tail call void @llvm.dbg.value(metadata double %134, metadata !402, metadata !DIExpression()), !dbg !499
  %135 = fcmp olt double %134, 0xC04205966F2B4F12, !dbg !523
  br i1 %135, label %136, label %138, !dbg !524

136:                                              ; preds = %128
  store double 0x401CD97007680932, ptr %1, align 8, !dbg !525, !tbaa !158
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !527
  store double 0x3CECD97007680932, ptr %137, align 8, !dbg !528, !tbaa !163
  br label %190, !dbg !529

138:                                              ; preds = %128
  %139 = tail call double @exp(double noundef %134) #7, !dbg !530
  tail call void @llvm.dbg.value(metadata double %139, metadata !403, metadata !DIExpression()), !dbg !531
  %140 = fsub double 0x401CD97007680932, %139, !dbg !532
  store double %140, ptr %1, align 8, !dbg !533, !tbaa !158
  %141 = tail call double @llvm.fabs.f64(double %134), !dbg !534
  %142 = fmul double %141, %139, !dbg !535
  %143 = fadd double %142, 0x401CD97007680932, !dbg !536
  %144 = fmul double %143, 0x3CC0000000000000, !dbg !537
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !538
  store double %144, ptr %145, align 8, !dbg !539, !tbaa !163
  br label %190

146:                                              ; preds = %66
  %147 = fcmp olt double %0, 0x4348000000000000, !dbg !540
  br i1 %147, label %148, label %174, !dbg !541

148:                                              ; preds = %146
  %149 = fdiv double 1.000000e+00, %0, !dbg !542
  %150 = fadd double %149, 1.000000e+00, !dbg !544
  %151 = fmul double %150, 2.000000e+00, !dbg !545
  %152 = fmul double %149, %151, !dbg !546
  %153 = fadd double %152, 1.000000e+00, !dbg !544
  %154 = fmul double %153, 3.000000e+00, !dbg !545
  %155 = fmul double %149, %154, !dbg !546
  %156 = fadd double %155, 1.000000e+00, !dbg !544
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !267, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata i32 1, metadata !269, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !548
  tail call void @llvm.dbg.value(metadata double %149, metadata !274, metadata !DIExpression()), !dbg !548
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !548
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !548
  tail call void @llvm.dbg.value(metadata double %156, metadata !409, metadata !DIExpression()), !dbg !549
  %157 = tail call double @log(double noundef %0) #7, !dbg !550
  %158 = fmul double %157, 3.000000e+00, !dbg !551
  %159 = fsub double %158, %0, !dbg !552
  %160 = tail call double @log(double noundef %156) #7, !dbg !553
  %161 = fadd double %160, %159, !dbg !554
  tail call void @llvm.dbg.value(metadata double %161, metadata !410, metadata !DIExpression()), !dbg !549
  %162 = fcmp olt double %161, 0xC04205966F2B4F12, !dbg !555
  br i1 %162, label %163, label %165, !dbg !556

163:                                              ; preds = %148
  store double 0x401CD97007680932, ptr %1, align 8, !dbg !557, !tbaa !158
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !559
  store double 0x3CECD97007680932, ptr %164, align 8, !dbg !560, !tbaa !163
  br label %190, !dbg !561

165:                                              ; preds = %148
  %166 = tail call double @exp(double noundef %161) #7, !dbg !562
  tail call void @llvm.dbg.value(metadata double %166, metadata !411, metadata !DIExpression()), !dbg !563
  %167 = fsub double 0x401CD97007680932, %166, !dbg !564
  store double %167, ptr %1, align 8, !dbg !565, !tbaa !158
  %168 = tail call double @llvm.fabs.f64(double %161), !dbg !566
  %169 = fadd double %168, 1.000000e+00, !dbg !567
  %170 = fmul double %169, %166, !dbg !568
  %171 = fadd double %170, 0x401CD97007680932, !dbg !569
  %172 = fmul double %171, 0x3CC0000000000000, !dbg !570
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !571
  store double %172, ptr %173, align 8, !dbg !572, !tbaa !163
  br label %190

174:                                              ; preds = %146
  %175 = tail call double @log(double noundef %0) #7, !dbg !573
  %176 = fmul double %175, 3.000000e+00, !dbg !574
  %177 = fsub double %176, %0, !dbg !575
  tail call void @llvm.dbg.value(metadata double %177, metadata !414, metadata !DIExpression()), !dbg !576
  %178 = fcmp olt double %177, 0xC04205966F2B4F12, !dbg !577
  br i1 %178, label %179, label %181, !dbg !578

179:                                              ; preds = %174
  store double 0x401CD97007680932, ptr %1, align 8, !dbg !579, !tbaa !158
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !581
  store double 0x3CECD97007680932, ptr %180, align 8, !dbg !582, !tbaa !163
  br label %190, !dbg !583

181:                                              ; preds = %174
  %182 = tail call double @exp(double noundef %177) #7, !dbg !584
  tail call void @llvm.dbg.value(metadata double %182, metadata !416, metadata !DIExpression()), !dbg !585
  %183 = fsub double 0x401CD97007680932, %182, !dbg !586
  store double %183, ptr %1, align 8, !dbg !587, !tbaa !158
  %184 = tail call double @llvm.fabs.f64(double %177), !dbg !588
  %185 = fadd double %184, 1.000000e+00, !dbg !589
  %186 = fmul double %185, %182, !dbg !590
  %187 = fadd double %186, 0x401CD97007680932, !dbg !591
  %188 = fmul double %187, 0x3CC0000000000000, !dbg !592
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !593
  store double %188, ptr %189, align 8, !dbg !594, !tbaa !163
  br label %190

190:                                              ; preds = %179, %181, %163, %165, %136, %138, %11, %49, %18, %8, %4
  %191 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 15, %18 ], [ 0, %49 ], [ 0, %11 ], [ 0, %138 ], [ 0, %136 ], [ 0, %165 ], [ 0, %163 ], [ 0, %181 ], [ 0, %179 ], !dbg !595
  ret i32 %191, !dbg !596
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_transport_4_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !597 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !599, metadata !DIExpression()), !dbg !631
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !600, metadata !DIExpression()), !dbg !631
  tail call void @llvm.dbg.value(metadata double 0x4039F9CB402BC46C, metadata !601, metadata !DIExpression()), !dbg !631
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !632
  br i1 %3, label %4, label %6, !dbg !633

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !634, !tbaa !158
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !634
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !634, !tbaa !163
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 325, i32 noundef 1) #7, !dbg !637
  br label %166, !dbg !637

6:                                                ; preds = %2
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !639
  br i1 %7, label %8, label %9, !dbg !640

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !641
  br label %166, !dbg !643

9:                                                ; preds = %6
  %10 = fcmp olt double %0, 0x3E68000000000000, !dbg !644
  br i1 %10, label %11, label %20, !dbg !645

11:                                               ; preds = %9
  %12 = fmul double %0, %0, !dbg !646
  %13 = fmul double %12, %0, !dbg !648
  %14 = fdiv double %13, 3.000000e+00, !dbg !649
  store double %14, ptr %1, align 8, !dbg !650, !tbaa !158
  %15 = fmul double %14, 0x3CC8000000000000, !dbg !651
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !652
  store double %15, ptr %16, align 8, !dbg !653, !tbaa !163
  %17 = tail call double @llvm.fabs.f64(double %14), !dbg !654
  %18 = fcmp olt double %17, 0x10000000000000, !dbg !654
  br i1 %18, label %19, label %166, !dbg !656

19:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 15) #7, !dbg !657
  br label %166, !dbg !657

20:                                               ; preds = %9
  %21 = fcmp ugt double %0, 4.000000e+00, !dbg !659
  br i1 %21, label %68, label %22, !dbg !660

22:                                               ; preds = %20
  %23 = fmul double %0, %0, !dbg !661
  tail call void @llvm.dbg.value(metadata double %23, metadata !602, metadata !DIExpression()), !dbg !662
  %24 = fmul double %23, 1.250000e-01, !dbg !663
  %25 = fadd double %24, -5.000000e-01, !dbg !664
  %26 = fadd double %25, -5.000000e-01, !dbg !665
  tail call void @llvm.dbg.value(metadata double %26, metadata !608, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata !185, metadata !186, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %26, metadata !194, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr undef, metadata !195, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !666
  %27 = fmul double %26, 2.000000e+00, !dbg !668
  %28 = fadd double %27, 1.000000e+00, !dbg !669
  %29 = fadd double %28, -1.000000e+00, !dbg !670
  %30 = fmul double %29, 5.000000e-01, !dbg !671
  call void @llvm.dbg.value(metadata double %30, metadata !199, metadata !DIExpression()), !dbg !666
  %31 = fmul double %30, 2.000000e+00, !dbg !672
  call void @llvm.dbg.value(metadata double %31, metadata !200, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i32 17, metadata !196, metadata !DIExpression()), !dbg !666
  br label %32, !dbg !673

32:                                               ; preds = %32, %22
  %33 = phi i64 [ 17, %22 ], [ %48, %32 ]
  %34 = phi double [ 0.000000e+00, %22 ], [ %41, %32 ]
  %35 = phi double [ 0.000000e+00, %22 ], [ %47, %32 ]
  %36 = phi double [ 0.000000e+00, %22 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !196, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %34, metadata !197, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %35, metadata !201, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %36, metadata !198, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %34, metadata !202, metadata !DIExpression()), !dbg !674
  %37 = fmul double %31, %34, !dbg !675
  %38 = fsub double %37, %36, !dbg !676
  %39 = getelementptr inbounds double, ptr @transport4_data, i64 %33, !dbg !677
  %40 = load double, ptr %39, align 8, !dbg !677, !tbaa !220
  %41 = fadd double %38, %40, !dbg !678
  call void @llvm.dbg.value(metadata double %41, metadata !197, metadata !DIExpression()), !dbg !666
  %42 = tail call double @llvm.fabs.f64(double %37), !dbg !679
  %43 = tail call double @llvm.fabs.f64(double %36), !dbg !680
  %44 = fadd double %42, %43, !dbg !681
  %45 = tail call double @llvm.fabs.f64(double %40), !dbg !682
  %46 = fadd double %44, %45, !dbg !683
  %47 = fadd double %35, %46, !dbg !684
  call void @llvm.dbg.value(metadata double %47, metadata !201, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %34, metadata !198, metadata !DIExpression()), !dbg !666
  %48 = add nsw i64 %33, -1, !dbg !685
  call void @llvm.dbg.value(metadata i64 %48, metadata !196, metadata !DIExpression()), !dbg !666
  %49 = icmp ugt i64 %33, 1, !dbg !686
  br i1 %49, label %32, label %50, !dbg !673, !llvm.loop !687

50:                                               ; preds = %32
  call void @llvm.dbg.value(metadata double %41, metadata !206, metadata !DIExpression()), !dbg !689
  %51 = fmul double %30, %41, !dbg !690
  %52 = fsub double %51, %34, !dbg !691
  %53 = fadd double %52, 0x3FCEC4B96CE072D7, !dbg !692
  call void @llvm.dbg.value(metadata double %53, metadata !197, metadata !DIExpression()), !dbg !666
  %54 = tail call double @llvm.fabs.f64(double %51), !dbg !693
  %55 = tail call double @llvm.fabs.f64(double %34), !dbg !694
  %56 = fadd double %55, %54, !dbg !695
  %57 = fadd double %56, 0x3FCEC4B96CE072D7, !dbg !696
  %58 = fadd double %47, %57, !dbg !697
  call void @llvm.dbg.value(metadata double %58, metadata !201, metadata !DIExpression()), !dbg !666
  tail call void @llvm.dbg.value(metadata double %53, metadata !609, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !662
  %59 = fmul double %58, 0x3CB0000000000000, !dbg !698
  %60 = fadd double %59, 1.800000e-18, !dbg !699
  tail call void @llvm.dbg.value(metadata double %60, metadata !609, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !662
  %61 = fmul double %23, %0, !dbg !700
  %62 = fmul double %61, %53, !dbg !701
  store double %62, ptr %1, align 8, !dbg !702, !tbaa !158
  %63 = fmul double %61, %60, !dbg !703
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !704
  %65 = tail call double @llvm.fabs.f64(double %62), !dbg !705
  %66 = fmul double %65, 0x3CC0000000000000, !dbg !706
  %67 = fadd double %66, %63, !dbg !707
  store double %67, ptr %64, align 8, !dbg !707, !tbaa !163
  br label %166

68:                                               ; preds = %20
  %69 = fcmp olt double %0, 0x404205966F2B4F12, !dbg !708
  br i1 %69, label %70, label %119, !dbg !709

70:                                               ; preds = %68
  %71 = fdiv double 0x404205966F2B4F12, %0, !dbg !710
  %72 = fptosi double %71 to i32, !dbg !711
  %73 = add nsw i32 %72, 1, !dbg !712
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !610, metadata !DIExpression()), !dbg !713
  %74 = fneg double %0, !dbg !714
  %75 = tail call double @exp(double noundef %74) #7, !dbg !715
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !259, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata i32 4, metadata !264, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata double %75, metadata !265, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata double %0, metadata !266, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata i32 1, metadata !269, metadata !DIExpression()), !dbg !716
  %76 = icmp slt i32 %72, 0, !dbg !718
  br i1 %76, label %100, label %77, !dbg !719

77:                                               ; preds = %70
  %78 = sitofp i32 %73 to double, !dbg !720
  tail call void @llvm.dbg.value(metadata double %78, metadata !267, metadata !DIExpression()), !dbg !716
  br label %79, !dbg !719

79:                                               ; preds = %79, %77
  %80 = phi double [ %78, %77 ], [ %97, %79 ]
  %81 = phi i32 [ 1, %77 ], [ %98, %79 ]
  %82 = phi double [ 0.000000e+00, %77 ], [ %96, %79 ]
  tail call void @llvm.dbg.value(metadata double %80, metadata !267, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !269, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata double %82, metadata !268, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !721
  %83 = fmul double %80, %0, !dbg !722
  %84 = fdiv double 1.000000e+00, %83, !dbg !723
  tail call void @llvm.dbg.value(metadata double %84, metadata !274, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !721
  %85 = fadd double %84, 1.000000e+00, !dbg !724
  tail call void @llvm.dbg.value(metadata i32 2, metadata !276, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !275, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %85, metadata !270, metadata !DIExpression()), !dbg !721
  %86 = fmul double %85, 2.000000e+00, !dbg !725
  %87 = fmul double %84, %86, !dbg !726
  %88 = fadd double %87, 1.000000e+00, !dbg !724
  tail call void @llvm.dbg.value(metadata i32 3, metadata !276, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !275, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %88, metadata !270, metadata !DIExpression()), !dbg !721
  %89 = fmul double %88, 3.000000e+00, !dbg !725
  %90 = fmul double %84, %89, !dbg !726
  %91 = fadd double %90, 1.000000e+00, !dbg !724
  tail call void @llvm.dbg.value(metadata i32 4, metadata !276, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double 4.000000e+00, metadata !275, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double %91, metadata !270, metadata !DIExpression()), !dbg !721
  %92 = fmul double %91, 4.000000e+00, !dbg !725
  %93 = fmul double %84, %92, !dbg !726
  %94 = fadd double %93, 1.000000e+00, !dbg !724
  tail call void @llvm.dbg.value(metadata double %94, metadata !270, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata double 5.000000e+00, metadata !275, metadata !DIExpression()), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 5, metadata !276, metadata !DIExpression()), !dbg !721
  %95 = fmul double %75, %82, !dbg !727
  tail call void @llvm.dbg.value(metadata double %95, metadata !268, metadata !DIExpression()), !dbg !716
  %96 = fadd double %95, %94, !dbg !728
  tail call void @llvm.dbg.value(metadata double %96, metadata !268, metadata !DIExpression()), !dbg !716
  %97 = fadd double %80, -1.000000e+00, !dbg !729
  tail call void @llvm.dbg.value(metadata double %97, metadata !267, metadata !DIExpression()), !dbg !716
  %98 = add nuw i32 %81, 1, !dbg !730
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !269, metadata !DIExpression()), !dbg !716
  %99 = icmp eq i32 %81, %73, !dbg !718
  br i1 %99, label %100, label %79, !dbg !719, !llvm.loop !731

100:                                              ; preds = %79, %70
  %101 = phi double [ 0.000000e+00, %70 ], [ %96, %79 ], !dbg !716
  tail call void @llvm.dbg.value(metadata double %101, metadata !613, metadata !DIExpression()), !dbg !713
  %102 = tail call double @log(double noundef %0) #7, !dbg !733
  %103 = fmul double %102, 4.000000e+00, !dbg !734
  %104 = fsub double %103, %0, !dbg !735
  %105 = tail call double @log(double noundef %101) #7, !dbg !736
  %106 = fadd double %105, %104, !dbg !737
  tail call void @llvm.dbg.value(metadata double %106, metadata !614, metadata !DIExpression()), !dbg !713
  %107 = fcmp olt double %106, 0xC04205966F2B4F12, !dbg !738
  br i1 %107, label %108, label %110, !dbg !739

108:                                              ; preds = %100
  store double 0x4039F9CB402BC46C, ptr %1, align 8, !dbg !740, !tbaa !158
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !742
  store double 0x3D09F9CB402BC46C, ptr %109, align 8, !dbg !743, !tbaa !163
  br label %166, !dbg !744

110:                                              ; preds = %100
  %111 = tail call double @exp(double noundef %106) #7, !dbg !745
  tail call void @llvm.dbg.value(metadata double %111, metadata !615, metadata !DIExpression()), !dbg !746
  %112 = fsub double 0x4039F9CB402BC46C, %111, !dbg !747
  store double %112, ptr %1, align 8, !dbg !748, !tbaa !158
  %113 = tail call double @llvm.fabs.f64(double %106), !dbg !749
  %114 = fadd double %113, 1.000000e+00, !dbg !750
  %115 = fmul double %114, %111, !dbg !751
  %116 = fadd double %115, 0x4039F9CB402BC46C, !dbg !752
  %117 = fmul double %116, 0x3CC0000000000000, !dbg !753
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !754
  store double %117, ptr %118, align 8, !dbg !755, !tbaa !163
  br label %166

119:                                              ; preds = %68
  %120 = fcmp olt double %0, 0x4348000000000000, !dbg !756
  br i1 %120, label %121, label %150, !dbg !757

121:                                              ; preds = %119
  %122 = fdiv double 1.000000e+00, %0, !dbg !758
  %123 = fadd double %122, 1.000000e+00, !dbg !760
  %124 = fmul double %123, 2.000000e+00, !dbg !761
  %125 = fmul double %122, %124, !dbg !762
  %126 = fadd double %125, 1.000000e+00, !dbg !760
  %127 = fmul double %126, 3.000000e+00, !dbg !761
  %128 = fmul double %122, %127, !dbg !762
  %129 = fadd double %128, 1.000000e+00, !dbg !760
  %130 = fmul double %129, 4.000000e+00, !dbg !761
  %131 = fmul double %122, %130, !dbg !762
  %132 = fadd double %131, 1.000000e+00, !dbg !760
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !267, metadata !DIExpression()), !dbg !763
  tail call void @llvm.dbg.value(metadata i32 1, metadata !269, metadata !DIExpression()), !dbg !763
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !763
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata double %122, metadata !274, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata double %132, metadata !621, metadata !DIExpression()), !dbg !765
  %133 = tail call double @log(double noundef %0) #7, !dbg !766
  %134 = fmul double %133, 4.000000e+00, !dbg !767
  %135 = fsub double %134, %0, !dbg !768
  %136 = tail call double @log(double noundef %132) #7, !dbg !769
  %137 = fadd double %136, %135, !dbg !770
  tail call void @llvm.dbg.value(metadata double %137, metadata !622, metadata !DIExpression()), !dbg !765
  %138 = fcmp olt double %137, 0xC04205966F2B4F12, !dbg !771
  br i1 %138, label %139, label %141, !dbg !772

139:                                              ; preds = %121
  store double 0x4039F9CB402BC46C, ptr %1, align 8, !dbg !773, !tbaa !158
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !775
  store double 0x3D09F9CB402BC46C, ptr %140, align 8, !dbg !776, !tbaa !163
  br label %166, !dbg !777

141:                                              ; preds = %121
  %142 = tail call double @exp(double noundef %137) #7, !dbg !778
  tail call void @llvm.dbg.value(metadata double %142, metadata !623, metadata !DIExpression()), !dbg !779
  %143 = fsub double 0x4039F9CB402BC46C, %142, !dbg !780
  store double %143, ptr %1, align 8, !dbg !781, !tbaa !158
  %144 = tail call double @llvm.fabs.f64(double %137), !dbg !782
  %145 = fadd double %144, 1.000000e+00, !dbg !783
  %146 = fmul double %145, %142, !dbg !784
  %147 = fadd double %146, 0x4039F9CB402BC46C, !dbg !785
  %148 = fmul double %147, 0x3CC0000000000000, !dbg !786
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !787
  store double %148, ptr %149, align 8, !dbg !788, !tbaa !163
  br label %166

150:                                              ; preds = %119
  %151 = tail call double @log(double noundef %0) #7, !dbg !789
  %152 = fmul double %151, 4.000000e+00, !dbg !790
  %153 = fsub double %152, %0, !dbg !791
  tail call void @llvm.dbg.value(metadata double %153, metadata !626, metadata !DIExpression()), !dbg !792
  %154 = fcmp olt double %153, 0xC04205966F2B4F12, !dbg !793
  br i1 %154, label %155, label %157, !dbg !794

155:                                              ; preds = %150
  store double 0x4039F9CB402BC46C, ptr %1, align 8, !dbg !795, !tbaa !158
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !797
  store double 0x3D09F9CB402BC46C, ptr %156, align 8, !dbg !798, !tbaa !163
  br label %166, !dbg !799

157:                                              ; preds = %150
  %158 = tail call double @exp(double noundef %153) #7, !dbg !800
  tail call void @llvm.dbg.value(metadata double %158, metadata !628, metadata !DIExpression()), !dbg !801
  %159 = fsub double 0x4039F9CB402BC46C, %158, !dbg !802
  store double %159, ptr %1, align 8, !dbg !803, !tbaa !158
  %160 = tail call double @llvm.fabs.f64(double %153), !dbg !804
  %161 = fadd double %160, 1.000000e+00, !dbg !805
  %162 = fmul double %161, %158, !dbg !806
  %163 = fadd double %162, 0x4039F9CB402BC46C, !dbg !807
  %164 = fmul double %163, 0x3CC0000000000000, !dbg !808
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !809
  store double %164, ptr %165, align 8, !dbg !810, !tbaa !163
  br label %166

166:                                              ; preds = %155, %157, %139, %141, %108, %110, %11, %50, %19, %8, %4
  %167 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 15, %19 ], [ 0, %50 ], [ 0, %11 ], [ 0, %110 ], [ 0, %108 ], [ 0, %141 ], [ 0, %139 ], [ 0, %157 ], [ 0, %155 ], !dbg !811
  ret i32 %167, !dbg !812
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_transport_5_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !813 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !815, metadata !DIExpression()), !dbg !847
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !816, metadata !DIExpression()), !dbg !847
  tail call void @llvm.dbg.value(metadata double 0x405F1B9AEBBBAA02, metadata !817, metadata !DIExpression()), !dbg !847
  %3 = fcmp olt double %0, 0.000000e+00, !dbg !848
  br i1 %3, label %4, label %6, !dbg !849

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !850, !tbaa !158
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !850
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !850, !tbaa !163
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 402, i32 noundef 1) #7, !dbg !853
  br label %173, !dbg !853

6:                                                ; preds = %2
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !855
  br i1 %7, label %8, label %9, !dbg !856

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !857
  br label %173, !dbg !859

9:                                                ; preds = %6
  %10 = fcmp olt double %0, 0x3E68000000000000, !dbg !860
  br i1 %10, label %11, label %21, !dbg !861

11:                                               ; preds = %9
  %12 = fmul double %0, %0, !dbg !862
  %13 = fmul double %12, %0, !dbg !864
  %14 = fmul double %13, %0, !dbg !865
  %15 = fmul double %14, 2.500000e-01, !dbg !866
  store double %15, ptr %1, align 8, !dbg !867, !tbaa !158
  %16 = fmul double %15, 0x3CD0000000000000, !dbg !868
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !869
  store double %16, ptr %17, align 8, !dbg !870, !tbaa !163
  %18 = tail call double @llvm.fabs.f64(double %15), !dbg !871
  %19 = fcmp olt double %18, 0x10000000000000, !dbg !871
  br i1 %19, label %20, label %173, !dbg !873

20:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 412, i32 noundef 15) #7, !dbg !874
  br label %173, !dbg !874

21:                                               ; preds = %9
  %22 = fcmp ugt double %0, 4.000000e+00, !dbg !876
  br i1 %22, label %69, label %23, !dbg !877

23:                                               ; preds = %21
  %24 = fmul double %0, %0, !dbg !878
  tail call void @llvm.dbg.value(metadata double %24, metadata !818, metadata !DIExpression()), !dbg !879
  %25 = fmul double %24, 1.250000e-01, !dbg !880
  %26 = fadd double %25, -5.000000e-01, !dbg !881
  %27 = fadd double %26, -5.000000e-01, !dbg !882
  tail call void @llvm.dbg.value(metadata double %27, metadata !824, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata !185, metadata !186, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %27, metadata !194, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata ptr undef, metadata !195, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !197, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !198, metadata !DIExpression()), !dbg !883
  %28 = fmul double %27, 2.000000e+00, !dbg !885
  %29 = fadd double %28, 1.000000e+00, !dbg !886
  %30 = fadd double %29, -1.000000e+00, !dbg !887
  %31 = fmul double %30, 5.000000e-01, !dbg !888
  call void @llvm.dbg.value(metadata double %31, metadata !199, metadata !DIExpression()), !dbg !883
  %32 = fmul double %31, 2.000000e+00, !dbg !889
  call void @llvm.dbg.value(metadata double %32, metadata !200, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i32 17, metadata !196, metadata !DIExpression()), !dbg !883
  br label %33, !dbg !890

33:                                               ; preds = %33, %23
  %34 = phi i64 [ 17, %23 ], [ %49, %33 ]
  %35 = phi double [ 0.000000e+00, %23 ], [ %42, %33 ]
  %36 = phi double [ 0.000000e+00, %23 ], [ %48, %33 ]
  %37 = phi double [ 0.000000e+00, %23 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !196, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %35, metadata !197, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %36, metadata !201, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %37, metadata !198, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %35, metadata !202, metadata !DIExpression()), !dbg !891
  %38 = fmul double %32, %35, !dbg !892
  %39 = fsub double %38, %37, !dbg !893
  %40 = getelementptr inbounds double, ptr @transport5_data, i64 %34, !dbg !894
  %41 = load double, ptr %40, align 8, !dbg !894, !tbaa !220
  %42 = fadd double %39, %41, !dbg !895
  call void @llvm.dbg.value(metadata double %42, metadata !197, metadata !DIExpression()), !dbg !883
  %43 = tail call double @llvm.fabs.f64(double %38), !dbg !896
  %44 = tail call double @llvm.fabs.f64(double %37), !dbg !897
  %45 = fadd double %43, %44, !dbg !898
  %46 = tail call double @llvm.fabs.f64(double %41), !dbg !899
  %47 = fadd double %45, %46, !dbg !900
  %48 = fadd double %36, %47, !dbg !901
  call void @llvm.dbg.value(metadata double %48, metadata !201, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %35, metadata !198, metadata !DIExpression()), !dbg !883
  %49 = add nsw i64 %34, -1, !dbg !902
  call void @llvm.dbg.value(metadata i64 %49, metadata !196, metadata !DIExpression()), !dbg !883
  %50 = icmp ugt i64 %34, 1, !dbg !903
  br i1 %50, label %33, label %51, !dbg !890, !llvm.loop !904

51:                                               ; preds = %33
  call void @llvm.dbg.value(metadata double %42, metadata !206, metadata !DIExpression()), !dbg !906
  %52 = fmul double %31, %42, !dbg !907
  %53 = fsub double %52, %35, !dbg !908
  %54 = fadd double %53, 0x3FC641FDB8C434D0, !dbg !909
  call void @llvm.dbg.value(metadata double %54, metadata !197, metadata !DIExpression()), !dbg !883
  %55 = tail call double @llvm.fabs.f64(double %52), !dbg !910
  %56 = tail call double @llvm.fabs.f64(double %35), !dbg !911
  %57 = fadd double %56, %55, !dbg !912
  %58 = fadd double %57, 0x3FC641FDB8C434D0, !dbg !913
  %59 = fadd double %48, %58, !dbg !914
  call void @llvm.dbg.value(metadata double %59, metadata !201, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata double %54, metadata !825, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !879
  %60 = fmul double %59, 0x3CB0000000000000, !dbg !915
  %61 = fadd double %60, 1.800000e-18, !dbg !916
  tail call void @llvm.dbg.value(metadata double %61, metadata !825, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !879
  %62 = fmul double %24, %24, !dbg !917
  %63 = fmul double %62, %54, !dbg !918
  store double %63, ptr %1, align 8, !dbg !919, !tbaa !158
  %64 = fmul double %62, %61, !dbg !920
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !921
  %66 = tail call double @llvm.fabs.f64(double %63), !dbg !922
  %67 = fmul double %66, 0x3CC0000000000000, !dbg !923
  %68 = fadd double %67, %64, !dbg !924
  store double %68, ptr %65, align 8, !dbg !924, !tbaa !163
  br label %173

69:                                               ; preds = %21
  %70 = fcmp olt double %0, 0x404205966F2B4F12, !dbg !925
  br i1 %70, label %71, label %123, !dbg !926

71:                                               ; preds = %69
  %72 = fdiv double 0x404205966F2B4F12, %0, !dbg !927
  %73 = fptosi double %72 to i32, !dbg !928
  %74 = add nsw i32 %73, 1, !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !826, metadata !DIExpression()), !dbg !930
  %75 = fneg double %0, !dbg !931
  %76 = tail call double @exp(double noundef %75) #7, !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !259, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata i32 5, metadata !264, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata double %76, metadata !265, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata double %0, metadata !266, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata i32 1, metadata !269, metadata !DIExpression()), !dbg !933
  %77 = icmp slt i32 %73, 0, !dbg !935
  br i1 %77, label %104, label %78, !dbg !936

78:                                               ; preds = %71
  %79 = sitofp i32 %74 to double, !dbg !937
  tail call void @llvm.dbg.value(metadata double %79, metadata !267, metadata !DIExpression()), !dbg !933
  br label %80, !dbg !936

80:                                               ; preds = %80, %78
  %81 = phi double [ %79, %78 ], [ %101, %80 ]
  %82 = phi i32 [ 1, %78 ], [ %102, %80 ]
  %83 = phi double [ 0.000000e+00, %78 ], [ %100, %80 ]
  tail call void @llvm.dbg.value(metadata double %81, metadata !267, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !269, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata double %83, metadata !268, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !938
  %84 = fmul double %81, %0, !dbg !939
  %85 = fdiv double 1.000000e+00, %84, !dbg !940
  tail call void @llvm.dbg.value(metadata double %85, metadata !274, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !938
  %86 = fadd double %85, 1.000000e+00, !dbg !941
  tail call void @llvm.dbg.value(metadata i32 2, metadata !276, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !275, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata double %86, metadata !270, metadata !DIExpression()), !dbg !938
  %87 = fmul double %86, 2.000000e+00, !dbg !942
  %88 = fmul double %85, %87, !dbg !943
  %89 = fadd double %88, 1.000000e+00, !dbg !941
  tail call void @llvm.dbg.value(metadata i32 3, metadata !276, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !275, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata double %89, metadata !270, metadata !DIExpression()), !dbg !938
  %90 = fmul double %89, 3.000000e+00, !dbg !942
  %91 = fmul double %85, %90, !dbg !943
  %92 = fadd double %91, 1.000000e+00, !dbg !941
  tail call void @llvm.dbg.value(metadata i32 4, metadata !276, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata double 4.000000e+00, metadata !275, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata double %92, metadata !270, metadata !DIExpression()), !dbg !938
  %93 = fmul double %92, 4.000000e+00, !dbg !942
  %94 = fmul double %85, %93, !dbg !943
  %95 = fadd double %94, 1.000000e+00, !dbg !941
  tail call void @llvm.dbg.value(metadata i32 5, metadata !276, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata double 5.000000e+00, metadata !275, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata double %95, metadata !270, metadata !DIExpression()), !dbg !938
  %96 = fmul double %95, 5.000000e+00, !dbg !942
  %97 = fmul double %85, %96, !dbg !943
  %98 = fadd double %97, 1.000000e+00, !dbg !941
  tail call void @llvm.dbg.value(metadata double %98, metadata !270, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata double 6.000000e+00, metadata !275, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata i32 6, metadata !276, metadata !DIExpression()), !dbg !938
  %99 = fmul double %76, %83, !dbg !944
  tail call void @llvm.dbg.value(metadata double %99, metadata !268, metadata !DIExpression()), !dbg !933
  %100 = fadd double %99, %98, !dbg !945
  tail call void @llvm.dbg.value(metadata double %100, metadata !268, metadata !DIExpression()), !dbg !933
  %101 = fadd double %81, -1.000000e+00, !dbg !946
  tail call void @llvm.dbg.value(metadata double %101, metadata !267, metadata !DIExpression()), !dbg !933
  %102 = add nuw i32 %82, 1, !dbg !947
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !269, metadata !DIExpression()), !dbg !933
  %103 = icmp eq i32 %82, %74, !dbg !935
  br i1 %103, label %104, label %80, !dbg !936, !llvm.loop !948

104:                                              ; preds = %80, %71
  %105 = phi double [ 0.000000e+00, %71 ], [ %100, %80 ], !dbg !933
  tail call void @llvm.dbg.value(metadata double %105, metadata !829, metadata !DIExpression()), !dbg !930
  %106 = tail call double @log(double noundef %0) #7, !dbg !950
  %107 = fmul double %106, 5.000000e+00, !dbg !951
  %108 = fsub double %107, %0, !dbg !952
  %109 = tail call double @log(double noundef %105) #7, !dbg !953
  %110 = fadd double %109, %108, !dbg !954
  tail call void @llvm.dbg.value(metadata double %110, metadata !830, metadata !DIExpression()), !dbg !930
  %111 = fcmp olt double %110, 0xC04205966F2B4F12, !dbg !955
  br i1 %111, label %112, label %114, !dbg !956

112:                                              ; preds = %104
  store double 0x405F1B9AEBBBAA02, ptr %1, align 8, !dbg !957, !tbaa !158
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !959
  store double 0x3D2F1B9AEBBBAA02, ptr %113, align 8, !dbg !960, !tbaa !163
  br label %173, !dbg !961

114:                                              ; preds = %104
  %115 = tail call double @exp(double noundef %110) #7, !dbg !962
  tail call void @llvm.dbg.value(metadata double %115, metadata !831, metadata !DIExpression()), !dbg !963
  %116 = fsub double 0x405F1B9AEBBBAA02, %115, !dbg !964
  store double %116, ptr %1, align 8, !dbg !965, !tbaa !158
  %117 = tail call double @llvm.fabs.f64(double %110), !dbg !966
  %118 = fadd double %117, 1.000000e+00, !dbg !967
  %119 = fmul double %118, %115, !dbg !968
  %120 = fadd double %119, 0x405F1B9AEBBBAA02, !dbg !969
  %121 = fmul double %120, 0x3CC0000000000000, !dbg !970
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !971
  store double %121, ptr %122, align 8, !dbg !972, !tbaa !163
  br label %173

123:                                              ; preds = %69
  %124 = fcmp olt double %0, 0x4348000000000000, !dbg !973
  br i1 %124, label %125, label %157, !dbg !974

125:                                              ; preds = %123
  %126 = fdiv double 1.000000e+00, %0, !dbg !975
  %127 = fadd double %126, 1.000000e+00, !dbg !977
  %128 = fmul double %127, 2.000000e+00, !dbg !978
  %129 = fmul double %126, %128, !dbg !979
  %130 = fadd double %129, 1.000000e+00, !dbg !977
  %131 = fmul double %130, 3.000000e+00, !dbg !978
  %132 = fmul double %126, %131, !dbg !979
  %133 = fadd double %132, 1.000000e+00, !dbg !977
  %134 = fmul double %133, 4.000000e+00, !dbg !978
  %135 = fmul double %126, %134, !dbg !979
  %136 = fadd double %135, 1.000000e+00, !dbg !977
  %137 = fmul double %136, 5.000000e+00, !dbg !978
  %138 = fmul double %126, %137, !dbg !979
  %139 = fadd double %138, 1.000000e+00, !dbg !977
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !267, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata i32 1, metadata !269, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !270, metadata !DIExpression()), !dbg !981
  tail call void @llvm.dbg.value(metadata double %126, metadata !274, metadata !DIExpression()), !dbg !981
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !275, metadata !DIExpression()), !dbg !981
  tail call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()), !dbg !981
  tail call void @llvm.dbg.value(metadata double %139, metadata !837, metadata !DIExpression()), !dbg !982
  %140 = tail call double @log(double noundef %0) #7, !dbg !983
  %141 = fmul double %140, 5.000000e+00, !dbg !984
  %142 = fsub double %141, %0, !dbg !985
  %143 = tail call double @log(double noundef %139) #7, !dbg !986
  %144 = fadd double %143, %142, !dbg !987
  tail call void @llvm.dbg.value(metadata double %144, metadata !838, metadata !DIExpression()), !dbg !982
  %145 = fcmp olt double %144, 0xC04205966F2B4F12, !dbg !988
  br i1 %145, label %146, label %148, !dbg !989

146:                                              ; preds = %125
  store double 0x405F1B9AEBBBAA02, ptr %1, align 8, !dbg !990, !tbaa !158
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !992
  store double 0x3D2F1B9AEBBBAA02, ptr %147, align 8, !dbg !993, !tbaa !163
  br label %173, !dbg !994

148:                                              ; preds = %125
  %149 = tail call double @exp(double noundef %144) #7, !dbg !995
  tail call void @llvm.dbg.value(metadata double %149, metadata !839, metadata !DIExpression()), !dbg !996
  %150 = fsub double 0x405F1B9AEBBBAA02, %149, !dbg !997
  store double %150, ptr %1, align 8, !dbg !998, !tbaa !158
  %151 = tail call double @llvm.fabs.f64(double %144), !dbg !999
  %152 = fadd double %151, 1.000000e+00, !dbg !1000
  %153 = fmul double %152, %149, !dbg !1001
  %154 = fadd double %153, 0x405F1B9AEBBBAA02, !dbg !1002
  %155 = fmul double %154, 0x3CC0000000000000, !dbg !1003
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1004
  store double %155, ptr %156, align 8, !dbg !1005, !tbaa !163
  br label %173

157:                                              ; preds = %123
  %158 = tail call double @log(double noundef %0) #7, !dbg !1006
  %159 = fmul double %158, 5.000000e+00, !dbg !1007
  %160 = fsub double %159, %0, !dbg !1008
  tail call void @llvm.dbg.value(metadata double %160, metadata !842, metadata !DIExpression()), !dbg !1009
  %161 = fcmp olt double %160, 0xC04205966F2B4F12, !dbg !1010
  br i1 %161, label %162, label %164, !dbg !1011

162:                                              ; preds = %157
  store double 0x405F1B9AEBBBAA02, ptr %1, align 8, !dbg !1012, !tbaa !158
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1014
  store double 0x3D2F1B9AEBBBAA02, ptr %163, align 8, !dbg !1015, !tbaa !163
  br label %173, !dbg !1016

164:                                              ; preds = %157
  %165 = tail call double @exp(double noundef %160) #7, !dbg !1017
  tail call void @llvm.dbg.value(metadata double %165, metadata !844, metadata !DIExpression()), !dbg !1018
  %166 = fsub double 0x405F1B9AEBBBAA02, %165, !dbg !1019
  store double %166, ptr %1, align 8, !dbg !1020, !tbaa !158
  %167 = tail call double @llvm.fabs.f64(double %160), !dbg !1021
  %168 = fadd double %167, 1.000000e+00, !dbg !1022
  %169 = fmul double %168, %165, !dbg !1023
  %170 = fadd double %169, 0x405F1B9AEBBBAA02, !dbg !1024
  %171 = fmul double %170, 0x3CC0000000000000, !dbg !1025
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1026
  store double %171, ptr %172, align 8, !dbg !1027, !tbaa !163
  br label %173

173:                                              ; preds = %162, %164, %146, %148, %112, %114, %11, %51, %20, %8, %4
  %174 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 15, %20 ], [ 0, %51 ], [ 0, %11 ], [ 0, %114 ], [ 0, %112 ], [ 0, %148 ], [ 0, %146 ], [ 0, %164 ], [ 0, %162 ], !dbg !1028
  ret i32 %174, !dbg !1029
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_transport_2(double noundef %0) local_unnamed_addr #0 !dbg !1030 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1037
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1035, metadata !DIExpression(), metadata !1037, metadata ptr %2, metadata !DIExpression()), !dbg !1038
  tail call void @llvm.dbg.value(metadata double %0, metadata !1034, metadata !DIExpression()), !dbg !1038
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1039
  %3 = call i32 @gsl_sf_transport_2_e(double noundef %0, ptr noundef nonnull %2), !dbg !1039, !range !1040
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1036, metadata !DIExpression()), !dbg !1038
  %4 = icmp eq i32 %3, 0, !dbg !1041
  br i1 %4, label %6, label %5, !dbg !1039

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 476, i32 noundef 1) #7, !dbg !1043
  br label %6, !dbg !1043

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1039, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1046
  ret double %7, !dbg !1046
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_transport_3(double noundef %0) local_unnamed_addr #0 !dbg !1047 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1052
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1050, metadata !DIExpression(), metadata !1052, metadata ptr %2, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata double %0, metadata !1049, metadata !DIExpression()), !dbg !1053
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1054
  %3 = call i32 @gsl_sf_transport_3_e(double noundef %0, ptr noundef nonnull %2), !dbg !1054, !range !1055
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1051, metadata !DIExpression()), !dbg !1053
  %4 = icmp eq i32 %3, 0, !dbg !1056
  br i1 %4, label %6, label %5, !dbg !1054

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 481, i32 noundef %3) #7, !dbg !1058
  br label %6, !dbg !1058

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1054, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1061
  ret double %7, !dbg !1061
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_transport_4(double noundef %0) local_unnamed_addr #0 !dbg !1062 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1067
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1065, metadata !DIExpression(), metadata !1067, metadata ptr %2, metadata !DIExpression()), !dbg !1068
  tail call void @llvm.dbg.value(metadata double %0, metadata !1064, metadata !DIExpression()), !dbg !1068
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1069
  %3 = call i32 @gsl_sf_transport_4_e(double noundef %0, ptr noundef nonnull %2), !dbg !1069, !range !1055
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1066, metadata !DIExpression()), !dbg !1068
  %4 = icmp eq i32 %3, 0, !dbg !1070
  br i1 %4, label %6, label %5, !dbg !1069

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 486, i32 noundef %3) #7, !dbg !1072
  br label %6, !dbg !1072

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1069, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1075
  ret double %7, !dbg !1075
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_transport_5(double noundef %0) local_unnamed_addr #0 !dbg !1076 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1081
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1079, metadata !DIExpression(), metadata !1081, metadata ptr %2, metadata !DIExpression()), !dbg !1082
  tail call void @llvm.dbg.value(metadata double %0, metadata !1078, metadata !DIExpression()), !dbg !1082
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1083
  %3 = call i32 @gsl_sf_transport_5_e(double noundef %0, ptr noundef nonnull %2), !dbg !1083, !range !1055
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1080, metadata !DIExpression()), !dbg !1082
  %4 = icmp eq i32 %3, 0, !dbg !1084
  br i1 %4, label %6, label %5, !dbg !1083

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 491, i32 noundef %3) #7, !dbg !1086
  br label %6, !dbg !1086

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1083, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1089
  ret double %7, !dbg !1089
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!30}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "transport.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "55a5dd3e2043a83aefad8d026cce6789")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 476, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 33)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 481, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 486, type: !19, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 491, type: !19, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "transport2_data", scope: !30, file: !2, line: 33, type: !90, isLocal: true, isDefinition: true)
!30 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !71, globals: !73, splitDebugInlining: false, nameTableKind: None)
!31 = !{!32}
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 39, baseType: !34, size: 32, elements: !35)
!33 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!36 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!37 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!38 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!39 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!40 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!41 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!42 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!43 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!44 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!45 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!46 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!47 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!48 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!49 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!50 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!51 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!52 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!53 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!54 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!55 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!56 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!57 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!58 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!59 = !DIEnumerator(name: "GSL_ESING", value: 21)
!60 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!61 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!62 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!63 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!64 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!65 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!66 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!67 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!68 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!69 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!70 = !DIEnumerator(name: "GSL_EOF", value: 32)
!71 = !{!34, !72}
!72 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!73 = !{!0, !7, !12, !17, !22, !24, !26, !74, !28, !86, !88, !93, !95, !97, !99}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "transport2_cs", scope: !30, file: !2, line: 53, type: !76, isLocal: true, isDefinition: true)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !77, line: 29, baseType: !78)
!77 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !77, line: 22, size: 320, elements: !79)
!79 = !{!80, !82, !83, !84, !85}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !78, file: !77, line: 23, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !78, file: !77, line: 24, baseType: !34, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !78, file: !77, line: 25, baseType: !72, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !78, file: !77, line: 26, baseType: !72, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !78, file: !77, line: 27, baseType: !34, size: 32, offset: 256)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "transport3_cs", scope: !30, file: !2, line: 80, type: !76, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "transport3_data", scope: !30, file: !2, line: 60, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1152, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 18)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "transport4_cs", scope: !30, file: !2, line: 108, type: !76, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "transport4_data", scope: !30, file: !2, line: 88, type: !90, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "transport5_cs", scope: !30, file: !2, line: 136, type: !76, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "transport5_data", scope: !30, file: !2, line: 116, type: !90, isLocal: true, isDefinition: true)
!101 = !{i32 7, !"Dwarf Version", i32 5}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = !{i32 8, !"PIC Level", i32 2}
!105 = !{i32 7, !"PIE Level", i32 2}
!106 = !{i32 7, !"uwtable", i32 2}
!107 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!108 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!109 = distinct !DISubprogram(name: "gsl_sf_transport_2_e", scope: !2, file: !2, line: 171, type: !110, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !120)
!110 = !DISubroutineType(types: !111)
!111 = !{!34, !112, !113}
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !115, line: 41, baseType: !116)
!115 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !115, line: 37, size: 128, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !116, file: !115, line: 38, baseType: !72, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !116, file: !115, line: 39, baseType: !72, size: 64, offset: 64)
!120 = !{!121, !122, !123, !124, !129, !130, !134, !135, !136, !139, !142, !143, !144, !147, !149}
!121 = !DILocalVariable(name: "x", arg: 1, scope: !109, file: !2, line: 171, type: !112)
!122 = !DILocalVariable(name: "result", arg: 2, scope: !109, file: !2, line: 171, type: !113)
!123 = !DILocalVariable(name: "val_infinity", scope: !109, file: !2, line: 173, type: !112)
!124 = !DILocalVariable(name: "t", scope: !125, file: !2, line: 186, type: !72)
!125 = distinct !DILexicalBlock(scope: !126, file: !2, line: 185, column: 21)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 185, column: 11)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 180, column: 11)
!128 = distinct !DILexicalBlock(scope: !109, file: !2, line: 177, column: 6)
!129 = !DILocalVariable(name: "result_c", scope: !125, file: !2, line: 187, type: !114)
!130 = !DILocalVariable(name: "numexp", scope: !131, file: !2, line: 195, type: !133)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 194, column: 37)
!132 = distinct !DILexicalBlock(scope: !126, file: !2, line: 194, column: 11)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!134 = !DILocalVariable(name: "sumexp", scope: !131, file: !2, line: 196, type: !112)
!135 = !DILocalVariable(name: "t", scope: !131, file: !2, line: 197, type: !112)
!136 = !DILocalVariable(name: "et", scope: !137, file: !2, line: 203, type: !112)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 202, column: 10)
!138 = distinct !DILexicalBlock(scope: !131, file: !2, line: 198, column: 8)
!139 = !DILocalVariable(name: "numexp", scope: !140, file: !2, line: 210, type: !133)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 209, column: 36)
!141 = distinct !DILexicalBlock(scope: !132, file: !2, line: 209, column: 11)
!142 = !DILocalVariable(name: "sumexp", scope: !140, file: !2, line: 211, type: !112)
!143 = !DILocalVariable(name: "t", scope: !140, file: !2, line: 212, type: !112)
!144 = !DILocalVariable(name: "et", scope: !145, file: !2, line: 218, type: !112)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 217, column: 10)
!146 = distinct !DILexicalBlock(scope: !140, file: !2, line: 213, column: 8)
!147 = !DILocalVariable(name: "t", scope: !148, file: !2, line: 225, type: !112)
!148 = distinct !DILexicalBlock(scope: !141, file: !2, line: 224, column: 8)
!149 = !DILocalVariable(name: "et", scope: !150, file: !2, line: 231, type: !112)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 230, column: 10)
!151 = distinct !DILexicalBlock(scope: !148, file: !2, line: 226, column: 8)
!152 = !DILocation(line: 0, scope: !109)
!153 = !DILocation(line: 177, column: 8, scope: !128)
!154 = !DILocation(line: 177, column: 6, scope: !109)
!155 = !DILocation(line: 178, column: 5, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 178, column: 5)
!157 = distinct !DILexicalBlock(scope: !128, file: !2, line: 177, column: 15)
!158 = !{!159, !160, i64 0}
!159 = !{!"gsl_sf_result_struct", !160, i64 0, !160, i64 8}
!160 = !{!"double", !161, i64 0}
!161 = !{!"omnipotent char", !162, i64 0}
!162 = !{!"Simple C/C++ TBAA"}
!163 = !{!159, !160, i64 8}
!164 = !DILocation(line: 178, column: 5, scope: !165)
!165 = distinct !DILexicalBlock(scope: !156, file: !2, line: 178, column: 5)
!166 = !DILocation(line: 180, column: 13, scope: !127)
!167 = !DILocation(line: 180, column: 11, scope: !128)
!168 = !DILocation(line: 181, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !127, file: !2, line: 180, column: 41)
!170 = !DILocation(line: 182, column: 35, scope: !169)
!171 = !DILocation(line: 182, column: 34, scope: !169)
!172 = !DILocation(line: 182, column: 46, scope: !169)
!173 = !DILocation(line: 182, column: 48, scope: !169)
!174 = !DILocation(line: 182, column: 43, scope: !169)
!175 = !DILocation(line: 182, column: 13, scope: !169)
!176 = !DILocation(line: 182, column: 17, scope: !169)
!177 = !DILocation(line: 183, column: 5, scope: !169)
!178 = !DILocation(line: 185, column: 13, scope: !126)
!179 = !DILocation(line: 185, column: 11, scope: !127)
!180 = !DILocation(line: 186, column: 18, scope: !125)
!181 = !DILocation(line: 186, column: 20, scope: !125)
!182 = !DILocation(line: 186, column: 25, scope: !125)
!183 = !DILocation(line: 186, column: 32, scope: !125)
!184 = !DILocation(line: 0, scope: !125)
!185 = !{}
!186 = !DILocalVariable(name: "cs", arg: 1, scope: !187, file: !188, line: 3, type: !191)
!187 = distinct !DISubprogram(name: "cheb_eval_e", scope: !188, file: !188, line: 3, type: !189, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !193)
!188 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!189 = !DISubroutineType(types: !190)
!190 = !{!34, !191, !112, !113}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!193 = !{!186, !194, !195, !196, !197, !198, !199, !200, !201, !202, !206}
!194 = !DILocalVariable(name: "x", arg: 2, scope: !187, file: !188, line: 4, type: !112)
!195 = !DILocalVariable(name: "result", arg: 3, scope: !187, file: !188, line: 5, type: !113)
!196 = !DILocalVariable(name: "j", scope: !187, file: !188, line: 7, type: !34)
!197 = !DILocalVariable(name: "d", scope: !187, file: !188, line: 8, type: !72)
!198 = !DILocalVariable(name: "dd", scope: !187, file: !188, line: 9, type: !72)
!199 = !DILocalVariable(name: "y", scope: !187, file: !188, line: 11, type: !72)
!200 = !DILocalVariable(name: "y2", scope: !187, file: !188, line: 12, type: !72)
!201 = !DILocalVariable(name: "e", scope: !187, file: !188, line: 14, type: !72)
!202 = !DILocalVariable(name: "temp", scope: !203, file: !188, line: 17, type: !72)
!203 = distinct !DILexicalBlock(scope: !204, file: !188, line: 16, column: 33)
!204 = distinct !DILexicalBlock(scope: !205, file: !188, line: 16, column: 3)
!205 = distinct !DILexicalBlock(scope: !187, file: !188, line: 16, column: 3)
!206 = !DILocalVariable(name: "temp", scope: !207, file: !188, line: 24, type: !72)
!207 = distinct !DILexicalBlock(scope: !187, file: !188, line: 23, column: 3)
!208 = !DILocation(line: 0, scope: !187, inlinedAt: !209)
!209 = distinct !DILocation(line: 188, column: 5, scope: !125)
!210 = !DILocation(line: 11, column: 19, scope: !187, inlinedAt: !209)
!211 = !DILocation(line: 11, column: 22, scope: !187, inlinedAt: !209)
!212 = !DILocation(line: 11, column: 30, scope: !187, inlinedAt: !209)
!213 = !DILocation(line: 11, column: 39, scope: !187, inlinedAt: !209)
!214 = !DILocation(line: 12, column: 19, scope: !187, inlinedAt: !209)
!215 = !DILocation(line: 16, column: 3, scope: !205, inlinedAt: !209)
!216 = !DILocation(line: 0, scope: !203, inlinedAt: !209)
!217 = !DILocation(line: 18, column: 11, scope: !203, inlinedAt: !209)
!218 = !DILocation(line: 18, column: 14, scope: !203, inlinedAt: !209)
!219 = !DILocation(line: 18, column: 21, scope: !203, inlinedAt: !209)
!220 = !{!160, !160, i64 0}
!221 = !DILocation(line: 18, column: 19, scope: !203, inlinedAt: !209)
!222 = !DILocation(line: 19, column: 10, scope: !203, inlinedAt: !209)
!223 = !DILocation(line: 19, column: 26, scope: !203, inlinedAt: !209)
!224 = !DILocation(line: 19, column: 24, scope: !203, inlinedAt: !209)
!225 = !DILocation(line: 19, column: 37, scope: !203, inlinedAt: !209)
!226 = !DILocation(line: 19, column: 35, scope: !203, inlinedAt: !209)
!227 = !DILocation(line: 19, column: 7, scope: !203, inlinedAt: !209)
!228 = !DILocation(line: 16, column: 29, scope: !204, inlinedAt: !209)
!229 = !DILocation(line: 16, column: 23, scope: !204, inlinedAt: !209)
!230 = distinct !{!230, !215, !231, !232}
!231 = !DILocation(line: 21, column: 3, scope: !205, inlinedAt: !209)
!232 = !{!"llvm.loop.mustprogress"}
!233 = !DILocation(line: 0, scope: !207, inlinedAt: !209)
!234 = !DILocation(line: 25, column: 10, scope: !207, inlinedAt: !209)
!235 = !DILocation(line: 25, column: 13, scope: !207, inlinedAt: !209)
!236 = !DILocation(line: 25, column: 18, scope: !207, inlinedAt: !209)
!237 = !DILocation(line: 26, column: 10, scope: !207, inlinedAt: !209)
!238 = !DILocation(line: 26, column: 25, scope: !207, inlinedAt: !209)
!239 = !DILocation(line: 26, column: 23, scope: !207, inlinedAt: !209)
!240 = !DILocation(line: 26, column: 34, scope: !207, inlinedAt: !209)
!241 = !DILocation(line: 26, column: 7, scope: !207, inlinedAt: !209)
!242 = !DILocation(line: 30, column: 33, scope: !187, inlinedAt: !209)
!243 = !DILocation(line: 30, column: 37, scope: !187, inlinedAt: !209)
!244 = !DILocation(line: 189, column: 22, scope: !125)
!245 = !DILocation(line: 189, column: 18, scope: !125)
!246 = !DILocation(line: 190, column: 22, scope: !125)
!247 = !DILocation(line: 190, column: 13, scope: !125)
!248 = !DILocation(line: 191, column: 44, scope: !125)
!249 = !DILocation(line: 191, column: 42, scope: !125)
!250 = !DILocation(line: 191, column: 17, scope: !125)
!251 = !DILocation(line: 194, column: 13, scope: !132)
!252 = !DILocation(line: 194, column: 11, scope: !126)
!253 = !DILocation(line: 195, column: 55, scope: !131)
!254 = !DILocation(line: 195, column: 27, scope: !131)
!255 = !DILocation(line: 195, column: 59, scope: !131)
!256 = !DILocation(line: 0, scope: !131)
!257 = !DILocation(line: 196, column: 59, scope: !131)
!258 = !DILocation(line: 196, column: 55, scope: !131)
!259 = !DILocalVariable(name: "numexp", arg: 1, scope: !260, file: !2, line: 146, type: !133)
!260 = distinct !DISubprogram(name: "transport_sumexp", scope: !2, file: !2, line: 146, type: !261, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!72, !133, !133, !112, !72}
!263 = !{!259, !264, !265, !266, !267, !268, !269, !270, !274, !275, !276}
!264 = !DILocalVariable(name: "order", arg: 2, scope: !260, file: !2, line: 146, type: !133)
!265 = !DILocalVariable(name: "t", arg: 3, scope: !260, file: !2, line: 146, type: !112)
!266 = !DILocalVariable(name: "x", arg: 4, scope: !260, file: !2, line: 146, type: !72)
!267 = !DILocalVariable(name: "rk", scope: !260, file: !2, line: 148, type: !72)
!268 = !DILocalVariable(name: "sumexp", scope: !260, file: !2, line: 149, type: !72)
!269 = !DILocalVariable(name: "k", scope: !260, file: !2, line: 150, type: !34)
!270 = !DILocalVariable(name: "sum2", scope: !271, file: !2, line: 152, type: !72)
!271 = distinct !DILexicalBlock(scope: !272, file: !2, line: 151, column: 28)
!272 = distinct !DILexicalBlock(scope: !273, file: !2, line: 151, column: 3)
!273 = distinct !DILexicalBlock(scope: !260, file: !2, line: 151, column: 3)
!274 = !DILocalVariable(name: "xk", scope: !271, file: !2, line: 153, type: !72)
!275 = !DILocalVariable(name: "xk1", scope: !271, file: !2, line: 154, type: !72)
!276 = !DILocalVariable(name: "j", scope: !271, file: !2, line: 155, type: !34)
!277 = !DILocation(line: 0, scope: !260, inlinedAt: !278)
!278 = distinct !DILocation(line: 196, column: 27, scope: !131)
!279 = !DILocation(line: 151, column: 13, scope: !272, inlinedAt: !278)
!280 = !DILocation(line: 151, column: 3, scope: !273, inlinedAt: !278)
!281 = !DILocation(line: 148, column: 15, scope: !260, inlinedAt: !278)
!282 = !DILocation(line: 0, scope: !271, inlinedAt: !278)
!283 = !DILocation(line: 153, column: 25, scope: !271, inlinedAt: !278)
!284 = !DILocation(line: 153, column: 21, scope: !271, inlinedAt: !278)
!285 = !DILocation(line: 157, column: 26, scope: !286, inlinedAt: !278)
!286 = distinct !DILexicalBlock(scope: !287, file: !2, line: 156, column: 29)
!287 = distinct !DILexicalBlock(scope: !288, file: !2, line: 156, column: 5)
!288 = distinct !DILexicalBlock(scope: !271, file: !2, line: 156, column: 5)
!289 = !DILocation(line: 157, column: 18, scope: !286, inlinedAt: !278)
!290 = !DILocation(line: 157, column: 22, scope: !286, inlinedAt: !278)
!291 = !DILocation(line: 160, column: 12, scope: !271, inlinedAt: !278)
!292 = !DILocation(line: 161, column: 12, scope: !271, inlinedAt: !278)
!293 = !DILocation(line: 162, column: 8, scope: !271, inlinedAt: !278)
!294 = distinct !{!294, !280, !295, !232}
!295 = !DILocation(line: 163, column: 3, scope: !273, inlinedAt: !278)
!296 = !DILocation(line: 197, column: 28, scope: !131)
!297 = !DILocation(line: 197, column: 26, scope: !131)
!298 = !DILocation(line: 197, column: 35, scope: !131)
!299 = !DILocation(line: 197, column: 41, scope: !131)
!300 = !DILocation(line: 197, column: 39, scope: !131)
!301 = !DILocation(line: 198, column: 10, scope: !138)
!302 = !DILocation(line: 198, column: 8, scope: !131)
!303 = !DILocation(line: 199, column: 20, scope: !304)
!304 = distinct !DILexicalBlock(scope: !138, file: !2, line: 198, column: 33)
!305 = !DILocation(line: 200, column: 15, scope: !304)
!306 = !DILocation(line: 200, column: 20, scope: !304)
!307 = !DILocation(line: 201, column: 5, scope: !304)
!308 = !DILocation(line: 203, column: 25, scope: !137)
!309 = !DILocation(line: 0, scope: !137)
!310 = !DILocation(line: 204, column: 34, scope: !137)
!311 = !DILocation(line: 204, column: 19, scope: !137)
!312 = !DILocation(line: 205, column: 61, scope: !137)
!313 = !DILocation(line: 205, column: 69, scope: !137)
!314 = !DILocation(line: 205, column: 59, scope: !137)
!315 = !DILocation(line: 205, column: 43, scope: !137)
!316 = !DILocation(line: 205, column: 15, scope: !137)
!317 = !DILocation(line: 205, column: 19, scope: !137)
!318 = !DILocation(line: 209, column: 13, scope: !141)
!319 = !DILocation(line: 209, column: 11, scope: !132)
!320 = !DILocation(line: 153, column: 21, scope: !271, inlinedAt: !321)
!321 = distinct !DILocation(line: 211, column: 27, scope: !140)
!322 = !DILocation(line: 157, column: 26, scope: !286, inlinedAt: !321)
!323 = !DILocation(line: 157, column: 18, scope: !286, inlinedAt: !321)
!324 = !DILocation(line: 157, column: 22, scope: !286, inlinedAt: !321)
!325 = !DILocation(line: 0, scope: !260, inlinedAt: !321)
!326 = !DILocation(line: 0, scope: !271, inlinedAt: !321)
!327 = !DILocation(line: 0, scope: !140)
!328 = !DILocation(line: 212, column: 28, scope: !140)
!329 = !DILocation(line: 212, column: 26, scope: !140)
!330 = !DILocation(line: 212, column: 35, scope: !140)
!331 = !DILocation(line: 212, column: 41, scope: !140)
!332 = !DILocation(line: 212, column: 39, scope: !140)
!333 = !DILocation(line: 213, column: 10, scope: !146)
!334 = !DILocation(line: 213, column: 8, scope: !140)
!335 = !DILocation(line: 214, column: 19, scope: !336)
!336 = distinct !DILexicalBlock(scope: !146, file: !2, line: 213, column: 33)
!337 = !DILocation(line: 215, column: 15, scope: !336)
!338 = !DILocation(line: 215, column: 19, scope: !336)
!339 = !DILocation(line: 216, column: 5, scope: !336)
!340 = !DILocation(line: 218, column: 25, scope: !145)
!341 = !DILocation(line: 0, scope: !145)
!342 = !DILocation(line: 219, column: 34, scope: !145)
!343 = !DILocation(line: 219, column: 19, scope: !145)
!344 = !DILocation(line: 220, column: 62, scope: !145)
!345 = !DILocation(line: 220, column: 69, scope: !145)
!346 = !DILocation(line: 220, column: 75, scope: !145)
!347 = !DILocation(line: 220, column: 59, scope: !145)
!348 = !DILocation(line: 220, column: 43, scope: !145)
!349 = !DILocation(line: 220, column: 15, scope: !145)
!350 = !DILocation(line: 220, column: 19, scope: !145)
!351 = !DILocation(line: 225, column: 28, scope: !148)
!352 = !DILocation(line: 225, column: 26, scope: !148)
!353 = !DILocation(line: 225, column: 35, scope: !148)
!354 = !DILocation(line: 0, scope: !148)
!355 = !DILocation(line: 226, column: 10, scope: !151)
!356 = !DILocation(line: 226, column: 8, scope: !148)
!357 = !DILocation(line: 227, column: 19, scope: !358)
!358 = distinct !DILexicalBlock(scope: !151, file: !2, line: 226, column: 33)
!359 = !DILocation(line: 228, column: 15, scope: !358)
!360 = !DILocation(line: 228, column: 19, scope: !358)
!361 = !DILocation(line: 229, column: 5, scope: !358)
!362 = !DILocation(line: 231, column: 25, scope: !150)
!363 = !DILocation(line: 0, scope: !150)
!364 = !DILocation(line: 232, column: 34, scope: !150)
!365 = !DILocation(line: 232, column: 19, scope: !150)
!366 = !DILocation(line: 233, column: 62, scope: !150)
!367 = !DILocation(line: 233, column: 69, scope: !150)
!368 = !DILocation(line: 233, column: 75, scope: !150)
!369 = !DILocation(line: 233, column: 59, scope: !150)
!370 = !DILocation(line: 233, column: 43, scope: !150)
!371 = !DILocation(line: 233, column: 15, scope: !150)
!372 = !DILocation(line: 233, column: 19, scope: !150)
!373 = !DILocation(line: 0, scope: !128)
!374 = !DILocation(line: 237, column: 1, scope: !109)
!375 = !DISubprogram(name: "gsl_error", scope: !33, file: !33, line: 77, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378, !378, !34, !34}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!380 = !DISubprogram(name: "exp", scope: !381, file: !381, line: 95, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!382 = !DISubroutineType(types: !383)
!383 = !{!72, !72}
!384 = !DISubprogram(name: "log", scope: !381, file: !381, line: 104, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = distinct !DISubprogram(name: "gsl_sf_transport_3_e", scope: !2, file: !2, line: 241, type: !110, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !386)
!386 = !{!387, !388, !389, !390, !396, !397, !398, !401, !402, !403, !406, !409, !410, !411, !414, !416}
!387 = !DILocalVariable(name: "x", arg: 1, scope: !385, file: !2, line: 241, type: !112)
!388 = !DILocalVariable(name: "result", arg: 2, scope: !385, file: !2, line: 241, type: !113)
!389 = !DILocalVariable(name: "val_infinity", scope: !385, file: !2, line: 243, type: !112)
!390 = !DILocalVariable(name: "x2", scope: !391, file: !2, line: 262, type: !112)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 261, column: 21)
!392 = distinct !DILexicalBlock(scope: !393, file: !2, line: 261, column: 11)
!393 = distinct !DILexicalBlock(scope: !394, file: !2, line: 255, column: 11)
!394 = distinct !DILexicalBlock(scope: !395, file: !2, line: 250, column: 11)
!395 = distinct !DILexicalBlock(scope: !385, file: !2, line: 247, column: 6)
!396 = !DILocalVariable(name: "t", scope: !391, file: !2, line: 263, type: !112)
!397 = !DILocalVariable(name: "result_c", scope: !391, file: !2, line: 264, type: !114)
!398 = !DILocalVariable(name: "numexp", scope: !399, file: !2, line: 272, type: !133)
!399 = distinct !DILexicalBlock(scope: !400, file: !2, line: 271, column: 37)
!400 = distinct !DILexicalBlock(scope: !392, file: !2, line: 271, column: 11)
!401 = !DILocalVariable(name: "sumexp", scope: !399, file: !2, line: 273, type: !112)
!402 = !DILocalVariable(name: "t", scope: !399, file: !2, line: 274, type: !112)
!403 = !DILocalVariable(name: "et", scope: !404, file: !2, line: 280, type: !112)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 279, column: 10)
!405 = distinct !DILexicalBlock(scope: !399, file: !2, line: 275, column: 8)
!406 = !DILocalVariable(name: "numexp", scope: !407, file: !2, line: 287, type: !133)
!407 = distinct !DILexicalBlock(scope: !408, file: !2, line: 286, column: 36)
!408 = distinct !DILexicalBlock(scope: !400, file: !2, line: 286, column: 11)
!409 = !DILocalVariable(name: "sumexp", scope: !407, file: !2, line: 288, type: !112)
!410 = !DILocalVariable(name: "t", scope: !407, file: !2, line: 289, type: !112)
!411 = !DILocalVariable(name: "et", scope: !412, file: !2, line: 295, type: !112)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 294, column: 10)
!413 = distinct !DILexicalBlock(scope: !407, file: !2, line: 290, column: 8)
!414 = !DILocalVariable(name: "t", scope: !415, file: !2, line: 302, type: !112)
!415 = distinct !DILexicalBlock(scope: !408, file: !2, line: 301, column: 8)
!416 = !DILocalVariable(name: "et", scope: !417, file: !2, line: 308, type: !112)
!417 = distinct !DILexicalBlock(scope: !418, file: !2, line: 307, column: 10)
!418 = distinct !DILexicalBlock(scope: !415, file: !2, line: 303, column: 8)
!419 = !DILocation(line: 0, scope: !385)
!420 = !DILocation(line: 247, column: 8, scope: !395)
!421 = !DILocation(line: 247, column: 6, scope: !385)
!422 = !DILocation(line: 248, column: 5, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !2, line: 248, column: 5)
!424 = distinct !DILexicalBlock(scope: !395, file: !2, line: 247, column: 15)
!425 = !DILocation(line: 248, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !2, line: 248, column: 5)
!427 = !DILocation(line: 250, column: 13, scope: !394)
!428 = !DILocation(line: 250, column: 11, scope: !395)
!429 = !DILocation(line: 252, column: 17, scope: !430)
!430 = distinct !DILexicalBlock(scope: !394, file: !2, line: 250, column: 21)
!431 = !DILocation(line: 253, column: 5, scope: !430)
!432 = !DILocation(line: 255, column: 13, scope: !393)
!433 = !DILocation(line: 255, column: 11, scope: !394)
!434 = !DILocation(line: 256, column: 22, scope: !435)
!435 = distinct !DILexicalBlock(scope: !393, file: !2, line: 255, column: 41)
!436 = !DILocation(line: 256, column: 24, scope: !435)
!437 = !DILocation(line: 256, column: 17, scope: !435)
!438 = !DILocation(line: 257, column: 41, scope: !435)
!439 = !DILocation(line: 257, column: 13, scope: !435)
!440 = !DILocation(line: 257, column: 17, scope: !435)
!441 = !DILocation(line: 258, column: 5, scope: !442)
!442 = distinct !DILexicalBlock(scope: !435, file: !2, line: 258, column: 5)
!443 = !DILocation(line: 258, column: 5, scope: !435)
!444 = !DILocation(line: 258, column: 5, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !2, line: 258, column: 5)
!446 = !DILocation(line: 261, column: 13, scope: !392)
!447 = !DILocation(line: 261, column: 11, scope: !393)
!448 = !DILocation(line: 262, column: 24, scope: !391)
!449 = !DILocation(line: 0, scope: !391)
!450 = !DILocation(line: 263, column: 25, scope: !391)
!451 = !DILocation(line: 263, column: 30, scope: !391)
!452 = !DILocation(line: 263, column: 37, scope: !391)
!453 = !DILocation(line: 0, scope: !187, inlinedAt: !454)
!454 = distinct !DILocation(line: 265, column: 5, scope: !391)
!455 = !DILocation(line: 11, column: 19, scope: !187, inlinedAt: !454)
!456 = !DILocation(line: 11, column: 22, scope: !187, inlinedAt: !454)
!457 = !DILocation(line: 11, column: 30, scope: !187, inlinedAt: !454)
!458 = !DILocation(line: 11, column: 39, scope: !187, inlinedAt: !454)
!459 = !DILocation(line: 12, column: 19, scope: !187, inlinedAt: !454)
!460 = !DILocation(line: 16, column: 3, scope: !205, inlinedAt: !454)
!461 = !DILocation(line: 0, scope: !203, inlinedAt: !454)
!462 = !DILocation(line: 18, column: 11, scope: !203, inlinedAt: !454)
!463 = !DILocation(line: 18, column: 14, scope: !203, inlinedAt: !454)
!464 = !DILocation(line: 18, column: 21, scope: !203, inlinedAt: !454)
!465 = !DILocation(line: 18, column: 19, scope: !203, inlinedAt: !454)
!466 = !DILocation(line: 19, column: 10, scope: !203, inlinedAt: !454)
!467 = !DILocation(line: 19, column: 26, scope: !203, inlinedAt: !454)
!468 = !DILocation(line: 19, column: 24, scope: !203, inlinedAt: !454)
!469 = !DILocation(line: 19, column: 37, scope: !203, inlinedAt: !454)
!470 = !DILocation(line: 19, column: 35, scope: !203, inlinedAt: !454)
!471 = !DILocation(line: 19, column: 7, scope: !203, inlinedAt: !454)
!472 = !DILocation(line: 16, column: 29, scope: !204, inlinedAt: !454)
!473 = !DILocation(line: 16, column: 23, scope: !204, inlinedAt: !454)
!474 = distinct !{!474, !460, !475, !232}
!475 = !DILocation(line: 21, column: 3, scope: !205, inlinedAt: !454)
!476 = !DILocation(line: 0, scope: !207, inlinedAt: !454)
!477 = !DILocation(line: 25, column: 10, scope: !207, inlinedAt: !454)
!478 = !DILocation(line: 25, column: 13, scope: !207, inlinedAt: !454)
!479 = !DILocation(line: 25, column: 18, scope: !207, inlinedAt: !454)
!480 = !DILocation(line: 26, column: 10, scope: !207, inlinedAt: !454)
!481 = !DILocation(line: 26, column: 25, scope: !207, inlinedAt: !454)
!482 = !DILocation(line: 26, column: 23, scope: !207, inlinedAt: !454)
!483 = !DILocation(line: 26, column: 34, scope: !207, inlinedAt: !454)
!484 = !DILocation(line: 26, column: 7, scope: !207, inlinedAt: !454)
!485 = !DILocation(line: 30, column: 33, scope: !187, inlinedAt: !454)
!486 = !DILocation(line: 30, column: 37, scope: !187, inlinedAt: !454)
!487 = !DILocation(line: 266, column: 23, scope: !391)
!488 = !DILocation(line: 266, column: 18, scope: !391)
!489 = !DILocation(line: 267, column: 23, scope: !391)
!490 = !DILocation(line: 267, column: 13, scope: !391)
!491 = !DILocation(line: 268, column: 38, scope: !391)
!492 = !DILocation(line: 268, column: 36, scope: !391)
!493 = !DILocation(line: 268, column: 17, scope: !391)
!494 = !DILocation(line: 271, column: 13, scope: !400)
!495 = !DILocation(line: 271, column: 11, scope: !392)
!496 = !DILocation(line: 272, column: 55, scope: !399)
!497 = !DILocation(line: 272, column: 27, scope: !399)
!498 = !DILocation(line: 272, column: 59, scope: !399)
!499 = !DILocation(line: 0, scope: !399)
!500 = !DILocation(line: 273, column: 59, scope: !399)
!501 = !DILocation(line: 273, column: 55, scope: !399)
!502 = !DILocation(line: 0, scope: !260, inlinedAt: !503)
!503 = distinct !DILocation(line: 273, column: 27, scope: !399)
!504 = !DILocation(line: 151, column: 13, scope: !272, inlinedAt: !503)
!505 = !DILocation(line: 151, column: 3, scope: !273, inlinedAt: !503)
!506 = !DILocation(line: 148, column: 15, scope: !260, inlinedAt: !503)
!507 = !DILocation(line: 0, scope: !271, inlinedAt: !503)
!508 = !DILocation(line: 153, column: 25, scope: !271, inlinedAt: !503)
!509 = !DILocation(line: 153, column: 21, scope: !271, inlinedAt: !503)
!510 = !DILocation(line: 157, column: 26, scope: !286, inlinedAt: !503)
!511 = !DILocation(line: 157, column: 18, scope: !286, inlinedAt: !503)
!512 = !DILocation(line: 157, column: 22, scope: !286, inlinedAt: !503)
!513 = !DILocation(line: 160, column: 12, scope: !271, inlinedAt: !503)
!514 = !DILocation(line: 161, column: 12, scope: !271, inlinedAt: !503)
!515 = !DILocation(line: 162, column: 8, scope: !271, inlinedAt: !503)
!516 = distinct !{!516, !505, !517, !232}
!517 = !DILocation(line: 163, column: 3, scope: !273, inlinedAt: !503)
!518 = !DILocation(line: 274, column: 28, scope: !399)
!519 = !DILocation(line: 274, column: 26, scope: !399)
!520 = !DILocation(line: 274, column: 35, scope: !399)
!521 = !DILocation(line: 274, column: 41, scope: !399)
!522 = !DILocation(line: 274, column: 39, scope: !399)
!523 = !DILocation(line: 275, column: 10, scope: !405)
!524 = !DILocation(line: 275, column: 8, scope: !399)
!525 = !DILocation(line: 276, column: 19, scope: !526)
!526 = distinct !DILexicalBlock(scope: !405, file: !2, line: 275, column: 33)
!527 = !DILocation(line: 277, column: 15, scope: !526)
!528 = !DILocation(line: 277, column: 19, scope: !526)
!529 = !DILocation(line: 278, column: 5, scope: !526)
!530 = !DILocation(line: 280, column: 25, scope: !404)
!531 = !DILocation(line: 0, scope: !404)
!532 = !DILocation(line: 281, column: 34, scope: !404)
!533 = !DILocation(line: 281, column: 19, scope: !404)
!534 = !DILocation(line: 282, column: 61, scope: !404)
!535 = !DILocation(line: 282, column: 69, scope: !404)
!536 = !DILocation(line: 282, column: 59, scope: !404)
!537 = !DILocation(line: 282, column: 43, scope: !404)
!538 = !DILocation(line: 282, column: 15, scope: !404)
!539 = !DILocation(line: 282, column: 19, scope: !404)
!540 = !DILocation(line: 286, column: 13, scope: !408)
!541 = !DILocation(line: 286, column: 11, scope: !400)
!542 = !DILocation(line: 153, column: 21, scope: !271, inlinedAt: !543)
!543 = distinct !DILocation(line: 288, column: 27, scope: !407)
!544 = !DILocation(line: 157, column: 26, scope: !286, inlinedAt: !543)
!545 = !DILocation(line: 157, column: 18, scope: !286, inlinedAt: !543)
!546 = !DILocation(line: 157, column: 22, scope: !286, inlinedAt: !543)
!547 = !DILocation(line: 0, scope: !260, inlinedAt: !543)
!548 = !DILocation(line: 0, scope: !271, inlinedAt: !543)
!549 = !DILocation(line: 0, scope: !407)
!550 = !DILocation(line: 289, column: 28, scope: !407)
!551 = !DILocation(line: 289, column: 26, scope: !407)
!552 = !DILocation(line: 289, column: 35, scope: !407)
!553 = !DILocation(line: 289, column: 41, scope: !407)
!554 = !DILocation(line: 289, column: 39, scope: !407)
!555 = !DILocation(line: 290, column: 10, scope: !413)
!556 = !DILocation(line: 290, column: 8, scope: !407)
!557 = !DILocation(line: 291, column: 19, scope: !558)
!558 = distinct !DILexicalBlock(scope: !413, file: !2, line: 290, column: 33)
!559 = !DILocation(line: 292, column: 15, scope: !558)
!560 = !DILocation(line: 292, column: 19, scope: !558)
!561 = !DILocation(line: 293, column: 5, scope: !558)
!562 = !DILocation(line: 295, column: 25, scope: !412)
!563 = !DILocation(line: 0, scope: !412)
!564 = !DILocation(line: 296, column: 34, scope: !412)
!565 = !DILocation(line: 296, column: 19, scope: !412)
!566 = !DILocation(line: 297, column: 62, scope: !412)
!567 = !DILocation(line: 297, column: 69, scope: !412)
!568 = !DILocation(line: 297, column: 75, scope: !412)
!569 = !DILocation(line: 297, column: 59, scope: !412)
!570 = !DILocation(line: 297, column: 43, scope: !412)
!571 = !DILocation(line: 297, column: 15, scope: !412)
!572 = !DILocation(line: 297, column: 19, scope: !412)
!573 = !DILocation(line: 302, column: 28, scope: !415)
!574 = !DILocation(line: 302, column: 26, scope: !415)
!575 = !DILocation(line: 302, column: 35, scope: !415)
!576 = !DILocation(line: 0, scope: !415)
!577 = !DILocation(line: 303, column: 10, scope: !418)
!578 = !DILocation(line: 303, column: 8, scope: !415)
!579 = !DILocation(line: 304, column: 19, scope: !580)
!580 = distinct !DILexicalBlock(scope: !418, file: !2, line: 303, column: 33)
!581 = !DILocation(line: 305, column: 15, scope: !580)
!582 = !DILocation(line: 305, column: 19, scope: !580)
!583 = !DILocation(line: 306, column: 5, scope: !580)
!584 = !DILocation(line: 308, column: 25, scope: !417)
!585 = !DILocation(line: 0, scope: !417)
!586 = !DILocation(line: 309, column: 34, scope: !417)
!587 = !DILocation(line: 309, column: 19, scope: !417)
!588 = !DILocation(line: 310, column: 62, scope: !417)
!589 = !DILocation(line: 310, column: 69, scope: !417)
!590 = !DILocation(line: 310, column: 75, scope: !417)
!591 = !DILocation(line: 310, column: 59, scope: !417)
!592 = !DILocation(line: 310, column: 43, scope: !417)
!593 = !DILocation(line: 310, column: 15, scope: !417)
!594 = !DILocation(line: 310, column: 19, scope: !417)
!595 = !DILocation(line: 0, scope: !395)
!596 = !DILocation(line: 314, column: 1, scope: !385)
!597 = distinct !DISubprogram(name: "gsl_sf_transport_4_e", scope: !2, file: !2, line: 318, type: !110, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !598)
!598 = !{!599, !600, !601, !602, !608, !609, !610, !613, !614, !615, !618, !621, !622, !623, !626, !628}
!599 = !DILocalVariable(name: "x", arg: 1, scope: !597, file: !2, line: 318, type: !112)
!600 = !DILocalVariable(name: "result", arg: 2, scope: !597, file: !2, line: 318, type: !113)
!601 = !DILocalVariable(name: "val_infinity", scope: !597, file: !2, line: 320, type: !112)
!602 = !DILocalVariable(name: "x2", scope: !603, file: !2, line: 339, type: !112)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 338, column: 21)
!604 = distinct !DILexicalBlock(scope: !605, file: !2, line: 338, column: 11)
!605 = distinct !DILexicalBlock(scope: !606, file: !2, line: 332, column: 11)
!606 = distinct !DILexicalBlock(scope: !607, file: !2, line: 327, column: 11)
!607 = distinct !DILexicalBlock(scope: !597, file: !2, line: 324, column: 6)
!608 = !DILocalVariable(name: "t", scope: !603, file: !2, line: 340, type: !112)
!609 = !DILocalVariable(name: "result_c", scope: !603, file: !2, line: 341, type: !114)
!610 = !DILocalVariable(name: "numexp", scope: !611, file: !2, line: 349, type: !133)
!611 = distinct !DILexicalBlock(scope: !612, file: !2, line: 348, column: 37)
!612 = distinct !DILexicalBlock(scope: !604, file: !2, line: 348, column: 11)
!613 = !DILocalVariable(name: "sumexp", scope: !611, file: !2, line: 350, type: !112)
!614 = !DILocalVariable(name: "t", scope: !611, file: !2, line: 351, type: !112)
!615 = !DILocalVariable(name: "et", scope: !616, file: !2, line: 357, type: !112)
!616 = distinct !DILexicalBlock(scope: !617, file: !2, line: 356, column: 10)
!617 = distinct !DILexicalBlock(scope: !611, file: !2, line: 352, column: 8)
!618 = !DILocalVariable(name: "numexp", scope: !619, file: !2, line: 364, type: !133)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 363, column: 36)
!620 = distinct !DILexicalBlock(scope: !612, file: !2, line: 363, column: 11)
!621 = !DILocalVariable(name: "sumexp", scope: !619, file: !2, line: 365, type: !112)
!622 = !DILocalVariable(name: "t", scope: !619, file: !2, line: 366, type: !112)
!623 = !DILocalVariable(name: "et", scope: !624, file: !2, line: 372, type: !112)
!624 = distinct !DILexicalBlock(scope: !625, file: !2, line: 371, column: 10)
!625 = distinct !DILexicalBlock(scope: !619, file: !2, line: 367, column: 8)
!626 = !DILocalVariable(name: "t", scope: !627, file: !2, line: 379, type: !112)
!627 = distinct !DILexicalBlock(scope: !620, file: !2, line: 378, column: 8)
!628 = !DILocalVariable(name: "et", scope: !629, file: !2, line: 385, type: !112)
!629 = distinct !DILexicalBlock(scope: !630, file: !2, line: 384, column: 10)
!630 = distinct !DILexicalBlock(scope: !627, file: !2, line: 380, column: 8)
!631 = !DILocation(line: 0, scope: !597)
!632 = !DILocation(line: 324, column: 8, scope: !607)
!633 = !DILocation(line: 324, column: 6, scope: !597)
!634 = !DILocation(line: 325, column: 5, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !2, line: 325, column: 5)
!636 = distinct !DILexicalBlock(scope: !607, file: !2, line: 324, column: 15)
!637 = !DILocation(line: 325, column: 5, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !2, line: 325, column: 5)
!639 = !DILocation(line: 327, column: 13, scope: !606)
!640 = !DILocation(line: 327, column: 11, scope: !607)
!641 = !DILocation(line: 329, column: 17, scope: !642)
!642 = distinct !DILexicalBlock(scope: !606, file: !2, line: 327, column: 21)
!643 = !DILocation(line: 330, column: 5, scope: !642)
!644 = !DILocation(line: 332, column: 13, scope: !605)
!645 = !DILocation(line: 332, column: 11, scope: !606)
!646 = !DILocation(line: 333, column: 20, scope: !647)
!647 = distinct !DILexicalBlock(scope: !605, file: !2, line: 332, column: 41)
!648 = !DILocation(line: 333, column: 22, scope: !647)
!649 = !DILocation(line: 333, column: 24, scope: !647)
!650 = !DILocation(line: 333, column: 17, scope: !647)
!651 = !DILocation(line: 334, column: 41, scope: !647)
!652 = !DILocation(line: 334, column: 13, scope: !647)
!653 = !DILocation(line: 334, column: 17, scope: !647)
!654 = !DILocation(line: 335, column: 5, scope: !655)
!655 = distinct !DILexicalBlock(scope: !647, file: !2, line: 335, column: 5)
!656 = !DILocation(line: 335, column: 5, scope: !647)
!657 = !DILocation(line: 335, column: 5, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !2, line: 335, column: 5)
!659 = !DILocation(line: 338, column: 13, scope: !604)
!660 = !DILocation(line: 338, column: 11, scope: !605)
!661 = !DILocation(line: 339, column: 24, scope: !603)
!662 = !DILocation(line: 0, scope: !603)
!663 = !DILocation(line: 340, column: 25, scope: !603)
!664 = !DILocation(line: 340, column: 30, scope: !603)
!665 = !DILocation(line: 340, column: 37, scope: !603)
!666 = !DILocation(line: 0, scope: !187, inlinedAt: !667)
!667 = distinct !DILocation(line: 342, column: 5, scope: !603)
!668 = !DILocation(line: 11, column: 19, scope: !187, inlinedAt: !667)
!669 = !DILocation(line: 11, column: 22, scope: !187, inlinedAt: !667)
!670 = !DILocation(line: 11, column: 30, scope: !187, inlinedAt: !667)
!671 = !DILocation(line: 11, column: 39, scope: !187, inlinedAt: !667)
!672 = !DILocation(line: 12, column: 19, scope: !187, inlinedAt: !667)
!673 = !DILocation(line: 16, column: 3, scope: !205, inlinedAt: !667)
!674 = !DILocation(line: 0, scope: !203, inlinedAt: !667)
!675 = !DILocation(line: 18, column: 11, scope: !203, inlinedAt: !667)
!676 = !DILocation(line: 18, column: 14, scope: !203, inlinedAt: !667)
!677 = !DILocation(line: 18, column: 21, scope: !203, inlinedAt: !667)
!678 = !DILocation(line: 18, column: 19, scope: !203, inlinedAt: !667)
!679 = !DILocation(line: 19, column: 10, scope: !203, inlinedAt: !667)
!680 = !DILocation(line: 19, column: 26, scope: !203, inlinedAt: !667)
!681 = !DILocation(line: 19, column: 24, scope: !203, inlinedAt: !667)
!682 = !DILocation(line: 19, column: 37, scope: !203, inlinedAt: !667)
!683 = !DILocation(line: 19, column: 35, scope: !203, inlinedAt: !667)
!684 = !DILocation(line: 19, column: 7, scope: !203, inlinedAt: !667)
!685 = !DILocation(line: 16, column: 29, scope: !204, inlinedAt: !667)
!686 = !DILocation(line: 16, column: 23, scope: !204, inlinedAt: !667)
!687 = distinct !{!687, !673, !688, !232}
!688 = !DILocation(line: 21, column: 3, scope: !205, inlinedAt: !667)
!689 = !DILocation(line: 0, scope: !207, inlinedAt: !667)
!690 = !DILocation(line: 25, column: 10, scope: !207, inlinedAt: !667)
!691 = !DILocation(line: 25, column: 13, scope: !207, inlinedAt: !667)
!692 = !DILocation(line: 25, column: 18, scope: !207, inlinedAt: !667)
!693 = !DILocation(line: 26, column: 10, scope: !207, inlinedAt: !667)
!694 = !DILocation(line: 26, column: 25, scope: !207, inlinedAt: !667)
!695 = !DILocation(line: 26, column: 23, scope: !207, inlinedAt: !667)
!696 = !DILocation(line: 26, column: 34, scope: !207, inlinedAt: !667)
!697 = !DILocation(line: 26, column: 7, scope: !207, inlinedAt: !667)
!698 = !DILocation(line: 30, column: 33, scope: !187, inlinedAt: !667)
!699 = !DILocation(line: 30, column: 37, scope: !187, inlinedAt: !667)
!700 = !DILocation(line: 343, column: 22, scope: !603)
!701 = !DILocation(line: 343, column: 25, scope: !603)
!702 = !DILocation(line: 343, column: 18, scope: !603)
!703 = !DILocation(line: 344, column: 25, scope: !603)
!704 = !DILocation(line: 344, column: 13, scope: !603)
!705 = !DILocation(line: 345, column: 44, scope: !603)
!706 = !DILocation(line: 345, column: 42, scope: !603)
!707 = !DILocation(line: 345, column: 17, scope: !603)
!708 = !DILocation(line: 348, column: 13, scope: !612)
!709 = !DILocation(line: 348, column: 11, scope: !604)
!710 = !DILocation(line: 349, column: 55, scope: !611)
!711 = !DILocation(line: 349, column: 27, scope: !611)
!712 = !DILocation(line: 349, column: 59, scope: !611)
!713 = !DILocation(line: 0, scope: !611)
!714 = !DILocation(line: 350, column: 59, scope: !611)
!715 = !DILocation(line: 350, column: 55, scope: !611)
!716 = !DILocation(line: 0, scope: !260, inlinedAt: !717)
!717 = distinct !DILocation(line: 350, column: 27, scope: !611)
!718 = !DILocation(line: 151, column: 13, scope: !272, inlinedAt: !717)
!719 = !DILocation(line: 151, column: 3, scope: !273, inlinedAt: !717)
!720 = !DILocation(line: 148, column: 15, scope: !260, inlinedAt: !717)
!721 = !DILocation(line: 0, scope: !271, inlinedAt: !717)
!722 = !DILocation(line: 153, column: 25, scope: !271, inlinedAt: !717)
!723 = !DILocation(line: 153, column: 21, scope: !271, inlinedAt: !717)
!724 = !DILocation(line: 157, column: 26, scope: !286, inlinedAt: !717)
!725 = !DILocation(line: 157, column: 18, scope: !286, inlinedAt: !717)
!726 = !DILocation(line: 157, column: 22, scope: !286, inlinedAt: !717)
!727 = !DILocation(line: 160, column: 12, scope: !271, inlinedAt: !717)
!728 = !DILocation(line: 161, column: 12, scope: !271, inlinedAt: !717)
!729 = !DILocation(line: 162, column: 8, scope: !271, inlinedAt: !717)
!730 = !DILocation(line: 151, column: 24, scope: !272, inlinedAt: !717)
!731 = distinct !{!731, !719, !732, !232}
!732 = !DILocation(line: 163, column: 3, scope: !273, inlinedAt: !717)
!733 = !DILocation(line: 351, column: 28, scope: !611)
!734 = !DILocation(line: 351, column: 26, scope: !611)
!735 = !DILocation(line: 351, column: 35, scope: !611)
!736 = !DILocation(line: 351, column: 41, scope: !611)
!737 = !DILocation(line: 351, column: 39, scope: !611)
!738 = !DILocation(line: 352, column: 10, scope: !617)
!739 = !DILocation(line: 352, column: 8, scope: !611)
!740 = !DILocation(line: 353, column: 19, scope: !741)
!741 = distinct !DILexicalBlock(scope: !617, file: !2, line: 352, column: 33)
!742 = !DILocation(line: 354, column: 15, scope: !741)
!743 = !DILocation(line: 354, column: 19, scope: !741)
!744 = !DILocation(line: 355, column: 5, scope: !741)
!745 = !DILocation(line: 357, column: 25, scope: !616)
!746 = !DILocation(line: 0, scope: !616)
!747 = !DILocation(line: 358, column: 34, scope: !616)
!748 = !DILocation(line: 358, column: 19, scope: !616)
!749 = !DILocation(line: 359, column: 62, scope: !616)
!750 = !DILocation(line: 359, column: 69, scope: !616)
!751 = !DILocation(line: 359, column: 75, scope: !616)
!752 = !DILocation(line: 359, column: 59, scope: !616)
!753 = !DILocation(line: 359, column: 43, scope: !616)
!754 = !DILocation(line: 359, column: 15, scope: !616)
!755 = !DILocation(line: 359, column: 19, scope: !616)
!756 = !DILocation(line: 363, column: 13, scope: !620)
!757 = !DILocation(line: 363, column: 11, scope: !612)
!758 = !DILocation(line: 153, column: 21, scope: !271, inlinedAt: !759)
!759 = distinct !DILocation(line: 365, column: 27, scope: !619)
!760 = !DILocation(line: 157, column: 26, scope: !286, inlinedAt: !759)
!761 = !DILocation(line: 157, column: 18, scope: !286, inlinedAt: !759)
!762 = !DILocation(line: 157, column: 22, scope: !286, inlinedAt: !759)
!763 = !DILocation(line: 0, scope: !260, inlinedAt: !759)
!764 = !DILocation(line: 0, scope: !271, inlinedAt: !759)
!765 = !DILocation(line: 0, scope: !619)
!766 = !DILocation(line: 366, column: 28, scope: !619)
!767 = !DILocation(line: 366, column: 26, scope: !619)
!768 = !DILocation(line: 366, column: 35, scope: !619)
!769 = !DILocation(line: 366, column: 41, scope: !619)
!770 = !DILocation(line: 366, column: 39, scope: !619)
!771 = !DILocation(line: 367, column: 10, scope: !625)
!772 = !DILocation(line: 367, column: 8, scope: !619)
!773 = !DILocation(line: 368, column: 19, scope: !774)
!774 = distinct !DILexicalBlock(scope: !625, file: !2, line: 367, column: 33)
!775 = !DILocation(line: 369, column: 15, scope: !774)
!776 = !DILocation(line: 369, column: 19, scope: !774)
!777 = !DILocation(line: 370, column: 5, scope: !774)
!778 = !DILocation(line: 372, column: 25, scope: !624)
!779 = !DILocation(line: 0, scope: !624)
!780 = !DILocation(line: 373, column: 34, scope: !624)
!781 = !DILocation(line: 373, column: 19, scope: !624)
!782 = !DILocation(line: 374, column: 62, scope: !624)
!783 = !DILocation(line: 374, column: 69, scope: !624)
!784 = !DILocation(line: 374, column: 75, scope: !624)
!785 = !DILocation(line: 374, column: 59, scope: !624)
!786 = !DILocation(line: 374, column: 43, scope: !624)
!787 = !DILocation(line: 374, column: 15, scope: !624)
!788 = !DILocation(line: 374, column: 19, scope: !624)
!789 = !DILocation(line: 379, column: 28, scope: !627)
!790 = !DILocation(line: 379, column: 26, scope: !627)
!791 = !DILocation(line: 379, column: 35, scope: !627)
!792 = !DILocation(line: 0, scope: !627)
!793 = !DILocation(line: 380, column: 10, scope: !630)
!794 = !DILocation(line: 380, column: 8, scope: !627)
!795 = !DILocation(line: 381, column: 19, scope: !796)
!796 = distinct !DILexicalBlock(scope: !630, file: !2, line: 380, column: 33)
!797 = !DILocation(line: 382, column: 15, scope: !796)
!798 = !DILocation(line: 382, column: 19, scope: !796)
!799 = !DILocation(line: 383, column: 5, scope: !796)
!800 = !DILocation(line: 385, column: 25, scope: !629)
!801 = !DILocation(line: 0, scope: !629)
!802 = !DILocation(line: 386, column: 34, scope: !629)
!803 = !DILocation(line: 386, column: 19, scope: !629)
!804 = !DILocation(line: 387, column: 62, scope: !629)
!805 = !DILocation(line: 387, column: 69, scope: !629)
!806 = !DILocation(line: 387, column: 75, scope: !629)
!807 = !DILocation(line: 387, column: 59, scope: !629)
!808 = !DILocation(line: 387, column: 43, scope: !629)
!809 = !DILocation(line: 387, column: 15, scope: !629)
!810 = !DILocation(line: 387, column: 19, scope: !629)
!811 = !DILocation(line: 0, scope: !607)
!812 = !DILocation(line: 391, column: 1, scope: !597)
!813 = distinct !DISubprogram(name: "gsl_sf_transport_5_e", scope: !2, file: !2, line: 395, type: !110, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !814)
!814 = !{!815, !816, !817, !818, !824, !825, !826, !829, !830, !831, !834, !837, !838, !839, !842, !844}
!815 = !DILocalVariable(name: "x", arg: 1, scope: !813, file: !2, line: 395, type: !112)
!816 = !DILocalVariable(name: "result", arg: 2, scope: !813, file: !2, line: 395, type: !113)
!817 = !DILocalVariable(name: "val_infinity", scope: !813, file: !2, line: 397, type: !112)
!818 = !DILocalVariable(name: "x2", scope: !819, file: !2, line: 416, type: !112)
!819 = distinct !DILexicalBlock(scope: !820, file: !2, line: 415, column: 21)
!820 = distinct !DILexicalBlock(scope: !821, file: !2, line: 415, column: 11)
!821 = distinct !DILexicalBlock(scope: !822, file: !2, line: 409, column: 11)
!822 = distinct !DILexicalBlock(scope: !823, file: !2, line: 404, column: 11)
!823 = distinct !DILexicalBlock(scope: !813, file: !2, line: 401, column: 6)
!824 = !DILocalVariable(name: "t", scope: !819, file: !2, line: 417, type: !112)
!825 = !DILocalVariable(name: "result_c", scope: !819, file: !2, line: 418, type: !114)
!826 = !DILocalVariable(name: "numexp", scope: !827, file: !2, line: 426, type: !133)
!827 = distinct !DILexicalBlock(scope: !828, file: !2, line: 425, column: 37)
!828 = distinct !DILexicalBlock(scope: !820, file: !2, line: 425, column: 11)
!829 = !DILocalVariable(name: "sumexp", scope: !827, file: !2, line: 427, type: !112)
!830 = !DILocalVariable(name: "t", scope: !827, file: !2, line: 428, type: !112)
!831 = !DILocalVariable(name: "et", scope: !832, file: !2, line: 434, type: !112)
!832 = distinct !DILexicalBlock(scope: !833, file: !2, line: 433, column: 10)
!833 = distinct !DILexicalBlock(scope: !827, file: !2, line: 429, column: 8)
!834 = !DILocalVariable(name: "numexp", scope: !835, file: !2, line: 441, type: !133)
!835 = distinct !DILexicalBlock(scope: !836, file: !2, line: 440, column: 36)
!836 = distinct !DILexicalBlock(scope: !828, file: !2, line: 440, column: 11)
!837 = !DILocalVariable(name: "sumexp", scope: !835, file: !2, line: 442, type: !112)
!838 = !DILocalVariable(name: "t", scope: !835, file: !2, line: 443, type: !112)
!839 = !DILocalVariable(name: "et", scope: !840, file: !2, line: 449, type: !112)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 448, column: 10)
!841 = distinct !DILexicalBlock(scope: !835, file: !2, line: 444, column: 8)
!842 = !DILocalVariable(name: "t", scope: !843, file: !2, line: 456, type: !112)
!843 = distinct !DILexicalBlock(scope: !836, file: !2, line: 455, column: 8)
!844 = !DILocalVariable(name: "et", scope: !845, file: !2, line: 462, type: !112)
!845 = distinct !DILexicalBlock(scope: !846, file: !2, line: 461, column: 10)
!846 = distinct !DILexicalBlock(scope: !843, file: !2, line: 457, column: 8)
!847 = !DILocation(line: 0, scope: !813)
!848 = !DILocation(line: 401, column: 8, scope: !823)
!849 = !DILocation(line: 401, column: 6, scope: !813)
!850 = !DILocation(line: 402, column: 5, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !2, line: 402, column: 5)
!852 = distinct !DILexicalBlock(scope: !823, file: !2, line: 401, column: 15)
!853 = !DILocation(line: 402, column: 5, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !2, line: 402, column: 5)
!855 = !DILocation(line: 404, column: 13, scope: !822)
!856 = !DILocation(line: 404, column: 11, scope: !823)
!857 = !DILocation(line: 406, column: 17, scope: !858)
!858 = distinct !DILexicalBlock(scope: !822, file: !2, line: 404, column: 21)
!859 = !DILocation(line: 407, column: 5, scope: !858)
!860 = !DILocation(line: 409, column: 13, scope: !821)
!861 = !DILocation(line: 409, column: 11, scope: !822)
!862 = !DILocation(line: 410, column: 20, scope: !863)
!863 = distinct !DILexicalBlock(scope: !821, file: !2, line: 409, column: 41)
!864 = !DILocation(line: 410, column: 22, scope: !863)
!865 = !DILocation(line: 410, column: 24, scope: !863)
!866 = !DILocation(line: 410, column: 26, scope: !863)
!867 = !DILocation(line: 410, column: 17, scope: !863)
!868 = !DILocation(line: 411, column: 41, scope: !863)
!869 = !DILocation(line: 411, column: 13, scope: !863)
!870 = !DILocation(line: 411, column: 17, scope: !863)
!871 = !DILocation(line: 412, column: 5, scope: !872)
!872 = distinct !DILexicalBlock(scope: !863, file: !2, line: 412, column: 5)
!873 = !DILocation(line: 412, column: 5, scope: !863)
!874 = !DILocation(line: 412, column: 5, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !2, line: 412, column: 5)
!876 = !DILocation(line: 415, column: 13, scope: !820)
!877 = !DILocation(line: 415, column: 11, scope: !821)
!878 = !DILocation(line: 416, column: 24, scope: !819)
!879 = !DILocation(line: 0, scope: !819)
!880 = !DILocation(line: 417, column: 25, scope: !819)
!881 = !DILocation(line: 417, column: 30, scope: !819)
!882 = !DILocation(line: 417, column: 37, scope: !819)
!883 = !DILocation(line: 0, scope: !187, inlinedAt: !884)
!884 = distinct !DILocation(line: 419, column: 5, scope: !819)
!885 = !DILocation(line: 11, column: 19, scope: !187, inlinedAt: !884)
!886 = !DILocation(line: 11, column: 22, scope: !187, inlinedAt: !884)
!887 = !DILocation(line: 11, column: 30, scope: !187, inlinedAt: !884)
!888 = !DILocation(line: 11, column: 39, scope: !187, inlinedAt: !884)
!889 = !DILocation(line: 12, column: 19, scope: !187, inlinedAt: !884)
!890 = !DILocation(line: 16, column: 3, scope: !205, inlinedAt: !884)
!891 = !DILocation(line: 0, scope: !203, inlinedAt: !884)
!892 = !DILocation(line: 18, column: 11, scope: !203, inlinedAt: !884)
!893 = !DILocation(line: 18, column: 14, scope: !203, inlinedAt: !884)
!894 = !DILocation(line: 18, column: 21, scope: !203, inlinedAt: !884)
!895 = !DILocation(line: 18, column: 19, scope: !203, inlinedAt: !884)
!896 = !DILocation(line: 19, column: 10, scope: !203, inlinedAt: !884)
!897 = !DILocation(line: 19, column: 26, scope: !203, inlinedAt: !884)
!898 = !DILocation(line: 19, column: 24, scope: !203, inlinedAt: !884)
!899 = !DILocation(line: 19, column: 37, scope: !203, inlinedAt: !884)
!900 = !DILocation(line: 19, column: 35, scope: !203, inlinedAt: !884)
!901 = !DILocation(line: 19, column: 7, scope: !203, inlinedAt: !884)
!902 = !DILocation(line: 16, column: 29, scope: !204, inlinedAt: !884)
!903 = !DILocation(line: 16, column: 23, scope: !204, inlinedAt: !884)
!904 = distinct !{!904, !890, !905, !232}
!905 = !DILocation(line: 21, column: 3, scope: !205, inlinedAt: !884)
!906 = !DILocation(line: 0, scope: !207, inlinedAt: !884)
!907 = !DILocation(line: 25, column: 10, scope: !207, inlinedAt: !884)
!908 = !DILocation(line: 25, column: 13, scope: !207, inlinedAt: !884)
!909 = !DILocation(line: 25, column: 18, scope: !207, inlinedAt: !884)
!910 = !DILocation(line: 26, column: 10, scope: !207, inlinedAt: !884)
!911 = !DILocation(line: 26, column: 25, scope: !207, inlinedAt: !884)
!912 = !DILocation(line: 26, column: 23, scope: !207, inlinedAt: !884)
!913 = !DILocation(line: 26, column: 34, scope: !207, inlinedAt: !884)
!914 = !DILocation(line: 26, column: 7, scope: !207, inlinedAt: !884)
!915 = !DILocation(line: 30, column: 33, scope: !187, inlinedAt: !884)
!916 = !DILocation(line: 30, column: 37, scope: !187, inlinedAt: !884)
!917 = !DILocation(line: 420, column: 22, scope: !819)
!918 = !DILocation(line: 420, column: 26, scope: !819)
!919 = !DILocation(line: 420, column: 18, scope: !819)
!920 = !DILocation(line: 421, column: 26, scope: !819)
!921 = !DILocation(line: 421, column: 13, scope: !819)
!922 = !DILocation(line: 422, column: 44, scope: !819)
!923 = !DILocation(line: 422, column: 42, scope: !819)
!924 = !DILocation(line: 422, column: 17, scope: !819)
!925 = !DILocation(line: 425, column: 13, scope: !828)
!926 = !DILocation(line: 425, column: 11, scope: !820)
!927 = !DILocation(line: 426, column: 55, scope: !827)
!928 = !DILocation(line: 426, column: 27, scope: !827)
!929 = !DILocation(line: 426, column: 59, scope: !827)
!930 = !DILocation(line: 0, scope: !827)
!931 = !DILocation(line: 427, column: 59, scope: !827)
!932 = !DILocation(line: 427, column: 55, scope: !827)
!933 = !DILocation(line: 0, scope: !260, inlinedAt: !934)
!934 = distinct !DILocation(line: 427, column: 27, scope: !827)
!935 = !DILocation(line: 151, column: 13, scope: !272, inlinedAt: !934)
!936 = !DILocation(line: 151, column: 3, scope: !273, inlinedAt: !934)
!937 = !DILocation(line: 148, column: 15, scope: !260, inlinedAt: !934)
!938 = !DILocation(line: 0, scope: !271, inlinedAt: !934)
!939 = !DILocation(line: 153, column: 25, scope: !271, inlinedAt: !934)
!940 = !DILocation(line: 153, column: 21, scope: !271, inlinedAt: !934)
!941 = !DILocation(line: 157, column: 26, scope: !286, inlinedAt: !934)
!942 = !DILocation(line: 157, column: 18, scope: !286, inlinedAt: !934)
!943 = !DILocation(line: 157, column: 22, scope: !286, inlinedAt: !934)
!944 = !DILocation(line: 160, column: 12, scope: !271, inlinedAt: !934)
!945 = !DILocation(line: 161, column: 12, scope: !271, inlinedAt: !934)
!946 = !DILocation(line: 162, column: 8, scope: !271, inlinedAt: !934)
!947 = !DILocation(line: 151, column: 24, scope: !272, inlinedAt: !934)
!948 = distinct !{!948, !936, !949, !232}
!949 = !DILocation(line: 163, column: 3, scope: !273, inlinedAt: !934)
!950 = !DILocation(line: 428, column: 28, scope: !827)
!951 = !DILocation(line: 428, column: 26, scope: !827)
!952 = !DILocation(line: 428, column: 35, scope: !827)
!953 = !DILocation(line: 428, column: 41, scope: !827)
!954 = !DILocation(line: 428, column: 39, scope: !827)
!955 = !DILocation(line: 429, column: 10, scope: !833)
!956 = !DILocation(line: 429, column: 8, scope: !827)
!957 = !DILocation(line: 430, column: 19, scope: !958)
!958 = distinct !DILexicalBlock(scope: !833, file: !2, line: 429, column: 33)
!959 = !DILocation(line: 431, column: 15, scope: !958)
!960 = !DILocation(line: 431, column: 19, scope: !958)
!961 = !DILocation(line: 432, column: 5, scope: !958)
!962 = !DILocation(line: 434, column: 25, scope: !832)
!963 = !DILocation(line: 0, scope: !832)
!964 = !DILocation(line: 435, column: 34, scope: !832)
!965 = !DILocation(line: 435, column: 19, scope: !832)
!966 = !DILocation(line: 436, column: 62, scope: !832)
!967 = !DILocation(line: 436, column: 69, scope: !832)
!968 = !DILocation(line: 436, column: 75, scope: !832)
!969 = !DILocation(line: 436, column: 59, scope: !832)
!970 = !DILocation(line: 436, column: 43, scope: !832)
!971 = !DILocation(line: 436, column: 15, scope: !832)
!972 = !DILocation(line: 436, column: 19, scope: !832)
!973 = !DILocation(line: 440, column: 13, scope: !836)
!974 = !DILocation(line: 440, column: 11, scope: !828)
!975 = !DILocation(line: 153, column: 21, scope: !271, inlinedAt: !976)
!976 = distinct !DILocation(line: 442, column: 27, scope: !835)
!977 = !DILocation(line: 157, column: 26, scope: !286, inlinedAt: !976)
!978 = !DILocation(line: 157, column: 18, scope: !286, inlinedAt: !976)
!979 = !DILocation(line: 157, column: 22, scope: !286, inlinedAt: !976)
!980 = !DILocation(line: 0, scope: !260, inlinedAt: !976)
!981 = !DILocation(line: 0, scope: !271, inlinedAt: !976)
!982 = !DILocation(line: 0, scope: !835)
!983 = !DILocation(line: 443, column: 28, scope: !835)
!984 = !DILocation(line: 443, column: 26, scope: !835)
!985 = !DILocation(line: 443, column: 35, scope: !835)
!986 = !DILocation(line: 443, column: 41, scope: !835)
!987 = !DILocation(line: 443, column: 39, scope: !835)
!988 = !DILocation(line: 444, column: 10, scope: !841)
!989 = !DILocation(line: 444, column: 8, scope: !835)
!990 = !DILocation(line: 445, column: 19, scope: !991)
!991 = distinct !DILexicalBlock(scope: !841, file: !2, line: 444, column: 33)
!992 = !DILocation(line: 446, column: 15, scope: !991)
!993 = !DILocation(line: 446, column: 19, scope: !991)
!994 = !DILocation(line: 447, column: 5, scope: !991)
!995 = !DILocation(line: 449, column: 25, scope: !840)
!996 = !DILocation(line: 0, scope: !840)
!997 = !DILocation(line: 450, column: 34, scope: !840)
!998 = !DILocation(line: 450, column: 19, scope: !840)
!999 = !DILocation(line: 451, column: 62, scope: !840)
!1000 = !DILocation(line: 451, column: 69, scope: !840)
!1001 = !DILocation(line: 451, column: 75, scope: !840)
!1002 = !DILocation(line: 451, column: 59, scope: !840)
!1003 = !DILocation(line: 451, column: 43, scope: !840)
!1004 = !DILocation(line: 451, column: 15, scope: !840)
!1005 = !DILocation(line: 451, column: 19, scope: !840)
!1006 = !DILocation(line: 456, column: 28, scope: !843)
!1007 = !DILocation(line: 456, column: 26, scope: !843)
!1008 = !DILocation(line: 456, column: 35, scope: !843)
!1009 = !DILocation(line: 0, scope: !843)
!1010 = !DILocation(line: 457, column: 10, scope: !846)
!1011 = !DILocation(line: 457, column: 8, scope: !843)
!1012 = !DILocation(line: 458, column: 19, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !846, file: !2, line: 457, column: 33)
!1014 = !DILocation(line: 459, column: 15, scope: !1013)
!1015 = !DILocation(line: 459, column: 19, scope: !1013)
!1016 = !DILocation(line: 460, column: 5, scope: !1013)
!1017 = !DILocation(line: 462, column: 25, scope: !845)
!1018 = !DILocation(line: 0, scope: !845)
!1019 = !DILocation(line: 463, column: 34, scope: !845)
!1020 = !DILocation(line: 463, column: 19, scope: !845)
!1021 = !DILocation(line: 464, column: 62, scope: !845)
!1022 = !DILocation(line: 464, column: 69, scope: !845)
!1023 = !DILocation(line: 464, column: 75, scope: !845)
!1024 = !DILocation(line: 464, column: 59, scope: !845)
!1025 = !DILocation(line: 464, column: 43, scope: !845)
!1026 = !DILocation(line: 464, column: 15, scope: !845)
!1027 = !DILocation(line: 464, column: 19, scope: !845)
!1028 = !DILocation(line: 0, scope: !823)
!1029 = !DILocation(line: 468, column: 1, scope: !813)
!1030 = distinct !DISubprogram(name: "gsl_sf_transport_2", scope: !2, file: !2, line: 474, type: !1031, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!72, !112}
!1033 = !{!1034, !1035, !1036}
!1034 = !DILocalVariable(name: "x", arg: 1, scope: !1030, file: !2, line: 474, type: !112)
!1035 = !DILocalVariable(name: "result", scope: !1030, file: !2, line: 476, type: !114)
!1036 = !DILocalVariable(name: "status", scope: !1030, file: !2, line: 476, type: !34)
!1037 = distinct !DIAssignID()
!1038 = !DILocation(line: 0, scope: !1030)
!1039 = !DILocation(line: 476, column: 3, scope: !1030)
!1040 = !{i32 0, i32 2}
!1041 = !DILocation(line: 476, column: 3, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 476, column: 3)
!1043 = !DILocation(line: 476, column: 3, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 476, column: 3)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 476, column: 3)
!1046 = !DILocation(line: 477, column: 1, scope: !1030)
!1047 = distinct !DISubprogram(name: "gsl_sf_transport_3", scope: !2, file: !2, line: 479, type: !1031, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DILocalVariable(name: "x", arg: 1, scope: !1047, file: !2, line: 479, type: !112)
!1050 = !DILocalVariable(name: "result", scope: !1047, file: !2, line: 481, type: !114)
!1051 = !DILocalVariable(name: "status", scope: !1047, file: !2, line: 481, type: !34)
!1052 = distinct !DIAssignID()
!1053 = !DILocation(line: 0, scope: !1047)
!1054 = !DILocation(line: 481, column: 3, scope: !1047)
!1055 = !{i32 0, i32 16}
!1056 = !DILocation(line: 481, column: 3, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 481, column: 3)
!1058 = !DILocation(line: 481, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 481, column: 3)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 481, column: 3)
!1061 = !DILocation(line: 482, column: 1, scope: !1047)
!1062 = distinct !DISubprogram(name: "gsl_sf_transport_4", scope: !2, file: !2, line: 484, type: !1031, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !1063)
!1063 = !{!1064, !1065, !1066}
!1064 = !DILocalVariable(name: "x", arg: 1, scope: !1062, file: !2, line: 484, type: !112)
!1065 = !DILocalVariable(name: "result", scope: !1062, file: !2, line: 486, type: !114)
!1066 = !DILocalVariable(name: "status", scope: !1062, file: !2, line: 486, type: !34)
!1067 = distinct !DIAssignID()
!1068 = !DILocation(line: 0, scope: !1062)
!1069 = !DILocation(line: 486, column: 3, scope: !1062)
!1070 = !DILocation(line: 486, column: 3, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 486, column: 3)
!1072 = !DILocation(line: 486, column: 3, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 486, column: 3)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 486, column: 3)
!1075 = !DILocation(line: 487, column: 1, scope: !1062)
!1076 = distinct !DISubprogram(name: "gsl_sf_transport_5", scope: !2, file: !2, line: 489, type: !1031, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DILocalVariable(name: "x", arg: 1, scope: !1076, file: !2, line: 489, type: !112)
!1079 = !DILocalVariable(name: "result", scope: !1076, file: !2, line: 491, type: !114)
!1080 = !DILocalVariable(name: "status", scope: !1076, file: !2, line: 491, type: !34)
!1081 = distinct !DIAssignID()
!1082 = !DILocation(line: 0, scope: !1076)
!1083 = !DILocation(line: 491, column: 3, scope: !1076)
!1084 = !DILocation(line: 491, column: 3, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 491, column: 3)
!1086 = !DILocation(line: 491, column: 3, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 491, column: 3)
!1088 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 491, column: 3)
!1089 = !DILocation(line: 492, column: 1, scope: !1076)
