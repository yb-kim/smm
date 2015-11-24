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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%"class.__gnu_cxx::__normal_iterator" = type { %struct.map* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%"class.__gnu_cxx::__normal_iterator.5" = type { %struct.region* }
%"class.std::allocator" = type { i8 }
%"class.std::allocator.2" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator.3" = type { i8 }
%struct.myStringStruct = type { [128 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_region_table = global %"class.std::vector" zeroinitializer, align 8
@_mapping_table = global %"class.std::vector.0" zeroinitializer, align 8
@.str = private unnamed_addr constant [44 x i8] c"c_get: function not found in mapping table!\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"vector::_M_insert_aux\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_code.cpp, i8* null }]
@spm_code = global [4096 x i8] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [27 x i8] c"Usage: qsort_small <file>\0A\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str33 = private unnamed_addr constant [24 x i8] c"\0ASorting %d elements.\0A\0A\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"c_main\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"main\00", align 1

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: uwtable
define i8* @_Z5c_getPc(i8* %memAddr) #2 {
entry:
  %retval = alloca i8*, align 8
  %memAddr.addr = alloca i8*, align 8
  %ii = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ie = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp14 = alloca i64, align 8
  %ref.tmp17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %m = alloca %struct.map, align 8
  store i8* %memAddr, i8** %memAddr.addr, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev(%"class.__gnu_cxx::__normal_iterator"* %ii)
  call void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev(%"class.__gnu_cxx::__normal_iterator"* %ie)
  %call = call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE5beginEv(%"class.std::vector.0"* @_mapping_table)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store %struct.map* %call, %struct.map** %coerce.dive
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ii to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call2 = call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE3endEv(%"class.std::vector.0"* @_mapping_table)
  %coerce.dive3 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp1, i32 0, i32 0
  store %struct.map* %call2, %struct.map** %coerce.dive3
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ie to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call4 = call zeroext i1 @_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ii, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ie)
  br i1 %call4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call dereferenceable(40) %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %ii)
  %mem_addr = getelementptr inbounds %struct.map* %call5, i32 0, i32 1
  %4 = load i8** %mem_addr, align 8
  %5 = load i8** %memAddr.addr, align 8
  %cmp = icmp eq i8* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call6 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %ii)
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %call8 = call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE3endEv(%"class.std::vector.0"* @_mapping_table)
  %coerce.dive9 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp7, i32 0, i32 0
  store %struct.map* %call8, %struct.map** %coerce.dive9
  %call10 = call zeroext i1 @_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ii, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp7)
  br i1 %call10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  call void @perror(i8* getelementptr inbounds ([44 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #13
  unreachable

if.end12:                                         ; preds = %for.end
  store i64 1, i64* %ref.tmp14
  %call15 = call %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl(%"class.__gnu_cxx::__normal_iterator"* %ii, i64* dereferenceable(8) %ref.tmp14)
  %coerce.dive16 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp13, i32 0, i32 0
  store %struct.map* %call15, %struct.map** %coerce.dive16
  %call18 = call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE3endEv(%"class.std::vector.0"* @_mapping_table)
  %coerce.dive19 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp17, i32 0, i32 0
  store %struct.map* %call18, %struct.map** %coerce.dive19
  %call20 = call zeroext i1 @_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp13, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp17)
  br i1 %call20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end12
  store i8* null, i8** %retval
  br label %return

if.end22:                                         ; preds = %if.end12
  %call23 = call dereferenceable(40) %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %ii)
  %6 = bitcast %struct.map* %m to i8*
  %7 = bitcast %struct.map* %call23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 40, i32 8, i1 false)
  %reg = getelementptr inbounds %struct.map* %m, i32 0, i32 4
  %8 = load %struct.region** %reg, align 8
  %mem_addr24 = getelementptr inbounds %struct.region* %8, i32 0, i32 0
  %9 = load i8** %mem_addr24, align 8
  %10 = load i8** %memAddr.addr, align 8
  %cmp25 = icmp ne i8* %9, %10
  br i1 %cmp25, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end22
  %spm_addr = getelementptr inbounds %struct.map* %m, i32 0, i32 2
  %11 = load i8** %spm_addr, align 8
  %mem_addr27 = getelementptr inbounds %struct.map* %m, i32 0, i32 1
  %12 = load i8** %mem_addr27, align 8
  %func_size = getelementptr inbounds %struct.map* %m, i32 0, i32 3
  %13 = load i64* %func_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 %13, i32 1, i1 false)
  %14 = load i8** %memAddr.addr, align 8
  %reg28 = getelementptr inbounds %struct.map* %m, i32 0, i32 4
  %15 = load %struct.region** %reg28, align 8
  %mem_addr29 = getelementptr inbounds %struct.region* %15, i32 0, i32 0
  store i8* %14, i8** %mem_addr29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end22
  %spm_addr31 = getelementptr inbounds %struct.map* %m, i32 0, i32 2
  %16 = load i8** %spm_addr31, align 8
  store i8* %16, i8** %retval
  br label %return

return:                                           ; preds = %if.end30, %if.then21
  %17 = load i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @perror(i8*) #0

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: uwtable
define i32 @_Z10c_init_regiz(i32 %num, ...) #2 {
entry:
  %num.addr = alloca i32, align 4
  %vl = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %r = alloca %struct.region, align 8
  store i32 %num, i32* %num.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %2 = getelementptr inbounds %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8** %2
  %3 = getelementptr i8* %reg_save_area, i32 %gp_offset
  %4 = bitcast i8* %3 to i8**
  %5 = add i32 %gp_offset, 8
  store i32 %5, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8** %overflow_arg_area_p
  %6 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ]
  %7 = load i8** %vaarg.addr
  %mem_addr = getelementptr inbounds %struct.region* %r, i32 0, i32 0
  store i8* %7, i8** %mem_addr, align 8
  call void @_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_(%"class.std::vector"* @_region_table, %struct.region* dereferenceable(8) %r)
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %8 = load i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: uwtable
define i32 @_Z10c_init_mapiz(i32 %num, ...) #2 {
entry:
  %num.addr = alloca i32, align 4
  %vl = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %m = alloca %struct.map, align 8
  store i32 %num, i32* %num.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %2 = getelementptr inbounds %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8** %2
  %3 = getelementptr i8* %reg_save_area, i32 %gp_offset
  %4 = bitcast i8* %3 to i8**
  %5 = add i32 %gp_offset, 8
  store i32 %5, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8** %overflow_arg_area_p
  %6 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ]
  %7 = load i8** %vaarg.addr
  %func_name = getelementptr inbounds %struct.map* %m, i32 0, i32 0
  store i8* %7, i8** %func_name, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i32 0, i32 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32* %gp_offset_p4
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg7, label %vaarg.in_mem9

vaarg.in_reg7:                                    ; preds = %vaarg.end
  %8 = getelementptr inbounds %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8** %8
  %9 = getelementptr i8* %reg_save_area8, i32 %gp_offset5
  %10 = bitcast i8* %9 to i8**
  %11 = add i32 %gp_offset5, 8
  store i32 %11, i32* %gp_offset_p4
  br label %vaarg.end13

vaarg.in_mem9:                                    ; preds = %vaarg.end
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8** %overflow_arg_area_p10
  %12 = bitcast i8* %overflow_arg_area11 to i8**
  %overflow_arg_area.next12 = getelementptr i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10
  br label %vaarg.end13

vaarg.end13:                                      ; preds = %vaarg.in_mem9, %vaarg.in_reg7
  %vaarg.addr14 = phi i8** [ %10, %vaarg.in_reg7 ], [ %12, %vaarg.in_mem9 ]
  %13 = load i8** %vaarg.addr14
  %mem_addr = getelementptr inbounds %struct.map* %m, i32 0, i32 1
  store i8* %13, i8** %mem_addr, align 8
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i32 0, i32 0
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32* %gp_offset_p16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg19, label %vaarg.in_mem21

vaarg.in_reg19:                                   ; preds = %vaarg.end13
  %14 = getelementptr inbounds %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load i8** %14
  %15 = getelementptr i8* %reg_save_area20, i32 %gp_offset17
  %16 = bitcast i8* %15 to i8**
  %17 = add i32 %gp_offset17, 8
  store i32 %17, i32* %gp_offset_p16
  br label %vaarg.end25

vaarg.in_mem21:                                   ; preds = %vaarg.end13
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load i8** %overflow_arg_area_p22
  %18 = bitcast i8* %overflow_arg_area23 to i8**
  %overflow_arg_area.next24 = getelementptr i8* %overflow_arg_area23, i32 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p22
  br label %vaarg.end25

vaarg.end25:                                      ; preds = %vaarg.in_mem21, %vaarg.in_reg19
  %vaarg.addr26 = phi i8** [ %16, %vaarg.in_reg19 ], [ %18, %vaarg.in_mem21 ]
  %19 = load i8** %vaarg.addr26
  %spm_addr = getelementptr inbounds %struct.map* %m, i32 0, i32 2
  store i8* %19, i8** %spm_addr, align 8
  %arraydecay27 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i32 0, i32 0
  %gp_offset_p28 = getelementptr inbounds %struct.__va_list_tag* %arraydecay27, i32 0, i32 0
  %gp_offset29 = load i32* %gp_offset_p28
  %fits_in_gp30 = icmp ule i32 %gp_offset29, 40
  br i1 %fits_in_gp30, label %vaarg.in_reg31, label %vaarg.in_mem33

vaarg.in_reg31:                                   ; preds = %vaarg.end25
  %20 = getelementptr inbounds %struct.__va_list_tag* %arraydecay27, i32 0, i32 3
  %reg_save_area32 = load i8** %20
  %21 = getelementptr i8* %reg_save_area32, i32 %gp_offset29
  %22 = bitcast i8* %21 to i64*
  %23 = add i32 %gp_offset29, 8
  store i32 %23, i32* %gp_offset_p28
  br label %vaarg.end37

vaarg.in_mem33:                                   ; preds = %vaarg.end25
  %overflow_arg_area_p34 = getelementptr inbounds %struct.__va_list_tag* %arraydecay27, i32 0, i32 2
  %overflow_arg_area35 = load i8** %overflow_arg_area_p34
  %24 = bitcast i8* %overflow_arg_area35 to i64*
  %overflow_arg_area.next36 = getelementptr i8* %overflow_arg_area35, i32 8
  store i8* %overflow_arg_area.next36, i8** %overflow_arg_area_p34
  br label %vaarg.end37

