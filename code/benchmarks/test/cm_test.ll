; ModuleID = '<stdin>'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl" }
%"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl" = type { %struct.region*, %struct.region*, %struct.region* }
%struct.region = type { i8* }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl" }
%"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl" = type { %struct.map*, %struct.map*, %struct.map* }
%struct.map = type { i8*, i8*, i8*, i64, %struct.region* }
%"class.__gnu_cxx::__normal_iterator" = type { %struct.map* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%"class.std::allocator" = type { i8 }
%"class.std::allocator.2" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.5" = type { %struct.region* }
%"class.__gnu_cxx::new_allocator.3" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_region_table = global %"class.std::vector" zeroinitializer, align 8
@_mapping_table = global %"class.std::vector.0" zeroinitializer, align 8
@.str = private unnamed_addr constant [44 x i8] c"c_get: function not found in mapping table!\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"vector::_M_insert_aux\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_code_manager.cpp, i8* null }]
@spm_code = global [4096 x i8] zeroinitializer, align 16
@.str1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"f2\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"f3\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"c_main\00", align 1

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define i8* @_Z5c_getPc(i8* %memAddr) #2 {
entry:
  %ii = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ie = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp14 = alloca i64, align 8
  %ref.tmp17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev(%"class.__gnu_cxx::__normal_iterator"* %ii)
  call void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev(%"class.__gnu_cxx::__normal_iterator"* %ie)
  %call = tail call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE5beginEv(%"class.std::vector.0"* @_mapping_table)
  %ref.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %ii, i64 0, i32 0
  store %struct.map* %call, %struct.map** %ref.tmp.sroa.0.0..sroa_idx, align 8
  %call2 = tail call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE3endEv(%"class.std::vector.0"* @_mapping_table)
  %ref.tmp1.sroa.0.0..sroa_idx = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %ie, i64 0, i32 0
  store %struct.map* %call2, %struct.map** %ref.tmp1.sroa.0.0..sroa_idx, align 8
  %call445 = call zeroext i1 @_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ii, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ie)
  br i1 %call445, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %call5 = call dereferenceable(40) %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %ii)
  %mem_addr = getelementptr inbounds %struct.map* %call5, i64 0, i32 1
  %0 = load i8** %mem_addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, %memAddr
  br i1 %cmp, label %for.end.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body
  %call6 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %ii)
  %call4 = call zeroext i1 @_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ii, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ie)
  br i1 %call4, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc, %for.body
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %call8 = call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE3endEv(%"class.std::vector.0"* @_mapping_table)
  %coerce.dive9 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp7, i64 0, i32 0
  store %struct.map* %call8, %struct.map** %coerce.dive9, align 8
  %call10 = call zeroext i1 @_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ii, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp7)
  br i1 %call10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  call void @perror(i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0)) #12
  call void @exit(i32 -1) #13
  unreachable

if.end12:                                         ; preds = %for.end
  store i64 1, i64* %ref.tmp14, align 8, !tbaa !7
  %call15 = call %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl(%"class.__gnu_cxx::__normal_iterator"* %ii, i64* dereferenceable(8) %ref.tmp14)
  %coerce.dive16 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp13, i64 0, i32 0
  store %struct.map* %call15, %struct.map** %coerce.dive16, align 8
  %call18 = call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE3endEv(%"class.std::vector.0"* @_mapping_table)
  %coerce.dive19 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp17, i64 0, i32 0
  store %struct.map* %call18, %struct.map** %coerce.dive19, align 8
  %call20 = call zeroext i1 @_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp13, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp17)
  br i1 %call20, label %return, label %if.end22

if.end22:                                         ; preds = %if.end12
  %call23 = call dereferenceable(40) %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %ii)
  %m.sroa.4.0..sroa_idx35 = getelementptr inbounds %struct.map* %call23, i64 0, i32 2
  %m.sroa.4.0.copyload = load i8** %m.sroa.4.0..sroa_idx35, align 8
  %m.sroa.7.0..sroa_idx40 = getelementptr inbounds %struct.map* %call23, i64 0, i32 4
  %m.sroa.7.0.copyload = load %struct.region** %m.sroa.7.0..sroa_idx40, align 8
  %mem_addr24 = getelementptr inbounds %struct.region* %m.sroa.7.0.copyload, i64 0, i32 0
  %1 = load i8** %mem_addr24, align 8, !tbaa !8
  %cmp25 = icmp eq i8* %1, %memAddr
  br i1 %cmp25, label %return, label %if.then26

if.then26:                                        ; preds = %if.end22
  %m.sroa.6.0..sroa_idx38 = getelementptr inbounds %struct.map* %call23, i64 0, i32 3
  %m.sroa.6.0.copyload = load i64* %m.sroa.6.0..sroa_idx38, align 8
  %m.sroa.3.0..sroa_idx33 = getelementptr inbounds %struct.map* %call23, i64 0, i32 1
  %m.sroa.3.0.copyload = load i8** %m.sroa.3.0..sroa_idx33, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %m.sroa.4.0.copyload, i8* %m.sroa.3.0.copyload, i64 %m.sroa.6.0.copyload, i32 1, i1 false)
  store i8* %memAddr, i8** %mem_addr24, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %if.then26, %if.end22, %if.end12
  %retval.0 = phi i8* [ null, %if.end12 ], [ %m.sroa.4.0.copyload, %if.end22 ], [ %m.sroa.4.0.copyload, %if.then26 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: noinline uwtable
define i32 @_Z10c_init_regiz(i32 %num, ...) #5 {
entry:
  %vl = alloca [1 x %struct.__va_list_tag], align 16
  %r = alloca %struct.region, align 8
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %vl to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %cmp6 = icmp sgt i32 %num, 0
  br i1 %cmp6, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i64 0, i64 0, i32 0
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i64 0, i64 0, i32 3
  %mem_addr = getelementptr inbounds %struct.region* %r, i64 0, i32 0
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i64 0, i64 0, i32 2
  %1 = add i32 %num, -1
  br label %for.body

for.body:                                         ; preds = %vaarg.end, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vaarg.end ]
  %gp_offset = load i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8** %0, align 16
  %2 = sext i32 %gp_offset to i64
  %3 = getelementptr i8* %reg_save_area, i64 %2
  %4 = add i32 %gp_offset, 8
  store i32 %4, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %3, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**
  %5 = load i8** %vaarg.addr, align 8
  store i8* %5, i8** %mem_addr, align 8, !tbaa !8
  call void @_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_(%"class.std::vector"* @_region_table, %struct.region* dereferenceable(8) %r)
  %inc = add nsw i32 %i.07, 1
  %exitcond = icmp eq i32 %i.07, %1
  br i1 %exitcond, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %vaarg.end
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  call void @llvm.va_end(i8* %arraydecay1)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline uwtable
define i32 @_Z10c_init_mapiz(i32 %num, ...) #5 {
entry:
  %vl = alloca [1 x %struct.__va_list_tag], align 16
  %m = alloca %struct.map, align 8
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %vl to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %cmp54 = icmp sgt i32 %num, 0
  br i1 %cmp54, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = bitcast %struct.map* %m to i8*
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i64 0, i64 0, i32 0
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i64 0, i64 0, i32 3
  %func_name = getelementptr inbounds %struct.map* %m, i64 0, i32 0
  %mem_addr = getelementptr inbounds %struct.map* %m, i64 0, i32 1
  %spm_addr = getelementptr inbounds %struct.map* %m, i64 0, i32 2
  %func_size = getelementptr inbounds %struct.map* %m, i64 0, i32 3
  %reg = getelementptr inbounds %struct.map* %m, i64 0, i32 4
  %overflow_arg_area_p46 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i64 0, i64 0, i32 2
  %2 = add i32 %num, -1
  br label %for.body

