.class public Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "HtcActivityChooserModel.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Lcom/htc/lib1/cc/widget/m;

.field private mActivitySorter:Lcom/htc/lib1/cc/widget/l;

.field private mAllows:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private mExcludes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z

.field private mUsePackageName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    const-class v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 451
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivities:Ljava/util/List;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mIntents:Ljava/util/List;

    .line 286
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$DefaultSorter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$DefaultSorter;-><init>(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/lib1/cc/widget/l;

    .line 291
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryMaxSize:I

    .line 301
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    .line 312
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 320
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 325
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mReloadActivities:Z

    .line 336
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    .line 341
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    .line 346
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;

    .line 356
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mUsePackageName:Z

    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    .line 453
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 461
    :goto_0
    return-void

    .line 457
    :cond_0
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;)Z
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->addHisoricalRecord(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->setDefaultWeight()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;Z)Z
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    return p1
.end method

.method private addHisoricalRecord(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;)Z
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 916
    if-eqz v0, :cond_0

    .line 917
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 918
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 919
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 920
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 921
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->notifyChanged()V

    .line 923
    :cond_0
    return v0
.end method

.method private ensureConsistentState()V
    .locals 2

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->loadActivitiesIfNeeded()Z

    move-result v0

    .line 813
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->readHistoricalDataIfNeeded()Z

    move-result v1

    or-int/2addr v0, v1

    .line 814
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 815
    if-eqz v0, :cond_0

    .line 816
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 817
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->notifyChanged()V

    .line 819
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Landroid/database/DataSetObserver;)Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;
    .locals 3

    .prologue
    .line 432
    sget-object v1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_0
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    .line 434
    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    invoke-direct {v0, p0, p1}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    sget-object v2, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->setAllowedPackages(Ljava/util/List;)V

    .line 439
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->setExcludedPackages(Ljava/util/List;)V

    .line 440
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 441
    :cond_1
    monitor-exit v1

    return-object v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadActivitiesIfNeeded()Z
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 845
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mReloadActivities:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 846
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mReloadActivities:Z

    .line 847
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 849
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 850
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 853
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v2

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 854
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 856
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v4, v2

    .line 857
    :goto_0
    if-ge v4, v9, :cond_0

    .line 858
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 859
    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 860
    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 862
    iget-object v12, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    invoke-virtual {v12, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 857
    :cond_1
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 866
    :cond_2
    iget-object v12, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    invoke-virtual {v12, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 870
    :cond_3
    iget-boolean v12, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mUsePackageName:Z

    if-eqz v12, :cond_4

    .line 871
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 873
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v10, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v10, p0, v0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;-><init>(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v3

    goto :goto_1

    .line 877
    :cond_4
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 879
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v10, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v10, p0, v0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;-><init>(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v1

    goto :goto_1

    .line 885
    :cond_5
    const/4 v2, 0x1

    .line 887
    :cond_6
    return v2
.end method

.method private persistHistoricalDataIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 717
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_2

    .line 728
    :cond_1
    :goto_0
    return-void

    .line 723
    :cond_2
    iput-boolean v5, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 724
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$PersistHistoryAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$PersistHistoryAsyncTask;-><init>(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 930
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryMaxSize:I

    sub-int v3, v0, v1

    .line 931
    if-gtz v3, :cond_1

    .line 941
    :cond_0
    return-void

    .line 934
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    move v1, v2

    .line 935
    :goto_0
    if-ge v1, v3, :cond_0

    .line 936
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;

    .line 935
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private readHistoricalDataIfNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 898
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 900
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    .line 901
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 902
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->readHistoricalDataImpl()V

    .line 905
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private readHistoricalDataImpl()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1223
    .line 1225
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1242
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1243
    const/4 v0, 0x0

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1245
    const/4 v0, 0x0

    .line 1246
    :goto_0
    if-eq v0, v8, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 1247
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1226
    :catch_0
    move-exception v0

    .line 1231
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$2;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$2;-><init>(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1300
    :cond_0
    :goto_1
    return-void

    .line 1250
    :cond_1
    :try_start_2
    const-string v0, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1251
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1287
    :catch_1
    move-exception v0

    .line 1288
    :try_start_3
    sget-object v2, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1292
    if-eqz v1, :cond_0

    .line 1294
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1295
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1255
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 1256
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1259
    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    .line 1260
    if-ne v3, v8, :cond_4

    .line 1292
    if-eqz v1, :cond_0

    .line 1294
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 1295
    :catch_3
    move-exception v0

    goto :goto_1

    .line 1263
    :cond_4
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 1266
    :try_start_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1267
    const-string v4, "historical-record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1268
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file not well-formed."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1289
    :catch_4
    move-exception v0

    .line 1290
    :try_start_8
    sget-object v2, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1292
    if-eqz v1, :cond_0

    .line 1294
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_1

    .line 1295
    :catch_5
    move-exception v0

    goto/16 :goto_1

    .line 1271
    :cond_5
    const/4 v3, 0x0

    :try_start_a
    const-string v4, "activity"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1272
    const/4 v4, 0x0

    const-string v5, "time"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1274
    const/4 v6, 0x0

    const-string v7, "weight"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1276
    new-instance v7, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1277
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 1292
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 1294
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 1297
    :cond_6
    :goto_3
    throw v0

    .line 1295
    :catch_6
    move-exception v1

    goto :goto_3
.end method

.method private setDefaultWeight()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 1397
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1400
    :try_start_0
    const-string v0, "com.htc.wrap.com.htc.customization.HtcWrapCustomizationManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1401
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 1402
    const-string v4, "READER_TYPE_XML"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 1403
    const-string v5, "getCustomizationReader"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1404
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "HTCCommonControl"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1406
    if-eqz v0, :cond_4

    .line 1407
    const-string v1, "com.htc.wrap.com.htc.customization.HtcWrapCustomizationReader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1408
    const-string v4, "readStringArray"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1409
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "htcsharevia_default_order"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 1411
    if-eqz v0, :cond_1

    .line 1412
    array-length v4, v0

    move v1, v2

    .line 1413
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1414
    const-string v5, ";"

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1415
    aget-object v5, v0, v1

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1413
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1419
    :cond_1
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Default order is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1430
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No default item!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const-string v0, "*"

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1435
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->setWeight(Landroid/util/SparseArray;)V

    .line 1436
    return-void

    .line 1422
    :cond_4
    :try_start_1
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Reader is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1424
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setWeight(Landroid/util/SparseArray;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1442
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1444
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1446
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v8

    move v3, v2

    move v1, v2

    .line 1447
    :goto_0
    if-ge v3, v8, :cond_1

    .line 1448
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1449
    if-ge v1, v0, :cond_5

    .line 1447
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 1458
    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    if-gt v4, v1, :cond_2

    move v3, v4

    .line 1459
    :goto_2
    if-gt v3, v1, :cond_0

    .line 1460
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1461
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 1462
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "*"

    invoke-direct {v8, v0, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;

    int-to-long v9, v4

    add-long/2addr v9, v6

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 1467
    iget-object v8, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v2

    .line 1459
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 1472
    :cond_2
    if-eqz v2, :cond_3

    .line 1473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 1474
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 1475
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 1476
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 1477
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->notifyChanged()V

    .line 1479
    :cond_3
    monitor-exit v5

    .line 1480
    return-void

    .line 1479
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private sortActivitiesIfNeeded()Z
    .locals 4

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/lib1/cc/widget/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/lib1/cc/widget/l;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mIntents:Ljava/util/List;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivities:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/lib1/cc/widget/l;->sort(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 833
    const/4 v0, 0x1

    .line 835
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 594
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    monitor-exit v3

    move-object v0, v1

    .line 638
    :goto_0
    return-object v0

    .line 599
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->ensureConsistentState()V

    .line 601
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    .line 603
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 609
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mIntents:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 610
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v0, v2

    .line 614
    :goto_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivityChoserModelPolicy:Lcom/htc/lib1/cc/widget/m;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 616
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 617
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivityChoserModelPolicy:Lcom/htc/lib1/cc/widget/m;

    invoke-interface {v5, p0, v2}, Lcom/htc/lib1/cc/widget/m;->a(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;Landroid/content/Intent;)Z

    move-result v2

    .line 619
    if-eqz v2, :cond_1

    .line 620
    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;

    invoke-direct {v2, p0, v4}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;-><init>(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 638
    monitor-exit v3

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 800
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 803
    return-void
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 547
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->ensureConsistentState()V

    .line 549
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityCount()I
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    :try_start_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->ensureConsistentState()V

    .line 534
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowedPackages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1486
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1487
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1488
    if-eqz p1, :cond_0

    .line 1489
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1490
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mAllows:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1494
    return-void
.end method

.method public setExcludedPackages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1501
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1502
    if-eqz p1, :cond_0

    .line 1503
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1504
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mExcludes:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1508
    return-void
.end method

.method public setIntent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 495
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 497
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mIntents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 500
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mReloadActivities:Z

    .line 501
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->ensureConsistentState()V

    .line 502
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    return-void
.end method

.method public setQueryByPackageName(Z)V
    .locals 2

    .prologue
    .line 1519
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1520
    :try_start_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mUsePackageName:Z

    .line 1521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mReloadActivities:Z

    .line 1522
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->ensureConsistentState()V

    .line 1523
    monitor-exit v1

    .line 1524
    return-void

    .line 1523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
