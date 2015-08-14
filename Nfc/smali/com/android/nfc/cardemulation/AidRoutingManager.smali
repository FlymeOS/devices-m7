.class public Lcom/android/nfc/cardemulation/AidRoutingManager;
.super Ljava/lang/Object;
.source "AidRoutingManager.java"


# static fields
.field static final AID_MATCHING_EXACT_ONLY:I = 0x0

.field static final AID_MATCHING_EXACT_OR_PREFIX:I = 0x1

.field static final AID_MATCHING_K:I = 0x2

.field static final AID_MATCHING_L:I = 0x1

.field static final AID_MATCHING_PREFIX_ONLY:I = 0x2

.field static final DBG:Z

.field public static final ROUTE_HOST:I = 0x0

.field public static final ROUTE_SMX:I = 0x1

.field public static final ROUTE_UICC:I = 0x2

.field static final TAG:Ljava/lang/String; = "AidRoutingManager"

.field static final bShowSecurityLog:Z


# instance fields
.field final mAidMatchingPlatform:I

.field final mAidMatchingSupport:I

.field mAidRoutingTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDefaultOffHostRoute:I

.field mDefaultRoute:I

.field final mLock:Ljava/lang/Object;

.field mPowerForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRouteForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mVzwRoutingCache:Lcom/android/nfc/cardemulation/VzwRoutingCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    .line 118
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 121
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultRoute=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iput v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    .line 124
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultOffHostRoute=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    iput v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    .line 127
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAidMatchingSupport=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    .line 139
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/nfc/cardemulation/VzwRoutingCache;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/VzwRoutingCache;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mVzwRoutingCache:Lcom/android/nfc/cardemulation/VzwRoutingCache;

    .line 140
    return-void

    .line 130
    :cond_4
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultRouteDestination()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 131
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultRoute=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_5
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultOffHostRouteDestination()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    .line 133
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultOffHostRoute=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_6
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetAidMatchingMode()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    .line 135
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAidMatchingSupport=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_7
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetAidMatchingPlatform()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    .line 137
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAidMatchingPlatform=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private commit(Ljava/util/Hashtable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 295
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 296
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->clearRouting()V

    .line 300
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/AidElement;

    .line 302
    .local v0, "element":Lcom/android/nfc/cardemulation/AidElement;
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "AidRoutingManager"

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getRouteLocation()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getPowerState()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;II)V

    goto :goto_0

    .line 310
    .end local v0    # "element":Lcom/android/nfc/cardemulation/AidElement;
    :cond_1
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 311
    return-void
.end method

.method private native doGetAidMatchingMode()I
.end method

.method private native doGetAidMatchingPlatform()I
.end method

.method private native doGetDefaultOffHostRouteDestination()I
.end method

.method private native doGetDefaultRouteDestination()I
.end method


# virtual methods
.method public ClearVzwCache()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mVzwRoutingCache:Lcom/android/nfc/cardemulation/VzwRoutingCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->clear()V

    .line 338
    return-void
.end method

.method public GetVzwCache()Lcom/android/nfc/cardemulation/VzwRoutingCache;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mVzwRoutingCache:Lcom/android/nfc/cardemulation/VzwRoutingCache;

    return-object v0
.end method

