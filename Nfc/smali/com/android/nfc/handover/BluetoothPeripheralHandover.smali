.class public Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.super Ljava/lang/Object;
.source "BluetoothPeripheralHandover.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;
    }
.end annotation


# static fields
.field static final ACTION_ALLOW_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.ALLOW_CONNECT"

.field static final ACTION_CONNECT:I = 0x2

.field static final ACTION_DENY_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.DENY_CONNECT"

.field static final ACTION_DISCONNECT:I = 0x1

.field static final ACTION_INIT:I = 0x0

.field static final DBG:Z

.field static final HTC_LITE_PREFIX_LOWERCASE:Ljava/lang/String; = "htc mini"

.field static final MSG_NEXT_STEP:I = 0x2

.field static final MSG_TIMEOUT:I = 0x1

.field static final RESULT_CONNECTED:I = 0x1

.field static final RESULT_DISCONNECTED:I = 0x2

.field static final RESULT_PENDING:I = 0x0

.field static final STATE_BONDING:I = 0x4

.field static final STATE_COMPLETE:I = 0x7

.field static final STATE_CONNECTING:I = 0x5

.field static final STATE_DISCONNECTING:I = 0x6

.field static final STATE_INIT:I = 0x0

.field static final STATE_INIT_COMPLETE:I = 0x2

.field static final STATE_WAITING_FOR_BOND_CONFIRMATION:I = 0x3

.field static final STATE_WAITING_FOR_PROXIES:I = 0x1

.field static final TAG:Ljava/lang/String; = "BluetoothPeripheralHandover"

.field static final TIMEOUT_MS:I = 0x7530


# instance fields
.field mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field mA2dpResult:I

.field mAction:I

.field final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

.field final mContext:Lcom/android/nfc/handover/HandoverService;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field mHeadset:Landroid/bluetooth/BluetoothHeadset;

.field mHfpResult:I

.field mHidResult:I

.field mInput:Landroid/bluetooth/BluetoothInputDevice;

.field final mLock:Ljava/lang/Object;

.field final mName:Ljava/lang/String;

.field final mProvisioning:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mState:I

.field final mTransport:I

.field protected mbIsBtBonded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/handover/HandoverService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V
    .locals 3
    .param p1, "context"    # Lcom/android/nfc/handover/HandoverService;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "transport"    # I
    .param p5, "callback"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    .line 110
    iput-boolean v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mbIsBtBonded:Z

    .line 575
    new-instance v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;-><init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    .line 591
    new-instance v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;-><init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    invoke-static {}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->checkMainThread()V

    .line 119
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    .line 120
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 121
    iput-object p3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    .line 122
    iput p4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 123
    iput-object p5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .line 124
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 126
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mProvisioning:Z

    .line 130
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 131
    return-void

    :cond_0
    move v1, v2

    .line 127
    goto :goto_0
.end method

.method static checkMainThread()V
    .locals 2

    .prologue
    .line 599
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 600
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "must be called on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_0
    return-void
.end method