vaarg.end37:                                      ; preds = %vaarg.in_mem33, %vaarg.in_reg31
  %vaarg.addr38 = phi i64* [ %22, %vaarg.in_reg31 ], [ %24, %vaarg.in_mem33 ]
  %25 = load i64* %vaarg.addr38
  %func_size = getelementptr inbounds %struct.map* %m, i32 0, i32 3
  store i64 %25, i64* %func_size, align 8
  %arraydecay39 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i32 0, i32 0
  %gp_offset_p40 = getelementptr inbounds %struct.__va_list_tag* %arraydecay39, i32 0, i32 0
  %gp_offset41 = load i32* %gp_offset_p40
  %fits_in_gp42 = icmp ule i32 %gp_offset41, 40
  br i1 %fits_in_gp42, label %vaarg.in_reg43, label %vaarg.in_mem45

vaarg.in_reg43:                                   ; preds = %vaarg.end37
  %26 = getelementptr inbounds %struct.__va_list_tag* %arraydecay39, i32 0, i32 3
  %reg_save_area44 = load i8** %26
  %27 = getelementptr i8* %reg_save_area44, i32 %gp_offset41
  %28 = bitcast i8* %27 to %struct.region**
  %29 = add i32 %gp_offset41, 8
  store i32 %29, i32* %gp_offset_p40
  br label %vaarg.end49

vaarg.in_mem45:                                   ; preds = %vaarg.end37
  %overflow_arg_area_p46 = getelementptr inbounds %struct.__va_list_tag* %arraydecay39, i32 0, i32 2
  %overflow_arg_area47 = load i8** %overflow_arg_area_p46
  %30 = bitcast i8* %overflow_arg_area47 to %struct.region**
  %overflow_arg_area.next48 = getelementptr i8* %overflow_arg_area47, i32 8
  store i8* %overflow_arg_area.next48, i8** %overflow_arg_area_p46
  br label %vaarg.end49

vaarg.end49:                                      ; preds = %vaarg.in_mem45, %vaarg.in_reg43
  %vaarg.addr50 = phi %struct.region** [ %28, %vaarg.in_reg43 ], [ %30, %vaarg.in_mem45 ]
  %31 = load %struct.region** %vaarg.addr50
  %reg = getelementptr inbounds %struct.map* %m, i32 0, i32 4
  store %struct.region* %31, %struct.region** %reg, align 8
  call void @_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_(%"class.std::vector.0"* @_mapping_table, %struct.map* dereferenceable(40) %m)
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end49
  %32 = load i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay51 = getelementptr inbounds [1 x %struct.__va_list_tag]* %vl, i32 0, i32 0
  %arraydecay5152 = bitcast %struct.__va_list_tag* %arraydecay51 to i8*
  call void @llvm.va_end(i8* %arraydecay5152)
  ret i32 0
}

declare i32 @__gxx_personality_v0(...)

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

declare void @_ZSt9terminatev()

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #5

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #5

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2Ev(%"class.__gnu_cxx::__normal_iterator"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  store %struct.map* null, %struct.map** %_M_current, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %struct.map* @_ZNSt6vectorI3mapSaIS0_EE5beginEv(%"class.std::vector.0"* %this) #2 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"** %this.addr
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, %struct.map** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %struct.map** %coerce.dive
  ret %struct.map* %1
}

; Function Attrs: uwtable
define linkonce_odr %struct.map* @_ZNSt6vectorI3mapSaIS0_EE3endEv(%"class.std::vector.0"* %this) #2 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"** %this.addr
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, %struct.map** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %struct.map** %coerce.dive
  ret %struct.map* %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxneIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #8 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load %struct.map** %call
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load %struct.map** %call1
  %cmp = icmp ne %struct.map* %1, %3
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(40) %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %struct.map** %_M_current, align 8
  ret %struct.map* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %struct.map** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds %struct.map* %0, i32 1
  store %struct.map* %incdec.ptr, %struct.map** %_M_current, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %this1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIP3mapSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #8 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load %struct.map** %call
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load %struct.map** %call1
  %cmp = icmp eq %struct.map* %1, %3
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEplERKl(%"class.__gnu_cxx::__normal_iterator"* %this, i64* dereferenceable(8) %__n) #2 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__n.addr = alloca i64*, align 8
  %ref.tmp = alloca %struct.map*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store i64* %__n, i64** %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %struct.map** %_M_current, align 8
  %1 = load i64** %__n.addr, align 8
  %2 = load i64* %1, align 8
  %add.ptr = getelementptr inbounds %struct.map* %0, i64 %2
  store %struct.map* %add.ptr, %struct.map** %ref.tmp
  call void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, %struct.map** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %3 = load %struct.map** %coerce.dive
  ret %struct.map* %3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI6regionSaIS0_EE9push_backERKS0_(%"class.std::vector"* %this, %struct.region* dereferenceable(8) %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %struct.region*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %struct.region* %__x, %struct.region** %__x.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %struct.region** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %struct.region** %_M_end_of_storage, align 8
  %cmp = icmp ne %struct.region* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator"*
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %struct.region** %_M_finish5, align 8
  %8 = load %struct.region** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* dereferenceable(1) %5, %struct.region* %7, %struct.region* dereferenceable(8) %8)
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load %struct.region** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %struct.region* %10, i32 1
  store %struct.region* %incdec.ptr, %struct.region** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %struct.region* @_ZNSt6vectorI6regionSaIS0_EE3endEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.5"* %agg.tmp, i32 0, i32 0
  store %struct.region* %call, %struct.region** %coerce.dive
  %11 = load %struct.region** %__x.addr, align 8
  %coerce.dive8 = getelementptr %"class.__gnu_cxx::__normal_iterator.5"* %agg.tmp, i32 0, i32 0
  %12 = load %struct.region** %coerce.dive8
  call void @_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector"* %this1, %struct.region* %12, %struct.region* dereferenceable(8) %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI3mapSaIS0_EE9push_backERKS0_(%"class.std::vector.0"* %this, %struct.map* dereferenceable(40) %__x) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__x.addr = alloca %struct.map*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store %struct.map* %__x, %struct.map** %__x.addr, align 8
  %this1 = load %"class.std::vector.0"** %this.addr
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %struct.map** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %struct.map** %_M_end_of_storage, align 8
  %cmp = icmp ne %struct.map* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator.2"*
  %6 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.1"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %struct.map** %_M_finish5, align 8
  %8 = load %struct.map** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator.2"* dereferenceable(1) %5, %struct.map* %7, %struct.map* dereferenceable(40) %8)
  %9 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load %struct.map** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %struct.map* %10, i32 1
  store %struct.map* %incdec.ptr, %struct.map** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE3endEv(%"class.std::vector.0"* %this1)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store %struct.map* %call, %struct.map** %coerce.dive
  %11 = load %struct.map** %__x.addr, align 8
  %coerce.dive8 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %12 = load %struct.map** %coerce.dive8
  call void @_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector.0"* %this1, %struct.map* %12, %struct.map* dereferenceable(40) %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

define internal void @_GLOBAL__sub_I_code.cpp() section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  call void @__cxx_global_var_init2()
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %this, %struct.map** dereferenceable(8) %__i) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca %struct.map**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store %struct.map** %__i, %struct.map*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %struct.map*** %__i.addr, align 8
  %1 = load %struct.map** %0, align 8
  store %struct.map* %1, %struct.map** %_M_current, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret %struct.map** %_M_current
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* dereferenceable(1) %__a, %struct.region* %__p, %struct.region* dereferenceable(8) %__arg) #2 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %struct.region*, align 8
  %__arg.addr = alloca %struct.region*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %struct.region* %__p, %struct.region** %__p.addr, align 8
  store %struct.region* %__arg, %struct.region** %__arg.addr, align 8
  %0 = load %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %struct.region** %__p.addr, align 8
  %3 = load %struct.region** %__arg.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator"* %1, %struct.region* %2, %struct.region* dereferenceable(8) %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %struct.region* @_ZNSt6vectorI6regionSaIS0_EE3endEv(%"class.std::vector"* %this) #2 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.5"* %retval, %struct.region** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.5"* %retval, i32 0, i32 0
  %1 = load %struct.region** %coerce.dive
  ret %struct.region* %1
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI6regionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector"* %this, %struct.region* %__position.coerce, %struct.region* dereferenceable(8) %__x) #2 align 2 {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %struct.region*, align 8
  %__x_copy = alloca %struct.region, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %__new_start = alloca %struct.region*, align 8
  %__new_finish = alloca %struct.region*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.5"* %__position, i32 0, i32 0
  store %struct.region* %__position.coerce, %struct.region** %coerce.dive
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %struct.region* %__x, %struct.region** %__x.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %struct.region** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %struct.region** %_M_end_of_storage, align 8
  %cmp = icmp ne %struct.region* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator"*
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %struct.region** %_M_finish5, align 8
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %9 = load %struct.region** %_M_finish7, align 8
  %add.ptr = getelementptr inbounds %struct.region* %9, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* dereferenceable(1) %5, %struct.region* %7, %struct.region* dereferenceable(8) %add.ptr)
  %10 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base"* %10, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl8, i32 0, i32 1
  %11 = load %struct.region** %_M_finish9, align 8
  %incdec.ptr = getelementptr inbounds %struct.region* %11, i32 1
  store %struct.region* %incdec.ptr, %struct.region** %_M_finish9, align 8
  %12 = load %struct.region** %__x.addr, align 8
  %13 = bitcast %struct.region* %__x_copy to i8*
  %14 = bitcast %struct.region* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* %__position)
  %15 = load %struct.region** %call
  %16 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base"* %16, i32 0, i32 0
  %_M_finish11 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl10, i32 0, i32 1
  %17 = load %struct.region** %_M_finish11, align 8
  %add.ptr12 = getelementptr inbounds %struct.region* %17, i64 -2
  %18 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %_M_finish14 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %19 = load %struct.region** %_M_finish14, align 8
  %add.ptr15 = getelementptr inbounds %struct.region* %19, i64 -1
  %call16 = call %struct.region* @_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_(%struct.region* %15, %struct.region* %add.ptr12, %struct.region* %add.ptr15)
  %call17 = call dereferenceable(8) %struct.region* @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.5"* %__position)
  %20 = bitcast %struct.region* %call17 to i8*
  %21 = bitcast %struct.region* %__x_copy to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 8, i1 false)
  br label %if.end70