for.body:                                         ; preds = %vaarg.end49, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vaarg.end49 ]
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %gp_offset = load i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8** %1, align 16
  %3 = sext i32 %gp_offset to i64
  %4 = getelementptr i8* %reg_save_area, i64 %3
  %5 = add i32 %gp_offset, 8
  store i32 %5, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8** %overflow_arg_area_p46, align 8
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p46, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %gp_offset5 = phi i32 [ %gp_offset, %vaarg.in_mem ], [ %5, %vaarg.in_reg ]
  %vaarg.addr.in = phi i8* [ %overflow_arg_area, %vaarg.in_mem ], [ %4, %vaarg.in_reg ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**
  %6 = load i8** %vaarg.addr, align 8
  store i8* %6, i8** %func_name, align 8, !tbaa !10
  %fits_in_gp6 = icmp ult i32 %gp_offset5, 41
  br i1 %fits_in_gp6, label %vaarg.end13, label %vaarg.end13.thread

vaarg.end13.thread:                               ; preds = %vaarg.end
  %overflow_arg_area11 = load i8** %overflow_arg_area_p46, align 8
  %overflow_arg_area.next12 = getelementptr i8* %overflow_arg_area11, i64 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p46, align 8
  %vaarg.addr1459 = bitcast i8* %overflow_arg_area11 to i8**
  %7 = load i8** %vaarg.addr1459, align 8
  store i8* %7, i8** %mem_addr, align 8, !tbaa !1
  br label %vaarg.in_mem21

vaarg.end13:                                      ; preds = %vaarg.end
  %reg_save_area8 = load i8** %1, align 16
  %8 = sext i32 %gp_offset5 to i64
  %9 = getelementptr i8* %reg_save_area8, i64 %8
  %10 = add i32 %gp_offset5, 8
  store i32 %10, i32* %gp_offset_p, align 16
  %vaarg.addr14 = bitcast i8* %9 to i8**
  %11 = load i8** %vaarg.addr14, align 8
  store i8* %11, i8** %mem_addr, align 8, !tbaa !1
  %fits_in_gp18 = icmp ult i32 %10, 41
  br i1 %fits_in_gp18, label %vaarg.in_reg19, label %vaarg.end13.vaarg.in_mem21_crit_edge

vaarg.end13.vaarg.in_mem21_crit_edge:             ; preds = %vaarg.end13
  %overflow_arg_area23.pre = load i8** %overflow_arg_area_p46, align 8
  br label %vaarg.in_mem21

vaarg.in_reg19:                                   ; preds = %vaarg.end13
  %12 = sext i32 %10 to i64
  %13 = getelementptr i8* %reg_save_area8, i64 %12
  %14 = add i32 %gp_offset5, 16
  store i32 %14, i32* %gp_offset_p, align 16
  br label %vaarg.end25

vaarg.in_mem21:                                   ; preds = %vaarg.end13.vaarg.in_mem21_crit_edge, %vaarg.end13.thread
  %overflow_arg_area23 = phi i8* [ %overflow_arg_area.next12, %vaarg.end13.thread ], [ %overflow_arg_area23.pre, %vaarg.end13.vaarg.in_mem21_crit_edge ]
  %gp_offset1761 = phi i32 [ %gp_offset5, %vaarg.end13.thread ], [ %10, %vaarg.end13.vaarg.in_mem21_crit_edge ]
  %overflow_arg_area.next24 = getelementptr i8* %overflow_arg_area23, i64 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p46, align 8
  br label %vaarg.end25

vaarg.end25:                                      ; preds = %vaarg.in_mem21, %vaarg.in_reg19
  %gp_offset29 = phi i32 [ %14, %vaarg.in_reg19 ], [ %gp_offset1761, %vaarg.in_mem21 ]
  %vaarg.addr26.in = phi i8* [ %13, %vaarg.in_reg19 ], [ %overflow_arg_area23, %vaarg.in_mem21 ]
  %vaarg.addr26 = bitcast i8* %vaarg.addr26.in to i8**
  %15 = load i8** %vaarg.addr26, align 8
  store i8* %15, i8** %spm_addr, align 8, !tbaa !11
  %fits_in_gp30 = icmp ult i32 %gp_offset29, 41
  br i1 %fits_in_gp30, label %vaarg.end37, label %vaarg.end37.thread

vaarg.end37.thread:                               ; preds = %vaarg.end25
  %overflow_arg_area35 = load i8** %overflow_arg_area_p46, align 8
  %overflow_arg_area.next36 = getelementptr i8* %overflow_arg_area35, i64 8
  store i8* %overflow_arg_area.next36, i8** %overflow_arg_area_p46, align 8
  %vaarg.addr3862 = bitcast i8* %overflow_arg_area35 to i64*
  %16 = load i64* %vaarg.addr3862, align 8
  store i64 %16, i64* %func_size, align 8, !tbaa !12
  br label %vaarg.in_mem45

vaarg.end37:                                      ; preds = %vaarg.end25
  %reg_save_area32 = load i8** %1, align 16
  %17 = sext i32 %gp_offset29 to i64
  %18 = getelementptr i8* %reg_save_area32, i64 %17
  %19 = add i32 %gp_offset29, 8
  store i32 %19, i32* %gp_offset_p, align 16
  %vaarg.addr38 = bitcast i8* %18 to i64*
  %20 = load i64* %vaarg.addr38, align 8
  store i64 %20, i64* %func_size, align 8, !tbaa !12
  %fits_in_gp42 = icmp ult i32 %19, 41
  br i1 %fits_in_gp42, label %vaarg.in_reg43, label %vaarg.end37.vaarg.in_mem45_crit_edge

vaarg.end37.vaarg.in_mem45_crit_edge:             ; preds = %vaarg.end37
  %overflow_arg_area47.pre = load i8** %overflow_arg_area_p46, align 8
  br label %vaarg.in_mem45

vaarg.in_reg43:                                   ; preds = %vaarg.end37
  %21 = sext i32 %19 to i64
  %22 = getelementptr i8* %reg_save_area32, i64 %21
  %23 = add i32 %gp_offset29, 16
  store i32 %23, i32* %gp_offset_p, align 16
  br label %vaarg.end49

vaarg.in_mem45:                                   ; preds = %vaarg.end37.vaarg.in_mem45_crit_edge, %vaarg.end37.thread
  %overflow_arg_area47 = phi i8* [ %overflow_arg_area47.pre, %vaarg.end37.vaarg.in_mem45_crit_edge ], [ %overflow_arg_area.next36, %vaarg.end37.thread ]
  %overflow_arg_area.next48 = getelementptr i8* %overflow_arg_area47, i64 8
  store i8* %overflow_arg_area.next48, i8** %overflow_arg_area_p46, align 8
  br label %vaarg.end49

vaarg.end49:                                      ; preds = %vaarg.in_mem45, %vaarg.in_reg43
  %vaarg.addr50.in = phi i8* [ %22, %vaarg.in_reg43 ], [ %overflow_arg_area47, %vaarg.in_mem45 ]
  %vaarg.addr50 = bitcast i8* %vaarg.addr50.in to %struct.region**
  %24 = load %struct.region** %vaarg.addr50, align 8
  store %struct.region* %24, %struct.region** %reg, align 8, !tbaa !13
  call void @_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_(%"class.std::vector.0"* @_mapping_table, %struct.map* dereferenceable(40) %m)
  call void @llvm.lifetime.end(i64 40, i8* %0) #1
  %inc = add nsw i32 %i.055, 1
  %exitcond = icmp eq i32 %i.055, %2
  br i1 %exitcond, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %vaarg.end49
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  call void @llvm.va_end(i8* %arraydecay1)
  ret i32 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #7

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev(%"class.__gnu_cxx::__normal_iterator"* nocapture %this) unnamed_addr #2 align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this, i64 0, i32 0
  store %struct.map* null, %struct.map** %_M_current, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZNSt6vectorI3mapSaIS0_EE5beginEv(%"class.std::vector.0"* nocapture readonly %this) #2 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %_M_start = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, %struct.map** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %retval, i64 0, i32 0
  %0 = load %struct.map** %coerce.dive, align 8
  ret %struct.map* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZNSt6vectorI3mapSaIS0_EE3endEv(%"class.std::vector.0"* nocapture readonly %this) #2 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %_M_finish = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, %struct.map** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %retval, i64 0, i32 0
  %0 = load %struct.map** %coerce.dive, align 8
  ret %struct.map* %0
}

