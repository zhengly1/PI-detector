; ModuleID = 'srotmg.ll'
source_filename = "srotmg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_srotmg(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, float noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !17, metadata !DIExpression()), !dbg !42
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !18, metadata !DIExpression()), !dbg !42
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !19, metadata !DIExpression()), !dbg !42
  tail call void @llvm.dbg.value(metadata float %3, metadata !20, metadata !DIExpression()), !dbg !42
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !21, metadata !DIExpression()), !dbg !42
  tail call void @llvm.dbg.value(metadata float 4.096000e+03, metadata !22, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float 0x4170000000000000, metadata !26, metadata !DIExpression()), !dbg !43
  %6 = load float, ptr %0, align 4, !dbg !44, !tbaa !45
  tail call void @llvm.dbg.value(metadata float %6, metadata !27, metadata !DIExpression()), !dbg !43
  %7 = load float, ptr %1, align 4, !dbg !49, !tbaa !45
  tail call void @llvm.dbg.value(metadata float %7, metadata !28, metadata !DIExpression()), !dbg !43
  %8 = load float, ptr %2, align 4, !dbg !50, !tbaa !45
  tail call void @llvm.dbg.value(metadata float %8, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %3, metadata !30, metadata !DIExpression()), !dbg !43
  %9 = fcmp olt float %6, 0.000000e+00, !dbg !51
  br i1 %9, label %10, label %12, !dbg !53

10:                                               ; preds = %5
  store float -1.000000e+00, ptr %4, align 4, !dbg !54, !tbaa !45
  %11 = getelementptr inbounds float, ptr %4, i64 1, !dbg !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, i8 0, i64 16, i1 false), !dbg !57
  store float 0.000000e+00, ptr %0, align 4, !dbg !58, !tbaa !45
  store float 0.000000e+00, ptr %1, align 4, !dbg !59, !tbaa !45
  store float 0.000000e+00, ptr %2, align 4, !dbg !60, !tbaa !45
  br label %149, !dbg !61

12:                                               ; preds = %5
  %13 = fmul float %7, %3, !dbg !62
  %14 = fcmp oeq float %13, 0.000000e+00, !dbg !64
  br i1 %14, label %15, label %16, !dbg !65

15:                                               ; preds = %12
  store float -2.000000e+00, ptr %4, align 4, !dbg !66, !tbaa !45
  br label %149, !dbg !68

16:                                               ; preds = %12
  %17 = fmul float %6, %8, !dbg !69
  %18 = fmul float %8, %17, !dbg !70
  %19 = tail call float @llvm.fabs.f32(float %18), !dbg !71
  tail call void @llvm.dbg.value(metadata float %19, metadata !36, metadata !DIExpression()), !dbg !43
  %20 = fmul float %13, %3, !dbg !72
  %21 = tail call float @llvm.fabs.f32(float %20), !dbg !73
  tail call void @llvm.dbg.value(metadata float %21, metadata !37, metadata !DIExpression()), !dbg !43
  %22 = fcmp ogt float %19, %21, !dbg !74
  br i1 %22, label %23, label %37, !dbg !75

23:                                               ; preds = %16
  store float 0.000000e+00, ptr %4, align 4, !dbg !76, !tbaa !45
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !31, metadata !DIExpression()), !dbg !43
  %24 = fdiv float %13, %17, !dbg !78
  tail call void @llvm.dbg.value(metadata float %24, metadata !32, metadata !DIExpression()), !dbg !43
  %25 = fneg float %3, !dbg !79
  %26 = fdiv float %25, %8, !dbg !80
  tail call void @llvm.dbg.value(metadata float %26, metadata !33, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !34, metadata !DIExpression()), !dbg !43
  %27 = fmul float %26, %24, !dbg !81
  %28 = fpext float %27 to double, !dbg !82
  %29 = fptrunc double %28 to float, !dbg !82
  %handler_result = call float @fSubHandlerFloat(float 1.000000e+00, float %29), !dbg !82
  tail call void @llvm.dbg.value(metadata float %handler_result, metadata !35, metadata !DIExpression()), !dbg !43
  %30 = fcmp ugt float %handler_result, 0.000000e+00, !dbg !82
  br i1 %30, label %33, label %31, !dbg !84