if.else:                                          ; preds = %entry
  %call18 = call i64 @_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0))
  store i64 %call18, i64* %__len, align 8
  %call19 = call %struct.region* @_ZNSt6vectorI6regionSaIS0_EE5beginEv(%"class.std::vector"* %this1)
  %coerce.dive20 = getelementptr %"class.__gnu_cxx::__normal_iterator.5"* %ref.tmp, i32 0, i32 0
  store %struct.region* %call19, %struct.region** %coerce.dive20
  %call21 = call i64 @_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.5"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.5"* dereferenceable(8) %ref.tmp)
  store i64 %call21, i64* %__elems_before, align 8
  %22 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %23 = load i64* %__len, align 8
  %call22 = call %struct.region* @_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %22, i64 %23)
  store %struct.region* %call22, %struct.region** %__new_start, align 8
  %24 = load %struct.region** %__new_start, align 8
  store %struct.region* %24, %struct.region** %__new_finish, align 8
  %25 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl23 = getelementptr inbounds %"struct.std::_Vector_base"* %25, i32 0, i32 0
  %26 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl23 to %"class.std::allocator"*
  %27 = load %struct.region** %__new_start, align 8
  %28 = load i64* %__elems_before, align 8
  %add.ptr24 = getelementptr inbounds %struct.region* %27, i64 %28
  %29 = load %struct.region** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator"* dereferenceable(1) %26, %struct.region* %add.ptr24, %struct.region* dereferenceable(8) %29)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  store %struct.region* null, %struct.region** %__new_finish, align 8
  %30 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base"* %30, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl25, i32 0, i32 0
  %31 = load %struct.region** %_M_start, align 8
  %call27 = invoke dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* %__position)
          to label %invoke.cont26 unwind label %lpad

invoke.cont26:                                    ; preds = %invoke.cont
  %32 = load %struct.region** %call27
  %33 = load %struct.region** %__new_start, align 8
  %34 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call29 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %34)
          to label %invoke.cont28 unwind label %lpad

invoke.cont28:                                    ; preds = %invoke.cont26
  %call31 = invoke %struct.region* @_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.region* %31, %struct.region* %32, %struct.region* %33, %"class.std::allocator"* dereferenceable(1) %call29)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %invoke.cont28
  store %struct.region* %call31, %struct.region** %__new_finish, align 8
  %35 = load %struct.region** %__new_finish, align 8
  %incdec.ptr32 = getelementptr inbounds %struct.region* %35, i32 1
  store %struct.region* %incdec.ptr32, %struct.region** %__new_finish, align 8
  %call34 = invoke dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* %__position)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont30
  %36 = load %struct.region** %call34
  %37 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl35 = getelementptr inbounds %"struct.std::_Vector_base"* %37, i32 0, i32 0
  %_M_finish36 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl35, i32 0, i32 1
  %38 = load %struct.region** %_M_finish36, align 8
  %39 = load %struct.region** %__new_finish, align 8
  %40 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call38 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %40)
          to label %invoke.cont37 unwind label %lpad

invoke.cont37:                                    ; preds = %invoke.cont33
  %call40 = invoke %struct.region* @_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.region* %36, %struct.region* %38, %struct.region* %39, %"class.std::allocator"* dereferenceable(1) %call38)
          to label %invoke.cont39 unwind label %lpad

invoke.cont39:                                    ; preds = %invoke.cont37
  store %struct.region* %call40, %struct.region** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont37, %invoke.cont33, %invoke.cont30, %invoke.cont28, %invoke.cont26, %invoke.cont, %if.else
  %41 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %exn.slot
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %ehselector.slot
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8** %exn.slot
  %44 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %45 = load %struct.region** %__new_finish, align 8
  %tobool = icmp ne %struct.region* %45, null
  br i1 %tobool, label %if.else46, label %if.then41

if.then41:                                        ; preds = %catch
  %46 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl42 = getelementptr inbounds %"struct.std::_Vector_base"* %46, i32 0, i32 0
  %47 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl42 to %"class.std::allocator"*
  %48 = load %struct.region** %__new_start, align 8
  %49 = load i64* %__elems_before, align 8
  %add.ptr43 = getelementptr inbounds %struct.region* %48, i64 %49
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE7destroyERS2_PS1_(%"class.std::allocator"* dereferenceable(1) %47, %struct.region* %add.ptr43)
          to label %invoke.cont45 unwind label %lpad44

invoke.cont45:                                    ; preds = %if.then41
  br label %if.end

lpad44:                                           ; preds = %invoke.cont50, %if.end, %invoke.cont47, %if.else46, %if.then41
  %50 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  store i8* %51, i8** %exn.slot
  %52 = extractvalue { i8*, i32 } %50, 1
  store i32 %52, i32* %ehselector.slot
  invoke void @__cxa_end_catch()
          to label %invoke.cont51 unwind label %terminate.lpad

if.else46:                                        ; preds = %catch
  %53 = load %struct.region** %__new_start, align 8
  %54 = load %struct.region** %__new_finish, align 8
  %55 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call48 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %55)
          to label %invoke.cont47 unwind label %lpad44

invoke.cont47:                                    ; preds = %if.else46
  invoke void @_ZSt8_DestroyIP6regionS0_EvT_S2_RSaIT0_E(%struct.region* %53, %struct.region* %54, %"class.std::allocator"* dereferenceable(1) %call48)
          to label %invoke.cont49 unwind label %lpad44

invoke.cont49:                                    ; preds = %invoke.cont47
  br label %if.end

if.end:                                           ; preds = %invoke.cont49, %invoke.cont45
  %56 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %57 = load %struct.region** %__new_start, align 8
  %58 = load i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %56, %struct.region* %57, i64 %58)
          to label %invoke.cont50 unwind label %lpad44

invoke.cont50:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad44

invoke.cont51:                                    ; preds = %lpad44
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont39
  %59 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl52 = getelementptr inbounds %"struct.std::_Vector_base"* %59, i32 0, i32 0
  %_M_start53 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl52, i32 0, i32 0
  %60 = load %struct.region** %_M_start53, align 8
  %61 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl54 = getelementptr inbounds %"struct.std::_Vector_base"* %61, i32 0, i32 0
  %_M_finish55 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl54, i32 0, i32 1
  %62 = load %struct.region** %_M_finish55, align 8
  %63 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call56 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %63)
  call void @_ZSt8_DestroyIP6regionS0_EvT_S2_RSaIT0_E(%struct.region* %60, %struct.region* %62, %"class.std::allocator"* dereferenceable(1) %call56)
  %64 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %65 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl57 = getelementptr inbounds %"struct.std::_Vector_base"* %65, i32 0, i32 0
  %_M_start58 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl57, i32 0, i32 0
  %66 = load %struct.region** %_M_start58, align 8
  %67 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl59 = getelementptr inbounds %"struct.std::_Vector_base"* %67, i32 0, i32 0
  %_M_end_of_storage60 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl59, i32 0, i32 2
  %68 = load %struct.region** %_M_end_of_storage60, align 8
  %69 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl61 = getelementptr inbounds %"struct.std::_Vector_base"* %69, i32 0, i32 0
  %_M_start62 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl61, i32 0, i32 0
  %70 = load %struct.region** %_M_start62, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %68 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %70 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  call void @_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %64, %struct.region* %66, i64 %sub.ptr.div)
  %71 = load %struct.region** %__new_start, align 8
  %72 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl63 = getelementptr inbounds %"struct.std::_Vector_base"* %72, i32 0, i32 0
  %_M_start64 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl63, i32 0, i32 0
  store %struct.region* %71, %struct.region** %_M_start64, align 8
  %73 = load %struct.region** %__new_finish, align 8
  %74 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl65 = getelementptr inbounds %"struct.std::_Vector_base"* %74, i32 0, i32 0
  %_M_finish66 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl65, i32 0, i32 1
  store %struct.region* %73, %struct.region** %_M_finish66, align 8
  %75 = load %struct.region** %__new_start, align 8
  %76 = load i64* %__len, align 8
  %add.ptr67 = getelementptr inbounds %struct.region* %75, i64 %76
  %77 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl68 = getelementptr inbounds %"struct.std::_Vector_base"* %77, i32 0, i32 0
  %_M_end_of_storage69 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl68, i32 0, i32 2
  store %struct.region* %add.ptr67, %struct.region** %_M_end_of_storage69, align 8
  br label %if.end70

if.end70:                                         ; preds = %try.cont, %if.then
  ret void

eh.resume:                                        ; preds = %invoke.cont51
  %exn71 = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn71, 0
  %lpad.val72 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val72

terminate.lpad:                                   ; preds = %lpad44
  %78 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %79 = extractvalue { i8*, i32 } %78, 0
  call void @__clang_call_terminate(i8* %79) #13
  unreachable

unreachable:                                      ; preds = %invoke.cont50
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator.2"* dereferenceable(1) %__a, %struct.map* %__p, %struct.map* dereferenceable(40) %__arg) #2 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  %__p.addr = alloca %struct.map*, align 8
  %__arg.addr = alloca %struct.map*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8
  store %struct.map* %__p, %struct.map** %__p.addr, align 8
  store %struct.map* %__arg, %struct.map** %__arg.addr, align 8
  %0 = load %"class.std::allocator.2"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.2"* %0 to %"class.__gnu_cxx::new_allocator.3"*
  %2 = load %struct.map** %__p.addr, align 8
  %3 = load %struct.map** %__arg.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator.3"* %1, %struct.map* %2, %struct.map* dereferenceable(40) %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI3mapSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector.0"* %this, %struct.map* %__position.coerce, %struct.map* dereferenceable(40) %__x) #2 align 2 {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__x.addr = alloca %struct.map*, align 8
  %__x_copy = alloca %struct.map, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca %struct.map*, align 8
  %__new_finish = alloca %struct.map*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store %struct.map* %__position.coerce, %struct.map** %coerce.dive
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store %struct.map* %__x, %struct.map** %__x.addr, align 8
  %this1 = load %"class.std::vector.0"** %this.addr
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %struct.map** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %struct.map** %_M_end_of_storage, align 8
  %cmp = icmp ne %struct.map* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator.2"*
  %6 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.1"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %struct.map** %_M_finish5, align 8
  %8 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %8, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %9 = load %struct.map** %_M_finish7, align 8
  %add.ptr = getelementptr inbounds %struct.map* %9, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator.2"* dereferenceable(1) %5, %struct.map* %7, %struct.map* dereferenceable(40) %add.ptr)
  %10 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base.1"* %10, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl8, i32 0, i32 1
  %11 = load %struct.map** %_M_finish9, align 8
  %incdec.ptr = getelementptr inbounds %struct.map* %11, i32 1
  store %struct.map* %incdec.ptr, %struct.map** %_M_finish9, align 8
  %12 = load %struct.map** %__x.addr, align 8
  %13 = bitcast %struct.map* %__x_copy to i8*
  %14 = bitcast %struct.map* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 40, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %15 = load %struct.map** %call
  %16 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base.1"* %16, i32 0, i32 0
  %_M_finish11 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl10, i32 0, i32 1
  %17 = load %struct.map** %_M_finish11, align 8
  %add.ptr12 = getelementptr inbounds %struct.map* %17, i64 -2
  %18 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base.1"* %18, i32 0, i32 0
  %_M_finish14 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %19 = load %struct.map** %_M_finish14, align 8
  %add.ptr15 = getelementptr inbounds %struct.map* %19, i64 -1
  %call16 = call %struct.map* @_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_(%struct.map* %15, %struct.map* %add.ptr12, %struct.map* %add.ptr15)
  %call17 = call dereferenceable(40) %struct.map* @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %20 = bitcast %struct.map* %call17 to i8*
  %21 = bitcast %struct.map* %__x_copy to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 40, i32 8, i1 false)
  br label %if.end70