; Function Attrs: noinline nounwind readonly uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__rhs) #9 {
entry:
  %call = tail call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__lhs)
  %0 = load %struct.map** %call, align 8, !tbaa !16
  %call1 = tail call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__rhs)
  %1 = load %struct.map** %call1, align 8, !tbaa !16
  %cmp = icmp ne %struct.map* %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind readonly uwtable
define linkonce_odr dereferenceable(40) %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* nocapture readonly %this) #9 align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this, i64 0, i32 0
  %0 = load %struct.map** %_M_current, align 8, !tbaa !14
  ret %struct.map* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #2 align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this, i64 0, i32 0
  %0 = load %struct.map** %_M_current, align 8, !tbaa !14
  %incdec.ptr = getelementptr inbounds %struct.map* %0, i64 1
  store %struct.map* %incdec.ptr, %struct.map** %_M_current, align 8, !tbaa !14
  ret %"class.__gnu_cxx::__normal_iterator"* %this
}

; Function Attrs: noinline nounwind readonly uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__rhs) #9 {
entry:
  %call = tail call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__lhs)
  %0 = load %struct.map** %call, align 8, !tbaa !16
  %call1 = tail call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__rhs)
  %1 = load %struct.map** %call1, align 8, !tbaa !16
  %cmp = icmp eq %struct.map* %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl(%"class.__gnu_cxx::__normal_iterator"* nocapture readonly %this, i64* nocapture readonly dereferenceable(8) %__n) #2 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp = alloca %struct.map*, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this, i64 0, i32 0
  %0 = load %struct.map** %_M_current, align 8, !tbaa !14
  %1 = load i64* %__n, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds %struct.map* %0, i64 %1
  store %struct.map* %add.ptr, %struct.map** %ref.tmp, align 8, !tbaa !16
  call void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, %struct.map** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %retval, i64 0, i32 0
  %2 = load %struct.map** %coerce.dive, align 8
  ret %struct.map* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_(%"class.std::vector"* %this, %struct.region* nocapture readonly dereferenceable(8) %__x) #5 align 2 {
entry:
  %_M_finish = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %0 = load %struct.region** %_M_finish, align 8, !tbaa !17
  %_M_end_of_storage = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 2
  %1 = load %struct.region** %_M_end_of_storage, align 8, !tbaa !20
  %cmp = icmp eq %struct.region* %0, %1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %"class.std::vector"* %this to %"class.std::allocator"*
  tail call void @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* dereferenceable(1) %2, %struct.region* %0, %struct.region* dereferenceable(8) %__x)
  %3 = load %struct.region** %_M_finish, align 8, !tbaa !17
  %incdec.ptr = getelementptr inbounds %struct.region* %3, i64 1
  store %struct.region* %incdec.ptr, %struct.region** %_M_finish, align 8, !tbaa !17
  br label %if.end

if.else:                                          ; preds = %entry
  %call = tail call %struct.region* @_ZNSt6vectorI6regionSaIS0_EE3endEv(%"class.std::vector"* %this)
  tail call void @_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector"* %this, %struct.region* %call, %struct.region* dereferenceable(8) %__x)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_(%"class.std::vector.0"* %this, %struct.map* nocapture readonly dereferenceable(40) %__x) #5 align 2 {
entry:
  %_M_finish = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 1
  %0 = load %struct.map** %_M_finish, align 8, !tbaa !21
  %_M_end_of_storage = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 2
  %1 = load %struct.map** %_M_end_of_storage, align 8, !tbaa !24
  %cmp = icmp eq %struct.map* %0, %1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %"class.std::vector.0"* %this to %"class.std::allocator.2"*
  tail call void @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator.2"* dereferenceable(1) %2, %struct.map* %0, %struct.map* dereferenceable(40) %__x)
  %3 = load %struct.map** %_M_finish, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds %struct.map* %3, i64 1
  store %struct.map* %incdec.ptr, %struct.map** %_M_finish, align 8, !tbaa !21
  br label %if.end

if.else:                                          ; preds = %entry
  %call = tail call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE3endEv(%"class.std::vector.0"* %this)
  tail call void @_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector.0"* %this, %struct.map* %call, %struct.map* dereferenceable(40) %__x)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

define internal void @_GLOBAL__sub_I_code_manager.cpp() section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* @__dso_handle) #1
  tail call void @_ZNSt6vectorI6regionSaIS0_EEC2Ev(%"class.std::vector"* @_region_table) #1
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::vector"*)* @_ZNSt6vectorI6regionSaIS0_EED2Ev to void (i8*)*), i8* bitcast (%"class.std::vector"* @_region_table to i8*), i8* @__dso_handle) #1
  tail call void @_ZNSt6vectorI3mapSaIS0_EEC2Ev(%"class.std::vector.0"* @_mapping_table) #1
  %2 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::vector.0"*)* @_ZNSt6vectorI3mapSaIS0_EED2Ev to void (i8*)*), i8* bitcast (%"class.std::vector.0"* @_mapping_table to i8*), i8* @__dso_handle) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* nocapture %this, %struct.map** nocapture readonly dereferenceable(8) %__i) unnamed_addr #2 align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this, i64 0, i32 0
  %0 = load %struct.map** %__i, align 8, !tbaa !16
  store %struct.map* %0, %struct.map** %_M_current, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind readnone uwtable
define linkonce_odr dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* readnone %this) #10 align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this, i64 0, i32 0
  ret %struct.map** %_M_current
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* nocapture readnone dereferenceable(1) %__a, %struct.region* %__p, %struct.region* nocapture readonly dereferenceable(8) %__arg) #2 align 2 {
entry:
  %0 = bitcast %"class.std::allocator"* %__a to %"class.__gnu_cxx::new_allocator"*
  tail call void @_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator"* %0, %struct.region* %__p, %struct.region* dereferenceable(8) %__arg)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZNSt6vectorI6regionSaIS0_EE3endEv(%"class.std::vector"* nocapture readonly %this) #2 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %_M_finish = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.5"* %retval, %struct.region** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.5"* %retval, i64 0, i32 0
  %0 = load %struct.region** %coerce.dive, align 8
  ret %struct.region* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector"* %this, %struct.region* %__position.coerce, %struct.region* nocapture readonly dereferenceable(8) %__x) #5 align 2 {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.5"* %__position, i64 0, i32 0
  store %struct.region* %__position.coerce, %struct.region** %coerce.dive, align 8
  %0 = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0
  %_M_finish = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %1 = load %struct.region** %_M_finish, align 8, !tbaa !17
  %_M_end_of_storage = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 2
  %2 = load %struct.region** %_M_end_of_storage, align 8, !tbaa !20
  %cmp = icmp eq %struct.region* %1, %2
  br i1 %cmp, label %invoke.cont39, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast %"class.std::vector"* %this to %"class.std::allocator"*
  %add.ptr = getelementptr inbounds %struct.region* %1, i64 -1
  tail call void @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* dereferenceable(1) %3, %struct.region* %1, %struct.region* dereferenceable(8) %add.ptr)
  %4 = load %struct.region** %_M_finish, align 8, !tbaa !17
  %incdec.ptr = getelementptr inbounds %struct.region* %4, i64 1
  store %struct.region* %incdec.ptr, %struct.region** %_M_finish, align 8, !tbaa !17
  %__x_copy.sroa.0.0..sroa_idx = getelementptr inbounds %struct.region* %__x, i64 0, i32 0
  %__x_copy.sroa.0.0.copyload = load i8** %__x_copy.sroa.0.0..sroa_idx, align 8
  %call = call dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* %__position)
  %5 = load %struct.region** %call, align 8, !tbaa !16
  %add.ptr12 = getelementptr inbounds %struct.region* %4, i64 -1
  %call16 = tail call %struct.region* @_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_(%struct.region* %5, %struct.region* %add.ptr12, %struct.region* %4)
  %call17 = call dereferenceable(8) %struct.region* @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.5"* %__position)
  %__x_copy.sroa.0.0..sroa_idx87 = getelementptr inbounds %struct.region* %call17, i64 0, i32 0
  store i8* %__x_copy.sroa.0.0.copyload, i8** %__x_copy.sroa.0.0..sroa_idx87, align 8
  br label %if.end70