31:                                               ; preds = %23
  store float -1.000000e+00, ptr %4, align 4, !dbg !85, !tbaa !45
  %32 = getelementptr inbounds float, ptr %4, i64 1, !dbg !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %32, i8 0, i64 16, i1 false), !dbg !88
  store float 0.000000e+00, ptr %0, align 4, !dbg !89, !tbaa !45
  store float 0.000000e+00, ptr %1, align 4, !dbg !90, !tbaa !45
  store float 0.000000e+00, ptr %2, align 4, !dbg !91, !tbaa !45
  br label %149, !dbg !92

33:                                               ; preds = %23
  %34 = fdiv float %6, %handler_result, !dbg !93
  tail call void @llvm.dbg.value(metadata float %34, metadata !27, metadata !DIExpression()), !dbg !43
  %35 = fdiv float %7, %handler_result, !dbg !94
  tail call void @llvm.dbg.value(metadata float %35, metadata !28, metadata !DIExpression()), !dbg !43
  %36 = fmul float %8, %handler_result, !dbg !95
  tail call void @llvm.dbg.value(metadata float %36, metadata !29, metadata !DIExpression()), !dbg !43
  br label %50, !dbg !96

37:                                               ; preds = %16
  %38 = fcmp olt float %20, 0.000000e+00, !dbg !97
  br i1 %38, label %39, label %41, !dbg !99

39:                                               ; preds = %37
  store float -1.000000e+00, ptr %4, align 4, !dbg !100, !tbaa !45
  %40 = getelementptr inbounds float, ptr %4, i64 1, !dbg !102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %40, i8 0, i64 16, i1 false), !dbg !103
  store float 0.000000e+00, ptr %0, align 4, !dbg !104, !tbaa !45
  store float 0.000000e+00, ptr %1, align 4, !dbg !105, !tbaa !45
  store float 0.000000e+00, ptr %2, align 4, !dbg !106, !tbaa !45
  br label %149, !dbg !107

41:                                               ; preds = %37
  store float 1.000000e+00, ptr %4, align 4, !dbg !108, !tbaa !45
  %42 = fdiv float %17, %13, !dbg !109
  tail call void @llvm.dbg.value(metadata float %42, metadata !31, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !32, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float -1.000000e+00, metadata !33, metadata !DIExpression()), !dbg !43
  %43 = fdiv float %8, %3, !dbg !110
  tail call void @llvm.dbg.value(metadata float %43, metadata !34, metadata !DIExpression()), !dbg !43
  %44 = fmul float %43, %42, !dbg !111
  %45 = fpext float %44 to double, !dbg !112
  %46 = fptrunc double %45 to float, !dbg !112
  %handler_result1 = call float @fAddHandlerFloat(float %46, float 1.000000e+00), !dbg !112
  tail call void @llvm.dbg.value(metadata float %handler_result1, metadata !35, metadata !DIExpression()), !dbg !43
  %47 = fdiv float %6, %handler_result1, !dbg !112
  tail call void @llvm.dbg.value(metadata float %47, metadata !27, metadata !DIExpression()), !dbg !43
  %48 = fdiv float %7, %handler_result1, !dbg !113
  tail call void @llvm.dbg.value(metadata float %47, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %48, metadata !27, metadata !DIExpression()), !dbg !43
  %49 = fmul float %handler_result1, %3, !dbg !114
  tail call void @llvm.dbg.value(metadata float %49, metadata !29, metadata !DIExpression()), !dbg !43
  br label %50