.method public UpdateVzwCache([BIIZ)Z
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "power"    # I
    .param p4, "isAllowed"    # Z

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mVzwRoutingCache:Lcom/android/nfc/cardemulation/VzwRoutingCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->addAid([BIIZ)Z

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public aidsRoutedToHost()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 158
    .local v0, "aidsToHost":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const-string v3, "AidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aidsToHost size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v2

    return v1

    .line 160
    .end local v0    # "aidsToHost":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearNfcRoutingTableLocked()V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->clearRouting()V

    .line 151
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 152
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 153
    return-void
.end method

.method public configureRouting(Ljava/util/HashMap;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 165
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 168
    :goto_0
    sget-boolean v21, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v21, :cond_0

    const-string v21, "AidRoutingManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mDefaultRoute=0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    new-instance v19, Ljava/util/Hashtable;

    const/16 v21, 0x32

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 170
    .local v19, "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 171
    .local v5, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-direct/range {v20 .. v21}, Ljava/util/HashMap;-><init>(I)V

    .line 172
    .local v20, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 174
    .local v17, "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 175
    .local v3, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/AidElement;

    .line 176
    .local v11, "elem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v11}, Lcom/android/nfc/cardemulation/AidElement;->getRouteLocation()I

    move-result v18

    .line 177
    .local v18, "route":I
    invoke-virtual {v11}, Lcom/android/nfc/cardemulation/AidElement;->getPowerState()I

    move-result v16

    .line 178
    .local v16, "power":I
    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    move/from16 v18, v0

    .line 180
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/nfc/cardemulation/AidElement;->setRouteLocation(I)V

    .line 182
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    .local v2, "aid":Ljava/lang/String;
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    move/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    .line 184
    .local v12, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    move/from16 v0, v18

    invoke-virtual {v5, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .end local v5    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v11    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v12    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "power":I
    .end local v17    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "route":I
    .end local v19    # "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .end local v20    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    goto/16 :goto_0

    .line 192
    .restart local v5    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v17    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v19    # "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .restart local v20    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 193
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 194
    sget-boolean v21, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v21, :cond_4

    const-string v21, "AidRoutingManager"

    const-string v23, "Routing table unchanged, not updating"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_4
    const/16 v21, 0x0

    monitor-exit v22

    .line 290
    .end local v14    # "i$":Ljava/util/Iterator;
    :goto_2
    return v21

    .line 199
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 200
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 201
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    .line 202
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    const/4 v7, 0x1

    .line 204
    .local v7, "bIsAidMatchingSupport":Z
    :goto_3
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    :cond_6
    const/4 v7, 0x1

    .line 206
    :cond_7
    :goto_4
    if-eqz v7, :cond_c

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 222
    .local v10, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_c

    .line 223
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 226
    .local v9, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 227
    .local v4, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 228
    .restart local v2    # "aid":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 229
    .restart local v18    # "route":I
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 233
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/AidElement;

    .line 234
    .restart local v11    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/nfc/cardemulation/AidElement;->setRouteLocation(I)V

    .line 235
    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 284
    .end local v2    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "bIsAidMatchingSupport":Z
    .end local v9    # "defaultRouteAid":Ljava/lang/String;
    .end local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v18    # "route":I
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 203
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 205
    .restart local v7    # "bIsAidMatchingSupport":Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 244
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_c
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_13

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    .line 246
    .restart local v18    # "route":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 248
    .local v6, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    .restart local v2    # "aid":Ljava/lang/String;
    const-string v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v21, v0

    if-nez v21, :cond_e

    .line 251
    const-string v21, "AidRoutingManager"

    const-string v23, "This device does not support prefix AIDs."

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 252
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/AidElement;

    .line 257
    .restart local v11    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    const/16 v21, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/nfc/cardemulation/AidElement;->setAid(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 261
    .end local v11    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v21, v0

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 262
    const-string v21, "AidRoutingManager"

    const-string v23, "Routing AID in AID_MATCHING_EXACT_OR_PREFIX"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object v8, v2

    .line 266
    .local v8, "cuttedAid":Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 268
    const/16 v21, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 270
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/AidElement;

    .line 271
    .restart local v11    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 277
    .end local v8    # "cuttedAid":Ljava/lang/String;
    .end local v11    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/AidElement;

    .line 278
    .restart local v11    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 244
    .end local v2    # "aid":Ljava/lang/String;
    .end local v6    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 284
    .end local v18    # "route":I
    :cond_13
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->commit(Ljava/util/Hashtable;)V

    .line 290
    const/16 v21, 0x1

    goto/16 :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 349
    const-string v4, "Routing table:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Default route: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    if-nez v4, :cond_0

    const-string v4, "host"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 352
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 353
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 354
    .local v1, "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Routed to 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    .local v0, "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 359
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 350
    .end local v2    # "i":I
    :cond_0
    const-string v4, "secure element"

    goto :goto_0

    .line 352
    .restart local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    .end local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    return-void
.end method

.method public getAidMatchMode()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    return v0
.end method

.method public getAidMatchingPlatform()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    return v0
.end method

.method public onNfccRoutingTableCleared()V
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    const-string v0, "AidRoutingManager"

    const-string v2, "Cleared routing table."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 323
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 324
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportsAidPrefixRouting()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    if-eq v2, v1, :cond_2

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