invoke.cont39:                                    ; preds = %entry
  %call18 = tail call i64 @_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0))
  %call19 = tail call %struct.region* @_ZNSt6vectorI6regionSaIS0_EE5beginEv(%"class.std::vector"* %this)
  %coerce.dive20 = getelementptr %"class.__gnu_cxx::__normal_iterator.5"* %ref.tmp, i64 0, i32 0
  store %struct.region* %call19, %struct.region** %coerce.dive20, align 8
  %call21 = call i64 @_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.5"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.5"* dereferenceable(8) %ref.tmp)
  %call22 = tail call %struct.region* @_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %0, i64 %call18)
  %6 = bitcast %"class.std::vector"* %this to %"class.std::allocator"*
  %add.ptr24 = getelementptr inbounds %struct.region* %call22, i64 %call21
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* dereferenceable(1) %6, %struct.region* %add.ptr24, %struct.region* dereferenceable(8) %__x)
  %_M_start = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %7 = load %struct.region** %_M_start, align 8, !tbaa !25
  %call27 = call dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* %__position)
  %8 = load %struct.region** %call27, align 8, !tbaa !16
  %call29 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0)
  %call31 = call %struct.region* @_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.region* %7, %struct.region* %8, %struct.region* %call22, %"class.std::allocator"* dereferenceable(1) %call29)
  %incdec.ptr32 = getelementptr inbounds %struct.region* %call31, i64 1
  %9 = load %struct.region** %call27, align 8, !tbaa !16
  %10 = load %struct.region** %_M_finish, align 8, !tbaa !17
  %call40 = call %struct.region* @_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.region* %9, %struct.region* %10, %struct.region* %incdec.ptr32, %"class.std::allocator"* dereferenceable(1) %call29)
  %11 = load %struct.region** %_M_start, align 8, !tbaa !25
  %12 = load %struct.region** %_M_end_of_storage, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  call void @_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %0, %struct.region* %11, i64 %sub.ptr.div)
  store %struct.region* %call22, %struct.region** %_M_start, align 8, !tbaa !25
  store %struct.region* %call40, %struct.region** %_M_finish, align 8, !tbaa !17
  %add.ptr67 = getelementptr inbounds %struct.region* %call22, i64 %call18
  store %struct.region* %add.ptr67, %struct.region** %_M_end_of_storage, align 8, !tbaa !20
  br label %if.end70

if.end70:                                         ; preds = %invoke.cont39, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator.2"* nocapture readnone dereferenceable(1) %__a, %struct.map* %__p, %struct.map* nocapture readonly dereferenceable(40) %__arg) #2 align 2 {
entry:
  %0 = bitcast %"class.std::allocator.2"* %__a to %"class.__gnu_cxx::new_allocator.3"*
  tail call void @_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator.3"* %0, %struct.map* %__p, %struct.map* dereferenceable(40) %__arg)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector.0"* %this, %struct.map* %__position.coerce, %struct.map* nocapture readonly dereferenceable(40) %__x) #5 align 2 {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__x_copy = alloca %struct.map, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__position, i64 0, i32 0
  store %struct.map* %__position.coerce, %struct.map** %coerce.dive, align 8
  %0 = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0
  %_M_finish = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 1
  %1 = load %struct.map** %_M_finish, align 8, !tbaa !21
  %_M_end_of_storage = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 2
  %2 = load %struct.map** %_M_end_of_storage, align 8, !tbaa !24
  %cmp = icmp eq %struct.map* %1, %2
  br i1 %cmp, label %invoke.cont39, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast %"class.std::vector.0"* %this to %"class.std::allocator.2"*
  %add.ptr = getelementptr inbounds %struct.map* %1, i64 -1
  tail call void @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator.2"* dereferenceable(1) %3, %struct.map* %1, %struct.map* dereferenceable(40) %add.ptr)
  %4 = load %struct.map** %_M_finish, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds %struct.map* %4, i64 1
  store %struct.map* %incdec.ptr, %struct.map** %_M_finish, align 8, !tbaa !21
  %__x_copy.0..sroa_cast = bitcast %struct.map* %__x_copy to i8*
  call void @llvm.lifetime.start(i64 40, i8* %__x_copy.0..sroa_cast)
  %5 = bitcast %struct.map* %__x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__x_copy.0..sroa_cast, i8* %5, i64 40, i32 8, i1 false), !tbaa.struct !26
  %call = call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %6 = load %struct.map** %call, align 8, !tbaa !16
  %add.ptr12 = getelementptr inbounds %struct.map* %4, i64 -1
  %call16 = tail call %struct.map* @_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_(%struct.map* %6, %struct.map* %add.ptr12, %struct.map* %4)
  %call17 = call dereferenceable(40) %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %7 = bitcast %struct.map* %call17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %__x_copy.0..sroa_cast, i64 40, i32 8, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end(i64 40, i8* %__x_copy.0..sroa_cast)
  br label %if.end70

invoke.cont39:                                    ; preds = %entry
  %call18 = tail call i64 @_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.0"* %this, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0))
  %call19 = tail call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE5beginEv(%"class.std::vector.0"* %this)
  %coerce.dive20 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i64 0, i32 0
  store %struct.map* %call19, %struct.map** %coerce.dive20, align 8
  %call21 = call i64 @_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp)
  %call22 = tail call %struct.map* @_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %0, i64 %call18)
  %8 = bitcast %"class.std::vector.0"* %this to %"class.std::allocator.2"*
  %add.ptr24 = getelementptr inbounds %struct.map* %call22, i64 %call21
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator.2"* dereferenceable(1) %8, %struct.map* %add.ptr24, %struct.map* dereferenceable(40) %__x)
  %_M_start = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 0
  %9 = load %struct.map** %_M_start, align 8, !tbaa !27
  %call27 = call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %10 = load %struct.map** %call27, align 8, !tbaa !16
  %call29 = call dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %0)
  %call31 = call %struct.map* @_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.map* %9, %struct.map* %10, %struct.map* %call22, %"class.std::allocator.2"* dereferenceable(1) %call29)
  %incdec.ptr32 = getelementptr inbounds %struct.map* %call31, i64 1
  %11 = load %struct.map** %call27, align 8, !tbaa !16
  %12 = load %struct.map** %_M_finish, align 8, !tbaa !21
  %call40 = call %struct.map* @_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.map* %11, %struct.map* %12, %struct.map* %incdec.ptr32, %"class.std::allocator.2"* dereferenceable(1) %call29)
  %13 = load %struct.map** %_M_start, align 8, !tbaa !27
  %14 = load %struct.map** %_M_end_of_storage, align 8, !tbaa !24
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  call void @_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* %0, %struct.map* %13, i64 %sub.ptr.div)
  store %struct.map* %call22, %struct.map** %_M_start, align 8, !tbaa !27
  store %struct.map* %call40, %struct.map** %_M_finish, align 8, !tbaa !21
  %add.ptr67 = getelementptr inbounds %struct.map* %call22, i64 %call18
  store %struct.map* %add.ptr67, %struct.map** %_M_end_of_storage, align 8, !tbaa !24
  br label %if.end70

if.end70:                                         ; preds = %invoke.cont39, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI6regionSaIS0_EEC2Ev(%"class.std::vector"* nocapture %this) unnamed_addr #2 align 2 {
entry:
  %0 = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI6regionSaIS0_EED2Ev(%"class.std::vector"* nocapture readonly %this) unnamed_addr #2 align 2 {