50:                                               ; preds = %41, %33
  %51 = phi float [ 1.000000e+00, %33 ], [ %42, %41 ], !dbg !115
  %52 = phi float [ %24, %33 ], [ 1.000000e+00, %41 ], !dbg !115
  %53 = phi float [ %26, %33 ], [ -1.000000e+00, %41 ], !dbg !115
  %54 = phi float [ 1.000000e+00, %33 ], [ %43, %41 ], !dbg !115
  %55 = phi float [ %36, %33 ], [ %49, %41 ], !dbg !115
  %56 = phi float [ %35, %33 ], [ %47, %41 ], !dbg !115
  %57 = phi float [ %34, %33 ], [ %48, %41 ], !dbg !115
  tail call void @llvm.dbg.value(metadata float %57, metadata !27, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %56, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %55, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %54, metadata !34, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %53, metadata !33, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %52, metadata !32, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %51, metadata !31, metadata !DIExpression()), !dbg !43
  %58 = fcmp ole float %57, 0x3E70000000000000, !dbg !116
  %59 = fcmp une float %57, 0.000000e+00, !dbg !117
  %60 = and i1 %58, %59, !dbg !117
  br i1 %60, label %61, label %62, !dbg !118

61:                                               ; preds = %50
  store float -1.000000e+00, ptr %4, align 4, !tbaa !45
  br label %69, !dbg !118

62:                                               ; preds = %69, %50
  %63 = phi float [ %51, %50 ], [ %76, %69 ], !dbg !43
  %64 = phi float [ %52, %50 ], [ %77, %69 ], !dbg !43
  %65 = phi float [ %55, %50 ], [ %75, %69 ], !dbg !43
  %66 = phi float [ %57, %50 ], [ %74, %69 ], !dbg !43
  tail call void @llvm.dbg.value(metadata float %66, metadata !27, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %65, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %64, metadata !32, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %63, metadata !31, metadata !DIExpression()), !dbg !43
  %67 = fcmp ult float %66, 0x4170000000000000, !dbg !119
  br i1 %67, label %81, label %68, !dbg !120

68:                                               ; preds = %62
  store float -1.000000e+00, ptr %4, align 4, !tbaa !45
  br label %91, !dbg !120

69:                                               ; preds = %69, %61
  %70 = phi float [ %57, %61 ], [ %74, %69 ]
  %71 = phi float [ %55, %61 ], [ %75, %69 ]
  %72 = phi float [ %52, %61 ], [ %77, %69 ]
  %73 = phi float [ %51, %61 ], [ %76, %69 ]
  tail call void @llvm.dbg.value(metadata float %70, metadata !27, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %71, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %72, metadata !32, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %73, metadata !31, metadata !DIExpression()), !dbg !43
  %74 = fmul float %70, 0x4170000000000000, !dbg !121
  tail call void @llvm.dbg.value(metadata float %74, metadata !27, metadata !DIExpression()), !dbg !43
  %75 = fmul float %71, 0x3F30000000000000, !dbg !123
  tail call void @llvm.dbg.value(metadata float %75, metadata !29, metadata !DIExpression()), !dbg !43
  %76 = fmul float %73, 0x3F30000000000000, !dbg !124
  tail call void @llvm.dbg.value(metadata float %76, metadata !31, metadata !DIExpression()), !dbg !43
  %77 = fmul float %72, 0x3F30000000000000, !dbg !125
  tail call void @llvm.dbg.value(metadata float %77, metadata !32, metadata !DIExpression()), !dbg !43
  %78 = fcmp ole float %74, 0x3E70000000000000, !dbg !116
  %79 = fcmp une float %74, 0.000000e+00, !dbg !117
  %80 = and i1 %78, %79, !dbg !117
  br i1 %80, label %69, label %62, !dbg !118, !llvm.loop !126

81:                                               ; preds = %91, %62
  %82 = phi float [ %63, %62 ], [ %98, %91 ], !dbg !43
  %83 = phi float [ %64, %62 ], [ %99, %91 ], !dbg !43
  %84 = phi float [ %65, %62 ], [ %97, %91 ], !dbg !43
  %85 = phi float [ %66, %62 ], [ %96, %91 ], !dbg !43
  tail call void @llvm.dbg.value(metadata float %56, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %54, metadata !34, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %53, metadata !33, metadata !DIExpression()), !dbg !43
  %86 = tail call float @llvm.fabs.f32(float %56), !dbg !129
  %87 = fcmp ole float %86, 0x3E70000000000000, !dbg !130
  %88 = fcmp une float %56, 0.000000e+00, !dbg !131
  %89 = select i1 %87, i1 %88, i1 false, !dbg !131
  br i1 %89, label %90, label %101, !dbg !132

