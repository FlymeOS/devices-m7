.class public Lcom/android/nfc/dhimpl/NativeNfcManager;
.super Ljava/lang/Object;
.source "NativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;
    }
.end annotation


# static fields
.field static final DEFAULT_LLCP_MIU:I = 0x80

.field static final DEFAULT_LLCP_RWSIZE:I = 0x1

.field static final DRIVER_NAME:Ljava/lang/String; = "nxp"

.field private static final EE_WIPE_APDUS:[[B

.field private static final FIRMWARE_MODTIME_DEFAULT:J = -0x1L

.field private static final HCE_APPLET_NOT_SELECTED:I = 0x3

.field private static final HCE_APPLET_SELECTED:I = 0x2

.field private static final HCE_APPLET_SELECTING:I = 0x1

.field public static final HTC_DRIVER_OPTION:I = 0x0

.field public static final INTERNAL_TARGET_DESELECTED_ACTION:Ljava/lang/String; = "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

.field private static final NFC_CONTROLLER_FIRMWARE_FILE_NAME:Ljava/lang/String; = "/system/vendor/firmware/libpn544_fw.so"

.field static final PREF:Ljava/lang/String; = "NxpDeviceHost"

.field private static final PREF_FIRMWARE_MODTIME:Ljava/lang/String; = "firmware_modtime"

.field private static final TAG:Ljava/lang/String; = "NativeNfcManager"

.field private static final presentCheckCmd:[B


# instance fields
.field private mAppletSelectStatus:I

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

.field private mNative:J

.field private mbDefaultProtocolRoute:I

.field private mbIsForceDisableEse:Z

.field private mnCardModeRoutingState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x5

    .line 82
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->presentCheckCmd:[B

    .line 88
    const/4 v0, 0x7

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->EE_WIPE_APDUS:[[B

    .line 102
    const-string v0, "nfc_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 103
    return-void

    .line 82
    :array_0
    .array-data 1
        0x0t
        -0x50t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 88
    nop

    :array_1
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x7t
        -0x60t
        0x0t
        0x0t
        0x4t
        0x76t
        0x20t
        0x10t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x80t
        -0x1et
        0x1t
        0x3t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x7t
        -0x60t
        0x0t
        0x0t
        0x4t
        0x76t
        0x30t
        0x30t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x80t
        -0x4ct
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mbDefaultProtocolRoute:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mnCardModeRoutingState:I

    .line 85
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mbIsForceDisableEse:Z

    .line 116
    iput-object p2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 117
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->initializeNativeStructure()Z

    .line 118
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/dhimpl/NativeNfcManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doReceiveData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/dhimpl/NativeNfcManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;
    .param p1, "x1"    # [B

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->notifyHostEmuData([B)V

    return-void
.end method

.method private native doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.end method

.method private native doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.end method

.method private native doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doDeinitialize()Z
.end method

.method private native doDownload()Z
.end method

.method private native doDump()Ljava/lang/String;
.end method

.method private native doEnableDiscovery(IZZZ)V
.end method

.method private native doGetTimeout(I)I
.end method

.method private native doInitialize()Z
.end method

.method private native doReceiveData()[B
.end method

.method private native doResetTimeouts()V
.end method

.method private native doSendRawFrame([B)Z
.end method

.method private native doSetFilterTag(I)V
.end method

.method private native doSetP2pInitiatorModes(I)V
.end method

.method private native doSetP2pTargetModes(I)V
.end method

.method private native doSetScreenState(Z)V
.end method

.method private native doSetTimeout(II)Z
.end method

.method private notifyConnectivityListeners()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onConnectivityEvent(I)V

    .line 695
    return-void
.end method

.method private notifyHostEmuActivated()V
    .locals 2

    .prologue
    .line 731
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 732
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationActivated()V

    .line 733
    return-void
.end method

.method private notifyHostEmuData([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 736
    sget-object v1, Lcom/android/nfc/dhimpl/NativeNfcManager;->presentCheckCmd:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    if-eq v1, v3, :cond_0

    .line 737
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    .line 738
    .local v0, "errorRsp":[B
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->sendRawFrame([B)Z

    .line 745
    .end local v0    # "errorRsp":[B
    :goto_0
    return-void

    .line 740
    :cond_0
    array-length v1, p1

    if-le v1, v3, :cond_1

    aget-byte v1, p1, v4

    const/16 v2, 0xa4

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 741
    iput v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationData([B)V

    goto :goto_0

    .line 737
    nop

    :array_0
    .array-data 1
        0x6dt
        0x0t
    .end array-data
.end method

.method private notifyHostEmuDeactivated()V
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    .line 749
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationDeactivated()V

    .line 750
    return-void
.end method

.method private notifyLlcpLinkActivation(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 701
    return-void
.end method

.method private notifyLlcpLinkDeactivated(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 708
    return-void
.end method

.method private notifyNdefMessageListeners(Lcom/android/nfc/dhimpl/NativeNfcTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 673
    return-void
.end method

.method private notifyRfFieldActivated()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 712
    return-void
.end method

.method private notifyRfFieldDeactivated()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 716
    return-void
.end method

.method private notifySeApduReceived([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeApduReceived([B)V

    .line 720
    return-void
.end method

.method private notifySeEmvCardRemoval()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeEmvCardRemoval()V

    .line 724
    return-void
.end method

.method private notifySeMifareAccess([B)V
    .locals 1
    .param p1, "block"    # [B

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeMifareAccess([B)V

    .line 728
    return-void
.end method

.method private notifyTargetDeselected()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationDeselected()V

    .line 680
    return-void
.end method

.method private notifyTransactionListeners([B[B)V
    .locals 2
    .param p1, "aid"    # [B
    .param p2, "data"    # [B

    .prologue
    .line 686
    const-string v0, "NativeNfcManager"

    const-string v1, "NativeNfcManager-notifyTransactionListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationAidSelected([B[BI)V

    .line 688
    return-void
.end method


# virtual methods
.method public GetDefaultSE()I
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public JCOSDownload()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public PrbsOff()V
    .locals 0

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doPrbsOff()V

    .line 666
    return-void
.end method

.method public PrbsOn(II)V
    .locals 0
    .param p1, "technology"    # I
    .param p2, "bitrate"    # I

    .prologue
    .line 660
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doPrbsOn(II)V

    .line 661
    return-void
.end method

.method public SWPSelfTest(I)I
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 586
    const/4 v0, 0x0

    return v0
.end method

.method public SetFilterTag(I)Z
    .locals 1
    .param p1, "Enable"    # I

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetFilterTag(I)V

    .line 617
    const/4 v0, 0x1

    return v0
.end method

.method public SetScreenState(Z)Z
    .locals 1
    .param p1, "Enable"    # Z

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetScreenState(Z)V

    .line 623
    const/4 v0, 0x1

    return v0
.end method

.method public SetScrnState(I)Z
    .locals 1
    .param p1, "Enable"    # I

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public canMakeReadOnly(I)Z
    .locals 2
    .param p1, "ndefType"    # I

    .prologue
    const/4 v0, 0x1

    .line 503
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFirmware()V
    .locals 12

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "nbRetry":I
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v8, "/system/vendor/firmware/libpn544_fw.so"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .local v0, "firmwareFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 155
    .local v2, "modtime":J
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v9, "NxpDeviceHost"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 156
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "firmware_modtime"

    const-wide/16 v10, -0x1

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 157
    .local v6, "prev_fw_modtime":J
    const-string v8, "NativeNfcManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prev modtime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v8, "NativeNfcManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new modtime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    cmp-long v8, v6, v2

    if-nez v8, :cond_2

    .line 176
    .end local v0    # "firmwareFile":Ljava/io/File;
    .end local v2    # "modtime":J
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "prev_fw_modtime":J
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v4

    .line 149
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v8, "NativeNfcManager"

    const-string v9, "path to firmware file was null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    .restart local v0    # "firmwareFile":Ljava/io/File;
    .restart local v2    # "modtime":J
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v6    # "prev_fw_modtime":J
    :cond_1
    const-string v8, "NativeNfcManager"

    const-string v9, "Download Failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 164
    :cond_2
    const/4 v8, 0x5

    if-ge v1, v8, :cond_0

    .line 165
    const-string v8, "NativeNfcManager"

    const-string v9, "Perform Download"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDownload()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 167
    const-string v8, "NativeNfcManager"

    const-string v9, "Download Success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "firmware_modtime"

    invoke-interface {v8, v9, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public native clearRouting()V
.end method

.method public commitRouting()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 5
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    move-result-object v1

    .line 406
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    if-eqz v1, :cond_0

    .line 407
    return-object v1

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 412
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    packed-switch v0, :pswitch_data_0

    .line 419
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 417
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 414
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 5
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;

    move-result-object v1

    .line 430
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-eqz v1, :cond_0

    .line 431
    return-object v1

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 436
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    packed-switch v0, :pswitch_data_0

    .line 443
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 441
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 438
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 5
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v1

    .line 454
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v1, :cond_0

    .line 455
    return-object v1

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 460
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    packed-switch v0, :pswitch_data_0

    .line 467
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 465
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 462
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deinitialize()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->getCardModeRoutingState()I

    move-result v2

    iput v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mnCardModeRoutingState:I

    .line 223
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v3, "NxpDeviceHost"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "se_wired"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeinitialize()Z

    move-result v2

    return v2
.end method

.method public native disableDiscovery()V
.end method

.method public native disableRoutingToHost()V
.end method

.method public disableScreenOffSuspend()Z
    .locals 2

    .prologue
    .line 561
    const-string v0, "NativeNfcManager"

    const-string v1, "Snooze mode is not supported on NXP NFCC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method public native doAbort()V
.end method

.method public native doActivateLlcp()Z
.end method

.method public native doCheckLlcp()Z
.end method

.method public native doConfigureDesfireRoute(I)V
.end method

.method public native doDeselectSecureElement(I)V
.end method

.method public native doGetHWVersionInfo()I
.end method

.method public native doGetLastError()I
.end method

.method public native doGetSecureElementList()[I
.end method

.method public doGetSecureElementTechList()I
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public native doPrbsOff()V
.end method

.method public native doPrbsOn(II)V
.end method

.method public native doSWPSelfTest()I
.end method

.method public native doSelectSecureElement(I)V
.end method

.method public doSetEEPROM([B)V
    .locals 0
    .param p1, "val"    # [B

    .prologue
    .line 598
    return-void
.end method

.method public native doSetProperties(II)I
.end method

.method public doSetSEPowerOffState(IZ)V
    .locals 0
    .param p1, "seID"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 343
    return-void
.end method

.method public doSetScreenState(I)V
    .locals 0
    .param p1, "mScreenState"    # I

    .prologue
    .line 629
    return-void
.end method

.method public doSetSecureElementListenTechMask(I)V
    .locals 0
    .param p1, "tech_mask"    # I

    .prologue
    .line 286
    return-void
.end method

.method public doSetVenConfigValue(I)V
    .locals 0
    .param p1, "venconfig"    # I

    .prologue
    .line 373
    return-void
.end method

.method public download()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .locals 3
    .param p1, "params"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p2, "restart"    # Z

    .prologue
    .line 307
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableLowPowerDiscovery()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableReaderMode()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDiscovery(IZZZ)V

    .line 309
    return-void
.end method

.method public native enableRoutingToHost()V
.end method

.method public enableScreenOffSuspend()Z
    .locals 2

    .prologue
    .line 554
    const-string v0, "NativeNfcManager"

    const-string v1, "Snooze mode is not supported on NXP NFCC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public getAidTableSize()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public getChipVer()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public native getCodebaseVersion()I
.end method

.method public getDefaultAidRoute()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method public getDefaultDesfireRoute()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, -0x1

    return v0
.end method

.method public getDefaultLlcpMiu()I
    .locals 1

    .prologue
    .line 639
    const/16 v0, 0x80

    return v0
.end method

.method public getDefaultLlcpRwSize()I
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultMifareCLTRoute()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, -0x1

    return v0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetHWVersionInfo()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 608
    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFWVersion()I
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTransceiveLength(I)I
    .locals 1
    .param p1, "technology"    # I

    .prologue
    const/16 v0, 0xfd

    .line 509
    packed-switch p1, :pswitch_data_0

    .line 528
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 524
    :pswitch_2
    const v0, 0x1000a

    goto :goto_0

    .line 526
    :pswitch_3
    const/16 v0, 0xfc

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "nxp"

    return-object v0
.end method

.method public getSecureElementUid()[B
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetTimeout(I)I

    move-result v0

    return v0
.end method

.method public getWipeApdus()[[B
    .locals 1

    .prologue
    .line 634
    sget-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->EE_WIPE_APDUS:[[B

    return-object v0
.end method

.method public initialize()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 182
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNfcDefaultProtocolRoute()I

    move-result v9

    iput v9, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mbDefaultProtocolRoute:I

    .line 183
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isForceToDisableEse()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mbIsForceDisableEse:Z

    .line 185
    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v10, "NxpDeviceHost"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 186
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "se_wired"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 190
    const-wide/16 v10, 0x2ee0

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 191
    const-string v9, "se_wired"

    const/4 v10, 0x0

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitialize()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 199
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v9, "/system/vendor/firmware/libpn544_fw.so"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .local v1, "firmwareFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 206
    .local v2, "modtime":J
    const-string v8, "firmware_modtime"

    const-wide/16 v10, -0x1

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 208
    .local v6, "prev_fw_modtime":J
    cmp-long v8, v6, v2

    if-eqz v8, :cond_1

    .line 209
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "firmware_modtime"

    invoke-interface {v8, v9, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    :cond_1
    const/4 v8, 0x1

    .line 214
    .end local v1    # "firmwareFile":Ljava/io/File;
    .end local v2    # "modtime":J
    .end local v6    # "prev_fw_modtime":J
    :cond_2
    :goto_1
    return v8

    .line 200
    :catch_0
    move-exception v4

    .line 201
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v9, "NativeNfcManager"

    const-string v10, "path to firmware file was null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 193
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method public native initializeNativeStructure()Z
.end method

.method public resetTimeouts()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doResetTimeouts()V

    .line 483
    return-void
.end method

.method public native routeAid([BII)Z
.end method

.method public routeAidEx([BIIZ)Z
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "powerState"    # I
    .param p4, "isprefix"    # Z

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public sendRawFrame([B)Z
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x2

    .line 240
    const-string v1, "NativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAppletSelectStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 242
    array-length v1, p1

    if-le v1, v4, :cond_2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p1, v1

    const/16 v2, -0x70

    if-ne v1, v2, :cond_2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    if-nez v1, :cond_2

    .line 243
    iput v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    .line 249
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSendRawFrame([B)Z

    move-result v0

    .line 250
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 251
    new-instance v1, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;

    invoke-direct {v1, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    :cond_1
    return v0

    .line 245
    .end local v0    # "result":Z
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    goto :goto_0
.end method

.method public native setDefaultAidRoute(I)Z
.end method

.method public setDefaultProtoRoute(III)V
    .locals 0
    .param p1, "seID"    # I
    .param p2, "proto_switchon"    # I
    .param p3, "proto_switchoff"    # I

    .prologue
    .line 355
    return-void
.end method

.method public setDefaultRoute(III)Z
    .locals 1
    .param p1, "defaultRouteEntry"    # I
    .param p2, "defaultProtoRouteEntry"    # I
    .param p3, "defaultTechRouteEntry"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultTechRoute(III)V
    .locals 0
    .param p1, "seID"    # I
    .param p2, "tech_switchon"    # I
    .param p3, "tech_switchoff"    # I

    .prologue
    .line 349
    return-void
.end method

.method public setEmvCoPollProfile(ZI)I
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "route"    # I

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public setP2pInitiatorModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pInitiatorModes(I)V

    .line 543
    return-void
.end method

.method public setP2pTargetModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pTargetModes(I)V

    .line 549
    return-void
.end method

.method public setTimeout(II)Z
    .locals 1
    .param p1, "tech"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 491
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetTimeout(II)Z

    move-result v0

    return v0
.end method

.method public swpTest()I
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSWPSelfTest()I

    move-result v0

    return v0
.end method

.method public unrouteAid([BI)Z
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "route"    # I

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method