if.else:                                          ; preds = %entry
  %call18 = call i64 @_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.0"* %this1, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0))
  store i64 %call18, i64* %__len, align 8
  %call19 = call %struct.map* @_ZNSt6vectorI3mapSaIS0_EE5beginEv(%"class.std::vector.0"* %this1)
  %coerce.dive20 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store %struct.map* %call19, %struct.map** %coerce.dive20
  %call21 = call i64 @_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp)
  store i64 %call21, i64* %__elems_before, align 8
  %22 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %23 = load i64* %__len, align 8
  %call22 = call %struct.map* @_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %22, i64 %23)
  store %struct.map* %call22, %struct.map** %__new_start, align 8
  %24 = load %struct.map** %__new_start, align 8
  store %struct.map* %24, %struct.map** %__new_finish, align 8
  %25 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl23 = getelementptr inbounds %"struct.std::_Vector_base.1"* %25, i32 0, i32 0
  %26 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl23 to %"class.std::allocator.2"*
  %27 = load %struct.map** %__new_start, align 8
  %28 = load i64* %__elems_before, align 8
  %add.ptr24 = getelementptr inbounds %struct.map* %27, i64 %28
  %29 = load %struct.map** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::allocator.2"* dereferenceable(1) %26, %struct.map* %add.ptr24, %struct.map* dereferenceable(40) %29)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  store %struct.map* null, %struct.map** %__new_finish, align 8
  %30 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base.1"* %30, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl25, i32 0, i32 0
  %31 = load %struct.map** %_M_start, align 8
  %call27 = invoke dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %invoke.cont26 unwind label %lpad

invoke.cont26:                                    ; preds = %invoke.cont
  %32 = load %struct.map** %call27
  %33 = load %struct.map** %__new_start, align 8
  %34 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call29 = invoke dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %34)
          to label %invoke.cont28 unwind label %lpad

invoke.cont28:                                    ; preds = %invoke.cont26
  %call31 = invoke %struct.map* @_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.map* %31, %struct.map* %32, %struct.map* %33, %"class.std::allocator.2"* dereferenceable(1) %call29)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %invoke.cont28
  store %struct.map* %call31, %struct.map** %__new_finish, align 8
  %35 = load %struct.map** %__new_finish, align 8
  %incdec.ptr32 = getelementptr inbounds %struct.map* %35, i32 1
  store %struct.map* %incdec.ptr32, %struct.map** %__new_finish, align 8
  %call34 = invoke dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont30
  %36 = load %struct.map** %call34
  %37 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl35 = getelementptr inbounds %"struct.std::_Vector_base.1"* %37, i32 0, i32 0
  %_M_finish36 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl35, i32 0, i32 1
  %38 = load %struct.map** %_M_finish36, align 8
  %39 = load %struct.map** %__new_finish, align 8
  %40 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call38 = invoke dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %40)
          to label %invoke.cont37 unwind label %lpad

invoke.cont37:                                    ; preds = %invoke.cont33
  %call40 = invoke %struct.map* @_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.map* %36, %struct.map* %38, %struct.map* %39, %"class.std::allocator.2"* dereferenceable(1) %call38)
          to label %invoke.cont39 unwind label %lpad

invoke.cont39:                                    ; preds = %invoke.cont37
  store %struct.map* %call40, %struct.map** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont37, %invoke.cont33, %invoke.cont30, %invoke.cont28, %invoke.cont26, %invoke.cont, %if.else
  %41 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %exn.slot
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %ehselector.slot
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8** %exn.slot
  %44 = call i8* @__cxa_begin_catch(i8* %exn) #1
  %45 = load %struct.map** %__new_finish, align 8
  %tobool = icmp ne %struct.map* %45, null
  br i1 %tobool, label %if.else46, label %if.then41

if.then41:                                        ; preds = %catch
  %46 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl42 = getelementptr inbounds %"struct.std::_Vector_base.1"* %46, i32 0, i32 0
  %47 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl42 to %"class.std::allocator.2"*
  %48 = load %struct.map** %__new_start, align 8
  %49 = load i64* %__elems_before, align 8
  %add.ptr43 = getelementptr inbounds %struct.map* %48, i64 %49
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE7destroyERS2_PS1_(%"class.std::allocator.2"* dereferenceable(1) %47, %struct.map* %add.ptr43)
          to label %invoke.cont45 unwind label %lpad44

invoke.cont45:                                    ; preds = %if.then41
  br label %if.end

lpad44:                                           ; preds = %invoke.cont50, %if.end, %invoke.cont47, %if.else46, %if.then41
  %50 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  store i8* %51, i8** %exn.slot
  %52 = extractvalue { i8*, i32 } %50, 1
  store i32 %52, i32* %ehselector.slot
  invoke void @__cxa_end_catch()
          to label %invoke.cont51 unwind label %terminate.lpad

if.else46:                                        ; preds = %catch
  %53 = load %struct.map** %__new_start, align 8
  %54 = load %struct.map** %__new_finish, align 8
  %55 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call48 = invoke dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %55)
          to label %invoke.cont47 unwind label %lpad44

invoke.cont47:                                    ; preds = %if.else46
  invoke void @_ZSt8_DestroyIP3mapS0_EvT_S2_RSaIT0_E(%struct.map* %53, %struct.map* %54, %"class.std::allocator.2"* dereferenceable(1) %call48)
          to label %invoke.cont49 unwind label %lpad44

invoke.cont49:                                    ; preds = %invoke.cont47
  br label %if.end

if.end:                                           ; preds = %invoke.cont49, %invoke.cont45
  %56 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %57 = load %struct.map** %__new_start, align 8
  %58 = load i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* %56, %struct.map* %57, i64 %58)
          to label %invoke.cont50 unwind label %lpad44

invoke.cont50:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #14
          to label %unreachable unwind label %lpad44

invoke.cont51:                                    ; preds = %lpad44
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont39
  %59 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl52 = getelementptr inbounds %"struct.std::_Vector_base.1"* %59, i32 0, i32 0
  %_M_start53 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl52, i32 0, i32 0
  %60 = load %struct.map** %_M_start53, align 8
  %61 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl54 = getelementptr inbounds %"struct.std::_Vector_base.1"* %61, i32 0, i32 0
  %_M_finish55 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl54, i32 0, i32 1
  %62 = load %struct.map** %_M_finish55, align 8
  %63 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call56 = call dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %63)
  call void @_ZSt8_DestroyIP3mapS0_EvT_S2_RSaIT0_E(%struct.map* %60, %struct.map* %62, %"class.std::allocator.2"* dereferenceable(1) %call56)
  %64 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %65 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl57 = getelementptr inbounds %"struct.std::_Vector_base.1"* %65, i32 0, i32 0
  %_M_start58 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl57, i32 0, i32 0
  %66 = load %struct.map** %_M_start58, align 8
  %67 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl59 = getelementptr inbounds %"struct.std::_Vector_base.1"* %67, i32 0, i32 0
  %_M_end_of_storage60 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl59, i32 0, i32 2
  %68 = load %struct.map** %_M_end_of_storage60, align 8
  %69 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl61 = getelementptr inbounds %"struct.std::_Vector_base.1"* %69, i32 0, i32 0
  %_M_start62 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl61, i32 0, i32 0
  %70 = load %struct.map** %_M_start62, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %68 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %70 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  call void @_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* %64, %struct.map* %66, i64 %sub.ptr.div)
  %71 = load %struct.map** %__new_start, align 8
  %72 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl63 = getelementptr inbounds %"struct.std::_Vector_base.1"* %72, i32 0, i32 0
  %_M_start64 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl63, i32 0, i32 0
  store %struct.map* %71, %struct.map** %_M_start64, align 8
  %73 = load %struct.map** %__new_finish, align 8
  %74 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl65 = getelementptr inbounds %"struct.std::_Vector_base.1"* %74, i32 0, i32 0
  %_M_finish66 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl65, i32 0, i32 1
  store %struct.map* %73, %struct.map** %_M_finish66, align 8
  %75 = load %struct.map** %__new_start, align 8
  %76 = load i64* %__len, align 8
  %add.ptr67 = getelementptr inbounds %struct.map* %75, i64 %76
  %77 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl68 = getelementptr inbounds %"struct.std::_Vector_base.1"* %77, i32 0, i32 0
  %_M_end_of_storage69 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl68, i32 0, i32 2
  store %struct.map* %add.ptr67, %struct.map** %_M_end_of_storage69, align 8
  br label %if.end70

if.end70:                                         ; preds = %try.cont, %if.then
  ret void

eh.resume:                                        ; preds = %invoke.cont51
  %exn71 = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn71, 0
  %lpad.val72 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val72

terminate.lpad:                                   ; preds = %lpad44
  %78 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %79 = extractvalue { i8*, i32 } %78, 0
  call void @__clang_call_terminate(i8* %79) #13
  unreachable

unreachable:                                      ; preds = %invoke.cont50
  unreachable
}

define internal void @__cxx_global_var_init() section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

define internal void @__cxx_global_var_init1() section ".text.startup" {
entry:
  call void @_ZNSt6vectorI6regionSaIS0_EEC2Ev(%"class.std::vector"* @_region_table)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::vector"*)* @_ZNSt6vectorI6regionSaIS0_EED2Ev to void (i8*)*), i8* bitcast (%"class.std::vector"* @_region_table to i8*), i8* @__dso_handle) #1
  ret void
}