90:                                               ; preds = %81
  store float -1.000000e+00, ptr %4, align 4, !tbaa !45
  br label %108, !dbg !132

91:                                               ; preds = %91, %68
  %92 = phi float [ %66, %68 ], [ %96, %91 ]
  %93 = phi float [ %65, %68 ], [ %97, %91 ]
  %94 = phi float [ %64, %68 ], [ %99, %91 ]
  %95 = phi float [ %63, %68 ], [ %98, %91 ]
  tail call void @llvm.dbg.value(metadata float %92, metadata !27, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %93, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %94, metadata !32, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %95, metadata !31, metadata !DIExpression()), !dbg !43
  %96 = fmul float %92, 0x3E70000000000000, !dbg !133
  tail call void @llvm.dbg.value(metadata float %96, metadata !27, metadata !DIExpression()), !dbg !43
  %97 = fmul float %93, 4.096000e+03, !dbg !135
  tail call void @llvm.dbg.value(metadata float %97, metadata !29, metadata !DIExpression()), !dbg !43
  %98 = fmul float %95, 4.096000e+03, !dbg !136
  tail call void @llvm.dbg.value(metadata float %98, metadata !31, metadata !DIExpression()), !dbg !43
  %99 = fmul float %94, 4.096000e+03, !dbg !137
  tail call void @llvm.dbg.value(metadata float %99, metadata !32, metadata !DIExpression()), !dbg !43
  %100 = fcmp ult float %96, 0x4170000000000000, !dbg !119
  br i1 %100, label %81, label %91, !dbg !120, !llvm.loop !138

101:                                              ; preds = %108, %81
  %102 = phi float [ %86, %81 ], [ %115, %108 ], !dbg !140
  %103 = phi float [ %53, %81 ], [ %113, %108 ], !dbg !43
  %104 = phi float [ %54, %81 ], [ %114, %108 ], !dbg !43
  %105 = phi float [ %56, %81 ], [ %112, %108 ], !dbg !43
  tail call void @llvm.dbg.value(metadata float %105, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %104, metadata !34, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %103, metadata !33, metadata !DIExpression()), !dbg !43
  %106 = fcmp ult float %102, 0x4170000000000000, !dbg !141
  br i1 %106, label %128, label %107, !dbg !142

107:                                              ; preds = %101
  store float -1.000000e+00, ptr %4, align 4, !tbaa !45
  br label %119, !dbg !142

108:                                              ; preds = %108, %90
  %109 = phi float [ %56, %90 ], [ %112, %108 ]
  %110 = phi float [ %54, %90 ], [ %114, %108 ]
  %111 = phi float [ %53, %90 ], [ %113, %108 ]
  tail call void @llvm.dbg.value(metadata float %109, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %110, metadata !34, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %111, metadata !33, metadata !DIExpression()), !dbg !43
  %112 = fmul float %109, 0x4170000000000000, !dbg !143
  tail call void @llvm.dbg.value(metadata float %112, metadata !28, metadata !DIExpression()), !dbg !43
  %113 = fmul float %111, 0x3F30000000000000, !dbg !145
  tail call void @llvm.dbg.value(metadata float %113, metadata !33, metadata !DIExpression()), !dbg !43
  %114 = fmul float %110, 0x3F30000000000000, !dbg !146
  tail call void @llvm.dbg.value(metadata float %114, metadata !34, metadata !DIExpression()), !dbg !43
  %115 = tail call float @llvm.fabs.f32(float %112), !dbg !129
  %116 = fcmp ole float %115, 0x3E70000000000000, !dbg !130
  %117 = fcmp une float %112, 0.000000e+00, !dbg !131
  %118 = select i1 %116, i1 %117, i1 false, !dbg !131
  br i1 %118, label %108, label %101, !dbg !132, !llvm.loop !147

