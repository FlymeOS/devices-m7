.class Lcom/android/internal/os/ZygoteInit$HtcPreload;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcPreload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;,
        Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadResourcesTask;,
        Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadCustomizationTask;
    }
.end annotation


# instance fields
.field private HEAP_DEFAULT_UTILIZATION:F

.field private MAX_PRELOAD_CLASSES_THREAD:I

.field private MAX_TIMEOUT_NANOS:J

.field private MIN_PRELOAD_CLASSES:I

.field private mClasses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultThreadPriority:I

.field private mPreloadFail:Z

.field private mStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    sget v0, Lcom/android/internal/os/ZygoteInit;->PRELOADCLASSES_THREAD_NUMBER:I

    iput v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    .line 1054
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MIN_PRELOAD_CLASSES:I

    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MIN_PRELOAD_CLASSES:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mClasses:Ljava/util/ArrayList;

    .line 1057
    const-wide v0, 0xdf8475800L

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_TIMEOUT_NANOS:J

    .line 1060
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mDefaultThreadPriority:I

    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mPreloadFail:Z

    .line 1310
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/ZygoteInit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/ZygoteInit$1;

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload;-><init>()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/os/ZygoteInit$HtcPreload;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/ZygoteInit$HtcPreload;
    .param p1, "x1"    # Z

    .prologue
    .line 1048
    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mPreloadFail:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/os/ZygoteInit$HtcPreload;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/ZygoteInit$HtcPreload;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mClasses:Ljava/util/ArrayList;

    return-object v0
.end method

