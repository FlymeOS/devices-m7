.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$NlpSwitcher;,
        Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;,
        Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;
    }
.end annotation


# static fields
.field private static final D:Z

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field private static final GEOCODE_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeocodeProvider"

.field private static final HTC_CHINA_LOCATION_PROVIDER_NAME:Ljava/lang/String; = "htc.china.location.service"

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"


# instance fields
.field private mMzObserver:Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

.field public mName:Ljava/lang/String;

.field private final mAction:Ljava/lang/String;

.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsMultiuser:Z

.field private mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "newServiceWork"    # Ljava/lang/Runnable;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    .line 97
    const/high16 v6, -0x80000000

    iput v6, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    .line 102
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    .line 343
    new-instance v6, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v6, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 126
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    .line 129
    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    .line 130
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    .line 131
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 135
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 136
    .local v1, "enableOverlay":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v2, "initialPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {v4, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "pkgs":[Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 142
    sget-boolean v6, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Overlay enabled, packages="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v3    # "pkgs":[Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {p1, v2}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 154
    invoke-direct {p0, p3}, Lcom/android/server/ServiceWatcher;->isNlpService(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 155
    invoke-static {p1}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->get(Landroid/content/Context;)Lcom/android/server/ServiceWatcher$NlpSwitcher;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    .line 156
    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    if-eqz v6, :cond_4

    .line 157
    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    new-instance v7, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;

    invoke-direct {v7, p0}, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;-><init>(Lcom/android/server/ServiceWatcher;)V

    invoke-virtual {v6, v7}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->addObserver(Ljava/util/Observer;)V

    .line 158
    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NlpSwitcher enabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_1
    return-void

    .line 146
    :cond_2
    invoke-virtual {v4, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "servicePackageName":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_3
    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 149
    sget-boolean v6, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Overlay disabled, default package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .end local v5    # "servicePackageName":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NlpSwitcher failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 163
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ServiceWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher;->isHtcNlp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ServiceWatcher;)Lcom/android/server/ServiceWatcher$NlpSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    return-object v0
.end method

.method private bindBestPackageLocked(Ljava/lang/String;)Z
    .locals 20
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v7, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 204
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    const/16 v15, 0x80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 208
    .local v12, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v4, -0x80000000

    .line 209
    .local v4, "bestVersion":I
    const/4 v3, 0x0

    .line 210
    .local v3, "bestPackage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 213
    .local v2, "bestIsMultiuser":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->isNlpSwitcherEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ServiceWatcher;->isNlpService(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 214
    sget v14, Lcom/android/server/ServiceWatcher$NlpSwitcher;->HTC_CHS_MODE:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    invoke-virtual {v15}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->getCurrentMode()I

    move-result v15

    if-ne v14, v15, :cond_2

    .line 215
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/ServiceWatcher;->bindHtcNlpPackageLocked(Ljava/util/List;)Z

    move-result v1

    .line 216
    .local v1, "bResult":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 292
    .end local v1    # "bResult":Z
    :goto_0
    return v1

    .line 220
    .restart local v1    # "bResult":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    const-string v15, "Can\'t find htc nlp, try default."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v1    # "bResult":Z
    :cond_2
    if-eqz v12, :cond_b

    .line 227
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :cond_flyme_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 228
    .local v11, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 231
    .local v10, "packageName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->isNlpSwitcherEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ServiceWatcher;->isNlpService(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/ServiceWatcher;->isHtcNlp(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " resolves service "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", but is htc nlp."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    invoke-virtual {v14, v10, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 242
    .local v9, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " resolves service "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", but has wrong signature, ignoring"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 247
    .end local v9    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 248
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    invoke-static {v14, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 253
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/ServiceWatcher;->isNetworkProvider(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_flyme_0

    const/high16 v13, -0x80000000

    .line 254
    .local v13, "version":I
    const/4 v8, 0x0

    .line 255
    .local v8, "isMultiuser":Z
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v14, :cond_6

    .line 256
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "serviceVersion"

    const/high16 v16, -0x80000000

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 258
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "serviceIsMultiuser"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 261
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/ServiceWatcher;->mVersion:I

    if-le v13, v14, :cond_3

    .line 262
    move v4, v13

    .line 263
    move-object v3, v10

    .line 264
    move v2, v8

    goto/16 :goto_1

    .line 268
    .end local v8    # "isMultiuser":Z
    .end local v9    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "version":I
    :cond_7
    sget-boolean v14, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v14, :cond_8

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    const-string v16, "bindBestPackage for %s : %s found %d, %s"

    const/4 v14, 0x4

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v17, v14

    const/16 v18, 0x1

    if-nez p1, :cond_9

    const-string v14, ""

    :goto_2
    aput-object v14, v17, v18

    const/4 v14, 0x2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v18, 0x3

    if-nez v3, :cond_a

    const-string v14, "no new best package"

    :goto_3
    aput-object v14, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    if-eqz v3, :cond_c

    .line 279
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/ServiceWatcher;->bindToPackageLocked(Ljava/lang/String;IZ)V

    .line 280
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 269
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "("

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v19, ") "

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "new best package: "

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 276
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_b
    sget-boolean v14, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to query intent services for action: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 284
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    if-nez v14, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->isNlpSwitcherEnabled()Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ServiceWatcher;->isNlpService(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 285
    sget v14, Lcom/android/server/ServiceWatcher$NlpSwitcher;->DEFAULT_MODE:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    invoke-virtual {v15}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->getCurrentMode()I

    move-result v15

    if-ne v14, v15, :cond_d

    .line 287
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/ServiceWatcher;->bindHtcNlpPackageLocked(Ljava/util/List;)Z

    move-result v1

    goto/16 :goto_0

    .line 292
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private bindHtcNlpPackageLocked(Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 456
    iget v1, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    .line 457
    .local v1, "bestVersion":I
    const/4 v0, 0x0

    .line 459
    .local v0, "bestPackage":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 460
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 461
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 464
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/ServiceWatcher;->isHtcNlp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    const/high16 v5, -0x80000000

    .line 470
    .local v5, "version":I
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    .line 471
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "serviceVersion"

    const/high16 v10, -0x80000000

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 475
    :cond_1
    if-le v5, v1, :cond_0

    .line 476
    move v1, v5

    .line 477
    move-object v0, v3

    goto :goto_0

    .line 481
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "version":I
    :cond_2
    sget-boolean v6, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v6, :cond_3

    .line 482
    iget-object v9, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    const-string v10, "bindHtcNlpPackage for %s, found %d, %s"

    const/4 v6, 0x3

    new-array v11, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    aput-object v6, v11, v8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v7

    const/4 v12, 0x2

    if-nez v0, :cond_4

    const-string v6, "no new best package"

    :goto_1
    aput-object v6, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v0, :cond_5

    .line 490
    invoke-direct {p0, v0, v1, v8}, Lcom/android/server/ServiceWatcher;->bindToPackageLocked(Ljava/lang/String;IZ)V

    move v6, v7

    .line 493
    :goto_2
    return v6

    .line 482
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "new best package: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    move v6, v8

    .line 493
    goto :goto_2
.end method

.method private bindToPackageLocked(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "isMultiuser"    # Z

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 309
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 312
    iput p2, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    .line 313
    iput-boolean p3, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    .line 314
    sget-boolean v1, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binding "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_1

    const-string v1, "multi"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-user)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    iget-boolean v1, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    :goto_1
    invoke-virtual {v2, v0, p0, v3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 318
    return-void

    .line 314
    :cond_1
    const-string v1, "single"

    goto :goto_0

    .line 316
    :cond_2
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_1
.end method

.method public static getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "initialPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 107
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v5, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 109
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 112
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    const/16 v8, 0x40

    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 113
    .local v6, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v6    # "sigs":[Landroid/content/pm/Signature;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ServiceWatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private isHtcNlp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "strPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 501
    if-nez p1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v0

    .line 503
    :cond_1
    const-string v1, "htc.china.location.service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNlpService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "strAction"    # Ljava/lang/String;

    .prologue
    .line 511
    if-eqz p1, :cond_1

    .line 512
    const-string v0, "com.android.location.service.v3.NetworkLocationProvider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.location.service.GeocodeProvider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    const/4 v0, 0x1

    .line 516
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNlpSwitcherEnabled()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSignatureMatch([Landroid/content/pm/Signature;)Z
    .locals 1
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .locals 8
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "sigSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v6, 0x0

    .line 322
    if-nez p0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v6

    .line 325
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 326
    .local v2, "inputSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    .line 327
    .local v5, "s":Landroid/content/pm/Signature;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    .end local v5    # "s":Landroid/content/pm/Signature;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 332
    .local v4, "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 333
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private unbindLocked()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 298
    .local v0, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 299
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    .line 300
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    .line 301
    if-eqz v0, :cond_1

    .line 302
    sget-boolean v1, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbinding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 305
    :cond_1
    return-void
.end method


# virtual methods
.method public getBestPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBestVersion()I
    .locals 2

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget v0, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    monitor-exit v1

    return v0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

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

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 402
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    sget-boolean v1, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    .line 406
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    :cond_1
    :goto_0
    monitor-exit v2

    .line 413
    return-void

    .line 410
    :cond_2
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected onServiceConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 417
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "packageName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " disconnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    .line 424
    :cond_1
    monitor-exit v2

    .line 425
    return-void

    .line 424
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 169
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 191
    :goto_0
    return v0

    .line 171
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->addObserver()V

    .line 187
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    :cond_1
    move v0, v6

    .line 191
    goto :goto_0

    .line 171
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public switchUser()V
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    if-nez v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 449
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    .line 451
    :cond_0
    monitor-exit v1

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addObserver()V
    .locals 3

    .prologue
    const-string v0, "network"

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;-><init>(Lcom/android/server/ServiceWatcher;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mMzObserver:Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mMzObserver:Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->observer()V

    :cond_0
    return-void
.end method

.method public isNetworkProvider(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "valid":Z
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "network"

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_provider_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "settingPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_provider_package"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .end local v0    # "settingPackage":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method mzGetFieldLock()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method mzGetFieldPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method mzInvokeMethodBindBestPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method mzInvokeMethodUnbindLocked()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    return-void
.end method

.method public setProviderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    return-void
.end method