invoke.cont3:
  %0 = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev(%"struct.std::_Vector_base"* %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI3mapSaIS0_EEC2Ev(%"class.std::vector.0"* nocapture %this) unnamed_addr #2 align 2 {
entry:
  %0 = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev(%"struct.std::_Vector_base.1"* %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI3mapSaIS0_EED2Ev(%"class.std::vector.0"* nocapture readonly %this) unnamed_addr #2 align 2 {
invoke.cont3:
  %0 = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev(%"struct.std::_Vector_base.1"* %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator"* nocapture readnone %this, %struct.region* %__p, %struct.region* nocapture readonly dereferenceable(8) %__val) #2 align 2 {
entry:
  %new.isnull = icmp eq %struct.region* %__p, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %0 = getelementptr inbounds %struct.region* %__val, i64 0, i32 0
  %1 = load i8** %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.region* %__p, i64 0, i32 0
  store i8* %1, i8** %2, align 8, !tbaa !16
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.5"* nocapture %this, %struct.region** nocapture readonly dereferenceable(8) %__i) unnamed_addr #2 align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5"* %this, i64 0, i32 0
  %0 = load %struct.region** %__i, align 8, !tbaa !16
  store %struct.region* %0, %struct.region** %_M_current, align 8, !tbaa !28
  ret void
}

; Function Attrs: noinline nounwind readnone uwtable
define linkonce_odr dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* readnone %this) #10 align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5"* %this, i64 0, i32 0
  ret %struct.region** %_M_current
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 {
entry:
  %call = tail call %struct.region* @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.region* %__first)
  %call1 = tail call %struct.region* @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.region* %__last)
  %call2 = tail call %struct.region* @_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %call, %struct.region* %call1, %struct.region* %__result)
  ret %struct.region* %call2
}

; Function Attrs: noinline nounwind readonly uwtable
define linkonce_odr dereferenceable(8) %struct.region* @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.5"* nocapture readonly %this) #9 align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5"* %this, i64 0, i32 0
  %0 = load %struct.region** %_M_current, align 8, !tbaa !28
  ret %struct.region* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* nocapture readonly %this, i64 %__n, i8* %__s) #5 align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !7
  %call2 = tail call i64 @_ZNKSt6vectorI6regionSaIS0_EE4sizeEv(%"class.std::vector"* %this)
  %sub = sub i64 2305843009213693951, %call2
  %cmp = icmp ult i64 %sub, %__n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZSt20__throw_length_errorPKc(i8* %__s) #14
  unreachable

if.end:                                           ; preds = %entry
  store i64 %call2, i64* %ref.tmp, align 8, !tbaa !7
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %0 = load i64* %call5, align 8, !tbaa !7
  %add = add i64 %0, %call2
  %call6 = tail call i64 @_ZNKSt6vectorI6regionSaIS0_EE4sizeEv(%"class.std::vector"* %this)
  %cmp7 = icmp ult i64 %add, %call6
  %cmp9 = icmp ugt i64 %add, 2305843009213693951
  %or.cond = or i1 %cmp7, %cmp9
  %cond = select i1 %or.cond, i64 2305843009213693951, i64 %add
  ret i64 %cond
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZNSt6vectorI6regionSaIS0_EE5beginEv(%"class.std::vector"* nocapture readonly %this) #2 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %_M_start = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.5"* %retval, %struct.region** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.5"* %retval, i64 0, i32 0
  %0 = load %struct.region** %coerce.dive, align 8
  ret %struct.region* %0
}

; Function Attrs: noinline nounwind readonly uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.5"* readonly dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.5"* readonly dereferenceable(8) %__rhs) #9 {
entry:
  %call = tail call dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* %__lhs)
  %0 = load %struct.region** %call, align 8, !tbaa !16
  %call1 = tail call dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* %__rhs)
  %1 = load %struct.region** %call1, align 8, !tbaa !16
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr noalias %struct.region* @_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* nocapture readnone %this, i64 %__n) #5 align 2 {
entry:
  %cmp = icmp eq i64 %__n, 0
  br i1 %cmp, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = bitcast %"struct.std::_Vector_base"* %this to %"class.__gnu_cxx::new_allocator"*
  %call = tail call %struct.region* @_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %0, i64 %__n, i8* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi %struct.region* [ %call, %cond.true ], [ null, %entry ]
  ret %struct.region* %cond
}

; Function Attrs: noinline nounwind readnone uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* readnone %this) #10 align 2 {
entry:
  %0 = bitcast %"struct.std::_Vector_base"* %this to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result, %"class.std::allocator"* nocapture readnone dereferenceable(1) %__alloc) #2 {
entry:
  %call = tail call %struct.region* @_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc)
  ret %struct.region* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* nocapture readnone %this, %struct.region* %__p, i64 %__n) #2 align 2 {
entry:
  %tobool = icmp eq %struct.region* %__p, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %"struct.std::_Vector_base"* %this to %"class.__gnu_cxx::new_allocator"*
  tail call void @_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %0, %struct.region* %__p, i64 %__n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator.3"* nocapture readnone %this, %struct.map* %__p, %struct.map* nocapture readonly dereferenceable(40) %__val) #2 align 2 {
entry:
  %new.isnull = icmp eq %struct.map* %__p, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %0 = bitcast %struct.map* %__p to i8*
  %1 = bitcast %struct.map* %__val to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 40, i32 8, i1 false), !tbaa.struct !26
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 {
entry:
  %call = tail call %struct.map* @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.map* %__first)
  %call1 = tail call %struct.map* @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.map* %__last)
  %call2 = tail call %struct.map* @_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %call, %struct.map* %call1, %struct.map* %__result)
  ret %struct.map* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.0"* nocapture readonly %this, i64 %__n, i8* %__s) #5 align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !7
  %call2 = tail call i64 @_ZNKSt6vectorI3mapSaIS0_EE4sizeEv(%"class.std::vector.0"* %this)
  %sub = sub i64 461168601842738790, %call2
  %cmp = icmp ult i64 %sub, %__n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZSt20__throw_length_errorPKc(i8* %__s) #14
  unreachable

if.end:                                           ; preds = %entry
  store i64 %call2, i64* %ref.tmp, align 8, !tbaa !7
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %0 = load i64* %call5, align 8, !tbaa !7
  %add = add i64 %0, %call2
  %call6 = tail call i64 @_ZNKSt6vectorI3mapSaIS0_EE4sizeEv(%"class.std::vector.0"* %this)
  %cmp7 = icmp ult i64 %add, %call6
  %cmp9 = icmp ugt i64 %add, 461168601842738790
  %or.cond = or i1 %cmp7, %cmp9
  %cond = select i1 %or.cond, i64 461168601842738790, i64 %add
  ret i64 %cond
}

; Function Attrs: noinline nounwind readonly uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* readonly dereferenceable(8) %__rhs) #9 {
entry:
  %call = tail call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__lhs)
  %0 = load %struct.map** %call, align 8, !tbaa !16
  %call1 = tail call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__rhs)
  %1 = load %struct.map** %call1, align 8, !tbaa !16
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr noalias %struct.map* @_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* nocapture readnone %this, i64 %__n) #5 align 2 {
entry:
  %cmp = icmp eq i64 %__n, 0
  br i1 %cmp, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = bitcast %"struct.std::_Vector_base.1"* %this to %"class.__gnu_cxx::new_allocator.3"*
  %call = tail call %struct.map* @_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %0, i64 %__n, i8* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi %struct.map* [ %call, %cond.true ], [ null, %entry ]
  ret %struct.map* %cond
}

; Function Attrs: noinline nounwind readnone uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* readnone %this) #10 align 2 {
entry:
  %0 = bitcast %"struct.std::_Vector_base.1"* %this to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result, %"class.std::allocator.2"* nocapture readnone dereferenceable(1) %__alloc) #2 {
entry:
  %call = tail call %struct.map* @_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result, %"class.std::allocator.2"* dereferenceable(1) %__alloc)
  ret %struct.map* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* nocapture readnone %this, %struct.map* %__p, i64 %__n) #2 align 2 {
