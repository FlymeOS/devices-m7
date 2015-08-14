.class final Lcom/android/nfc/NfcService$NfcAdapterService;
.super Landroid/nfc/INfcAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 1963
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcAdapter$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/nfc/NfcService$NfcAdapterService;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService$NfcAdapterService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1963
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService$NfcAdapterService;->performNfcLock(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private computeLockscreenPollMask([I)I
    .locals 7
    .param p1, "techList"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2723
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2725
    .local v2, "techCodeToMask":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2729
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2730
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2731
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2732
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2734
    const/4 v1, 0x0

    .line 2736
    .local v1, "mask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 2737
    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2738
    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v1, v3

    .line 2736
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2742
    :cond_1
    return v1
.end method

.method private performNfcLock(ZLjava/lang/String;)Z
    .locals 6
    .param p1, "lock"    # Z
    .param p2, "strType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2099
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsMdmLockEnabled:Z

    if-ne v2, p1, :cond_1

    .line 2100
    const-string v3, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": already in NFC "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    const-string v2, "locked"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :goto_1
    return v5

    .line 2100
    :cond_0
    const-string v2, "unlocked"

    goto :goto_0

    .line 2103
    :cond_1
    const/4 v0, 0x0

    .line 2104
    .local v0, "bState":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 2105
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean p1, v2, Lcom/android/nfc/NfcService;->mIsMdmLockEnabled:Z

    .line 2106
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    const-string v3, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NFC lock: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_4

    const-string v2, "locked"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    if-ne p1, v5, :cond_5

    .line 2109
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    .line 2110
    if-eqz v0, :cond_2

    .line 2111
    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcService$NfcAdapterService;->disable(Z)Z

    .line 2113
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mdm_nfc_on"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2114
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2120
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mdm_lock_on"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2121
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2123
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2124
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2125
    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    if-eqz p1, :cond_6

    const/4 v2, 0x5

    :goto_4
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2126
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 2106
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2107
    :cond_4
    const-string v2, "unlocked"

    goto :goto_2

    .line 2116
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "mdm_nfc_on"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2117
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$NfcAdapterService;->enable()Z

    goto :goto_3

    .line 2125
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v2, 0x6

    goto :goto_4
.end method

.method private setP2P(Z)Z
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2490
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2491
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v5

    .line 2492
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2493
    const-string v3, "NfcService"

    const-string v4, "enableP2P(): Nfc is disabled, P2P disabled by default"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    monitor-exit v5

    .line 2512
    :goto_0
    return v2

    .line 2498
    :cond_0
    if-eqz p1, :cond_2

    move v1, v3

    .line 2499
    .local v1, "val":I
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    const/16 v6, 0x9

    invoke-interface {v4, v6, v1}, Lcom/android/nfc/DeviceHost;->doSetProperties(II)I

    .line 2500
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    const/16 v6, 0x8

    invoke-interface {v4, v6, v1}, Lcom/android/nfc/DeviceHost;->doSetProperties(II)I

    .line 2503
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "discovery_p2p"

    invoke-interface {v4, v6, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2504
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2506
    if-eqz p1, :cond_3

    const/16 v4, 0xf

    :goto_2
    if-eqz p1, :cond_1

    const/16 v2, 0xe

    :cond_1
    :try_start_1
    invoke-virtual {p0, v4, v2}, Lcom/android/nfc/NfcService$NfcAdapterService;->setP2pModes(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2510
    :goto_3
    :try_start_2
    const-string v4, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableP2P(): P2P "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_4

    const-string v2, "enabled"

    :goto_4
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    monitor-exit v5

    move v2, v3

    .line 2512
    goto :goto_0

    .end local v1    # "val":I
    :cond_2
    move v1, v2

    .line 2498
    goto :goto_1

    .restart local v1    # "val":I
    :cond_3
    move v4, v2

    .line 2506
    goto :goto_2

    .line 2507
    :catch_0
    move-exception v0

    .line 2508
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcService"

    const-string v4, "failed to set P2P mode"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2511
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "val":I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2510
    .restart local v1    # "val":I
    :cond_4
    :try_start_3
    const-string v2, "disabled"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method private setP2pModes(IIZ)V
    .locals 3
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I
    .param p3, "bForceAction"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2342
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2343
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->setP2pInitiatorModes(I)V

    .line 2344
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost;->setP2pTargetModes(I)V

    .line 2345
    if-eqz p3, :cond_2

    .line 2347
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2348
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->isReaderWriterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->isP2PEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 2371
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2372
    return-void

    .line 2358
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    goto :goto_0

    .line 2368
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->maybeDisableDiscovery()V
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)V

    .line 2369
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->maybeEnableDiscovery()V
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2100(Lcom/android/nfc/NfcService;)V

    goto :goto_0
.end method

.method private setReaderWriter(Z)Z
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2449
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2450
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 2451
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2452
    const-string v2, "NfcService"

    const-string v4, "enableReaderWriter(): Nfc is disabled, reader/writer disabled by default"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    monitor-exit v3

    .line 2476
    :goto_0
    return v1

    .line 2456
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->maybeDisableDiscovery()V
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)V

    .line 2459
    if-eqz p1, :cond_1

    move v0, v2

    .line 2460
    .local v0, "val":I
    :goto_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0}, Lcom/android/nfc/DeviceHost;->doSetProperties(II)I

    .line 2461
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0}, Lcom/android/nfc/DeviceHost;->doSetProperties(II)I

    .line 2462
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0}, Lcom/android/nfc/DeviceHost;->doSetProperties(II)I

    .line 2463
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0}, Lcom/android/nfc/DeviceHost;->doSetProperties(II)I

    .line 2466
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "discovery_a"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2467
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "discovery_b"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2468
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "discovery_f"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2469
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "discovery_15693"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2470
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2472
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->maybeEnableDiscovery()V
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2100(Lcom/android/nfc/NfcService;)V

    .line 2474
    const-string v4, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableReaderWriter(): Reader/Writer "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_2

    const-string v1, "enabled"

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    monitor-exit v3

    move v1, v2

    .line 2476
    goto/16 :goto_0

    .end local v0    # "val":I
    :cond_1
    move v0, v1

    .line 2459
    goto/16 :goto_1

    .line 2474
    .restart local v0    # "val":I
    :cond_2
    const-string v1, "disabled"

    goto :goto_2

    .line 2475
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V
    .locals 3
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "techList"    # [I

    .prologue
    .line 2702
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2704
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterService;->computeLockscreenPollMask([I)I

    move-result v0

    .line 2705
    .local v0, "lockscreenPollMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 2706
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/nfc/NfcUnlockManager;->addUnlockHandler(Landroid/nfc/INfcUnlockHandler;I)I

    .line 2707
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2709
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2710
    return-void

    .line 2707
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method checkMDMSupport()Z
    .locals 8

    .prologue
    .line 2054
    new-instance v5, Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    .line 2055
    .local v5, "nRet":Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 2056
    .local v2, "devicePolicyMgr":Landroid/app/admin/DevicePolicyManager;
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 2059
    .local v1, "DevicePolicyManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v7, "isMDMAPIPhase2Supported"

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2067
    .local v4, "is_mdmapi_supported":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    :try_start_1
    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 2084
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .end local v4    # "is_mdmapi_supported":Ljava/lang/reflect/Method;
    :goto_1
    return v6

    .line 2060
    :catch_0
    move-exception v3

    .line 2061
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v6, "NfcService"

    const-string v7, "Method DevicePolicyManager.isMDMAPIPhase2Supported() does not exist."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 2063
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_1

    .line 2068
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v4    # "is_mdmapi_supported":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    .line 2069
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v6, "NfcService"

    const-string v7, "IllegalAccessException by invoking Method."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 2071
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 2072
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "NfcService"

    const-string v7, "InvocationTargetException by invoking Method."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 2074
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v3

    .line 2075
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v6, "NfcService"

    const-string v7, "NullPointerException by invoking Method."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2077
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v3

    .line 2078
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "NfcService"

    const-string v7, "IllegalArgumentException by invoking Method."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2080
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v3

    .line 2081
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "NfcService"

    const-string v7, "failed to invoke isMDMAPIPhase2Supported."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public disable(Z)Z
    .locals 6
    .param p1, "saveState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 2015
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.framework.permission.ACCESS_HTC_MDM_API"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2019
    :cond_0
    const-string v0, "NfcService"

    const-string v1, "Disabling Nfc."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2023
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    if-nez v0, :cond_3

    .line 2025
    const-string v0, "NfcService"

    const-string v1, "Disabling NFC Disabling ESE/UICC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost;->doSetVenConfigValue(I)V

    .line 2028
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 2029
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 2041
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2042
    if-eqz p1, :cond_2

    .line 2043
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 2046
    :cond_2
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2047
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    return v5

    .line 2031
    :cond_3
    const-string v0, "NfcService"

    const-string v1, "Power off : Disabling NFC Disabling ESE/UICC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v0, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    .line 2033
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isVzwSku()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2034
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost;->doSetVenConfigValue(I)V

    .line 2037
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 2036
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->doSetVenConfigValue(I)V

    goto :goto_1

    .line 2047
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disableNdefPush()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 2198
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2199
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2200
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-nez v0, :cond_0

    .line 2201
    monitor-exit v1

    .line 2212
    :goto_0
    return v4

    .line 2203
    :cond_0
    const-string v0, "NfcService"

    const-string v2, "disabling NDEF Push"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ndef_push_on"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2205
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2206
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 2207
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 2208
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2209
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 2211
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableP2P()Z
    .locals 1

    .prologue
    .line 2522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->setP2P(Z)Z

    move-result v0

    return v0
.end method

.method public disableReaderWriter()Z
    .locals 1

    .prologue
    .line 2486
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->setReaderWriter(Z)Z

    move-result v0

    return v0
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2333
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    .line 2334
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2328
    return-void
.end method

.method public enable()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1967
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->isNeedToBlockCaller(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1969
    invoke-static {}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->waitForPromptResult()Z

    move-result v2

    .line 2009
    :cond_0
    :goto_0
    return v2

    .line 1974
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v5, "com.htc.framework.permission.ACCESS_HTC_MDM_API"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1975
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1977
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsMdmLockEnabled:Z

    if-eqz v4, :cond_3

    .line 1978
    const-string v3, "NfcService"

    const-string v4, "NFC is locked now!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1983
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost;->GetDefaultSE()I

    move-result v1

    .line 1984
    .local v1, "val":I
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultSE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const-string v4, "DeviceManager3LM"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    .line 1989
    .local v0, "dm":Landroid/os/IDeviceManager3LM;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/os/IDeviceManager3LM;->getNfcState()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1993
    :cond_4
    const-string v4, "NfcService"

    const-string v5, "Enabling Nfc."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v4

    .line 1996
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 1998
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1999
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    if-nez v5, :cond_5

    .line 2000
    const-string v3, "NfcService"

    const-string v5, "denying enable() request (airplane mode)"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    monitor-exit v4

    goto/16 :goto_0

    .line 2008
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2004
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "airplane_override"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2005
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2007
    :cond_6
    new-instance v2, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v2, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2008
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2009
    goto/16 :goto_0
.end method

.method public enableNdefPush()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 2179
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2180
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2181
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-eqz v0, :cond_0

    .line 2182
    monitor-exit v1

    .line 2193
    :goto_0
    return v4

    .line 2184
    :cond_0
    const-string v0, "NfcService"

    const-string v2, "enabling NDEF Push"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ndef_push_on"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2186
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2187
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 2188
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 2189
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2190
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 2192
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableP2P()Z
    .locals 1

    .prologue
    .line 2517
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->setP2P(Z)Z

    move-result v0

    return v0
.end method

.method public enableReaderWriter()Z
    .locals 1

    .prologue
    .line 2481
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->setReaderWriter(Z)Z

    move-result v0

    return v0
.end method

.method public getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2692
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    return-object v0
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2312
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v0

    .line 2314
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNfcTagInterface()Landroid/nfc/INfcTag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    return-object v0
.end method

.method public getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;
    .locals 1

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x1

    .line 2527
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2529
    if-nez p1, :cond_1

    .line 2530
    const/4 v0, 0x0

    .line 2590
    :cond_0
    :goto_0
    return-object v0

    .line 2534
    :cond_1
    const-string v1, "llcp.lto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2535
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "llcp_lto"

    const/16 v3, 0x96

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2536
    :cond_2
    const-string v1, "llcp.miu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2537
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "llcp_miu"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2538
    :cond_3
    const-string v1, "llcp.wks"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2539
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "llcp_wks"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2540
    :cond_4
    const-string v1, "llcp.opt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2541
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "llcp_opt"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2542
    :cond_5
    const-string v1, "discovery.iso14443A"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2543
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "discovery_a"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2544
    :cond_6
    const-string v1, "discovery.iso14443B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2545
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "discovery_b"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2546
    :cond_7
    const-string v1, "discovery.felica"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2547
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "discovery_f"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2548
    :cond_8
    const-string v1, "discovery.nfcip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2549
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "discovery_nfcip"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2550
    :cond_9
    const-string v1, "discovery.p2p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2551
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "discovery_p2p"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2552
    :cond_a
    const-string v1, "discovery.iso15693"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2553
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "discovery_15693"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2556
    :cond_b
    const-string v1, "prop_nfc_chip_manufacturer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2557
    const-string v1, "/sys/class/NFC_sensor/comn/nxp_chip_manufacturer"

    invoke-static {v1}, Lcom/android/nfc/HtcUtils;->readNfcProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2558
    .local v0, "strProperty":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2559
    const-string v0, "NXP"

    .line 2562
    :goto_1
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manufacturer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2561
    :cond_c
    const-string v0, ""

    goto :goto_1

    .line 2564
    .end local v0    # "strProperty":Ljava/lang/String;
    :cond_d
    const-string v1, "prop_nfc_chip_model"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2565
    const-string v1, "/sys/class/NFC_sensor/comn/nxp_chip_model"

    invoke-static {v1}, Lcom/android/nfc/HtcUtils;->readNfcProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2566
    .restart local v0    # "strProperty":Ljava/lang/String;
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2568
    .end local v0    # "strProperty":Ljava/lang/String;
    :cond_e
    const-string v1, "prop_nfc_chip_firmware"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2569
    const-string v1, "/sys/class/NFC_sensor/comn/nxp_chip_fw"

    invoke-static {v1}, Lcom/android/nfc/HtcUtils;->readNfcProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2570
    .restart local v0    # "strProperty":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2573
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 2574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2577
    :goto_2
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2576
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2580
    :cond_10
    const-string v0, ""

    goto/16 :goto_0

    .line 2581
    .end local v0    # "strProperty":Ljava/lang/String;
    :cond_11
    const-string v1, "prop_nfc_library_version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2582
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getCodebaseVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2583
    .restart local v0    # "strProperty":Ljava/lang/String;
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lib Ver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2585
    .end local v0    # "strProperty":Ljava/lang/String;
    :cond_12
    const-string v1, "prop_nfc_default_protocol_route"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2586
    const-string v0, ""

    goto/16 :goto_0

    .line 2590
    :cond_13
    const-string v0, "Unknown property"

    goto/16 :goto_0
.end method

.method public getState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 2321
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 2322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invokeBeam()V
    .locals 2

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2268
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    .line 2273
    :goto_0
    return-void

    .line 2271
    :cond_0
    const-string v0, "NfcService"

    const-string v1, "Calling activity not in foreground."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    .locals 4
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 2277
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2278
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2279
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2280
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2299
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2300
    return-void
.end method

.method public isCardEmuEnabled()Z
    .locals 2

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2440
    const-string v0, "NfcService"

    const-string v1, "isCardEmuEnabled(): Nfc is disabled, Card emulation mode disabled by default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    const/4 v0, 0x0

    .line 2445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNdefPushEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 2173
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNfcLocked()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2132
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2133
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsMdmLockEnabled:Z

    monitor-exit v1

    return v0

    .line 2134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isP2PEnabled()Z
    .locals 4

    .prologue
    .line 2426
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2427
    const-string v1, "NfcService"

    const-string v2, "isP2PEnabled(): Nfc is disabled, P2P disabled by default"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    const/4 v0, 0x0

    .line 2434
    :goto_0
    return v0

    .line 2431
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "discovery_p2p"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2433
    .local v0, "b":Z
    const-string v2, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isP2PEnabled(): P2P mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "disabled"

    goto :goto_1
.end method

.method public isReaderWriterEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2410
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2411
    const-string v2, "NfcService"

    const-string v3, "isReaderWriterEnabled(): Nfc is disabled, reader/writer disabled by default"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :goto_0
    return v1

    .line 2415
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "discovery_a"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "discovery_b"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "discovery_f"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "discovery_15693"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2420
    .local v0, "b":Z
    :goto_1
    const-string v2, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReaderWriterEnabled(): Reader/Writer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "enabled"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2421
    goto :goto_0

    .end local v0    # "b":Z
    :cond_1
    move v0, v1

    .line 2415
    goto :goto_1

    .line 2420
    .restart local v0    # "b":Z
    :cond_2
    const-string v1, "disabled"

    goto :goto_2
.end method

.method public lockNfc(Z)Z
    .locals 3
    .param p1, "lock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2088
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$NfcAdapterService;->checkMDMSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2089
    const-string v0, "NfcService"

    const-string v1, "API not allowed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const/4 v0, 0x0

    .line 2095
    :goto_0
    return v0

    .line 2092
    :cond_0
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-nez v0, :cond_1

    .line 2093
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.framework.permission.ACCESS_HTC_MDM_API"

    const-string v2, "ACCESS_HTC_MDM_API permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    :cond_1
    const-string v0, "MDM"

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->performNfcLock(ZLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public pausePolling(I)V
    .locals 6
    .param p1, "timeoutInMs"    # I

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2142
    if-lez p1, :cond_0

    int-to-long v0, p1

    const-wide/32 v2, 0x9c40

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2143
    :cond_0
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refusing to pause polling for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :goto_0
    return-void

    .line 2147
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2148
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    .line 2149
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 2150
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2152
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
    .locals 3
    .param p1, "token"    # Landroid/nfc/INfcUnlockHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2714
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2715
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcUnlockManager;->removeUnlockHandler(Landroid/os/IBinder;)I

    .line 2716
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2718
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2719
    return-void

    .line 2716
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resumePolling()V
    .locals 3

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2159
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2160
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    if-nez v0, :cond_0

    .line 2161
    monitor-exit v1

    .line 2168
    :goto_0
    return-void

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 2165
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    .line 2166
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2167
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCallback(Landroid/nfc/IAppCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/nfc/IAppCallback;

    .prologue
    .line 2251
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2254
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2255
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;

    move-result-object v1

    const-string v2, "no_outgoing_beam"

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2258
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/nfc/P2pLinkManager;->setNdefCallback(Landroid/nfc/IAppCallback;I)V

    .line 2262
    :cond_0
    :goto_0
    return-void

    .line 2259
    :cond_1
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    .line 2260
    const-string v1, "NfcService"

    const-string v2, "Disabling default Beam behavior"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    .locals 8
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techListsParcel"    # Landroid/nfc/TechListParcel;

    .prologue
    const/4 v6, 0x0

    .line 2218
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2221
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 2222
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v7

    move-object v5, v6

    check-cast v5, [[Ljava/lang/String;

    invoke-virtual {v7, v6, v6, v5}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 2246
    :goto_0
    return-void

    .line 2227
    :cond_0
    if-eqz p2, :cond_1

    .line 2228
    array-length v5, p2

    if-nez v5, :cond_3

    .line 2229
    const/4 p2, 0x0

    :cond_1
    move-object v4, v6

    .line 2240
    check-cast v4, [[Ljava/lang/String;

    .line 2241
    .local v4, "techLists":[[Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 2242
    invoke-virtual {p3}, Landroid/nfc/TechListParcel;->getTechLists()[[Ljava/lang/String;

    move-result-object v4

    .line 2245
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v4}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    goto :goto_0

    .line 2231
    .end local v4    # "techLists":[[Ljava/lang/String;
    :cond_3
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/IntentFilter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2232
    .local v1, "filter":Landroid/content/IntentFilter;
    if-nez v1, :cond_4

    .line 2233
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "null IntentFilter"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2231
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setP2pModes(II)V
    .locals 1
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2338
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->setP2pModes(IIZ)V

    .line 2339
    return-void
.end method

.method public setProperties(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x8

    const/4 v3, 0x0

    .line 2598
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->showDialogIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2683
    :goto_0
    return v3

    .line 2603
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2613
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move v3, v4

    .line 2614
    goto :goto_0

    .line 2617
    :cond_2
    const-string v5, "llcp.lto"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2618
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2619
    .local v2, "val":I
    const/16 v5, 0xff

    if-le v2, v5, :cond_3

    move v3, v4

    .line 2620
    goto :goto_0

    .line 2622
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "llcp_lto"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2623
    const/4 v1, 0x0

    .line 2680
    .local v1, "property":I
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2682
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lcom/android/nfc/DeviceHost;->doSetProperties(II)I

    goto :goto_0

    .line 2624
    .end local v1    # "property":I
    .end local v2    # "val":I
    :cond_4
    const-string v5, "llcp.miu"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2625
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2626
    .restart local v2    # "val":I
    const/16 v5, 0x80

    if-lt v2, v5, :cond_5

    const/16 v5, 0x880

    if-le v2, v5, :cond_6

    :cond_5
    move v3, v4

    .line 2627
    goto :goto_0

    .line 2629
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "llcp_miu"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2630
    const/4 v1, 0x1

    .restart local v1    # "property":I
    goto :goto_1

    .line 2631
    .end local v1    # "property":I
    .end local v2    # "val":I
    :cond_7
    const-string v5, "llcp.wks"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2632
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2633
    .restart local v2    # "val":I
    const/16 v5, 0xf

    if-le v2, v5, :cond_8

    move v3, v4

    .line 2634
    goto :goto_0

    .line 2636
    :cond_8
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "llcp_wks"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2637
    const/4 v1, 0x2

    .restart local v1    # "property":I
    goto :goto_1

    .line 2638
    .end local v1    # "property":I
    .end local v2    # "val":I
    :cond_9
    const-string v5, "llcp.opt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2639
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2640
    .restart local v2    # "val":I
    const/4 v5, 0x3

    if-le v2, v5, :cond_a

    move v3, v4

    .line 2641
    goto/16 :goto_0

    .line 2643
    :cond_a
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "llcp_opt"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2644
    const/4 v1, 0x3

    .restart local v1    # "property":I
    goto :goto_1

    .line 2645
    .end local v1    # "property":I
    .end local v2    # "val":I
    :cond_b
    const-string v5, "discovery.iso14443A"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2646
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2647
    .local v0, "b":Z
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "discovery_a"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2648
    const/4 v1, 0x4

    .line 2649
    .restart local v1    # "property":I
    if-eqz v0, :cond_c

    .line 2650
    .restart local v2    # "val":I
    :goto_2
    goto/16 :goto_1

    .end local v2    # "val":I
    :cond_c
    move v2, v3

    .line 2649
    goto :goto_2

    .line 2650
    .end local v0    # "b":Z
    .end local v1    # "property":I
    :cond_d
    const-string v5, "discovery.iso14443B"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2651
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2652
    .restart local v0    # "b":Z
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "discovery_b"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2653
    const/4 v1, 0x5

    .line 2654
    .restart local v1    # "property":I
    if-eqz v0, :cond_e

    .line 2655
    .restart local v2    # "val":I
    :goto_3
    goto/16 :goto_1

    .end local v2    # "val":I
    :cond_e
    move v2, v3

    .line 2654
    goto :goto_3

    .line 2655
    .end local v0    # "b":Z
    .end local v1    # "property":I
    :cond_f
    const-string v5, "discovery.felica"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2656
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2657
    .restart local v0    # "b":Z
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "discovery_f"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2658
    const/4 v1, 0x6

    .line 2659
    .restart local v1    # "property":I
    if-eqz v0, :cond_10

    .line 2660
    .restart local v2    # "val":I
    :goto_4
    goto/16 :goto_1

    .end local v2    # "val":I
    :cond_10
    move v2, v3

    .line 2659
    goto :goto_4

    .line 2660
    .end local v0    # "b":Z
    .end local v1    # "property":I
    :cond_11
    const-string v5, "discovery.iso15693"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2661
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2662
    .restart local v0    # "b":Z
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "discovery_15693"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2663
    const/4 v1, 0x7

    .line 2664
    .restart local v1    # "property":I
    if-eqz v0, :cond_12

    .line 2665
    .restart local v2    # "val":I
    :goto_5
    goto/16 :goto_1

    .end local v2    # "val":I
    :cond_12
    move v2, v3

    .line 2664
    goto :goto_5

    .line 2665
    .end local v0    # "b":Z
    .end local v1    # "property":I
    :cond_13
    const-string v5, "discovery.nfcip"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2666
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2667
    .restart local v0    # "b":Z
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "discovery_nfcip"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2668
    const/16 v1, 0x8

    .line 2669
    .restart local v1    # "property":I
    if-eqz v0, :cond_14

    .line 2670
    .restart local v2    # "val":I
    :goto_6
    goto/16 :goto_1

    .end local v2    # "val":I
    :cond_14
    move v2, v3

    .line 2669
    goto :goto_6

    .line 2670
    .end local v0    # "b":Z
    .end local v1    # "property":I
    :cond_15
    const-string v5, "discovery.p2p"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2671
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2672
    .restart local v0    # "b":Z
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "discovery_p2p"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2673
    const/16 v1, 0x9

    .line 2674
    .restart local v1    # "property":I
    if-eqz v0, :cond_16

    .line 2675
    .restart local v2    # "val":I
    :goto_7
    goto/16 :goto_1

    .end local v2    # "val":I
    :cond_16
    move v2, v3

    .line 2674
    goto :goto_7

    .end local v0    # "b":Z
    .end local v1    # "property":I
    :cond_17
    move v3, v4

    .line 2676
    goto/16 :goto_0
.end method

.method public setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/nfc/IAppCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x7d

    .line 2377
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 2378
    if-eqz p3, :cond_1

    .line 2380
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v4, Lcom/android/nfc/NfcService$ReaderModeParams;

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfcService$ReaderModeParams;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v4, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 2381
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iput-object p2, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    .line 2382
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iput p3, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    .line 2383
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz p4, :cond_0

    const-string v1, "presence"

    const/16 v4, 0x7d

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    iput v1, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    .line 2387
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2401
    :goto_0
    :try_start_1
    const-string v1, "NfcService"

    const-string v3, "applyRouting -4"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    new-instance v1, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2403
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2404
    monitor-exit v2

    .line 2405
    :goto_1
    return-void

    .line 2388
    :catch_0
    move-exception v0

    .line 2389
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NfcService"

    const-string v3, "Remote binder has already died."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    monitor-exit v2

    goto :goto_1

    .line 2404
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2394
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 2395
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2396
    :catch_1
    move-exception v0

    .line 2397
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v1, "NfcService"

    const-string v3, "Reader mode Binder was never registered."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