define internal void @__cxx_global_var_init2() section ".text.startup" {
entry:
  call void @_ZNSt6vectorI3mapSaIS0_EEC2Ev(%"class.std::vector.0"* @_mapping_table)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::vector.0"*)* @_ZNSt6vectorI3mapSaIS0_EED2Ev to void (i8*)*), i8* bitcast (%"class.std::vector.0"* @_mapping_table to i8*), i8* @__dso_handle) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6regionE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator"* %this, %struct.region* %__p, %struct.region* dereferenceable(8) %__val) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %struct.region*, align 8
  %__val.addr = alloca %struct.region*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %struct.region* %__p, %struct.region** %__p.addr, align 8
  store %struct.region* %__val, %struct.region** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %0 = load %struct.region** %__p.addr, align 8
  %1 = bitcast %struct.region* %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to %struct.region*
  %3 = load %struct.region** %__val.addr, align 8
  %4 = bitcast %struct.region* %2 to i8*
  %5 = bitcast %struct.region* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %6 = phi %struct.region* [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.5"* %this, %struct.region** dereferenceable(8) %__i) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.5"*, align 8
  %__i.addr = alloca %struct.region**, align 8
  store %"class.__gnu_cxx::__normal_iterator.5"* %this, %"class.__gnu_cxx::__normal_iterator.5"** %this.addr, align 8
  store %struct.region** %__i, %struct.region*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.5"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5"* %this1, i32 0, i32 0
  %0 = load %struct.region*** %__i.addr, align 8
  %1 = load %struct.region** %0, align 8
  store %struct.region* %1, %struct.region** %_M_current, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.5"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.5"* %this, %"class.__gnu_cxx::__normal_iterator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.5"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5"* %this1, i32 0, i32 0
  ret %struct.region** %_M_current
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.region* @_ZSt13copy_backwardIP6regionS1_ET0_T_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  %0 = load %struct.region** %__first.addr, align 8
  %call = call %struct.region* @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.region* %0)
  %1 = load %struct.region** %__last.addr, align 8
  %call1 = call %struct.region* @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.region* %1)
  %2 = load %struct.region** %__result.addr, align 8
  %call2 = call %struct.region* @_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %call, %struct.region* %call1, %struct.region* %2)
  ret %struct.region* %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.region* @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.5"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.5"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.5"* %this, %"class.__gnu_cxx::__normal_iterator.5"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.5"** %this.addr
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5"* %this1, i32 0, i32 0
  %0 = load %struct.region** %_M_current, align 8
  ret %struct.region* %0
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6regionSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %call = call i64 @_ZNKSt6vectorI6regionSaIS0_EE8max_sizeEv(%"class.std::vector"* %this1)
  %call2 = call i64 @_ZNKSt6vectorI6regionSaIS0_EE4sizeEv(%"class.std::vector"* %this1)
  %sub = sub i64 %call, %call2
  %0 = load i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #14
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorI6regionSaIS0_EE4sizeEv(%"class.std::vector"* %this1)
  %call4 = call i64 @_ZNKSt6vectorI6regionSaIS0_EE4sizeEv(%"class.std::vector"* %this1)
  store i64 %call4, i64* %ref.tmp
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64* %call5
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorI6regionSaIS0_EE4sizeEv(%"class.std::vector"* %this1)
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorI6regionSaIS0_EE8max_sizeEv(%"class.std::vector"* %this1)
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorI6regionSaIS0_EE8max_sizeEv(%"class.std::vector"* %this1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: uwtable
define linkonce_odr %struct.region* @_ZNSt6vectorI6regionSaIS0_EE5beginEv(%"class.std::vector"* %this) #2 align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.5"* %retval, %struct.region** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr %"class.__gnu_cxx::__normal_iterator.5"* %retval, i32 0, i32 0
  %1 = load %struct.region** %coerce.dive
  ret %struct.region* %1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIP6regionSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.5"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.5"* dereferenceable(8) %__rhs) #9 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.5"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.5"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.5"* %__lhs, %"class.__gnu_cxx::__normal_iterator.5"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.5"* %__rhs, %"class.__gnu_cxx::__normal_iterator.5"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.5"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* %0)
  %1 = load %struct.region** %call
  %2 = load %"class.__gnu_cxx::__normal_iterator.5"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %struct.region** @_ZNK9__gnu_cxx17__normal_iteratorIP6regionSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* %2)
  %3 = load %struct.region** %call1
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr %struct.region* @_ZNSt12_Vector_baseI6regionSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"** %this.addr
  %0 = load i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl to %"class.__gnu_cxx::new_allocator"*
  %2 = load i64* %__n.addr, align 8
  %call = call %struct.region* @_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.region* [ %call, %cond.true ], [ null, %cond.false ]
  ret %struct.region* %cond
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.region* @_ZSt34__uninitialized_move_if_noexcept_aIP6regionS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8
  %0 = load %struct.region** %__first.addr, align 8
  %1 = load %struct.region** %__last.addr, align 8
  %2 = load %struct.region** %__result.addr, align 8
  %3 = load %"class.std::allocator"** %__alloc.addr, align 8
  %call = call %struct.region* @_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E(%struct.region* %0, %struct.region* %1, %struct.region* %2, %"class.std::allocator"* dereferenceable(1) %3)
  ret %struct.region* %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE7destroyERS2_PS1_(%"class.std::allocator"* dereferenceable(1) %__a, %struct.region* %__p) #2 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %struct.region*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %struct.region* %__p, %struct.region** %__p.addr, align 8
  %0 = load %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %struct.region** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6regionE7destroyEPS1_(%"class.__gnu_cxx::new_allocator"* %1, %struct.region* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIP6regionS0_EvT_S2_RSaIT0_E(%struct.region* %__first, %struct.region* %__last, %"class.std::allocator"* dereferenceable(1)) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load %struct.region** %__first.addr, align 8
  %2 = load %struct.region** %__last.addr, align 8
  call void @_ZSt8_DestroyIP6regionEvT_S2_(%struct.region* %1, %struct.region* %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %this, %struct.region* %__p, i64 %__n) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca %struct.region*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %struct.region* %__p, %struct.region** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"** %this.addr
  %0 = load %struct.region** %__p.addr, align 8
  %tobool = icmp ne %struct.region* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl to %"class.__gnu_cxx::new_allocator"*
  %2 = load %struct.region** %__p.addr, align 8
  %3 = load i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %1, %struct.region* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #10 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #13
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI3mapE9constructEPS1_RKS1_(%"class.__gnu_cxx::new_allocator.3"* %this, %struct.map* %__p, %struct.map* dereferenceable(40) %__val) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %__p.addr = alloca %struct.map*, align 8
  %__val.addr = alloca %struct.map*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  store %struct.map* %__p, %struct.map** %__p.addr, align 8
  store %struct.map* %__val, %struct.map** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"** %this.addr
  %0 = load %struct.map** %__p.addr, align 8
  %1 = bitcast %struct.map* %0 to i8*
  %new.isnull = icmp eq i8* %1, null
  br i1 %new.isnull, label %new.cont, label %new.notnull

new.notnull:                                      ; preds = %entry
  %2 = bitcast i8* %1 to %struct.map*
  %3 = load %struct.map** %__val.addr, align 8
  %4 = bitcast %struct.map* %2 to i8*
  %5 = bitcast %struct.map* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 40, i32 8, i1 false)
  br label %new.cont