entry:
  %tobool = icmp eq %struct.map* %__p, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %"struct.std::_Vector_base.1"* %this to %"class.__gnu_cxx::new_allocator.3"*
  tail call void @_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.3"* %0, %struct.map* %__p, i64 %__n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev(%"struct.std::_Vector_base"* nocapture %this) unnamed_addr #2 align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev(%"struct.std::_Vector_base"* nocapture readonly %this) unnamed_addr #2 align 2 {
invoke.cont:
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base"* %this, i64 0, i32 0, i32 0
  %0 = load %struct.region** %_M_start, align 8, !tbaa !25
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base"* %this, i64 0, i32 0, i32 2
  %1 = load %struct.region** %_M_end_of_storage, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  tail call void @_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %this, %struct.region* %0, i64 %sub.ptr.div)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev(%"struct.std::_Vector_base.1"* nocapture %this) unnamed_addr #2 align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %this, i64 0, i32 0
  tail call void @_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev(%"struct.std::_Vector_base.1"* nocapture readonly %this) unnamed_addr #2 align 2 {
invoke.cont:
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base.1"* %this, i64 0, i32 0, i32 0
  %0 = load %struct.map** %_M_start, align 8, !tbaa !27
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base.1"* %this, i64 0, i32 0, i32 2
  %1 = load %struct.map** %_M_end_of_storage, align 8, !tbaa !24
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  tail call void @_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* %this, %struct.map* %0, i64 %sub.ptr.div)
  ret void
}

; Function Attrs: noinline nounwind readnone uwtable
define linkonce_odr %struct.region* @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.region* readnone %__it) #10 {
entry:
  %call = tail call %struct.region* @_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_(%struct.region* %__it)
  ret %struct.region* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 {
entry:
  %call = tail call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %__first)
  %call1 = tail call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %__last)
  %call2 = tail call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %__result)
  %call3 = tail call %struct.region* @_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %call, %struct.region* %call1, %struct.region* %call2)
  ret %struct.region* %call3
}

; Function Attrs: noinline nounwind readonly uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6regionSaIS0_EE4sizeEv(%"class.std::vector"* nocapture readonly %this) #9 align 2 {
entry:
  %_M_finish = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %0 = load %struct.region** %_M_finish, align 8, !tbaa !17
  %_M_start = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load %struct.region** %_M_start, align 8, !tbaa !25
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind readonly uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* readonly dereferenceable(8) %__a, i64* readonly dereferenceable(8) %__b) #9 {
entry:
  %0 = load i64* %__a, align 8, !tbaa !7
  %1 = load i64* %__b, align 8, !tbaa !7
  %cmp = icmp ult i64 %0, %1
  %__b.__a = select i1 %cmp, i64* %__b, i64* %__a
  ret i64* %__b.__a
}

; Function Attrs: noinline uwtable
define linkonce_odr noalias %struct.region* @_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nocapture readnone %this, i64 %__n, i8* nocapture readnone) #5 align 2 {
entry:
  %cmp = icmp ugt i64 %__n, 2305843009213693951
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %mul = shl i64 %__n, 3
  %call2 = tail call noalias i8* @_Znwm(i64 %mul)
  %1 = bitcast i8* %call2 to %struct.region*
  ret %struct.region* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result, %"class.std::allocator"* nocapture readnone dereferenceable(1)) #2 {
entry:
  %call = tail call %struct.region* @_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result)
  ret %struct.region* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* nocapture readnone %this, %struct.region* %__p, i64) #2 align 2 {
entry:
  %1 = bitcast %struct.region* %__p to i8*
  tail call void @_ZdlPv(i8* %1) #1
  ret void
}

; Function Attrs: noinline nounwind readnone uwtable
define linkonce_odr %struct.map* @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.map* readnone %__it) #10 {
entry:
  %call = tail call %struct.map* @_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_(%struct.map* %__it)
  ret %struct.map* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 {
entry:
  %call = tail call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %__first)
  %call1 = tail call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %__last)
  %call2 = tail call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %__result)
  %call3 = tail call %struct.map* @_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %call, %struct.map* %call1, %struct.map* %call2)
  ret %struct.map* %call3
}

; Function Attrs: noinline nounwind readonly uwtable
define linkonce_odr i64 @_ZNKSt6vectorI3mapSaIS0_EE4sizeEv(%"class.std::vector.0"* nocapture readonly %this) #9 align 2 {
entry:
  %_M_finish = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 1
  %0 = load %struct.map** %_M_finish, align 8, !tbaa !21
  %_M_start = getelementptr inbounds %"class.std::vector.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load %struct.map** %_M_start, align 8, !tbaa !27
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr noalias %struct.map* @_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* nocapture readnone %this, i64 %__n, i8* nocapture readnone) #5 align 2 {
entry:
  %cmp = icmp ugt i64 %__n, 461168601842738790
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %mul = mul i64 %__n, 40
  %call2 = tail call noalias i8* @_Znwm(i64 %mul)
  %1 = bitcast i8* %call2 to %struct.map*
  ret %struct.map* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result, %"class.std::allocator.2"* nocapture readnone dereferenceable(1)) #2 {
entry:
  %call = tail call %struct.map* @_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result)
  ret %struct.map* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.3"* nocapture readnone %this, %struct.map* %__p, i64) #2 align 2 {
entry:
  %1 = bitcast %struct.map* %__p to i8*
  tail call void @_ZdlPv(i8* %1) #1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* nocapture %this) unnamed_addr #2 align 2 {
entry:
  %0 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %this to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* nocapture %this) unnamed_addr #2 align 2 {
entry:
  %0 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %this to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind readnone uwtable
define linkonce_odr %struct.region* @_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_(%struct.region* readnone %__it) #10 align 2 {
entry:
  ret %struct.region* %__it
}

; Function Attrs: noinline nounwind readnone uwtable
define linkonce_odr %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* readnone %__it) #10 {
entry:
  %call = tail call %struct.region* @_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_(%struct.region* %__it)
  ret %struct.region* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 {
entry:
  %call = tail call %struct.region* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result)
  ret %struct.region* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 {
entry:
  %call = tail call %struct.region* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result)
  ret %struct.region* %call
}

; Function Attrs: noinline nounwind readnone uwtable
define linkonce_odr %struct.map* @_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_(%struct.map* readnone %__it) #10 align 2 {
entry:
  ret %struct.map* %__it
}