119:                                              ; preds = %119, %107
  %120 = phi float [ %105, %107 ], [ %123, %119 ]
  %121 = phi float [ %104, %107 ], [ %125, %119 ]
  %122 = phi float [ %103, %107 ], [ %124, %119 ]
  tail call void @llvm.dbg.value(metadata float %120, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %121, metadata !34, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %122, metadata !33, metadata !DIExpression()), !dbg !43
  %123 = fmul float %120, 0x3E70000000000000, !dbg !149
  tail call void @llvm.dbg.value(metadata float %123, metadata !28, metadata !DIExpression()), !dbg !43
  %124 = fmul float %122, 4.096000e+03, !dbg !151
  tail call void @llvm.dbg.value(metadata float %124, metadata !33, metadata !DIExpression()), !dbg !43
  %125 = fmul float %121, 4.096000e+03, !dbg !152
  tail call void @llvm.dbg.value(metadata float %125, metadata !34, metadata !DIExpression()), !dbg !43
  %126 = tail call float @llvm.fabs.f32(float %123), !dbg !140
  %127 = fcmp ult float %126, 0x4170000000000000, !dbg !141
  br i1 %127, label %128, label %119, !dbg !142, !llvm.loop !153

128:                                              ; preds = %119, %101
  %129 = phi float [ %103, %101 ], [ %124, %119 ], !dbg !43
  %130 = phi float [ %104, %101 ], [ %125, %119 ], !dbg !43
  %131 = phi float [ %105, %101 ], [ %123, %119 ], !dbg !43
  store float %85, ptr %0, align 4, !dbg !155, !tbaa !45
  store float %131, ptr %1, align 4, !dbg !156, !tbaa !45
  store float %84, ptr %2, align 4, !dbg !157, !tbaa !45
  %132 = load float, ptr %4, align 4, !dbg !158, !tbaa !45
  %133 = fcmp oeq float %132, -1.000000e+00, !dbg !160
  br i1 %133, label %134, label %139, !dbg !161

134:                                              ; preds = %128
  %135 = getelementptr inbounds float, ptr %4, i64 1, !dbg !162
  store float %82, ptr %135, align 4, !dbg !164, !tbaa !45
  %136 = getelementptr inbounds float, ptr %4, i64 2, !dbg !165
  store float %129, ptr %136, align 4, !dbg !166, !tbaa !45
  %137 = getelementptr inbounds float, ptr %4, i64 3, !dbg !167
  store float %83, ptr %137, align 4, !dbg !168, !tbaa !45
  %138 = getelementptr inbounds float, ptr %4, i64 4, !dbg !169
  store float %130, ptr %138, align 4, !dbg !170, !tbaa !45
  br label %149, !dbg !171

139:                                              ; preds = %128
  %140 = fcmp oeq float %132, 0.000000e+00, !dbg !172
  br i1 %140, label %141, label %144, !dbg !174

141:                                              ; preds = %139
  %142 = getelementptr inbounds float, ptr %4, i64 2, !dbg !175
  store float %129, ptr %142, align 4, !dbg !177, !tbaa !45
  %143 = getelementptr inbounds float, ptr %4, i64 3, !dbg !178
  store float %83, ptr %143, align 4, !dbg !179, !tbaa !45
  br label %149, !dbg !180

144:                                              ; preds = %139
  %145 = fcmp oeq float %132, 1.000000e+00, !dbg !181
  br i1 %145, label %146, label %149, !dbg !183

146:                                              ; preds = %144
  %147 = getelementptr inbounds float, ptr %4, i64 1, !dbg !184
  store float %82, ptr %147, align 4, !dbg !186, !tbaa !45
  %148 = getelementptr inbounds float, ptr %4, i64 4, !dbg !187
  store float %130, ptr %148, align 4, !dbg !188, !tbaa !45
  br label %149, !dbg !189

149:                                              ; preds = %146, %144, %141, %134, %39, %31, %15, %10
  ret void, !dbg !190
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare float @fSubHandlerFloat(float, float)