# virtual methods
.method complete(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .prologue
    const/4 v3, 0x1

    .line 520
    sget-boolean v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPeripheralHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 543
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    .line 546
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    invoke-interface {v0, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;->onBluetoothPeripheralHandoverComplete(Z)V

    .line 548
    return-void

    .line 546
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 525
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method deviceSupportA2dp()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method deviceSupportHeadset()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getProfileProxys()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 310
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v2, v4, :cond_1

    .line 311
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v2, v3, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v2, v3, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 321
    goto :goto_0
.end method

.method handleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/high16 v9, -0x80000000

    const/4 v8, 0x2

    .line 453
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 456
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const-string v6, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_0

    .line 460
    :cond_2
    const-string v6, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 461
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 462
    :cond_3
    const-string v6, "android.bluetooth.device.action.UUID"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 464
    iget-boolean v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mbIsBtBonded:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_0

    .line 465
    :cond_4
    const-string v6, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a

    .line 467
    const-string v6, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 469
    .local v1, "bond":I
    sget-boolean v6, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "BluetoothPeripheralHandover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BOND State: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_5
    const/16 v6, 0xc

    if-ne v1, v6, :cond_9

    .line 471
    iput-boolean v10, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mbIsBtBonded:Z

    .line 475
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->deviceSupportHeadset()Z

    move-result v4

    .line 476
    .local v4, "isDeviceSupportHeadset":Z
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->deviceSupportA2dp()Z

    move-result v3

    .line 477
    .local v3, "isDeviceSupportA2dp":Z
    sget-object v6, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "BluetoothPeripheralHandover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bonded: Hfp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", A2dp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_6
    if-nez v4, :cond_7

    if-eqz v3, :cond_8

    .line 479
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto/16 :goto_0

    .line 481
    :cond_8
    sget-object v6, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothPeripheralHandover"

    const-string v7, "Wait for ACTION_UUID"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    .end local v3    # "isDeviceSupportA2dp":Z
    .end local v4    # "isDeviceSupportHeadset":Z
    :cond_9
    const/16 v6, 0xa

    if-ne v1, v6, :cond_0

    .line 483
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v8, 0x7f070017

    invoke-virtual {v7, v8}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 484
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 486
    .end local v1    # "bond":I
    :cond_a
    const-string v6, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v6, v11, :cond_b

    iget v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v6, v12, :cond_d

    .line 488
    :cond_b
    const-string v6, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 489
    .local v5, "state":I
    if-ne v5, v8, :cond_c

    .line 490
    iput v10, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 491
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 492
    :cond_c
    if-nez v5, :cond_0

    .line 493
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 494
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 496
    .end local v5    # "state":I
    :cond_d
    const-string v6, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v6, v11, :cond_e

    iget v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v6, v12, :cond_10

    .line 498
    :cond_e
    const-string v6, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 499
    .restart local v5    # "state":I
    if-ne v5, v8, :cond_f

    .line 500
    iput v10, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 501
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 502
    :cond_f
    if-nez v5, :cond_0

    .line 503
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 504
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 506
    .end local v5    # "state":I
    :cond_10
    const-string v6, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v6, v11, :cond_11

    iget v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v6, v12, :cond_0

    .line 508
    :cond_11
    const-string v6, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 509
    .restart local v5    # "state":I
    if-ne v5, v8, :cond_12

    .line 510
    iput v10, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 511
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 512
    :cond_12
    if-nez v5, :cond_0

    .line 513
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 514
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextStep()V
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepInit()V

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepDisconnect()V

    goto :goto_0
.end method

.method nextStepConnect()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 333
    sget-boolean v2, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothPeripheralHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before next step mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 439
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "BluetoothPeripheralHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after next step mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_2
    return-void

    .line 336
    :pswitch_0
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-eq v2, v9, :cond_3

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    invoke-static {v2}, Lcom/android/nfc/HtcUtils;->isShowPromptBeforeBTPairing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    .line 338
    iput v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_0

    .line 342
    :cond_3
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v2, v7, :cond_4

    .line 343
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    .line 344
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 345
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    .line 346
    iput v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_0

    .line 352
    :cond_4
    :pswitch_1
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-eq v2, v9, :cond_5

    .line 353
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->startBonding()V

    goto :goto_0

    .line 360
    :cond_5
    :pswitch_2
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 361
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->deviceSupportHeadset()Z

    move-result v1

    .line 363
    .local v1, "isDeviceSupportHeadset":Z
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->deviceSupportA2dp()Z

    move-result v0

    .line 364
    .local v0, "isDeviceSupportA2dp":Z
    sget-boolean v2, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "BluetoothPeripheralHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hfp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", A2dp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_6
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v2, v7, :cond_9

    .line 366
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eq v2, v7, :cond_7

    .line 368
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 369
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v5, 0x7f070011

    invoke-virtual {v4, v5}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 372
    monitor-exit v3

    goto/16 :goto_0

    .line 404
    .end local v0    # "isDeviceSupportA2dp":Z
    .end local v1    # "isDeviceSupportHeadset":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 374
    .restart local v0    # "isDeviceSupportA2dp":Z
    .restart local v1    # "isDeviceSupportHeadset":Z
    :cond_7
    const/4 v2, 0x1

    :try_start_1
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 404
    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    .end local v0    # "isDeviceSupportA2dp":Z
    .end local v1    # "isDeviceSupportHeadset":Z
    :pswitch_3
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v2, v7, :cond_10

    .line 408
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-eqz v2, :cond_1

    .line 410
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-ne v2, v6, :cond_f

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v4, 0x7f070012

    invoke-virtual {v3, v4}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 377
    .restart local v0    # "isDeviceSupportA2dp":Z
    .restart local v1    # "isDeviceSupportHeadset":Z
    :cond_9
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eq v2, v7, :cond_c

    .line 379
    if-eqz v1, :cond_b

    .line 380
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 381
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 388
    :goto_1
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eq v2, v7, :cond_e

    .line 389
    if-eqz v0, :cond_d

    .line 390
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 391
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 398
    :goto_2
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v2, :cond_8

    .line 399
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v5, 0x7f070011

    invoke-virtual {v4, v5}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 401
    monitor-exit v3

    goto/16 :goto_0

    .line 383
    :cond_b
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_1

    .line 386
    :cond_c
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_1

    .line 393
    :cond_d
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    goto :goto_2

    .line 396
    :cond_e
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 414
    .end local v0    # "isDeviceSupportA2dp":Z
    .end local v1    # "isDeviceSupportHeadset":Z
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 419
    :cond_10
    sget-boolean v2, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v2, :cond_11

    const-string v2, "BluetoothPeripheralHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHfpResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mA2dpResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_11
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-nez v2, :cond_12

    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->deviceSupportA2dp()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_12
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v2, :cond_13

    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->deviceSupportHeadset()Z

    move-result v2

    if-nez v2, :cond_1

    .line 425
    :cond_13
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eq v2, v6, :cond_14

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v2, v6, :cond_15

    .line 427
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v4, 0x7f070012

    invoke-virtual {v3, v4}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 433
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method nextStepDisconnect()V
    .locals 9

    .prologue
    const v8, 0x7f070015

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 237
    sget-boolean v2, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothPeripheralHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before next step mState (Disconnect) ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    sparse-switch v2, :sswitch_data_0

    .line 305
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "BluetoothPeripheralHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after next step mState (Disconnect) ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2
    return-void

    .line 240
    :sswitch_0
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 241
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->deviceSupportHeadset()Z

    move-result v1

    .line 243
    .local v1, "isDeviceSupportHeadset":Z
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->deviceSupportA2dp()Z

    move-result v0

    .line 244
    .local v0, "isDeviceSupportA2dp":Z
    sget-boolean v2, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "BluetoothPeripheralHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hfp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", A2dp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_3
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v2, v6, :cond_6

    .line 246
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 249
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v5, 0x7f070014

    invoke-virtual {v4, v5}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 252
    monitor-exit v3

    goto/16 :goto_0

    .line 281
    .end local v0    # "isDeviceSupportA2dp":Z
    .end local v1    # "isDeviceSupportHeadset":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 254
    .restart local v0    # "isDeviceSupportA2dp":Z
    .restart local v1    # "isDeviceSupportHeadset":Z
    :cond_4
    const/4 v2, 0x2

    :try_start_1
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 281
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    .end local v0    # "isDeviceSupportA2dp":Z
    .end local v1    # "isDeviceSupportHeadset":Z
    :sswitch_1
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v2, v6, :cond_c

    .line 285
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-ne v2, v6, :cond_1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v3, v8}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 257
    .restart local v0    # "isDeviceSupportA2dp":Z
    .restart local v1    # "isDeviceSupportHeadset":Z
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_a

    .line 259
    if-eqz v1, :cond_7

    .line 260
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 261
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 266
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_b

    .line 268
    if-eqz v0, :cond_8

    .line 269
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 270
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 275
    :cond_8
    :goto_2
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v2, :cond_5

    .line 276
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v5, 0x7f070014

    invoke-virtual {v4, v5}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 278
    monitor-exit v3

    goto/16 :goto_0

    .line 264
    :cond_a
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_1

    .line 273
    :cond_b
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 292
    .end local v0    # "isDeviceSupportA2dp":Z
    .end local v1    # "isDeviceSupportHeadset":Z
    :cond_c
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-eqz v2, :cond_1

    .line 296
    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-ne v2, v6, :cond_d

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v2, v6, :cond_d

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v3, v8}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 299
    :cond_d
    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_0

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method nextStepInit()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 190
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_2

    .line 193
    :cond_1
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 194
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getProfileProxys()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 201
    :cond_2
    :pswitch_1
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 203
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v2, :cond_5

    .line 205
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DISCONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "htc mini"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not disconnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 210
    monitor-exit v1

    goto/16 :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 212
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 213
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    iget v2, v2, Lcom/android/nfc/handover/HandoverService;->mStartSound:I

    invoke-virtual {v0, v2}, Lcom/android/nfc/handover/HandoverService;->playSound(I)V

    .line 230
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_0

    .line 215
    :cond_4
    :try_start_2
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_CONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 218
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    iget v2, v2, Lcom/android/nfc/handover/HandoverService;->mSuccessSound:I

    invoke-virtual {v0, v2}, Lcom/android/nfc/handover/HandoverService;->playSound(I)V

    goto :goto_1

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    :cond_6
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DISCONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    goto :goto_1

    .line 226
    :cond_7
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_CONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 606
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    packed-switch p1, :pswitch_data_0

    .line 629
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v1

    .line 630
    return-void

    .line 609
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_1
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 610
    sget-boolean v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v0, :cond_1

    const-string v2, "BluetoothPeripheralHandover"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Headset size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 610
    :cond_2
    :try_start_1
    const-string v0, "null"

    goto :goto_1

    .line 616
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_2
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 617
    sget-boolean v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->DBG:Z

    if-eqz v0, :cond_3

    const-string v2, "BluetoothPeripheralHandover"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A2dp size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 617
    :cond_4
    const-string v0, "null"

    goto :goto_2

    .line 623
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_3
    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    .line 624
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 635
    return-void