new.cont:                                         ; preds = %new.notnull, %entry
  %6 = phi %struct.map* [ %2, %new.notnull ], [ null, %entry ]
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.map* @_ZSt13copy_backwardIP3mapS1_ET0_T_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  %0 = load %struct.map** %__first.addr, align 8
  %call = call %struct.map* @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.map* %0)
  %1 = load %struct.map** %__last.addr, align 8
  %call1 = call %struct.map* @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.map* %1)
  %2 = load %struct.map** %__result.addr, align 8
  %call2 = call %struct.map* @_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %call, %struct.map* %call1, %struct.map* %2)
  ret %struct.map* %call2
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorI3mapSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.0"* %this, i64 %__n, i8* %__s) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector.0"** %this.addr
  %call = call i64 @_ZNKSt6vectorI3mapSaIS0_EE8max_sizeEv(%"class.std::vector.0"* %this1)
  %call2 = call i64 @_ZNKSt6vectorI3mapSaIS0_EE4sizeEv(%"class.std::vector.0"* %this1)
  %sub = sub i64 %call, %call2
  %0 = load i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #14
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorI3mapSaIS0_EE4sizeEv(%"class.std::vector.0"* %this1)
  %call4 = call i64 @_ZNKSt6vectorI3mapSaIS0_EE4sizeEv(%"class.std::vector.0"* %this1)
  store i64 %call4, i64* %ref.tmp
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64* %call5
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorI3mapSaIS0_EE4sizeEv(%"class.std::vector.0"* %this1)
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorI3mapSaIS0_EE8max_sizeEv(%"class.std::vector.0"* %this1)
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorI3mapSaIS0_EE8max_sizeEv(%"class.std::vector.0"* %this1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIP3mapSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #9 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load %struct.map** %call
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %struct.map** @_ZNK9__gnu_cxx17__normal_iteratorIP3mapSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load %struct.map** %call1
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr %struct.map* @_ZNSt12_Vector_baseI3mapSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"** %this.addr
  %0 = load i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl to %"class.__gnu_cxx::new_allocator.3"*
  %2 = load i64* %__n.addr, align 8
  %call = call %struct.map* @_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %1, i64 %2, i8* null)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.map* [ %call, %cond.true ], [ null, %cond.false ]
  ret %struct.map* %cond
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.map* @_ZSt34__uninitialized_move_if_noexcept_aIP3mapS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result, %"class.std::allocator.2"* dereferenceable(1) %__alloc) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  %__alloc.addr = alloca %"class.std::allocator.2"*, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  store %"class.std::allocator.2"* %__alloc, %"class.std::allocator.2"** %__alloc.addr, align 8
  %0 = load %struct.map** %__first.addr, align 8
  %1 = load %struct.map** %__last.addr, align 8
  %2 = load %struct.map** %__result.addr, align 8
  %3 = load %"class.std::allocator.2"** %__alloc.addr, align 8
  %call = call %struct.map* @_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E(%struct.map* %0, %struct.map* %1, %struct.map* %2, %"class.std::allocator.2"* dereferenceable(1) %3)
  ret %struct.map* %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE7destroyERS2_PS1_(%"class.std::allocator.2"* dereferenceable(1) %__a, %struct.map* %__p) #2 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  %__p.addr = alloca %struct.map*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8
  store %struct.map* %__p, %struct.map** %__p.addr, align 8
  %0 = load %"class.std::allocator.2"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.2"* %0 to %"class.__gnu_cxx::new_allocator.3"*
  %2 = load %struct.map** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI3mapE7destroyEPS1_(%"class.__gnu_cxx::new_allocator.3"* %1, %struct.map* %2)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIP3mapS0_EvT_S2_RSaIT0_E(%struct.map* %__first, %struct.map* %__last, %"class.std::allocator.2"* dereferenceable(1)) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %.addr = alloca %"class.std::allocator.2"*, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %.addr, align 8
  %1 = load %struct.map** %__first.addr, align 8
  %2 = load %struct.map** %__last.addr, align 8
  call void @_ZSt8_DestroyIP3mapEvT_S2_(%struct.map* %1, %struct.map* %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* %this, %struct.map* %__p, i64 %__n) #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__p.addr = alloca %struct.map*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  store %struct.map* %__p, %struct.map** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"** %this.addr
  %0 = load %struct.map** %__p.addr, align 8
  %tobool = icmp ne %struct.map* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl to %"class.__gnu_cxx::new_allocator.3"*
  %2 = load %struct.map** %__p.addr, align 8
  %3 = load i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.3"* %1, %struct.map* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI6regionSaIS0_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI6regionSaIS0_EED2Ev(%"class.std::vector"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %struct.region** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %struct.region** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIP6regionS0_EvT_S2_RSaIT0_E(%struct.region* %1, %struct.region* %3, %"class.std::allocator"* dereferenceable(1) %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev(%"struct.std::_Vector_base"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev(%"struct.std::_Vector_base"* %9)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI3mapSaIS0_EEC2Ev(%"class.std::vector.0"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"** %this.addr
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev(%"struct.std::_Vector_base.1"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorI3mapSaIS0_EED2Ev(%"class.std::vector.0"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"** %this.addr
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %struct.map** %_M_start, align 8
  %2 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %struct.map** %_M_finish, align 8
  %4 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = invoke dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIP3mapS0_EvT_S2_RSaIT0_E(%struct.map* %1, %struct.map* %3, %"class.std::allocator.2"* dereferenceable(1) %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev(%"struct.std::_Vector_base.1"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  %9 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev(%"struct.std::_Vector_base.1"* %9)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #13
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.region* @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.region* %__it) #9 {
entry:
  %__it.addr = alloca %struct.region*, align 8
  store %struct.region* %__it, %struct.region** %__it.addr, align 8
  %0 = load %struct.region** %__it.addr, align 8
  %call = call %struct.region* @_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_(%struct.region* %0)
  ret %struct.region* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.region* @_ZSt23__copy_move_backward_a2ILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  %0 = load %struct.region** %__first.addr, align 8
  %call = call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %0)
  %1 = load %struct.region** %__last.addr, align 8
  %call1 = call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %1)
  %2 = load %struct.region** %__result.addr, align 8
  %call2 = call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %2)
  %call3 = call %struct.region* @_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %call, %struct.region* %call1, %struct.region* %call2)
  ret %struct.region* %call3
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6regionSaIS0_EE8max_sizeEv(%"class.std::vector"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE8max_sizeERKS2_(%"class.std::allocator"* dereferenceable(1) %call)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6regionSaIS0_EE4sizeEv(%"class.std::vector"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %struct.region** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %struct.region** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #8 {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64** %__a.addr, align 8
  %1 = load i64* %0, align 8
  %2 = load i64** %__b.addr, align 8
  %3 = load i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64** %__b.addr, align 8
  store i64* %4, i64** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64** %__a.addr, align 8
  store i64* %5, i64** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64** %retval
  ret i64* %6
}

; Function Attrs: uwtable
define linkonce_odr %struct.region* @_ZN9__gnu_cxx13new_allocatorI6regionE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #2 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorI6regionE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #1
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %struct.region*
  ret %struct.region* %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.region* @_ZSt22__uninitialized_copy_aIP6regionS1_S0_ET0_T_S3_S2_RSaIT1_E(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result, %"class.std::allocator"* dereferenceable(1)) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load %struct.region** %__first.addr, align 8
  %2 = load %struct.region** %__last.addr, align 8
  %3 = load %struct.region** %__result.addr, align 8
  %call = call %struct.region* @_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_(%struct.region* %1, %struct.region* %2, %struct.region* %3)
  ret %struct.region* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6regionE7destroyEPS1_(%"class.__gnu_cxx::new_allocator"* %this, %struct.region* %__p) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %struct.region*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %struct.region* %__p, %struct.region** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %0 = load %struct.region** %__p.addr, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIP6regionEvT_S2_(%struct.region* %__first, %struct.region* %__last) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  %0 = load %struct.region** %__first.addr, align 8
  %1 = load %struct.region** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP6regionEEvT_S4_(%struct.region* %0, %struct.region* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6regionE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %this, %struct.region* %__p, i64) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %struct.region*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %struct.region* %__p, %struct.region** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  %1 = load %struct.region** %__p.addr, align 8
  %2 = bitcast %struct.region* %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.map* @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.map* %__it) #9 {
entry:
  %__it.addr = alloca %struct.map*, align 8
  store %struct.map* %__it, %struct.map** %__it.addr, align 8
  %0 = load %struct.map** %__it.addr, align 8
  %call = call %struct.map* @_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_(%struct.map* %0)
  ret %struct.map* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.map* @_ZSt23__copy_move_backward_a2ILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  %0 = load %struct.map** %__first.addr, align 8
  %call = call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %0)
  %1 = load %struct.map** %__last.addr, align 8
  %call1 = call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %1)
  %2 = load %struct.map** %__result.addr, align 8
  %call2 = call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %2)
  %call3 = call %struct.map* @_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %call, %struct.map* %call1, %struct.map* %call2)
  ret %struct.map* %call3
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorI3mapSaIS0_EE8max_sizeEv(%"class.std::vector.0"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"** %this.addr
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = call dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE8max_sizeERKS2_(%"class.std::allocator.2"* dereferenceable(1) %call)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI3mapSaIS0_EE4sizeEv(%"class.std::vector.0"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"** %this.addr
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %struct.map** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %struct.map** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr %struct.map* @_ZN9__gnu_cxx13new_allocatorI3mapE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %this, i64 %__n, i8*) #2 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"** %this.addr
  %1 = load i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorI3mapE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %this1) #1
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64* %__n.addr, align 8
  %mul = mul i64 %2, 40
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %struct.map*
  ret %struct.map* %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.map* @_ZSt22__uninitialized_copy_aIP3mapS1_S0_ET0_T_S3_S2_RSaIT1_E(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result, %"class.std::allocator.2"* dereferenceable(1)) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  %.addr = alloca %"class.std::allocator.2"*, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %.addr, align 8
  %1 = load %struct.map** %__first.addr, align 8
  %2 = load %struct.map** %__last.addr, align 8
  %3 = load %struct.map** %__result.addr, align 8
  %call = call %struct.map* @_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_(%struct.map* %1, %struct.map* %2, %struct.map* %3)
  ret %struct.map* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI3mapE7destroyEPS1_(%"class.__gnu_cxx::new_allocator.3"* %this, %struct.map* %__p) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %__p.addr = alloca %struct.map*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  store %struct.map* %__p, %struct.map** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"** %this.addr
  %0 = load %struct.map** %__p.addr, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIP3mapEvT_S2_(%struct.map* %__first, %struct.map* %__last) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  %0 = load %struct.map** %__first.addr, align 8
  %1 = load %struct.map** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP3mapEEvT_S4_(%struct.map* %0, %struct.map* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI3mapE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.3"* %this, %struct.map* %__p, i64) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %__p.addr = alloca %struct.map*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  store %struct.map* %__p, %struct.map** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"** %this.addr
  %1 = load %struct.map** %__p.addr, align 8
  %2 = bitcast %struct.map* %1 to i8*
  call void @_ZdlPv(i8* %2) #1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6regionSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6regionSaIS0_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %struct.region** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %struct.region** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %struct.region** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseI6regionSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %this1, %struct.region* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl5) #1
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl6) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI3mapSaIS0_EEC2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI3mapSaIS0_EED2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %struct.map** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %struct.map** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %struct.map** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  invoke void @_ZNSt12_Vector_baseI3mapSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* %this1, %struct.map* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl5) #1
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl6) #1
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.region* @_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_(%struct.region* %__it) #7 align 2 {
entry:
  %__it.addr = alloca %struct.region*, align 8
  store %struct.region* %__it, %struct.region** %__it.addr, align 8
  %0 = load %struct.region** %__it.addr, align 8
  ret %struct.region* %0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %__it) #8 {
entry:
  %__it.addr = alloca %struct.region*, align 8
  store %struct.region* %__it, %struct.region** %__it.addr, align 8
  %0 = load %struct.region** %__it.addr, align 8
  %call = call %struct.region* @_ZNSt10_Iter_baseIP6regionLb0EE7_S_baseES1_(%struct.region* %0)
  ret %struct.region* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.region* @_ZSt22__copy_move_backward_aILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  %__simple = alloca i8, align 1
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %struct.region** %__first.addr, align 8
  %1 = load %struct.region** %__last.addr, align 8
  %2 = load %struct.region** %__result.addr, align 8
  %call = call %struct.region* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_(%struct.region* %0, %struct.region* %1, %struct.region* %2)
  ret %struct.region* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI6regionSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaI6regionEE8max_sizeERKS2_(%"class.std::allocator"* dereferenceable(1) %__a) #7 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %0 = load %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorI6regionE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %1) #1
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorI6regionE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret i64 2305843009213693951
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.region* @_ZSt18uninitialized_copyIP6regionS1_ET0_T_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  %0 = load %struct.region** %__first.addr, align 8
  %1 = load %struct.region** %__last.addr, align 8
  %2 = load %struct.region** %__result.addr, align 8
  %call = call %struct.region* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_(%struct.region* %0, %struct.region* %1, %struct.region* %2)
  ret %struct.region* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIP6regionEEvT_S4_(%struct.region*, %struct.region*) #7 align 2 {
entry:
  %.addr = alloca %struct.region*, align 8
  %.addr1 = alloca %struct.region*, align 8
  store %struct.region* %0, %struct.region** %.addr, align 8
  store %struct.region* %1, %struct.region** %.addr1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.map* @_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_(%struct.map* %__it) #7 align 2 {
entry:
  %__it.addr = alloca %struct.map*, align 8
  store %struct.map* %__it, %struct.map** %__it.addr, align 8
  %0 = load %struct.map** %__it.addr, align 8
  ret %struct.map* %0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %__it) #8 {