; Function Attrs: noinline nounwind readnone uwtable
define linkonce_odr %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* readnone %__it) #10 {
entry:
  %call = tail call %struct.map* @_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_(%struct.map* %__it)
  ret %struct.map* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 {
entry:
  %call = tail call %struct.map* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result)
  ret %struct.map* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 {
entry:
  %call = tail call %struct.map* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result)
  ret %struct.map* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %__last to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %tobool = icmp eq i64 %sub.ptr.div, 0
  %idx.neg1.pre = sub nsw i64 0, %sub.ptr.div
  %add.ptr2.pre = getelementptr inbounds %struct.region* %__result, i64 %idx.neg1.pre
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.region* %add.ptr2.pre to i8*
  %1 = bitcast %struct.region* %__first to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %sub.ptr.sub, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.region* %add.ptr2.pre
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 align 2 {
entry:
  %call = tail call %struct.region* @_ZSt4copyIP6regionS1_ET0_T_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result)
  ret %struct.region* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %__last to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %0 = icmp eq %struct.map* %__last, %__first
  %idx.neg1.pre = sdiv i64 %sub.ptr.sub, -40
  %add.ptr2.pre = getelementptr inbounds %struct.map* %__result, i64 %idx.neg1.pre
  br i1 %0, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.map* %add.ptr2.pre to i8*
  %2 = bitcast %struct.map* %__first to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %1, i8* %2, i64 %sub.ptr.sub, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.map* %add.ptr2.pre
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 align 2 {
entry:
  %call = tail call %struct.map* @_ZSt4copyIP3mapS1_ET0_T_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result)
  ret %struct.map* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZSt4copyIP6regionS1_ET0_T_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 {
entry:
  %call = tail call %struct.region* @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.region* %__first)
  %call1 = tail call %struct.region* @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.region* %__last)
  %call2 = tail call %struct.region* @_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %call, %struct.region* %call1, %struct.region* %__result)
  ret %struct.region* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZSt4copyIP3mapS1_ET0_T_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 {
entry:
  %call = tail call %struct.map* @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.map* %__first)
  %call1 = tail call %struct.map* @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.map* %__last)
  %call2 = tail call %struct.map* @_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %call, %struct.map* %call1, %struct.map* %__result)
  ret %struct.map* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 {
entry:
  %call = tail call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %__first)
  %call1 = tail call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %__last)
  %call2 = tail call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %__result)
  %call3 = tail call %struct.region* @_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %call, %struct.region* %call1, %struct.region* %call2)
  ret %struct.region* %call3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 {
entry:
  %call = tail call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %__first)
  %call1 = tail call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %__last)
  %call2 = tail call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %__result)
  %call3 = tail call %struct.map* @_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %call, %struct.map* %call1, %struct.map* %call2)
  ret %struct.map* %call3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 {
entry:
  %call = tail call %struct.region* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result)
  ret %struct.region* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 {
entry:
  %call = tail call %struct.map* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result)
  ret %struct.map* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.region* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %__last to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %tobool = icmp eq i64 %sub.ptr.div, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.region* %__result to i8*
  %1 = bitcast %struct.region* %__first to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %sub.ptr.sub, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr inbounds %struct.region* %__result, i64 %sub.ptr.div
  ret %struct.region* %add.ptr
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct.map* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %__last to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %0 = icmp eq %struct.map* %__last, %__first
  br i1 %0, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.map* %__result to i8*
  %2 = bitcast %struct.map* %__first to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %1, i8* %2, i64 %sub.ptr.sub, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr inbounds %struct.map* %__result, i64 %sub.ptr.div
  ret %struct.map* %add.ptr
}

; Function Attrs: noinline nounwind readnone uwtable
define i32 @_Z2f1i(i32 %i) #10 {
entry:
  %c_call_abs = alloca i32 (i8*, i32 (i32, i32)*, i32, i32)*, align 8
  store i32 (i8*, i32 (i32, i32)*, i32, i32)* @_Z6c_call, i32 (i8*, i32 (i32, i32)*, i32, i32)** %c_call_abs, align 8
  %0 = load i32 (i8*, i32 (i32, i32)*, i32, i32)** %c_call_abs, align 8
  %call = call i32 %0(i8* bitcast (i32 (i32)* @_Z2f1i to i8*), i32 (i32, i32)* @_Z2f2ii, i32 33, i32 67)
  %mul = mul nsw i32 %i, 10
  %add = add nsw i32 %call, %mul
  ret i32 %add
}

; Function Attrs: noinline nounwind readnone uwtable
define i32 @_Z2f2ii(i32 %a, i32 %b) #10 {
entry:
  %c_call_abs = alloca double (i8*, double (double, double, double)*, double, double, double)*, align 8
  store double (i8*, double (double, double, double)*, double, double, double)* @_Z6c_call1, double (i8*, double (double, double, double)*, double, double, double)** %c_call_abs, align 8
  %0 = load double (i8*, double (double, double, double)*, double, double, double)** %c_call_abs, align 8
  %call = call double %0(i8* bitcast (i32 (i32, i32)* @_Z2f2ii to i8*), double (double, double, double)* @_Z2f3ddd, double 1.000000e+00, double 5.000000e+00, double 1.000000e+00)
  %mul = mul nsw i32 %b, %a
  %conv = sitofp i32 %mul to double
  %add = fadd double %conv, %call
  %conv1 = fptosi double %add to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind readnone uwtable
define double @_Z2f3ddd(double %a, double %b, double %c) #10 {
entry:
  %mul = fmul double %a, %c
  %add = fadd double %mul, %b
  ret double %add
}

; Function Attrs: noinline nounwind uwtable
define void @_Z2f4v() #2 {
entry:
  %c_call_abs = alloca i32 (i8*, i32 (i32, i32)*, i32, i32)*, align 8
  store i32 (i8*, i32 (i32, i32)*, i32, i32)* @_Z6c_call, i32 (i8*, i32 (i32, i32)*, i32, i32)** %c_call_abs, align 8
  %0 = load i32 (i8*, i32 (i32, i32)*, i32, i32)** %c_call_abs, align 8
  %call = call i32 %0(i8* bitcast (void ()* @_Z2f4v to i8*), i32 (i32, i32)* @_Z2f5ii, i32 3, i32 4)
  %printf_ptr = alloca i32 (i8*, ...)*, align 8
  store i32 (i8*, ...)* @printf, i32 (i8*, ...)** %printf_ptr, align 8
  %1 = load i32 (i8*, ...)** %printf_ptr, align 8
  %call1 = call i32 (i8*, ...)* %1(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 %call)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: noinline nounwind readnone uwtable
define i32 @_Z2f5ii(i32 %c, i32 %d) #10 {
entry:
  %mul = mul nsw i32 %c, %c
  %mul1 = mul nsw i32 %d, %d
  %add = add nuw nsw i32 %mul1, %mul
  ret i32 %add
}

; Function Attrs: noinline nounwind uwtable
define i32 @_Z6c_mainiPPc(i32 %arg, i8** nocapture readnone %argv) #2 {
entry:
  %c_call_abs = alloca i32 (i8*, i32 (i32)*, i32)*, align 8
  store i32 (i8*, i32 (i32)*, i32)* @_Z6c_call2, i32 (i8*, i32 (i32)*, i32)** %c_call_abs, align 8
  %0 = load i32 (i8*, i32 (i32)*, i32)** %c_call_abs, align 8
  %call1 = call i32 %0(i8* bitcast (i32 (i32, i8**)* @_Z6c_mainiPPc to i8*), i32 (i32)* @_Z2f1i, i32 18)
  %printf_ptr = alloca i32 (i8*, ...)*, align 8
  store i32 (i8*, ...)* @printf, i32 (i8*, ...)** %printf_ptr, align 8
  %1 = load i32 (i8*, ...)** %printf_ptr, align 8
  %call2 = call i32 (i8*, ...)* %1(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 %call1)
  ret i32 0
}

; Function Attrs: noinline uwtable
define i32 @main(i32 %arg, i8** nocapture readnone %argv) #5 {
entry:
  %call = tail call i32 (i32, ...)* @_Z10c_init_regiz(i32 1, i64 0)
  %call1 = tail call dereferenceable(8) %struct.region* @_ZNSt6vectorI6regionSaIS0_EEixEm(%"class.std::vector"* @_region_table, i64 0)
  %call2 = tail call i32 (i32, ...)* @_Z10c_init_mapiz(i32 4, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i8* bitcast (i32 (i32)* @_Z2f1i to i8*), i8* getelementptr inbounds ([4096 x i8]* @spm_code, i64 0, i64 0), i32 80, %struct.region* %call1, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* bitcast (i32 (i32, i32)* @_Z2f2ii to i8*), i8* getelementptr inbounds ([4096 x i8]* @spm_code, i64 0, i64 0), i32 128, %struct.region* %call1, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i8* bitcast (double (double, double, double)* @_Z2f3ddd to i8*), i8* getelementptr inbounds ([4096 x i8]* @spm_code, i64 0, i64 0), i32 48, %struct.region* %call1, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* bitcast (i32 (i32, i8**)* @_Z6c_mainiPPc to i8*), i8* getelementptr inbounds ([4096 x i8]* @spm_code, i64 0, i64 0), i32 112, %struct.region* %call1)
  %call3 = tail call i32 @_Z6c_mainiPPc(i32 undef, i8** undef)
  ret i32 0
}

