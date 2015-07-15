.class Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsedPackageCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;,
        Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;
    }
.end annotation


# instance fields
.field private EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MAX_TIMEOUT_NANOS:J

.field private mArySeparateProcesses:[Ljava/lang/String;

.field private final mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAppPath:Ljava/lang/String;

.field private mDataPreloadAppPath:Ljava/lang/String;

.field private mDefaultParseFlags:I

.field private mExit:Z

.field private mFinished:Z

.field private mParseCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSysAppPath:Ljava/lang/String;

.field private mSysFramePath:Ljava/lang/String;

.field private mSysPrivAppPath:Ljava/lang/String;

.field private final mlstApks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mlstSkips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15790
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    .line 15801
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    .line 15802
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15804
    const-wide v0, 0x45d964b800L

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->MAX_TIMEOUT_NANOS:J

    .line 15806
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    .line 15807
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExit:Z

    .line 15809
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mParseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->EMPTY_LIST:Ljava/util/List;

    .line 16017
    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15790
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExit:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15790
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mParseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15790
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15790
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15790
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->getParseFlags(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15790
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15790
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->isDataApk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15790
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    .prologue
    .line 15790
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private getParseFlags(Ljava/lang/String;)I
    .locals 2
    .param p1, "strPkgPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 15961
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysPrivAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 15962
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit16 v0, v0, 0xc5

    .line 16000
    :goto_0
    return v0

    .line 15970
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 15971
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit8 v0, v0, 0x45

    goto :goto_0

    .line 15978
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_2

    .line 15979
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 15984
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_3

    .line 15985
    const v0, 0x300004

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/2addr v0, v1

    goto :goto_0

    .line 15992
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysFramePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_4

    .line 15993
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit16 v0, v0, 0xc5

    goto :goto_0

    .line 16000
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isDataApk(Ljava/lang/String;)Z
    .locals 2
    .param p1, "strPkgPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 16005
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataAppPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 16014
    :cond_0
    :goto_0
    return v0

    .line 16010
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 16014
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSkipPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "strPath"    # Ljava/lang/String;

    .prologue
    .line 15945
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->getParseFlags(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 15946
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15948
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 15951
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    if-eqz v0, :cond_0

    .line 15952
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15953
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 15954
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15956
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExit:Z

    .line 15957
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "strPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 15927
    if-nez p1, :cond_1

    .line 15932
    :cond_0
    :goto_0
    return-object v1

    .line 15928
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;

    .line 15929
    .local v0, "item":Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;
    if-eqz v0, :cond_0

    .line 15930
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;->pkg:Landroid/content/pm/PackageParser$Package;

    goto :goto_0
.end method

.method public getSupportedAbis(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "strPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 15936
    if-nez p1, :cond_1

    .line 15941
    :cond_0
    :goto_0
    return-object v1

    .line 15937
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;

    .line 15938
    .local v0, "item":Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;
    if-eqz v0, :cond_0

    .line 15939
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;->lstAbis:Ljava/util/List;

    goto :goto_0
.end method

.method public run()V
    .locals 25

    .prologue
    .line 15825
    const-string v22, "PackageManager"

    const-string v23, "preparsing++"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15827
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v12

    .line 15828
    .local v12, "nCores":I
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    .line 15829
    const/4 v12, 0x2

    .line 15835
    :cond_0
    :goto_0
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "framework"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15836
    .local v20, "sysFrameDir":Ljava/io/File;
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "priv-app"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15837
    .local v21, "sysPrivAppDir":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "app"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15838
    .local v15, "sysAppDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "app"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15839
    .local v5, "dataAppDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "preload"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15841
    .local v6, "dataPreloadAppDir":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysFramePath:Ljava/lang/String;

    .line 15842
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysPrivAppPath:Ljava/lang/String;

    .line 15843
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysAppPath:Ljava/lang/String;

    .line 15844
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataAppPath:Ljava/lang/String;

    .line 15845
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath:Ljava/lang/String;

    .line 15847
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 15848
    .local v11, "lstDir":[Ljava/io/File;
    if-eqz v11, :cond_1

    .line 15849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15851
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 15852
    if-eqz v11, :cond_2

    .line 15853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15855
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 15856
    if-eqz v11, :cond_3

    .line 15857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15859
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 15860
    if-eqz v11, :cond_4

    .line 15861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15863
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 15864
    if-eqz v11, :cond_5

    .line 15865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15867
    :cond_5
    const/4 v11, 0x0

    .line 15870
    const-string v22, "debug.separate_processes"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 15871
    .local v14, "separateProcesses":Ljava/lang/String;
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_8

    .line 15872
    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 15873
    const/16 v22, 0x8

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    .line 15874
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    .line 15885
    :goto_1
    invoke-static {v12}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 15888
    .local v7, "executor":Ljava/util/concurrent/ExecutorService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v13

    .line 15889
    .local v13, "nTotals":I
    const-string v22, "PackageManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "preparsing apk:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " core:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15890
    if-eqz v13, :cond_9

    .line 15891
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v12, :cond_9

    .line 15892
    new-instance v22, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v12, v13}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;-><init>(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;III)V

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 15891
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 15830
    .end local v5    # "dataAppDir":Ljava/io/File;
    .end local v6    # "dataPreloadAppDir":Ljava/io/File;
    .end local v7    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v10    # "i":I
    .end local v11    # "lstDir":[Ljava/io/File;
    .end local v13    # "nTotals":I
    .end local v14    # "separateProcesses":Ljava/lang/String;
    .end local v15    # "sysAppDir":Ljava/io/File;
    .end local v20    # "sysFrameDir":Ljava/io/File;
    .end local v21    # "sysPrivAppDir":Ljava/io/File;
    :cond_6
    const/16 v22, 0x4

    move/from16 v0, v22

    if-le v12, v0, :cond_0

    .line 15831
    const/4 v12, 0x4

    goto/16 :goto_0

    .line 15876
    .restart local v5    # "dataAppDir":Ljava/io/File;
    .restart local v6    # "dataPreloadAppDir":Ljava/io/File;
    .restart local v11    # "lstDir":[Ljava/io/File;
    .restart local v14    # "separateProcesses":Ljava/lang/String;
    .restart local v15    # "sysAppDir":Ljava/io/File;
    .restart local v20    # "sysFrameDir":Ljava/io/File;
    .restart local v21    # "sysPrivAppDir":Ljava/io/File;
    :cond_7
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    .line 15877
    const-string v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    goto :goto_1

    .line 15880
    :cond_8
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    .line 15881
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    goto :goto_1

    .line 15897
    .restart local v7    # "executor":Ljava/util/concurrent/ExecutorService;
    .restart local v13    # "nTotals":I
    :cond_9
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 15900
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 15901
    .local v18, "startNanos":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->MAX_TIMEOUT_NANOS:J

    move-wide/from16 v16, v0

    .line 15902
    .local v16, "sleepNanos":J
    const/4 v4, 0x0

    .line 15905
    .local v4, "bTimeout":Z
    :cond_a
    :try_start_0
    sget-object v22, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    move-object/from16 v2, v22

    invoke-interface {v7, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15909
    :goto_3
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 15922
    :goto_4
    if-nez v4, :cond_d

    const/16 v22, 0x1

    :goto_5
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    .line 15923
    const-string v22, "PackageManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "preparsing--, finished:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15924
    return-void

    .line 15913
    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v8, v22, v18

    .line 15914
    .local v8, "elapsedNanos":J
    const-wide/16 v22, 0x0

    cmp-long v22, v8, v22

    if-gtz v22, :cond_c

    const-wide/16 v8, 0x0

    .line 15915
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->MAX_TIMEOUT_NANOS:J

    move-wide/from16 v22, v0

    sub-long v16, v22, v8

    .line 15916
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-gtz v22, :cond_a

    .line 15917
    const/4 v4, 0x1

    .line 15918
    goto :goto_4

    .line 15922
    .end local v8    # "elapsedNanos":J
    :cond_d
    const/16 v22, 0x0

    goto :goto_5

    .line 15906
    :catch_0
    move-exception v22

    goto :goto_3
.end method
