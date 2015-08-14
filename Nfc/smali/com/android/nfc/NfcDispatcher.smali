.class Lcom/android/nfc/NfcDispatcher;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final DISPATCH_FAIL:I = 0x2

.field static final DISPATCH_SUCCESS:I = 0x1

.field static final DISPATCH_UNLOCK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NfcDispatcher"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private mOverrideFilters:[Landroid/content/IntentFilter;

.field private mOverrideIntent:Landroid/app/PendingIntent;

.field private mOverrideTechLists:[[Ljava/lang/String;

.field private final mProvisioningMimes:[Ljava/lang/String;

.field private mProvisioningOnly:Z

.field private final mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private final mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

.field public mbIsMatchedBtHandover:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverManager;
    .param p3, "provisionOnly"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/nfc/NfcDispatcher;->mbIsMatchedBtHandover:Z

    .line 87
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    .line 89
    new-instance v2, Lcom/android/nfc/RegisteredComponentCache;

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.nfc.action.TECH_DISCOVERED"

    const-string v5, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 93
    new-instance v2, Lcom/android/nfc/ScreenStateHelper;

    invoke-direct {v2, p1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 94
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iput-boolean p3, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "provisionMimes":[Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 103
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 109
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    .line 110
    return-void

    .line 98
    .end local v1    # "provisionMimes":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 105
    .restart local v1    # "provisionMimes":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 3
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 563
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;
    .locals 6
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 448
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 449
    .local v5, "record":Landroid/nfc/NdefRecord;
    invoke-static {v5}, Lcom/android/nfc/NfcDispatcher;->checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 451
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    return-object v0
.end method

.method static getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 573
    return-object v0
.end method

.method private handleNfcUnlock(Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock(Landroid/nfc/Tag;)Z

    move-result v0

    return v0
.end method

.method static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 577
    const/4 v2, 0x0

    .line 578
    .local v2, "enabled":Z
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .local v0, "compname":Landroid/content/ComponentName;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 585
    const/4 v2, 0x1

    .line 590
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 591
    const-string v3, "NfcDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Component not enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_1
    return v2

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disableProvisioningMode()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .locals 14
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mbIsMatchedBtHandover:Z

    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 233
    .local v5, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 234
    .local v4, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 235
    .local v6, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 236
    .local v8, "provisioningOnly":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    const/4 v9, 0x0

    .line 239
    .local v9, "screenUnlocked":Z
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    if-ne v0, v12, :cond_1

    .line 241
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcDispatcher;->handleNfcUnlock(Landroid/nfc/Tag;)Z

    move-result v9

    .line 242
    if-nez v9, :cond_1

    move v10, v12

    .line 301
    :cond_0
    :goto_0
    return v10

    .line 236
    .end local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v6    # "overrideTechLists":[[Ljava/lang/String;
    .end local v8    # "provisioningOnly":Z
    .end local v9    # "screenUnlocked":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 247
    .restart local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .restart local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .restart local v6    # "overrideTechLists":[[Ljava/lang/String;
    .restart local v8    # "provisioningOnly":Z
    .restart local v9    # "screenUnlocked":Z
    :cond_1
    const/4 v3, 0x0

    .line 248
    .local v3, "message":Landroid/nfc/NdefMessage;
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v7

    .line 249
    .local v7, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v7, :cond_2

    .line 250
    invoke-virtual {v7}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 253
    :cond_2
    const-string v0, "NfcDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dispatch tag: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " message: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p1, v3}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    .line 257
    .local v1, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    move-object v0, p0

    move-object v2, p1

    .line 259
    invoke-virtual/range {v0 .. v6}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    if-eqz v9, :cond_3

    move v0, v10

    :goto_1
    move v10, v0

    goto :goto_0

    :cond_3
    move v0, v11

    goto :goto_1

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/handover/HandoverManager;->tryHandover(Landroid/nfc/NdefMessage;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    const-string v0, "NfcDispatcher"

    const-string v2, "matched BT HANDOVER"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput-boolean v11, p0, Lcom/android/nfc/NfcDispatcher;->mbIsMatchedBtHandover:Z

    .line 267
    if-nez v9, :cond_0

    move v10, v11

    goto :goto_0

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 271
    const-string v0, "NfcDispatcher"

    const-string v2, "matched NFC WPS TOKEN"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-nez v9, :cond_0

    move v10, v11

    goto :goto_0

    .line 275
    :cond_6
    invoke-virtual {p0, v1, v3, v8}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 276
    if-nez v9, :cond_0

    move v10, v11

    goto :goto_0

    .line 279
    :cond_7
    if-nez v9, :cond_0

    .line 284
    if-eqz v8, :cond_8

    move v10, v12

    .line 286
    goto/16 :goto_0

    .line 290
    :cond_8
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v10, v11

    .line 291
    goto/16 :goto_0

    .line 294
    :cond_9
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 295
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 296
    const-string v0, "NfcDispatcher"

    const-string v2, "matched TAG"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 297
    goto/16 :goto_0

    .line 300
    :cond_a
    const-string v0, "NfcDispatcher"

    const-string v2, "no match"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v12

    .line 301
    goto/16 :goto_0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 597
    monitor-enter p0

    .line 598
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTechLists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    monitor-exit p0

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "tagTechs"    # [Ljava/lang/String;
    .param p2, "filterTechs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 548
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v4

    .line 550
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 551
    .local v3, "tech":Ljava/lang/String;
    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 555
    .end local v3    # "tech":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method getMatchedResolveInfo(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)Landroid/content/pm/ResolveInfo;
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 458
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 459
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 475
    :goto_0
    return-object v6

    .line 461
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v3, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v5, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 464
    .local v4, "match":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 465
    const-string v6, "NfcDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intentList.size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 467
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 468
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v6, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 469
    const-string v6, "NfcDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "use preferred "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    .line 470
    goto/16 :goto_0

    .line 475
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    .end local v4    # "match":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "hasTechFilter"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 357
    if-eqz p2, :cond_2

    .line 358
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/IntentFilter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 359
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "NfcDispatcher"

    invoke-virtual {v1, v6, p1, v5, v7}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 366
    .end local v0    # "arr$":[Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v4

    .line 358
    .restart local v0    # "arr$":[Landroid/content/IntentFilter;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "arr$":[Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    if-eqz p3, :cond_0

    :cond_3
    move v4, v5

    .line 366
    goto :goto_1
.end method

.method isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z
    .locals 7
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 370
    if-nez p2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v5

    .line 374
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, "tagTechs":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 376
    move-object v0, p2

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 377
    .local v1, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v1}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 378
    const/4 v5, 0x1

    goto :goto_0

    .line 376
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method resumeAppSwitches()V
    .locals 1

    .prologue
    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # [[Ljava/lang/String;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    const-string v0, "NfcDispatcher"

    const-string v1, "Set Foreground Dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 116
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 117
    iput-object p3, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z
    .locals 13
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "provisioningOnly"    # Z

    .prologue
    .line 385
    if-nez p2, :cond_0

    .line 386
    const/4 v10, 0x0

    .line 443
    :goto_0
    return v10

    .line 388
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v6

    .line 391
    .local v6, "intent":Landroid/content/Intent;
    if-nez v6, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    .line 393
    :cond_1
    if-eqz p3, :cond_3

    .line 394
    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 396
    :cond_2
    const-string v10, "NfcDispatcher"

    const-string v11, "Dropping NFC intent in provisioning mode."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v10, 0x0

    goto :goto_0

    .line 402
    :cond_3
    invoke-static {p2}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v0

    .line 403
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 404
    .local v8, "pkg":Ljava/lang/String;
    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 406
    const-string v10, "NfcDispatcher"

    const-string v11, "matched AAR to NDEF"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v10, 0x1

    goto :goto_0

    .line 412
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 413
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 416
    .local v4, "firstPackage":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-direct {v2, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 417
    .local v2, "currentUser":Landroid/os/UserHandle;
    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 423
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 424
    .local v1, "appLaunchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_6

    invoke-virtual {p1, v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 425
    const-string v10, "NfcDispatcher"

    const-string v11, "matched AAR to application launch"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 419
    .end local v1    # "appLaunchIntent":Landroid/content/Intent;
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 420
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "NfcDispatcher"

    const-string v11, "Could not create user package context"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 429
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appLaunchIntent":Landroid/content/Intent;
    .restart local v2    # "currentUser":Landroid/os/UserHandle;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    invoke-static {v4}, Lcom/android/nfc/NfcDispatcher;->getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 430
    .local v7, "marketIntent":Landroid/content/Intent;
    if-eqz v7, :cond_7

    invoke-virtual {p1, v7}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 431
    const-string v10, "NfcDispatcher"

    const-string v11, "matched AAR to market launch"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 437
    .end local v1    # "appLaunchIntent":Landroid/content/Intent;
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v4    # "firstPackage":Ljava/lang/String;
    .end local v7    # "marketIntent":Landroid/content/Intent;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 439
    const-string v10, "NfcDispatcher"

    const-string v11, "matched NDEF"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 443
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z
    .locals 6
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "overrideIntent"    # Landroid/app/PendingIntent;
    .param p5, "overrideFilters"    # [Landroid/content/IntentFilter;
    .param p6, "overrideTechLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 310
    if-nez p4, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v4

    .line 316
    :cond_1
    if-eqz p3, :cond_3

    .line 317
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 318
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    if-eqz p6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v1, p5, v2}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 322
    const-string v2, "NfcDispatcher"

    const-string v5, "matched NDEF override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 323
    goto :goto_0

    :cond_2
    move v2, v4

    .line 318
    goto :goto_1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 331
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v1

    .line 332
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 334
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 335
    const-string v2, "NfcDispatcher"

    const-string v5, "matched TECH override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v3

    .line 336
    goto :goto_0

    .line 337
    :catch_1
    move-exception v0

    .line 338
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 343
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_4
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v1

    .line 344
    if-eqz p6, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v1, p5, v2}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 347
    const-string v2, "NfcDispatcher"

    const-string v5, "matched TAG override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    move v4, v3

    .line 348
    goto :goto_0

    :cond_5
    move v2, v4

    .line 344
    goto :goto_2

    .line 349
    :catch_2
    move-exception v0

    .line 350
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 12
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 481
    invoke-virtual {p2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v8

    .line 482
    .local v8, "tagTechs":[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 485
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v5, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v9}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v7

    .line 490
    .local v7, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-direct {v0, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 491
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 498
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 500
    .local v3, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v6, v9}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 503
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 504
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "NfcDispatcher"

    const-string v10, "Could not create user package context"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v9, 0x0

    .line 529
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return v9

    .line 509
    .restart local v0    # "currentUser":Landroid/os/UserHandle;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {p0, v6, v5}, Lcom/android/nfc/NfcDispatcher;->getMatchedResolveInfo(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 510
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_4

    .line 512
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 514
    const-string v9, "NfcDispatcher"

    const-string v10, "matched single TECH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v9, 0x1

    goto :goto_1

    .line 517
    :cond_2
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 529
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 518
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 520
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.INTENT"

    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 522
    const-string v9, "rlist"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p1, v4}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 525
    const-string v9, "NfcDispatcher"

    const-string v10, "matched multiple TECH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v9, 0x1

    goto :goto_1
.end method