.method private dumpPoolCallstack()V
    .locals 13

    .prologue
    .line 1248
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v6

    .line 1249
    .local v6, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-nez v6, :cond_1

    .line 1268
    :cond_0
    return-void

    .line 1250
    :cond_1
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1252
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1253
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Thread;

    .line 1254
    .local v9, "t":Ljava/lang/Thread;
    if-eqz v9, :cond_2

    .line 1256
    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1257
    .local v8, "strName":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 1258
    const-string/jumbo v10, "pool"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1260
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    .line 1261
    .local v7, "stackTrace":[Ljava/lang/StackTraceElement;
    if-eqz v7, :cond_2

    .line 1263
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " stack trace:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 1265
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private preloadFinish()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1209
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    .line 1210
    .local v10, "runtime":Ldalvik/system/VMRuntime;
    iget v1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->HEAP_DEFAULT_UTILIZATION:F

    invoke-virtual {v10, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1213
    const-string v1, "Zygote"

    const-string/jumbo v2, "preloadDexCaches++"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 1215
    const-string v1, "Zygote"

    const-string/jumbo v2, "preloadDexCaches--"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    # invokes: Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->access$200(I)V

    .line 1219
    # invokes: Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->access$100(I)V

    .line 1224
    :try_start_0
    sget v1, Landroid/system/OsConstants;->PR_SET_DUMPABLE:I

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :goto_0
    const-string v1, "Zygote"

    const-string/jumbo v2, "preloadOpenGL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$300()V

    .line 1234
    const-string v1, "Zygote"

    const-string/jumbo v2, "preloadSharedLibraries"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$400()V

    .line 1239
    const-string v1, "Zygote"

    const-string/jumbo v2, "prepareWebViewInZygote++"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 1241
    const-string v1, "Zygote"

    const-string/jumbo v2, "prepareWebViewInZygote--"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mDefaultThreadPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 1244
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...preloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return-void

    .line 1226
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occues when set PR_SET_DUMPABLE, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private preloadInit()V
    .locals 18

    .prologue
    .line 1145
    const-string v3, "Zygote"

    const-string v4, "Preloading..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    .line 1149
    .local v17, "t":Ljava/lang/Thread;
    if-eqz v17, :cond_0

    .line 1150
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->getPriority()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mDefaultThreadPriority:I

    .line 1151
    const/16 v3, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 1154
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mStartTime:J

    .line 1158
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v16

    .line 1159
    .local v16, "runtime":Ldalvik/system/VMRuntime;
    invoke-virtual/range {v16 .. v16}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->HEAP_DEFAULT_UTILIZATION:F

    .line 1160
    const v3, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1163
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string/jumbo v4, "preloaded-classes"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 1165
    .local v14, "is":Ljava/io/InputStream;
    if-nez v14, :cond_1

    .line 1166
    const-string v3, "Zygote"

    const-string v4, "Couldn\'t find preloaded-classes."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1189
    invoke-virtual/range {v16 .. v16}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 1192
    const/16 v3, 0x270f

    # invokes: Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->access$100(I)V

    .line 1193
    const/16 v3, 0x270f

    # invokes: Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->access$200(I)V

    .line 1198
    :try_start_0
    sget v3, Landroid/system/OsConstants;->PR_SET_DUMPABLE:I

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1205
    :goto_1
    return-void

    .line 1169
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1172
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 1174
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1175
    const-string v3, "#"

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mClasses:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1180
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1181
    .local v12, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "Zygote"

    const-string v4, "Error reading preloaded-classes."

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1183
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v12    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_3
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 1200
    :catch_1
    move-exception v13

    .line 1202
    .local v13, "ex":Ljava/lang/Exception;
    const-string v3, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occues when set PR_SET_DUMPABLE, e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private throwRuntimeException(Ljava/lang/String;)V
    .locals 1
    .param p1, "strDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public preload()V
    .locals 14

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->preloadInit()V

    .line 1068
    iget v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    add-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 1071
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v12, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadCustomizationTask;

    invoke-direct {v12, p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadCustomizationTask;-><init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;)V

    invoke-interface {v1, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1074
    iget-object v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mClasses:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1075
    .local v7, "nSize":I
    iget v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    mul-int/lit8 v12, v12, 0xa

    if-le v7, v12, :cond_1

    .line 1076
    iget v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    div-int v5, v7, v12

    .line 1077
    .local v5, "nNumber":I
    const/4 v6, 0x0

    .line 1078
    .local v6, "nPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    if-ge v4, v12, :cond_2

    .line 1080
    iget v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_PRELOAD_CLASSES_THREAD:I

    add-int/lit8 v12, v12, -0x1

    if-ne v12, v4, :cond_0

    .line 1081
    new-instance v12, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;

    sub-int v13, v7, v6

    invoke-direct {v12, p0, v6, v13}, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;-><init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;II)V

    invoke-interface {v1, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1085
    :goto_1
    add-int/2addr v6, v5

    .line 1078
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1083
    :cond_0
    new-instance v12, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;

    invoke-direct {v12, p0, v6, v5}, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;-><init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;II)V

    invoke-interface {v1, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1087
    .end local v4    # "i":I
    .end local v5    # "nNumber":I
    .end local v6    # "nPos":I
    :cond_1
    if-lez v7, :cond_2

    .line 1089
    new-instance v12, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13, v7}, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadClassesTask;-><init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;II)V

    invoke-interface {v1, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1093
    :cond_2
    new-instance v12, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadResourcesTask;

    invoke-direct {v12, p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadResourcesTask;-><init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;)V

    invoke-interface {v1, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1096
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1099
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 1100
    .local v10, "startNanos":J
    iget-wide v8, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_TIMEOUT_NANOS:J

    .line 1101
    .local v8, "sleepNanos":J
    const/4 v0, 0x0

    .line 1104
    .local v0, "bTimeout":Z
    :cond_3
    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8, v9, v12}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :goto_2
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1123
    :goto_3
    iget-boolean v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->mPreloadFail:Z

    if-eqz v12, :cond_4

    .line 1124
    const-string v12, "Zygote preload fail"

    invoke-direct {p0, v12}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->throwRuntimeException(Ljava/lang/String;)V

    .line 1128
    :cond_4
    if-eqz v0, :cond_5

    .line 1130
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->dumpPoolCallstack()V

    .line 1133
    const-string v12, "Zygote preload timeout"

    invoke-direct {p0, v12}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->throwRuntimeException(Ljava/lang/String;)V

    .line 1137
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->preloadFinish()V

    .line 1138
    return-void

    .line 1112
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v2, v12, v10

    .line 1113
    .local v2, "elapsedNanos":J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-gtz v12, :cond_7

    const-wide/16 v2, 0x0

    .line 1114
    :cond_7
    iget-wide v12, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload;->MAX_TIMEOUT_NANOS:J

    sub-long v8, v12, v2

    .line 1115
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-gtz v12, :cond_3

    .line 1116
    const/4 v0, 0x1

    .line 1117
    goto :goto_3

    .line 1105
    .end local v2    # "elapsedNanos":J
    :catch_0
    move-exception v12

    goto :goto_2
.end method