entry:
  %__it.addr = alloca %struct.map*, align 8
  store %struct.map* %__it, %struct.map** %__it.addr, align 8
  %0 = load %struct.map** %__it.addr, align 8
  %call = call %struct.map* @_ZNSt10_Iter_baseIP3mapLb0EE7_S_baseES1_(%struct.map* %0)
  ret %struct.map* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.map* @_ZSt22__copy_move_backward_aILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  %__simple = alloca i8, align 1
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %struct.map** %__first.addr, align 8
  %1 = load %struct.map** %__last.addr, align 8
  %2 = load %struct.map** %__result.addr, align 8
  %call = call %struct.map* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_(%struct.map* %0, %struct.map* %1, %struct.map* %2)
  ret %struct.map* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseI3mapSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"** %this.addr
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaI3mapEE8max_sizeERKS2_(%"class.std::allocator.2"* dereferenceable(1) %__a) #7 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %__a.addr, align 8
  %0 = load %"class.std::allocator.2"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.2"* %0 to %"class.__gnu_cxx::new_allocator.3"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorI3mapE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %1) #1
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorI3mapE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"** %this.addr
  ret i64 461168601842738790
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.map* @_ZSt18uninitialized_copyIP3mapS1_ET0_T_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  %0 = load %struct.map** %__first.addr, align 8
  %1 = load %struct.map** %__last.addr, align 8
  %2 = load %struct.map** %__result.addr, align 8
  %call = call %struct.map* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_(%struct.map* %0, %struct.map* %1, %struct.map* %2)
  ret %struct.map* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIP3mapEEvT_S4_(%struct.map*, %struct.map*) #7 align 2 {
entry:
  %.addr = alloca %struct.map*, align 8
  %.addr1 = alloca %struct.map*, align 8
  store %struct.map* %0, %struct.map** %.addr, align 8
  store %struct.map* %1, %struct.map** %.addr1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %this, %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaI6regionEC2Ev(%"class.std::allocator"* %0) #1
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %this1, i32 0, i32 0
  store %struct.region* null, %struct.region** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %this1, i32 0, i32 1
  store %struct.region* null, %struct.region** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %this1, i32 0, i32 2
  store %struct.region* null, %struct.region** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6regionSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %this, %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaI6regionED2Ev(%"class.std::allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %this, %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %this1 to %"class.std::allocator.2"*
  call void @_ZNSaI3mapEC2Ev(%"class.std::allocator.2"* %0) #1
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %this1, i32 0, i32 0
  store %struct.map* null, %struct.map** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %this1, i32 0, i32 1
  store %struct.map* null, %struct.map** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %this1, i32 0, i32 2
  store %struct.map* null, %struct.map** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI3mapSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %this) unnamed_addr #8 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %this, %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"** %this.addr
  %0 = bitcast %"struct.std::_Vector_base<map, std::allocator<map> >::_Vector_impl"* %this1 to %"class.std::allocator.2"*
  call void @_ZNSaI3mapED2Ev(%"class.std::allocator.2"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.region* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI6regionEEPT_PKS4_S7_S5_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #7 align 2 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  %_Num = alloca i64, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  %0 = load %struct.region** %__last.addr, align 8
  %1 = load %struct.region** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.region** %__result.addr, align 8
  %4 = load i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds %struct.region* %3, i64 %idx.neg
  %5 = bitcast %struct.region* %add.ptr to i8*
  %6 = load %struct.region** %__first.addr, align 8
  %7 = bitcast %struct.region* %6 to i8*
  %8 = load i64* %_Num, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.region** %__result.addr, align 8
  %10 = load i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds %struct.region* %9, i64 %idx.neg1
  ret %struct.region* %add.ptr2
}

; Function Attrs: uwtable
define linkonce_odr %struct.region* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP6regionS3_EET0_T_S5_S4_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #2 align 2 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  %0 = load %struct.region** %__first.addr, align 8
  %1 = load %struct.region** %__last.addr, align 8
  %2 = load %struct.region** %__result.addr, align 8
  %call = call %struct.region* @_ZSt4copyIP6regionS1_ET0_T_S3_S2_(%struct.region* %0, %struct.region* %1, %struct.region* %2)
  ret %struct.region* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.map* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bI3mapEEPT_PKS4_S7_S5_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #7 align 2 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  %_Num = alloca i64, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  %0 = load %struct.map** %__last.addr, align 8
  %1 = load %struct.map** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.map** %__result.addr, align 8
  %4 = load i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds %struct.map* %3, i64 %idx.neg
  %5 = bitcast %struct.map* %add.ptr to i8*
  %6 = load %struct.map** %__first.addr, align 8
  %7 = bitcast %struct.map* %6 to i8*
  %8 = load i64* %_Num, align 8
  %mul = mul i64 40, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.map** %__result.addr, align 8
  %10 = load i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds %struct.map* %9, i64 %idx.neg1
  ret %struct.map* %add.ptr2
}

; Function Attrs: uwtable
define linkonce_odr %struct.map* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP3mapS3_EET0_T_S5_S4_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #2 align 2 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  %0 = load %struct.map** %__first.addr, align 8
  %1 = load %struct.map** %__last.addr, align 8
  %2 = load %struct.map** %__result.addr, align 8
  %call = call %struct.map* @_ZSt4copyIP3mapS1_ET0_T_S3_S2_(%struct.map* %0, %struct.map* %1, %struct.map* %2)
  ret %struct.map* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI6regionEC2Ev(%"class.std::allocator"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI6regionEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI6regionED2Ev(%"class.std::allocator"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"** %this.addr
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI6regionED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI3mapEC2Ev(%"class.std::allocator.2"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %this.addr, align 8
  %this1 = load %"class.std::allocator.2"** %this.addr
  %0 = bitcast %"class.std::allocator.2"* %this1 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorI3mapEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaI3mapED2Ev(%"class.std::allocator.2"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %this.addr, align 8
  %this1 = load %"class.std::allocator.2"** %this.addr
  %0 = bitcast %"class.std::allocator.2"* %this1 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorI3mapED2Ev(%"class.__gnu_cxx::new_allocator.3"* %0) #1
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.region* @_ZSt4copyIP6regionS1_ET0_T_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  %0 = load %struct.region** %__first.addr, align 8
  %call = call %struct.region* @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.region* %0)
  %1 = load %struct.region** %__last.addr, align 8
  %call1 = call %struct.region* @_ZSt12__miter_baseIP6regionENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.region* %1)
  %2 = load %struct.region** %__result.addr, align 8
  %call2 = call %struct.region* @_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %call, %struct.region* %call1, %struct.region* %2)
  ret %struct.region* %call2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.map* @_ZSt4copyIP3mapS1_ET0_T_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  %0 = load %struct.map** %__first.addr, align 8
  %call = call %struct.map* @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.map* %0)
  %1 = load %struct.map** %__last.addr, align 8
  %call1 = call %struct.map* @_ZSt12__miter_baseIP3mapENSt11_Miter_baseIT_E13iterator_typeES3_(%struct.map* %1)
  %2 = load %struct.map** %__result.addr, align 8
  %call2 = call %struct.map* @_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %call, %struct.map* %call1, %struct.map* %2)
  ret %struct.map* %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6regionEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6regionED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI3mapEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"** %this.addr
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI3mapED2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.3"** %this.addr
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.region* @_ZSt14__copy_move_a2ILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  %0 = load %struct.region** %__first.addr, align 8
  %call = call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %0)
  %1 = load %struct.region** %__last.addr, align 8
  %call1 = call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %1)
  %2 = load %struct.region** %__result.addr, align 8
  %call2 = call %struct.region* @_ZSt12__niter_baseIP6regionENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.region* %2)
  %call3 = call %struct.region* @_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %call, %struct.region* %call1, %struct.region* %call2)
  ret %struct.region* %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.map* @_ZSt14__copy_move_a2ILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  %0 = load %struct.map** %__first.addr, align 8
  %call = call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %0)
  %1 = load %struct.map** %__last.addr, align 8
  %call1 = call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %1)
  %2 = load %struct.map** %__result.addr, align 8
  %call2 = call %struct.map* @_ZSt12__niter_baseIP3mapENSt11_Niter_baseIT_E13iterator_typeES3_(%struct.map* %2)
  %call3 = call %struct.map* @_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %call, %struct.map* %call1, %struct.map* %call2)
  ret %struct.map* %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.region* @_ZSt13__copy_move_aILb0EP6regionS1_ET1_T0_S3_S2_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #9 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  %__simple = alloca i8, align 1
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %struct.region** %__first.addr, align 8
  %1 = load %struct.region** %__last.addr, align 8
  %2 = load %struct.region** %__result.addr, align 8
  %call = call %struct.region* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_(%struct.region* %0, %struct.region* %1, %struct.region* %2)
  ret %struct.region* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %struct.map* @_ZSt13__copy_move_aILb0EP3mapS1_ET1_T0_S3_S2_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #9 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  %__simple = alloca i8, align 1
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %struct.map** %__first.addr, align 8
  %1 = load %struct.map** %__last.addr, align 8
  %2 = load %struct.map** %__result.addr, align 8
  %call = call %struct.map* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_(%struct.map* %0, %struct.map* %1, %struct.map* %2)
  ret %struct.map* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.region* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI6regionEEPT_PKS4_S7_S5_(%struct.region* %__first, %struct.region* %__last, %struct.region* %__result) #7 align 2 {
entry:
  %__first.addr = alloca %struct.region*, align 8
  %__last.addr = alloca %struct.region*, align 8
  %__result.addr = alloca %struct.region*, align 8
  %_Num = alloca i64, align 8
  store %struct.region* %__first, %struct.region** %__first.addr, align 8
  store %struct.region* %__last, %struct.region** %__last.addr, align 8
  store %struct.region* %__result, %struct.region** %__result.addr, align 8
  %0 = load %struct.region** %__last.addr, align 8
  %1 = load %struct.region** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.region* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.region* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.region** %__result.addr, align 8
  %4 = bitcast %struct.region* %3 to i8*
  %5 = load %struct.region** %__first.addr, align 8
  %6 = bitcast %struct.region* %5 to i8*
  %7 = load i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.region** %__result.addr, align 8
  %9 = load i64* %_Num, align 8
  %add.ptr = getelementptr inbounds %struct.region* %8, i64 %9
  ret %struct.region* %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.map* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI3mapEEPT_PKS4_S7_S5_(%struct.map* %__first, %struct.map* %__last, %struct.map* %__result) #7 align 2 {