declare float @fAddHandlerFloat(float, float)

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "srotmg.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "11c4b400913cdf3cbbbf32e0f36c6b46")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_srotmg", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !13, !15, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!16 = !{!17, !18, !19, !20, !21, !22, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!17 = !DILocalVariable(name: "d1", arg: 1, scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocalVariable(name: "d2", arg: 2, scope: !10, file: !1, line: 6, type: !13)
!19 = !DILocalVariable(name: "b1", arg: 3, scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocalVariable(name: "b2", arg: 4, scope: !10, file: !1, line: 6, type: !15)
!21 = !DILocalVariable(name: "P", arg: 5, scope: !10, file: !1, line: 6, type: !13)
!22 = !DILocalVariable(name: "G", scope: !23, file: !24, line: 21, type: !15)
!23 = distinct !DILexicalBlock(scope: !25, file: !24, line: 20, column: 1)
!24 = !DIFile(filename: "./source_rotmg.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "4872bb54e4ac3abb6c7d7ba0634bc296")
!25 = !DILexicalBlockFile(scope: !10, file: !24, discriminator: 0)
!26 = !DILocalVariable(name: "G2", scope: !23, file: !24, line: 21, type: !15)
!27 = !DILocalVariable(name: "D1", scope: !23, file: !24, line: 22, type: !14)
!28 = !DILocalVariable(name: "D2", scope: !23, file: !24, line: 22, type: !14)
!29 = !DILocalVariable(name: "x", scope: !23, file: !24, line: 22, type: !14)
!30 = !DILocalVariable(name: "y", scope: !23, file: !24, line: 22, type: !14)
!31 = !DILocalVariable(name: "h11", scope: !23, file: !24, line: 23, type: !14)
!32 = !DILocalVariable(name: "h12", scope: !23, file: !24, line: 23, type: !14)
!33 = !DILocalVariable(name: "h21", scope: !23, file: !24, line: 23, type: !14)
!34 = !DILocalVariable(name: "h22", scope: !23, file: !24, line: 23, type: !14)
!35 = !DILocalVariable(name: "u", scope: !23, file: !24, line: 23, type: !14)
!36 = !DILocalVariable(name: "c", scope: !23, file: !24, line: 25, type: !14)
!37 = !DILocalVariable(name: "s", scope: !23, file: !24, line: 25, type: !14)
!38 = !DILocalVariable(name: "tmp", scope: !39, file: !24, line: 104, type: !14)
!39 = distinct !DILexicalBlock(scope: !40, file: !24, line: 103, column: 5)
!40 = distinct !DILexicalBlock(scope: !41, file: !24, line: 76, column: 10)
!41 = distinct !DILexicalBlock(scope: !23, file: !24, line: 49, column: 7)
!42 = !DILocation(line: 0, scope: !10)
!43 = !DILocation(line: 0, scope: !23)
!44 = !DILocation(line: 22, column: 13, scope: !23)
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 22, column: 23, scope: !23)
!50 = !DILocation(line: 22, column: 32, scope: !23)
!51 = !DILocation(line: 29, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !23, file: !24, line: 29, column: 7)
!53 = !DILocation(line: 29, column: 7, scope: !23)
!54 = !DILocation(line: 30, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !24, line: 29, column: 17)
!56 = !DILocation(line: 31, column: 5, scope: !55)
!57 = !DILocation(line: 32, column: 10, scope: !55)
!58 = !DILocation(line: 35, column: 9, scope: !55)
!59 = !DILocation(line: 36, column: 9, scope: !55)
!60 = !DILocation(line: 37, column: 9, scope: !55)
!61 = !DILocation(line: 38, column: 5, scope: !55)
!62 = !DILocation(line: 41, column: 10, scope: !63)
!63 = distinct !DILexicalBlock(scope: !23, file: !24, line: 41, column: 7)
!64 = !DILocation(line: 41, column: 14, scope: !63)
!65 = !DILocation(line: 41, column: 7, scope: !23)
!66 = !DILocation(line: 42, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !24, line: 41, column: 22)
!68 = !DILocation(line: 43, column: 5, scope: !67)
!69 = !DILocation(line: 46, column: 15, scope: !23)
!70 = !DILocation(line: 46, column: 19, scope: !23)
!71 = !DILocation(line: 46, column: 7, scope: !23)
!72 = !DILocation(line: 47, column: 19, scope: !23)
!73 = !DILocation(line: 47, column: 7, scope: !23)
!74 = !DILocation(line: 49, column: 9, scope: !41)
!75 = !DILocation(line: 49, column: 7, scope: !23)
!76 = !DILocation(line: 52, column: 10, scope: !77)
!77 = distinct !DILexicalBlock(scope: !41, file: !24, line: 49, column: 14)
!78 = !DILocation(line: 55, column: 20, scope: !77)
!79 = !DILocation(line: 56, column: 11, scope: !77)
!80 = !DILocation(line: 56, column: 14, scope: !77)
!81 = !DILocation(line: 59, column: 17, scope: !77)
!82 = !DILocation(line: 61, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !77, file: !24, line: 61, column: 9)
!84 = !DILocation(line: 61, column: 9, scope: !77)
!85 = !DILocation(line: 62, column: 12, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !24, line: 61, column: 19)
!87 = !DILocation(line: 63, column: 7, scope: !86)
!88 = !DILocation(line: 64, column: 12, scope: !86)
!89 = !DILocation(line: 67, column: 11, scope: !86)
!90 = !DILocation(line: 68, column: 11, scope: !86)
!91 = !DILocation(line: 69, column: 11, scope: !86)
!92 = !DILocation(line: 70, column: 7, scope: !86)
!93 = !DILocation(line: 73, column: 8, scope: !77)
!94 = !DILocation(line: 74, column: 8, scope: !77)
!95 = !DILocation(line: 75, column: 7, scope: !77)
!96 = !DILocation(line: 76, column: 3, scope: !77)
!97 = !DILocation(line: 79, column: 20, scope: !98)
!98 = distinct !DILexicalBlock(scope: !40, file: !24, line: 79, column: 9)
!99 = !DILocation(line: 79, column: 9, scope: !40)
!100 = !DILocation(line: 80, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !24, line: 79, column: 27)
!102 = !DILocation(line: 81, column: 7, scope: !101)
!103 = !DILocation(line: 82, column: 12, scope: !101)
!104 = !DILocation(line: 85, column: 11, scope: !101)
!105 = !DILocation(line: 86, column: 11, scope: !101)
!106 = !DILocation(line: 87, column: 11, scope: !101)
!107 = !DILocation(line: 88, column: 7, scope: !101)
!108 = !DILocation(line: 91, column: 10, scope: !40)
!109 = !DILocation(line: 93, column: 20, scope: !40)
!110 = !DILocation(line: 96, column: 13, scope: !40)
!111 = !DILocation(line: 98, column: 17, scope: !40)
!112 = !DILocation(line: 100, column: 8, scope: !40)
!113 = !DILocation(line: 101, column: 8, scope: !40)
!114 = !DILocation(line: 109, column: 11, scope: !40)
!115 = !DILocation(line: 0, scope: !41)
!116 = !DILocation(line: 114, column: 13, scope: !23)
!117 = !DILocation(line: 114, column: 25, scope: !23)
!118 = !DILocation(line: 114, column: 3, scope: !23)
!119 = !DILocation(line: 122, column: 13, scope: !23)
!120 = !DILocation(line: 122, column: 3, scope: !23)
!121 = !DILocation(line: 116, column: 8, scope: !122)
!122 = distinct !DILexicalBlock(scope: !23, file: !24, line: 114, column: 39)
!123 = !DILocation(line: 117, column: 7, scope: !122)
!124 = !DILocation(line: 118, column: 9, scope: !122)
!125 = !DILocation(line: 119, column: 9, scope: !122)
!126 = distinct !{!126, !118, !127, !128}
!127 = !DILocation(line: 120, column: 3, scope: !23)
!128 = !{!"llvm.loop.mustprogress"}
!129 = !DILocation(line: 132, column: 10, scope: !23)
!130 = !DILocation(line: 132, column: 19, scope: !23)
!131 = !DILocation(line: 132, column: 31, scope: !23)
!132 = !DILocation(line: 132, column: 3, scope: !23)
!133 = !DILocation(line: 124, column: 8, scope: !134)
!134 = distinct !DILexicalBlock(scope: !23, file: !24, line: 122, column: 20)
!135 = !DILocation(line: 125, column: 7, scope: !134)
!136 = !DILocation(line: 126, column: 9, scope: !134)
!137 = !DILocation(line: 127, column: 9, scope: !134)
!138 = distinct !{!138, !120, !139, !128}
!139 = !DILocation(line: 128, column: 3, scope: !23)
!140 = !DILocation(line: 139, column: 10, scope: !23)
!141 = !DILocation(line: 139, column: 19, scope: !23)
!142 = !DILocation(line: 139, column: 3, scope: !23)
!143 = !DILocation(line: 134, column: 8, scope: !144)
!144 = distinct !DILexicalBlock(scope: !23, file: !24, line: 132, column: 45)
!145 = !DILocation(line: 135, column: 9, scope: !144)
!146 = !DILocation(line: 136, column: 9, scope: !144)
!147 = distinct !{!147, !132, !148, !128}
!148 = !DILocation(line: 137, column: 3, scope: !23)
!149 = !DILocation(line: 141, column: 8, scope: !150)
!150 = distinct !DILexicalBlock(scope: !23, file: !24, line: 139, column: 26)
!151 = !DILocation(line: 142, column: 9, scope: !150)
!152 = !DILocation(line: 143, column: 9, scope: !150)
!153 = distinct !{!153, !142, !154, !128}
!154 = !DILocation(line: 144, column: 3, scope: !23)
!155 = !DILocation(line: 146, column: 7, scope: !23)
!156 = !DILocation(line: 147, column: 7, scope: !23)
!157 = !DILocation(line: 148, column: 7, scope: !23)
!158 = !DILocation(line: 150, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !23, file: !24, line: 150, column: 7)
!160 = !DILocation(line: 150, column: 12, scope: !159)
!161 = !DILocation(line: 150, column: 7, scope: !23)
!162 = !DILocation(line: 151, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !24, line: 150, column: 21)
!164 = !DILocation(line: 151, column: 10, scope: !163)
!165 = !DILocation(line: 152, column: 5, scope: !163)
!166 = !DILocation(line: 152, column: 10, scope: !163)
!167 = !DILocation(line: 153, column: 5, scope: !163)
!168 = !DILocation(line: 153, column: 10, scope: !163)
!169 = !DILocation(line: 154, column: 5, scope: !163)
!170 = !DILocation(line: 154, column: 10, scope: !163)
!171 = !DILocation(line: 155, column: 3, scope: !163)
!172 = !DILocation(line: 155, column: 19, scope: !173)
!173 = distinct !DILexicalBlock(scope: !159, file: !24, line: 155, column: 14)
!174 = !DILocation(line: 155, column: 14, scope: !159)
!175 = !DILocation(line: 156, column: 5, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !24, line: 155, column: 27)
!177 = !DILocation(line: 156, column: 10, scope: !176)
!178 = !DILocation(line: 157, column: 5, scope: !176)
!179 = !DILocation(line: 157, column: 10, scope: !176)
!180 = !DILocation(line: 158, column: 3, scope: !176)
!181 = !DILocation(line: 158, column: 19, scope: !182)
!182 = distinct !DILexicalBlock(scope: !173, file: !24, line: 158, column: 14)
!183 = !DILocation(line: 158, column: 14, scope: !173)
!184 = !DILocation(line: 159, column: 5, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !24, line: 158, column: 27)
!186 = !DILocation(line: 159, column: 10, scope: !185)
!187 = !DILocation(line: 160, column: 5, scope: !185)
!188 = !DILocation(line: 160, column: 10, scope: !185)
!189 = !DILocation(line: 161, column: 3, scope: !185)
!190 = !DILocation(line: 11, column: 1, scope: !191)
!191 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
