.class public Lcom/android/nfc/cardemulation/RegisteredAidCache;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final POWER_STATE_ALL:I = 0x7

.field static final POWER_STATE_BATTERY_OFF:I = 0x4

.field static final POWER_STATE_SWITCH_OFF:I = 0x2

.field static final POWER_STATE_SWITCH_ON:I = 0x1

.field static final TAG:Ljava/lang/String; = "RegisteredAidCache"


# instance fields
.field final EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

.field final mAidCache:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAidServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mHostAIDPowerState:I

.field final mLock:Ljava/lang/Object;

.field mNfcEnabled:Z

.field mPreferredForegroundService:Landroid/content/ComponentName;

.field mPreferredPaymentService:Landroid/content/ComponentName;

.field final mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field mSupportsPrefixes:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 76
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    .line 143
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    .line 157
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 159
    iput-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 160
    iput-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 161
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    .line 165
    :goto_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    if-eqz v0, :cond_0

    .line 170
    :cond_0
    const/16 v0, 0x41

    iput v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHostAIDPowerState:I

    .line 171
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->supportsAidPrefixRouting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    goto :goto_0
.end method

.method static isPrefix(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 708
    const-string v2, "    AID cache entries: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 710
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Service preferred by foreground app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Preferred payment service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 716
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v0, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 691
    .local v0, "category":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v2, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 692
    .local v2, "defaultServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" (category: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 696
    .local v1, "defaultComponent":Landroid/content/ComponentName;
    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 697
    .local v5, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v6, "        "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 699
    const-string v6, "*DEFAULT* "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (Description: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 693
    .end local v1    # "defaultComponent":Landroid/content/ComponentName;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 704
    .restart local v1    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .locals 9
    .param p1, "prefixAid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 447
    new-instance v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;

    invoke-direct {v4, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 448
    .local v4, "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "plainAid":Ljava/lang/String;
    const-string v5, "%-32s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x46

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "lastAidWithPrefix":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v5, v3, v8, v2, v8}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    .line 455
    iget-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v5}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 456
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 460
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->services:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 461
    iget-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    :cond_1
    return-object v4
.end method

.method findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 329
    .local v0, "defaultServiceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 330
    .local v2, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    const-string v4, "payment"

    iget-object v5, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 332
    .local v3, "serviceClaimsPaymentAid":Z
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    goto :goto_0

    .line 334
    :cond_1
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 336
    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    goto :goto_0

    .line 339
    .end local v2    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v3    # "serviceClaimsPaymentAid":Z
    :cond_2
    return-object v0
.end method

.method generateAidCacheLocked()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 468
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->clear()V

    .line 470
    new-instance v1, Ljava/util/PriorityQueue;

    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 472
    .local v1, "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 473
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v10, "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    .local v0, "aidToResolve":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "*"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 482
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "*"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_0
    invoke-static {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 491
    new-instance v8, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 495
    .local v8, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;

    move-result-object v7

    .line 498
    .local v7, "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->services:Ljava/util/ArrayList;

    invoke-virtual {p0, v8, v11}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v9

    .line 500
    .local v9, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11, v0, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v11, :cond_2

    .line 505
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 551
    .end local v7    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .end local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_1
    :goto_1
    invoke-virtual {v1, v10}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z

    .line 552
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 506
    .restart local v7    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .restart local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_2
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 510
    const/4 v5, 0x0

    .line 512
    .local v5, "foundChildService":Z
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v11}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 513
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 517
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {p0, v11, v13}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 523
    .local v2, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iput-boolean v13, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    .line 524
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v11, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    move v11, v12

    :goto_3
    or-int/2addr v5, v11

    goto :goto_2

    :cond_4
    move v11, v13

    goto :goto_3

    .line 531
    .end local v2    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    :cond_5
    if-nez v5, :cond_1

    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v12, :cond_1

    .line 532
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    .line 543
    .end local v5    # "foundChildService":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .end local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 545
    .local v3, "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {p0, v3, v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v14

    invoke-virtual {v11, v0, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 555
    .end local v0    # "aidToResolve":Ljava/lang/String;
    .end local v3    # "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v10    # "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked()V

    .line 556
    return-void
.end method

.method generateServiceMapLocked(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->clear()V

    .line 394
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 396
    .local v3, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 401
    const-string v6, "*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 405
    :cond_2
    new-instance v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    invoke-direct {v4, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 406
    .local v4, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iput-object v3, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 407
    invoke-virtual {v3, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 408
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 410
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 422
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 423
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 425
    .local v5, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    .end local v5    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_4
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v6}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getAidMatchingPlatform()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 427
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .restart local v5    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 434
    .end local v0    # "aid":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v4    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v5    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_6
    return-void
.end method

.method public isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-virtual {p0, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v0

    .line 231
    .local v0, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v2, :cond_2

    .line 237
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 238
    :cond_2
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 239
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public onNfcDisabled()V
    .locals 2

    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 676
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 677
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 679
    return-void

    .line 677
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNfcEnabled()V
    .locals 2

    .prologue
    .line 682
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 683
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 684
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked()V

    .line 685
    monitor-exit v1

    .line 686
    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 663
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 664
    monitor-exit v1

    .line 665
    return-void

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 655
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 656
    monitor-exit v1

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRoutingTableChanged()V
    .locals 2

    .prologue
    .line 669
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 670
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 671
    monitor-exit v1

    .line 672
    return-void

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 643
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateServiceMapLocked(Ljava/util/List;)V

    .line 644
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 648
    :cond_0
    monitor-exit v1

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 16
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 176
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa

    if-ge v12, v13, :cond_0

    .line 177
    const-string v12, "RegisteredAidCache"

    const-string v13, "AID selected with fewer than 5 bytes."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    monitor-exit v14

    .line 221
    :goto_0
    return-object v9

    .line 180
    :cond_0
    new-instance v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 181
    .local v9, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    if-eqz v12, :cond_7

    .line 185
    const/4 v12, 0x0

    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 186
    .local v11, "shortestAidMatch":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "longestAidMatch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    const/4 v13, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v11, v13, v7, v15}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v8

    .line 193
    .local v8, "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    const-string v12, "other"

    iput-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 194
    invoke-interface {v8}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v6

    .line 196
    .local v6, "isPrefix":Z
    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "entryAid":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    if-eqz v6, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 200
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 201
    .local v3, "entryResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v12, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v12, :cond_4

    .line 202
    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v12, :cond_3

    .line 205
    const-string v12, "RegisteredAidCache"

    const-string v13, "Different defaults for conflicting AIDs!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_3
    iget-object v12, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 208
    iget-object v12, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    iput-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 210
    :cond_4
    iget-object v12, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 211
    .local v10, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 212
    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 222
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v2    # "entryAid":Ljava/lang/String;
    .end local v3    # "entryResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isPrefix":Z
    .end local v7    # "longestAidMatch":Ljava/lang/String;
    .end local v8    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v10    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v11    # "shortestAidMatch":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 196
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .restart local v6    # "isPrefix":Z
    .restart local v7    # "longestAidMatch":Ljava/lang/String;
    .restart local v8    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .restart local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .restart local v11    # "shortestAidMatch":Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v2, v12

    goto :goto_1

    .line 218
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v6    # "isPrefix":Z
    .end local v7    # "longestAidMatch":Ljava/lang/String;
    .end local v8    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v11    # "shortestAidMatch":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    check-cast v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 221
    .restart local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_8
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 8
    .param p2, "makeSingleServiceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;Z)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "conflictingServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 261
    :cond_0
    const-string v6, "RegisteredAidCache"

    const-string v7, "resolveAidConflict: No services passed in."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v3, 0x0

    .line 318
    :cond_1
    :goto_0
    return-object v3

    .line 264
    :cond_2
    new-instance v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v3, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 265
    .local v3, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const-string v6, "other"

    iput-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v2, 0x0

    .line 269
    .local v2, "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 270
    .local v4, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    const-string v6, "payment"

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 272
    .local v5, "serviceClaimsPaymentAid":Z
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 273
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    if-eqz v5, :cond_4

    .line 275
    const-string v6, "payment"

    iput-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 277
    :cond_4
    iget-object v1, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    .line 278
    :cond_5
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 280
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v6, "payment"

    iput-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 282
    iget-object v2, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    .line 284
    :cond_6
    if-nez v5, :cond_3

    .line 292
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 296
    .end local v4    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v5    # "serviceClaimsPaymentAid":Z
    :cond_7
    if-eqz v1, :cond_8

    .line 301
    iput-object v1, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_0

    .line 302
    :cond_8
    if-eqz v2, :cond_9

    .line 307
    iput-object v2, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_0

    .line 309
    :cond_9
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    if-eqz p2, :cond_1

    .line 312
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto/16 :goto_0
.end method

.method resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .local p2, "conflictingServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    const/4 v3, 0x1

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    move-result-object v1

    .line 348
    .local v1, "prefixDefaultInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    move-result-object v0

    .line 355
    .local v0, "conflictingDefaultInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 386
    :goto_0
    return-object v2

    .line 362
    :cond_0
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    goto :goto_0

    .line 377
    :cond_2
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_4

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    goto :goto_0

    .line 386
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    return v0
.end method

.method updateRoutingLocked()V
    .locals 20

    .prologue
    .line 559
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 636
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v14

    .line 566
    .local v14, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 567
    .local v6, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 568
    .local v4, "aid":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 569
    .local v12, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 573
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_1

    .line 575
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 578
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v15

    .line 579
    .local v15, "seInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 580
    .local v8, "isDefaultPayment":Z
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 581
    .local v9, "isForeground":Z
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v10

    .line 583
    .local v10, "isOnHost":Z
    const/4 v3, 0x0

    .line 584
    .local v3, "VzwPowerstate":I
    const/16 v16, 0x1

    .line 587
    .local v16, "weight":I
    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getPowerState()I

    move-result v17

    and-int/lit8 v11, v17, 0x7

    .line 590
    .local v11, "powerstate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/nfc/cardemulation/AidRoutingManager;->GetVzwCache()Lcom/android/nfc/cardemulation/VzwRoutingCache;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->IsvzwFeaturePresent()Z

    move-result v17

    if-nez v17, :cond_2

    if-nez v10, :cond_2

    .line 592
    or-int/lit16 v0, v11, 0x80

    move/from16 v17, v0

    or-int v11, v11, v17

    .line 594
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/nfc/cardemulation/AidRoutingManager;->GetVzwCache()Lcom/android/nfc/cardemulation/VzwRoutingCache;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->IsvzwFeaturePresent()Z

    move-result v17

    if-nez v17, :cond_3

    if-eqz v10, :cond_3

    .line 597
    or-int/lit8 v11, v11, 0x40

    .line 600
    :cond_3
    if-nez v10, :cond_4

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/nfc/cardemulation/AidRoutingManager;->GetVzwCache()Lcom/android/nfc/cardemulation/VzwRoutingCache;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->IsvzwFeaturePresent()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/nfc/cardemulation/AidRoutingManager;->GetVzwCache()Lcom/android/nfc/cardemulation/VzwRoutingCache;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->isAidPresent(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 604
    and-int/lit16 v11, v11, -0x81

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/nfc/cardemulation/AidRoutingManager;->GetVzwCache()Lcom/android/nfc/cardemulation/VzwRoutingCache;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->getPowerState(Ljava/lang/String;)I

    move-result v3

    .line 608
    and-int/2addr v11, v3

    .line 610
    and-int/lit16 v0, v3, 0x80

    move/from16 v17, v0

    or-int v11, v11, v17

    .line 615
    :cond_4
    if-eqz v10, :cond_7

    const/4 v13, 0x0

    .line 616
    .local v13, "route":I
    :goto_2
    if-eqz v9, :cond_5

    .line 617
    add-int/lit8 v16, v16, 0x3

    .line 619
    :cond_5
    if-eqz v8, :cond_6

    .line 620
    add-int/lit8 v16, v16, 0x2

    .line 622
    :cond_6
    new-instance v5, Lcom/android/nfc/cardemulation/AidElement;

    move/from16 v0, v16

    invoke-direct {v5, v4, v0, v13, v11}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;III)V

    .line 623
    .local v5, "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 615
    .end local v5    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v13    # "route":I
    :cond_7
    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v13

    goto :goto_2

    .line 624
    .end local v3    # "VzwPowerstate":I
    .end local v8    # "isDefaultPayment":Z
    .end local v9    # "isForeground":Z
    .end local v10    # "isOnHost":Z
    .end local v11    # "powerstate":I
    .end local v15    # "seInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .end local v16    # "weight":I
    :cond_8
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 627
    new-instance v5, Lcom/android/nfc/cardemulation/AidElement;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHostAIDPowerState:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v5, v4, v0, v1, v2}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;III)V

    .line 628
    .restart local v5    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 629
    .end local v5    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_9
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 631
    new-instance v5, Lcom/android/nfc/cardemulation/AidElement;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHostAIDPowerState:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v5, v4, v0, v1, v2}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;III)V

    .line 632
    .restart local v5    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 635
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v6    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v12    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/nfc/cardemulation/AidRoutingManager;->configureRouting(Ljava/util/HashMap;)Z

    goto/16 :goto_0
.end method