entry:
  %__first.addr = alloca %struct.map*, align 8
  %__last.addr = alloca %struct.map*, align 8
  %__result.addr = alloca %struct.map*, align 8
  %_Num = alloca i64, align 8
  store %struct.map* %__first, %struct.map** %__first.addr, align 8
  store %struct.map* %__last, %struct.map** %__last.addr, align 8
  store %struct.map* %__result, %struct.map** %__result.addr, align 8
  %0 = load %struct.map** %__last.addr, align 8
  %1 = load %struct.map** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.map* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.map* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.map** %__result.addr, align 8
  %4 = bitcast %struct.map* %3 to i8*
  %5 = load %struct.map** %__first.addr, align 8
  %6 = bitcast %struct.map* %5 to i8*
  %7 = load i64* %_Num, align 8
  %mul = mul i64 40, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.map** %__result.addr, align 8
  %9 = load i64* %_Num, align 8
  %add.ptr = getelementptr inbounds %struct.map* %8, i64 %9
  ret %struct.map* %add.ptr
}

; Function Attrs: nounwind uwtable
define i32 @_Z7comparePKvS0_(i8* %elem1, i8* %elem2) #7 {
entry:
  %elem1.addr = alloca i8*, align 8
  %elem2.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  store i8* %elem1, i8** %elem1.addr, align 8
  store i8* %elem2, i8** %elem2.addr, align 8
  %0 = load i8** %elem1.addr, align 8
  %1 = bitcast i8* %0 to %struct.myStringStruct*
  %qstring = getelementptr inbounds %struct.myStringStruct* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [128 x i8]* %qstring, i32 0, i32 0
  %2 = load i8** %elem2.addr, align 8
  %3 = bitcast i8* %2 to %struct.myStringStruct*
  %qstring1 = getelementptr inbounds %struct.myStringStruct* %3, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [128 x i8]* %qstring1, i32 0, i32 0
  %strcmp_ptr = alloca i32 (i8*, i8*)*, align 8
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %strcmp_ptr, align 8
  %4 = load i32 (i8*, i8*)** %strcmp_ptr, align 8
  %call = call i32 %4(i8* %arraydecay, i8* %arraydecay2)
  store i32 %call, i32* %result, align 4
  %5 = load i32* %result, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32* %result, align 4
  %cmp3 = icmp eq i32 %6, 0
  %cond = select i1 %cmp3, i32 0, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  ret i32 %cond4
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #11

; Function Attrs: uwtable
define i32 @_Z6c_mainiPPc(i32 %argc, i8** %argv) #2 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %array = alloca [60000 x %struct.myStringStruct], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8
  %fprintf_ptr = alloca i32 (%struct._IO_FILE*, i8*, ...)*, align 8
  store i32 (%struct._IO_FILE*, i8*, ...)* @fprintf, i32 (%struct._IO_FILE*, i8*, ...)** %fprintf_ptr, align 8
  %2 = load i32 (%struct._IO_FILE*, i8*, ...)** %fprintf_ptr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* %2(%struct._IO_FILE* %1, i8* getelementptr inbounds ([27 x i8]* @.str1, i32 0, i32 0))
  %exit_ptr = alloca void (i32)*, align 8
  store void (i32)* @exit, void (i32)** %exit_ptr, align 8
  %3 = load void (i32)** %exit_ptr, align 8
  call void %3(i32 -1)
  unreachable

if.else:                                          ; preds = %entry
  %4 = load i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8** %4, i64 1
  %5 = load i8** %arrayidx, align 8
  %fopen_ptr = alloca %struct._IO_FILE* (i8*, i8*)*, align 8
  store %struct._IO_FILE* (i8*, i8*)* @fopen, %struct._IO_FILE* (i8*, i8*)** %fopen_ptr, align 8
  %6 = load %struct._IO_FILE* (i8*, i8*)** %fopen_ptr, align 8
  %call1 = call %struct._IO_FILE* %6(i8* %5, i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %7 = load %struct._IO_FILE** %fp, align 8
  %8 = load i32* %count, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %idxprom
  %qstring = getelementptr inbounds %struct.myStringStruct* %arrayidx2, i32 0, i32 0
  %fscanf_ptr = alloca i32 (%struct._IO_FILE*, i8*, ...)*, align 8
  store i32 (%struct._IO_FILE*, i8*, ...)* @fscanf, i32 (%struct._IO_FILE*, i8*, ...)** %fscanf_ptr, align 8
  %9 = load i32 (%struct._IO_FILE*, i8*, ...)** %fscanf_ptr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* %9(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), [128 x i8]* %qstring)
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i32* %count, align 4
  %cmp5 = icmp slt i32 %10, 60000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32* %count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end
  %13 = load i32* %count, align 4
  %printf_ptr = alloca i32 (i8*, ...)*, align 8
  store i32 (i8*, ...)* @printf, i32 (i8*, ...)** %printf_ptr, align 8
  %14 = load i32 (i8*, ...)** %printf_ptr, align 8
  %call6 = call i32 (i8*, ...)* %14(i8* getelementptr inbounds ([24 x i8]* @.str33, i32 0, i32 0), i32 %13)
  %arraydecay = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i32 0
  %15 = bitcast %struct.myStringStruct* %arraydecay to i8*
  %16 = load i32* %count, align 4
  %conv = sext i32 %16 to i64
  %qsort_ptr = alloca void (i8*, i64, i64, i32 (i8*, i8*)*)*, align 8
  store void (i8*, i64, i64, i32 (i8*, i8*)*)* @qsort, void (i8*, i64, i64, i32 (i8*, i8*)*)** %qsort_ptr, align 8
  %17 = load void (i8*, i64, i64, i32 (i8*, i8*)*)** %qsort_ptr, align 8
  call void %17(i8* %15, i64 %conv, i64 128, i32 (i8*, i8*)* @_Z7comparePKvS0_)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32* %i, align 4
  %19 = load i32* %count, align 4
  %cmp7 = icmp slt i32 %18, %19
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32* %i, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %idxprom8
  %qstring10 = getelementptr inbounds %struct.myStringStruct* %arrayidx9, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [128 x i8]* %qstring10, i32 0, i32 0
  %printf_ptr1 = alloca i32 (i8*, ...)*, align 8
  store i32 (i8*, ...)* @printf, i32 (i8*, ...)** %printf_ptr1, align 8
  %21 = load i32 (i8*, ...)** %printf_ptr1, align 8
  %call12 = call i32 (i8*, ...)* %21(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %arraydecay11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32* %i, align 4
  %inc13 = add nsw i32 %22, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

declare %struct._IO_FILE* @fopen(i8*, i8*) #0

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @printf(i8*, ...) #0

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #0

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #2 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %r = alloca %struct.region*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 (i32, ...)* @_Z10c_init_regiz(i32 1, i64 0)
  %call1 = call dereferenceable(8) %struct.region* @_ZNSt6vectorI6regionSaIS0_EEixEm(%"class.std::vector"* @_region_table, i64 0)
  store %struct.region* %call1, %struct.region** %r, align 8
  %0 = load %struct.region** %r, align 8
  %1 = load %struct.region** %r, align 8
  %call2 = call i32 (i32, ...)* @_Z10c_init_mapiz(i32 3, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), i8* bitcast (i32 (i8*, i8*)* @_Z7comparePKvS0_ to i8*), i8* getelementptr inbounds ([4096 x i8]* @spm_code, i32 0, i32 0), i32 112, %struct.region* %0, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* bitcast (i32 (i32, i8**)* @_Z6c_mainiPPc to i8*), i8* getelementptr inbounds ([4096 x i8]* @spm_code, i32 0, i32 0), i32 688, %struct.region* %1, i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i8* bitcast (i32 (i32, i8**)* @_Z6c_mainiPPc to i8*), i64 0, i32 0, i64 0)
  %2 = load i32* %argc.addr, align 4
  %3 = load i8*** %argv.addr, align 8
  %c_call_abs = alloca i32 (i8*, i32 (i32, i8**)*, i32, i8**)*, align 8
  store i32 (i8*, i32 (i32, i8**)*, i32, i8**)* @_Z6c_call, i32 (i8*, i32 (i32, i8**)*, i32, i8**)** %c_call_abs, align 8
  %4 = load i32 (i8*, i32 (i32, i8**)*, i32, i8**)** %c_call_abs, align 8
  %call3 = call i32 %4(i8* bitcast (i32 (i32, i8**)* @main to i8*), i32 (i32, i8**)* @_Z6c_mainiPPc, i32 %2, i8** %3)
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.region* @_ZNSt6vectorI6regionSaIS0_EEixEm(%"class.std::vector"* %this, i64 %__n) #7 align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"** %this.addr
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<region, std::allocator<region> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %struct.region** %_M_start, align 8
  %2 = load i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %struct.region* %1, i64 %2
  ret %struct.region* %add.ptr
}

; Function Attrs: uwtable
define linkonce_odr i32 @_Z6c_call(i8* %caller, i32 (i32, i8**)* %callee, i32 %arg0, i8** %arg1) #12 {
entry:
  %caller.addr = alloca i8*, align 8
  %callee.addr = alloca i32 (i32, i8**)*, align 8
  %callee_arg0.addr = alloca i32
  %callee_arg1.addr = alloca i8**
  %callee_spm = alloca i32 (i32, i8**)*, align 8
  %ret_val = alloca i32, align 4
  store i8* %caller, i8** %caller.addr, align 8
  store i32 (i32, i8**)* %callee, i32 (i32, i8**)** %callee.addr, align 8
  store i32 %arg0, i32* %callee_arg0.addr, align 4
  store i8** %arg1, i8*** %callee_arg1.addr, align 4
  %0 = load i32 (i32, i8**)** %callee.addr, align 8
  %1 = bitcast i32 (i32, i8**)* %0 to i8*
  %call = call i8* @_Z5c_getPc(i8* %1)
  %2 = bitcast i8* %call to i32 (i32, i8**)*
  store i32 (i32, i8**)* %2, i32 (i32, i8**)** %callee_spm, align 8
  %3 = load i32 (i32, i8**)** %callee_spm, align 8
  %4 = load i32* %callee_arg0.addr
  %5 = load i8*** %callee_arg1.addr
  %6 = call i32 %3(i32 %4, i8** %5)
  store i32 %6, i32* %ret_val, align 4
  %7 = load i8** %caller.addr, align 8
  %8 = bitcast i8* %7 to i8*
  %call2 = call i8* @_Z5c_getPc(i8* %8)
  %9 = load i32* %ret_val, align 4
  ret i32 %9
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { uwtable }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.ident = !{!0, !0}

!0 = metadata !{metadata !"clang version 3.6.0 (trunk 220547)"}
