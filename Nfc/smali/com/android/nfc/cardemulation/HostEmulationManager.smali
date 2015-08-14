.class public Lcom/android/nfc/cardemulation/HostEmulationManager;
.super Ljava/lang/Object;
.source "HostEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;
    }
.end annotation


# static fields
.field static final AID_NOT_FOUND:[B

.field static final ANDROID_HCE_AID:Ljava/lang/String; = "A000000476416E64726F6964484345"

.field static final ANDROID_HCE_RESPONSE:[B

.field static final DBG:Z

.field static final INSTR_SELECT:B = -0x5ct

.field static final MINIMUM_AID_LENGTH:I = 0x5

.field static final SELECT_APDU_HDR_LENGTH:I = 0x5

.field static final STATE_IDLE:I = 0x0

.field static final STATE_W4_DEACTIVATE:I = 0x3

.field static final STATE_W4_SELECT:I = 0x1

.field static final STATE_W4_SERVICE:I = 0x2

.field static final STATE_XFER:I = 0x4

.field static final TAG:Ljava/lang/String; = "HostEmulationManager"

.field static final UNKNOWN_ERROR:[B


# instance fields
.field mActiveService:Landroid/os/Messenger;

.field mActiveServiceName:Landroid/content/ComponentName;

.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field private mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field final mKeyguard:Landroid/app/KeyguardManager;

.field mLastSelectedAid:Ljava/lang/String;

.field final mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field private mPaymentConnection:Landroid/content/ServiceConnection;

.field mPaymentService:Landroid/os/Messenger;

.field mPaymentServiceBound:Z

.field mPaymentServiceName:Landroid/content/ComponentName;

.field mScreenState:I

.field mSelectApdu:[B

.field mService:Landroid/os/Messenger;

.field mServiceBound:Z

.field mServiceName:Landroid/content/ComponentName;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 65
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->DBG:Z

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    .line 84
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    .line 85
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->UNKNOWN_ERROR:[B

    return-void

    .line 82
    :array_0
    .array-data 1
        0x14t
        -0x7ft
        0x0t
        0x0t
        -0x70t
        0x0t
    .end array-data

    .line 84
    nop

    :array_1
    .array-data 1
        0x6at
        -0x7et
    .end array-data

    .line 85
    nop

    :array_2
    .array-data 1
        0x6ft
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidCache"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mMessenger:Landroid/os/Messenger;

    .line 444
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$1;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    .line 464
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$2;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 122
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    .line 124
    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 126
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mScreenState:I

    .line 127
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    .line 128
    return-void
.end method

.method static bytesToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 537
    const/16 v4, 0x10

    new-array v2, v4, [C

    fill-array-data v2, :array_0

    .line 538
    .local v2, "hexChars":[C
    mul-int/lit8 v4, p2, 0x2

    new-array v1, v4, [C

    .line 540
    .local v1, "chars":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 541
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    .line 542
    .local v0, "byteValue":I
    mul-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v0, 0x4

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 543
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v0, 0xf

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 545
    .end local v0    # "byteValue":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 537
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method


# virtual methods
.method bindPaymentServiceLocked(ILandroid/content/ComponentName;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked()V

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    const-string v1, "HostEmulationManager"

    const-string v2, "Could not bind (persistent) payment service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    return-void
.end method

.method bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 317
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "HostEmulationManager"

    const-string v2, "Service already bound as payment service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    .line 333
    :goto_0
    return-object v1

    .line 320
    :cond_0
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    const-string v1, "HostEmulationManager"

    const-string v2, "Service already bound as regular service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    goto :goto_0

    .line 324
    :cond_1
    const-string v1, "HostEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding to service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "aidIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 331
    :cond_2
    const-string v1, "HostEmulationManager"

    const-string v2, "Could not bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 549
    const-string v0, "Bound services: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    payment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_1

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    other: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    :cond_1
    return-void
.end method

.method findSelectAid([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 421
    if-eqz p1, :cond_0

    array-length v2, p1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 422
    :cond_0
    sget-boolean v2, Lcom/android/nfc/cardemulation/HostEmulationManager;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "HostEmulationManager"

    const-string v3, "Data size too small for SELECT APDU"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    :goto_0
    return-object v1

    .line 431
    :cond_2
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v3, -0x5c

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_1

    .line 432
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-eqz v2, :cond_3

    .line 433
    const-string v2, "HostEmulationManager"

    const-string v3, "Selecting next, last or previous AID occurrence is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_3
    aget-byte v0, p1, v4

    .line 436
    .local v0, "aidLength":I
    array-length v2, p1

    add-int/lit8 v3, v0, 0x5

    if-lt v2, v3, :cond_1

    .line 439
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bytesToString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p2, "failedComponent"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    const-string v1, "services"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 413
    const-string v1, "category"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    if-eqz p2, :cond_0

    .line 415
    const-string v1, "failed_component"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 418
    return-void
.end method

.method launchTapAgain(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 401
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v1, "apdu_service"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 404
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 405
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 406
    return-void
.end method

.method public onHostEmulationActivated()V
    .locals 4

    .prologue
    .line 154
    const-string v1, "HostEmulationManager"

    const-string v2, "notifyHostEmulationActivated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 161
    iget v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "HostEmulationManager"

    const-string v3, "Got activation event in non-idle state"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 165
    monitor-exit v2

    .line 166
    return-void

    .line 165
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationData([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x3

    .line 169
    const-string v7, "HostEmulationManager"

    const-string v8, "notifyHostEmulationData"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->findSelectAid([B)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "selectAid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 172
    .local v4, "resolvedService":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 173
    :try_start_0
    iget v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-nez v7, :cond_0

    .line 174
    const-string v7, "HostEmulationManager"

    const-string v9, "Got data in idle state."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    monitor-exit v8

    .line 280
    :goto_0
    return-void

    .line 176
    :cond_0
    iget v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-ne v7, v9, :cond_1

    .line 177
    const-string v7, "HostEmulationManager"

    const-string v9, "Dropping APDU in STATE_W4_DECTIVATE"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    monitor-exit v8

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 180
    :cond_1
    :try_start_1
    iget v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mScreenState:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 181
    const-string v7, "HostEmulationManager"

    const-string v9, "APDU not routed in screen off state"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 183
    monitor-exit v8

    goto :goto_0

    .line 185
    :cond_2
    if-eqz v5, :cond_b

    .line 186
    const-string v7, "A000000476416E64726F6964484345"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 187
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 188
    monitor-exit v8

    goto :goto_0

    .line 190
    :cond_3
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v7, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v3

    .line 191
    .local v3, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    if-eqz v3, :cond_4

    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 193
    :cond_4
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 194
    monitor-exit v8

    goto :goto_0

    .line 196
    :cond_5
    iput-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastSelectedAid:Ljava/lang/String;

    .line 197
    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v7, :cond_9

    .line 200
    iget-object v0, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 201
    .local v0, "defaultServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->requiresUnlock()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 204
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 205
    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    iget-object v9, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v7, v9}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchTapAgain(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V

    .line 206
    monitor-exit v8

    goto/16 :goto_0

    .line 210
    :cond_6
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v7

    if-nez v7, :cond_7

    .line 211
    const-string v7, "HostEmulationManager"

    const-string v9, "AID that was meant to go off-host was routed to host. Check routing table configuration."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 214
    monitor-exit v8

    goto/16 :goto_0

    .line 216
    :cond_7
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 225
    .end local v0    # "defaultServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_8
    :goto_1
    if-nez v4, :cond_b

    .line 229
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 230
    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    const/4 v9, 0x0

    iget-object v10, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 232
    monitor-exit v8

    goto/16 :goto_0

    .line 217
    :cond_9
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    if-eqz v7, :cond_8

    .line 218
    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 219
    .local v6, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 220
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 221
    goto :goto_1

    .line 236
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_b
    iget v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    packed-switch v7, :pswitch_data_0

    .line 279
    :goto_2
    :pswitch_0
    monitor-exit v8

    goto/16 :goto_0

    .line 238
    :pswitch_1
    if-eqz v5, :cond_d

    .line 239
    invoke-virtual {p0, v4}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v1

    .line 240
    .local v1, "existingService":Landroid/os/Messenger;
    if-eqz v1, :cond_c

    .line 241
    const-string v7, "HostEmulationManager"

    const-string v9, "Binding to existing service"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 243
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_2

    .line 246
    :cond_c
    const-string v7, "HostEmulationManager"

    const-string v9, "Waiting for new service."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 249
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_2

    .line 252
    .end local v1    # "existingService":Landroid/os/Messenger;
    :cond_d
    const-string v7, "HostEmulationManager"

    const-string v9, "Dropping non-select APDU in STATE_W4_SELECT"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->UNKNOWN_ERROR:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    goto :goto_2

    .line 257
    :pswitch_2
    const-string v7, "HostEmulationManager"

    const-string v9, "Unexpected APDU in STATE_W4_SERVICE"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 260
    :pswitch_3
    if-eqz v5, :cond_f

    .line 261
    invoke-virtual {p0, v4}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v1

    .line 262
    .restart local v1    # "existingService":Landroid/os/Messenger;
    if-eqz v1, :cond_e

    .line 263
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 264
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_2

    .line 267
    :cond_e
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 268
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_2

    .line 270
    .end local v1    # "existingService":Landroid/os/Messenger;
    :cond_f
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eqz v7, :cond_10

    .line 272
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v7, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_2

    .line 275
    :cond_10
    const-string v7, "HostEmulationManager"

    const-string v9, "Service no longer bound, dropping APDU"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    .prologue
    .line 283
    const-string v0, "HostEmulationManager"

    const-string v1, "notifyHostEmulationDeactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-nez v0, :cond_0

    .line 286
    const-string v0, "HostEmulationManager"

    const-string v2, "Got deactivation event while in idle state"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 291
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOffHostAidSelected()V
    .locals 4

    .prologue
    .line 297
    const-string v1, "HostEmulationManager"

    const-string v2, "notifyOffHostAidSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 299
    :try_start_0
    iget v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 305
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 306
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 307
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 313
    monitor-exit v2

    .line 314
    return-void

    .line 302
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    if-eqz p1, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    .line 147
    :goto_0
    monitor-exit v1

    .line 148
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    goto :goto_0

    .line 147
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
    .line 131
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    if-eqz p1, :cond_0

    .line 133
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindPaymentServiceLocked(ILandroid/content/ComponentName;)V

    .line 137
    :goto_0
    monitor-exit v1

    .line 138
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked()V

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    .locals 5
    .param p1, "service"    # Landroid/os/Messenger;
    .param p2, "data"    # [B

    .prologue
    .line 338
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eq p1, v3, :cond_0

    .line 339
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 340
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 341
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    invoke-virtual {p1, v3}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 347
    :cond_0
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 348
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v0, "dataBundle":Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 350
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 351
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 353
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_1
    return-void

    .line 344
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    goto :goto_0

    .line 354
    .restart local v0    # "dataBundle":Landroid/os/Bundle;
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HostEmulationManager"

    const-string v4, "Remote service has died, dropping APDU"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method sendDeactivateToActiveServiceLocked(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 362
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setScreenState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mScreenState:I

    .line 151
    return-void
.end method

.method unbindPaymentServiceLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    .line 374
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    .line 375
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    .line 377
    :cond_0
    return-void
.end method

.method unbindServiceIfNeededLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "HostEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbinding from service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 395
    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    .line 396
    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 398
    :cond_0
    return-void
.end method