; Function Attrs: noinline nounwind readonly uwtable
define linkonce_odr dereferenceable(8) %struct.region* @_ZNSt6vectorI6regionSaIS0_EEixEm(%"class.std::vector"* nocapture readonly %this, i64 %__n) #9 align 2 {
entry:
  %_M_start = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %0 = load %struct.region** %_M_start, align 8, !tbaa !25
  %add.ptr = getelementptr inbounds %struct.region* %0, i64 %__n
  ret %struct.region* %add.ptr
}

; Function Attrs: uwtable
define linkonce_odr i32 @_Z6c_call(i8* %caller, i32 (i32, i32)* %callee, i32 %arg0, i32 %arg1) #11 {
entry:
  %caller.addr = alloca i8*, align 8
  %callee.addr = alloca i32 (i32, i32)*, align 8
  %callee_arg0.addr = alloca i32
  %callee_arg1.addr = alloca i32
  %callee_spm = alloca i32 (i32, i32)*, align 8
  %ret_val = alloca i32, align 4
  store i8* %caller, i8** %caller.addr, align 8
  store i32 (i32, i32)* %callee, i32 (i32, i32)** %callee.addr, align 8
  store i32 %arg0, i32* %callee_arg0.addr, align 4
  store i32 %arg1, i32* %callee_arg1.addr, align 4
  %0 = load i32 (i32, i32)** %callee.addr, align 8
  %1 = bitcast i32 (i32, i32)* %0 to i8*
  %call = call i8* @_Z5c_getPc(i8* %1)
  %2 = bitcast i8* %call to i32 (i32, i32)*
  store i32 (i32, i32)* %2, i32 (i32, i32)** %callee_spm, align 8
  %3 = load i32 (i32, i32)** %callee_spm, align 8
  %4 = load i32* %callee_arg0.addr
  %5 = load i32* %callee_arg1.addr
  %6 = call i32 %3(i32 %4, i32 %5)
  store i32 %6, i32* %ret_val, align 4
  %7 = load i8** %caller.addr, align 8
  %8 = bitcast i8* %7 to i8*
  %call2 = call i8* @_Z5c_getPc(i8* %8)
  %9 = load i32* %ret_val, align 4
  ret i32 %9
}

; Function Attrs: uwtable
define linkonce_odr double @_Z6c_call1(i8* %caller, double (double, double, double)* %callee, double %arg2, double %arg3, double %arg4) #11 {
entry:
  %caller.addr = alloca i8*, align 8
  %callee.addr = alloca double (double, double, double)*, align 8
  %callee_arg0.addr = alloca double
  %callee_arg1.addr = alloca double
  %callee_arg2.addr = alloca double
  %callee_spm = alloca double (double, double, double)*, align 8
  %ret_val = alloca double, align 4
  store i8* %caller, i8** %caller.addr, align 8
  store double (double, double, double)* %callee, double (double, double, double)** %callee.addr, align 8
  store double %arg2, double* %callee_arg0.addr, align 4
  store double %arg3, double* %callee_arg1.addr, align 4
  store double %arg4, double* %callee_arg2.addr, align 4
  %0 = load double (double, double, double)** %callee.addr, align 8
  %1 = bitcast double (double, double, double)* %0 to i8*
  %call = call i8* @_Z5c_getPc(i8* %1)
  %2 = bitcast i8* %call to double (double, double, double)*
  store double (double, double, double)* %2, double (double, double, double)** %callee_spm, align 8
  %3 = load double (double, double, double)** %callee_spm, align 8
  %4 = load double* %callee_arg0.addr
  %5 = load double* %callee_arg1.addr
  %6 = load double* %callee_arg2.addr
  %7 = call double %3(double %4, double %5, double %6)
  store double %7, double* %ret_val, align 4
  %8 = load i8** %caller.addr, align 8
  %9 = bitcast i8* %8 to i8*
  %call2 = call i8* @_Z5c_getPc(i8* %9)
  %10 = load double* %ret_val, align 4
  ret double %10
}

; Function Attrs: uwtable
define linkonce_odr i32 @_Z6c_call2(i8* %caller, i32 (i32)* %callee, i32 %arg5) #11 {
entry:
  %caller.addr = alloca i8*, align 8
  %callee.addr = alloca i32 (i32)*, align 8
  %callee_arg0.addr = alloca i32
  %callee_spm = alloca i32 (i32)*, align 8
  %ret_val = alloca i32, align 4
  store i8* %caller, i8** %caller.addr, align 8
  store i32 (i32)* %callee, i32 (i32)** %callee.addr, align 8
  store i32 %arg5, i32* %callee_arg0.addr, align 4
  %0 = load i32 (i32)** %callee.addr, align 8
  %1 = bitcast i32 (i32)* %0 to i8*
  %call = call i8* @_Z5c_getPc(i8* %1)
  %2 = bitcast i8* %call to i32 (i32)*
  store i32 (i32)* %2, i32 (i32)** %callee_spm, align 8
  %3 = load i32 (i32)** %callee_spm, align 8
  %4 = load i32* %callee_arg0.addr
  %5 = call i32 %3(i32 %4)
  store i32 %5, i32* %ret_val, align 4
  %6 = load i8** %caller.addr, align 8
  %7 = bitcast i8* %6 to i8*
  %call2 = call i8* @_Z5c_getPc(i8* %7)
  %8 = load i32* %ret_val, align 4
  ret i32 %8
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noinline nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { uwtable }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.ident = !{!0, !0}

!0 = metadata !{metadata !"clang version 3.6.0 (trunk 220547)"}
!1 = metadata !{metadata !2, metadata !3, i64 8}
!2 = metadata !{metadata !"_ZTS3map", metadata !3, i64 0, metadata !3, i64 8, metadata !3, i64 16, metadata !6, i64 24, metadata !3, i64 32}
!3 = metadata !{metadata !"any pointer", metadata !4, i64 0}
!4 = metadata !{metadata !"omnipotent char", metadata !5, i64 0}
!5 = metadata !{metadata !"Simple C/C++ TBAA"}
!6 = metadata !{metadata !"long", metadata !4, i64 0}
!7 = metadata !{metadata !6, metadata !6, i64 0}
!8 = metadata !{metadata !9, metadata !3, i64 0}
!9 = metadata !{metadata !"_ZTS6region", metadata !3, i64 0}
!10 = metadata !{metadata !2, metadata !3, i64 0}
!11 = metadata !{metadata !2, metadata !3, i64 16}
!12 = metadata !{metadata !2, metadata !6, i64 24}
!13 = metadata !{metadata !2, metadata !3, i64 32}
!14 = metadata !{metadata !15, metadata !3, i64 0}
!15 = metadata !{metadata !"_ZTSN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEE", metadata !3, i64 0}
!16 = metadata !{metadata !3, metadata !3, i64 0}
!17 = metadata !{metadata !18, metadata !3, i64 8}
!18 = metadata !{metadata !"_ZTSSt12_Vector_baseI6regionSaIS0_EE", metadata !19, i64 0}
!19 = metadata !{metadata !"_ZTSNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implE", metadata !3, i64 0, metadata !3, i64 8, metadata !3, i64 16}
!20 = metadata !{metadata !18, metadata !3, i64 16}
!21 = metadata !{metadata !22, metadata !3, i64 8}
!22 = metadata !{metadata !"_ZTSSt12_Vector_baseI3mapSaIS0_EE", metadata !23, i64 0}
!23 = metadata !{metadata !"_ZTSNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implE", metadata !3, i64 0, metadata !3, i64 8, metadata !3, i64 16}
!24 = metadata !{metadata !22, metadata !3, i64 16}
!25 = metadata !{metadata !18, metadata !3, i64 0}
!26 = metadata !{i64 0, i64 8, metadata !16, i64 8, i64 8, metadata !16, i64 16, i64 8, metadata !16, i64 24, i64 8, metadata !7, i64 32, i64 8, metadata !16}
!27 = metadata !{metadata !22, metadata !3, i64 0}
!28 = metadata !{metadata !29, metadata !3, i64 0}
!29 = metadata !{metadata !"_ZTSN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEE", metadata !3, i64 0}