.end method

.method requestPairConfirmation()V
    .locals 3

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const-class v2, Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .local v0, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 569
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 570
    const-string v1, "EXTRA_DEVICE_NAME"

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v1, v0}, Lcom/android/nfc/handover/HandoverService;->startActivity(Landroid/content/Intent;)V

    .line 573
    return-void
.end method

.method public start()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-static {}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->checkMainThread()V

    .line 143
    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mProvisioning:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    move v2, v3

    .line 170
    :goto_0
    return v2

    .line 149
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v4, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v4, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v4, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Lcom/android/nfc/handover/HandoverService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 163
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 165
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    .line 167
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Lcom/android/nfc/handover/HandoverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 168
    .local v1, "vb":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method startBonding()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 443
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 444
    iput-boolean v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mbIsBtBonded:Z

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/HandoverService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 450
    :cond_0
    return-void
.end method

.method startTheMusic()V
    .locals 5

    .prologue
    const/16 v4, 0x7e

    const/4 v3, 0x0

    .line 555
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 556
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_0

    .line 557
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 558
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 559
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 560
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 564
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return-void

    .line 562
    :cond_0
    const-string v2, "BluetoothPeripheralHandover"

    const-string v3, "Unable to send media key event"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method toast(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Lcom/android/nfc/handover/HandoverService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 552
    return-void
.end method
