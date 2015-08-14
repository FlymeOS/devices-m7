.class public Lcom/android/nfc/dhimpl/NativeNfcTag;
.super Ljava/lang/Object;
.source "NativeNfcTag.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagEndpoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final STATUS_CODE_TARGET_LOST:I = 0x92


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectedHandle:I

.field private mConnectedTechIndex:I

.field private mIsPresent:Z

.field private mTechActBytes:[[B

.field private mTechExtras:[Landroid/os/Bundle;

.field private mTechHandles:[I

.field private mTechLibNfcTypes:[I

.field private mTechList:[I

.field private mTechPollBytes:[[B

.field private mUid:[B

.field private mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

.field private mbIsAsiaWWESku:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcTag;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mbIsAsiaWWESku:Z

    .line 87
    const-string v0, "NativeNfcTag"

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->TAG:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/dhimpl/NativeNfcTag;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private addTechnology(III)V
    .locals 6
    .param p1, "tech"    # I
    .param p2, "handle"    # I
    .param p3, "libnfctype"    # I

    .prologue
    const/4 v5, 0x0

    .line 484
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [I

    .line 485
    .local v1, "mNewTechList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 486
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v3

    aput p1, v1, v3

    .line 487
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 489
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    .line 490
    .local v0, "mNewHandleList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 491
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v3, v3

    aput p2, v0, v3

    .line 492
    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 494
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [I

    .line 495
    .local v2, "mNewTypeList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 496
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v3, v3

    aput p3, v2, v3

    .line 497
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 498
    return-void
.end method

.method private declared-synchronized checkNdefWithStatus([I)I
    .locals 2
    .param p1, "ndefinfo"    # [I

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 324
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doCheckNdef([I)I

    move-result v0

    .line 325
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_1
    monitor-exit p0

    return v0

    .line 321
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native doCheckNdef([I)I
.end method

.method private native doConnect(I)I
.end method

.method private native doRead()[B
.end method

.method private native doTransceive([BZ[I)[B
.end method

.method private native doWrite([B)Z
.end method

.method private getConnectedHandle()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private getConnectedLibNfcType()I
    .locals 2

    .prologue
    .line 463
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    aget v0, v0, v1

    .line 466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNdefType(II)I
    .locals 1
    .param p1, "libnfctype"    # I
    .param p2, "javatype"    # I

    .prologue
    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doGetNdefType(II)I

    move-result v0

    return v0
.end method

.method private getTechIndex(I)I
    .locals 3
    .param p1, "tech"    # I

    .prologue
    .line 568
    const/4 v1, -0x1

    .line 569
    .local v1, "techIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 571
    move v1, v0

    .line 575
    :cond_0
    return v1

    .line 569
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hasTech(I)Z
    .locals 3
    .param p1, "tech"    # I

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 581
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 582
    const/4 v0, 0x1

    .line 586
    :cond_0
    return v0

    .line 580
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasTechOnHandle(II)Z
    .locals 3
    .param p1, "tech"    # I
    .param p2, "handle"    # I

    .prologue
    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_1

    .line 593
    const/4 v0, 0x1

    .line 597
    :cond_0
    return v0

    .line 591
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isUltralightC()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x6

    const/4 v6, 0x2

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "isUltralightC":Z
    new-array v1, v6, [B

    fill-array-data v1, :array_0

    .line 615
    .local v1, "readCmd":[B
    new-array v3, v6, [I

    .line 616
    .local v3, "retCode":[I
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->transceive([BZ[I)[B

    move-result-object v2

    .line 617
    .local v2, "respData":[B
    if-eqz v2, :cond_0

    array-length v4, v2

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 620
    aget-byte v4, v2, v6

    if-nez v4, :cond_2

    const/4 v4, 0x3

    aget-byte v4, v2, v4

    if-nez v4, :cond_2

    aget-byte v4, v2, v8

    if-nez v4, :cond_2

    aget-byte v4, v2, v9

    if-nez v4, :cond_2

    aget-byte v4, v2, v7

    if-nez v4, :cond_2

    const/4 v4, 0x7

    aget-byte v4, v2, v4

    if-nez v4, :cond_2

    .line 624
    const/16 v4, 0x8

    aget-byte v4, v2, v4

    if-ne v4, v6, :cond_1

    const/16 v4, 0x9

    aget-byte v4, v2, v4

    if-nez v4, :cond_1

    .line 626
    const/4 v0, 0x1

    .line 651
    :cond_0
    :goto_0
    return v0

    .line 630
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 635
    :cond_2
    aget-byte v4, v2, v8

    const/16 v5, -0x1f

    if-ne v4, v5, :cond_3

    aget-byte v4, v2, v9

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x20

    if-ge v4, v5, :cond_3

    .line 642
    aget-byte v4, v2, v7

    and-int/lit16 v4, v4, 0xff

    if-le v4, v7, :cond_0

    .line 643
    const/4 v0, 0x1

    goto :goto_0

    .line 647
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 614
    :array_0
    .array-data 1
        0x30t
        0x2t
    .end array-data
.end method


# virtual methods
.method public addNdefFormatableTechnology(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "libnfcType"    # I

    .prologue
    .line 527
    monitor-enter p0

    .line 528
    const/4 v0, 0x7

    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 529
    monitor-exit p0

    .line 530
    return-void

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V
    .locals 7
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "handle"    # I
    .param p3, "libnfcType"    # I
    .param p4, "javaType"    # I
    .param p5, "maxLength"    # I
    .param p6, "cardState"    # I

    .prologue
    .line 539
    monitor-enter p0

    .line 540
    const/4 v4, 0x6

    :try_start_0
    invoke-direct {p0, v4, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 542
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 543
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "ndefmsg"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 544
    const-string v4, "ndefmaxlength"

    invoke-virtual {v1, v4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 545
    const-string v4, "ndefcardstate"

    invoke-virtual {v1, v4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 546
    const-string v4, "ndeftype"

    invoke-direct {p0, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getNdefType(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-nez v4, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v0

    .line 552
    .local v0, "builtTechExtras":[Landroid/os/Bundle;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-object v1, v0, v4

    .line 564
    .end local v0    # "builtTechExtras":[Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    .line 565
    return-void

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    .line 557
    .local v3, "oldTechExtras":[Landroid/os/Bundle;
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Landroid/os/Bundle;

    .line 558
    .local v2, "newTechExtras":[Landroid/os/Bundle;
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    array-length v4, v3

    aput-object v1, v2, v4

    .line 560
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    goto :goto_0

    .line 564
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "newTechExtras":[Landroid/os/Bundle;
    .end local v3    # "oldTechExtras":[Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized checkNdef([I)Z
    .locals 1
    .param p1, "ndefinfo"    # [I

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(I)Z
    .locals 1
    .param p1, "technology"    # I

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectWithStatus(I)I
    .locals 5
    .param p1, "technology"    # I

    .prologue
    const/4 v4, 0x3

    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 170
    :cond_0
    const/4 v1, -0x1

    .line 171
    .local v1, "status":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_8

    .line 174
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_4

    .line 181
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 183
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doConnect(I)I

    move-result v1

    .line 188
    :goto_1
    if-nez v1, :cond_1

    .line 189
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    .line 190
    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 221
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_2
    monitor-exit p0

    return v1

    .line 186
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v1

    goto :goto_1

    .line 199
    :cond_4
    const/4 v2, 0x6

    if-eq p1, v2, :cond_5

    const/4 v2, 0x7

    if-ne p1, v2, :cond_6

    .line 201
    :cond_5
    const/4 v1, 0x0

    .line 213
    :goto_3
    if-nez v1, :cond_1

    .line 214
    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 167
    .end local v0    # "i":I
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 203
    .restart local v0    # "i":I
    .restart local v1    # "status":I
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v2, 0x3

    :try_start_2
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTechOnHandle(II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    .line 208
    const/4 v1, -0x1

    goto :goto_3

    .line 210
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 171
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized disconnect()Z
    .locals 2

    .prologue
    .line 255
    monitor-enter p0

    const/4 v0, 0x0

    .line 257
    .local v0, "result":Z
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 258
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->end()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 267
    const/4 v0, 0x1

    .line 272
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 273
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    monitor-exit p0

    return v0

    .line 269
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 263
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method native doDisconnect()Z
.end method

.method native doGetNdefType(II)I
.end method

.method native doHandleReconnect(I)I
.end method

.method native doIsIsoDepNdefFormatable([B[B)Z
.end method

.method native doMakeReadonly([B)Z
.end method

.method native doNdefFormat([B)Z
.end method

.method native doPresenceCheck()Z
.end method

.method native doReconnect()I
.end method

.method public findAndReadNdef()Landroid/nfc/NdefMessage;
    .locals 30

    .prologue
    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechList()[I

    move-result-object v29

    .line 749
    .local v29, "technologies":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    move-object/from16 v23, v0

    .line 750
    .local v23, "handles":[I
    const/16 v25, 0x0

    .line 751
    .local v25, "ndefMsg":Landroid/nfc/NdefMessage;
    const/16 v21, 0x0

    .line 752
    .local v21, "foundFormattable":Z
    const/16 v19, 0x0

    .line 753
    .local v19, "formattableHandle":I
    const/16 v20, 0x0

    .line 756
    .local v20, "formattableLibNfcType":I
    const/16 v28, 0x0

    .local v28, "techIndex":I
    :goto_0
    move-object/from16 v0, v29

    array-length v3, v0

    move/from16 v0, v28

    if-ge v0, v3, :cond_a

    .line 758
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 759
    aget v3, v23, v24

    aget v5, v23, v28

    if-ne v3, v5, :cond_0

    .line 758
    :cond_0
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 764
    :cond_1
    aget v3, v29, v28

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v27

    .line 765
    .local v27, "status":I
    if-eqz v27, :cond_4

    .line 766
    const-string v3, "NativeNfcTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect Failed - status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/16 v3, 0x92

    move/from16 v0, v27

    if-ne v0, v3, :cond_9

    move-object/from16 v4, v25

    .line 832
    .end local v24    # "i":I
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v27    # "status":I
    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    if-eqz v21, :cond_3

    .line 835
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefFormatableTechnology(II)V

    .line 840
    :cond_3
    return-object v4

    .line 773
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v24    # "i":I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v27    # "status":I
    :cond_4
    if-nez v21, :cond_6

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isNdefFormatable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 775
    const/16 v21, 0x1

    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v19

    .line 777
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v20

    .line 782
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    .line 785
    :cond_6
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 786
    .local v26, "ndefinfo":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v27

    .line 787
    if-eqz v27, :cond_7

    .line 788
    const-string v3, "NativeNfcTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check NDEF Failed - status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v3, 0x92

    move/from16 v0, v27

    if-ne v0, v3, :cond_9

    move-object/from16 v4, v25

    .line 790
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_2

    .line 796
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_7
    const/16 v22, 0x0

    .line 798
    .local v22, "generateEmptyNdef":Z
    const/4 v3, 0x0

    aget v8, v26, v3

    .line 799
    .local v8, "supportedNdefLength":I
    const/4 v3, 0x1

    aget v9, v26, v3

    .line 800
    .local v9, "cardState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->readNdef()[B

    move-result-object v17

    .line 801
    .local v17, "buff":[B
    if-eqz v17, :cond_8

    .line 803
    :try_start_0
    new-instance v4, Landroid/nfc/NdefMessage;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v7

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 818
    :goto_3
    if-eqz v22, :cond_2

    .line 819
    const/4 v4, 0x0

    .line 820
    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v14

    move-object/from16 v10, p0

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 826
    const/16 v21, 0x0

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    goto/16 :goto_2

    .line 810
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :catch_0
    move-exception v18

    move-object/from16 v4, v25

    .line 812
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v18, "e":Landroid/nfc/FormatException;
    :goto_4
    const/16 v22, 0x1

    .line 813
    goto :goto_3

    .line 815
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v18    # "e":Landroid/nfc/FormatException;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_8
    const/16 v22, 0x1

    move-object/from16 v4, v25

    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_3

    .line 756
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v8    # "supportedNdefLength":I
    .end local v9    # "cardState":I
    .end local v17    # "buff":[B
    .end local v22    # "generateEmptyNdef":Z
    .end local v26    # "ndefinfo":[I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_9
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 810
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v8    # "supportedNdefLength":I
    .restart local v9    # "cardState":I
    .restart local v17    # "buff":[B
    .restart local v22    # "generateEmptyNdef":Z
    .restart local v26    # "ndefinfo":[I
    :catch_1
    move-exception v18

    goto :goto_4

    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v8    # "supportedNdefLength":I
    .end local v9    # "cardState":I
    .end local v17    # "buff":[B
    .end local v22    # "generateEmptyNdef":Z
    .end local v24    # "i":I
    .end local v26    # "ndefinfo":[I
    .end local v27    # "status":I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_a
    move-object/from16 v4, v25

    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto/16 :goto_2
.end method

.method public declared-synchronized formatNdef([B)Z
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doNdefFormat([B)Z

    move-result v0

    .line 381
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_1
    monitor-exit p0

    return v0

    .line 377
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnectedTechnology()I
    .locals 2

    .prologue
    .line 472
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    aget v0, v0, v1

    .line 475
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandle()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 441
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v0, v1, v0

    .line 444
    :cond_0
    return v0
.end method

.method public getTechExtras()[Landroid/os/Bundle;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/16 v12, 0x8

    .line 656
    monitor-enter p0

    .line 657
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0

    .line 741
    :goto_0
    return-object v8

    .line 658
    :cond_0
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v8, v8

    new-array v8, v8, [Landroid/os/Bundle;

    iput-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 659
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v8, v8

    if-ge v3, v8, :cond_5

    .line 660
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 661
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v8, v8, v3

    packed-switch v8, :pswitch_data_0

    .line 659
    :goto_2
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 663
    :pswitch_1
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v0, v8, v3

    .line 664
    .local v0, "actBytes":[B
    if-eqz v0, :cond_1

    array-length v8, v0

    if-lez v8, :cond_1

    .line 665
    const-string v8, "sak"

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 670
    :cond_1
    const-string v8, "atqa"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 739
    .end local v0    # "actBytes":[B
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    aput-object v2, v8, v3

    goto :goto_2

    .line 742
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 678
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "i":I
    :pswitch_2
    const/4 v8, 0x4

    :try_start_1
    new-array v1, v8, [B

    .line 679
    .local v1, "appData":[B
    const/4 v8, 0x3

    new-array v6, v8, [B

    .line 680
    .local v6, "protInfo":[B
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    const/4 v9, 0x7

    if-lt v8, v9, :cond_2

    .line 681
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v8, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 682
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v8, v9, v6, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 684
    const-string v8, "appdata"

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 685
    const-string v8, "protinfo"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_3

    .line 691
    .end local v1    # "appData":[B
    .end local v6    # "protInfo":[B
    :pswitch_3
    const/16 v8, 0x8

    new-array v5, v8, [B

    .line 692
    .local v5, "pmm":[B
    const/4 v8, 0x2

    new-array v7, v8, [B

    .line 693
    .local v7, "sc":[B
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    if-lt v8, v12, :cond_3

    .line 695
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v8, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 696
    const-string v8, "pmm"

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 698
    :cond_3
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 699
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 700
    const-string v8, "systemcode"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_3

    .line 706
    .end local v5    # "pmm":[B
    .end local v7    # "sc":[B
    :pswitch_4
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 707
    const-string v8, "histbytes"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_3

    .line 710
    :cond_4
    const-string v8, "hiresp"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_3

    .line 717
    :pswitch_5
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    if-lt v8, v13, :cond_2

    .line 718
    const-string v8, "respflags"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 719
    const-string v8, "dsfid"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_3

    .line 725
    :pswitch_6
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isUltralightC()Z

    move-result v4

    .line 726
    .local v4, "isUlc":Z
    const-string v8, "isulc"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 730
    .end local v4    # "isUlc":Z
    :pswitch_7
    const-string v8, "barcodetype"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 741
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_5
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getTechList()[I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    return-object v0
.end method

.method public getUid()[B
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mUid:[B

    return-object v0
.end method

.method public declared-synchronized isNdefFormatable()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 409
    monitor-enter p0

    const/16 v3, 0x8

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 413
    :cond_1
    const/4 v3, 0x5

    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mUid:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    if-lt v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mUid:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    if-gt v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mUid:[B

    const/4 v4, 0x6

    aget-byte v3, v3, v4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    .line 418
    goto :goto_0

    .line 423
    :cond_3
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 424
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechIndex(I)I

    move-result v0

    .line 425
    .local v0, "nfcaTechIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 426
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doIsIsoDepNdefFormatable([B[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 429
    goto :goto_0

    .end local v0    # "nfcaTechIndex":I
    :cond_5
    move v1, v2

    .line 433
    goto :goto_0

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isPresent()Z
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeReadOnly()Z
    .locals 2

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 394
    :cond_0
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    sget-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z

    move-result v0

    .line 400
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_1
    monitor-exit p0

    return v0

    .line 398
    .end local v0    # "result":Z
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 390
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized presenceCheck()Z
    .locals 2

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v0

    .line 368
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_1
    monitor-exit p0

    return v0

    .line 364
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readNdef()[B
    .locals 2

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doRead()[B

    move-result-object v0

    .line 342
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_1
    monitor-exit p0

    return-object v0

    .line 338
    .end local v0    # "result":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reconnect()Z
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnectWithStatus()I
    .locals 3

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 282
    :cond_0
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getSkuId()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mbIsAsiaWWESku:Z

    .line 283
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doReconnect()I

    move-result v0

    .line 284
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :cond_1
    monitor-exit p0

    return v0

    .line 282
    .end local v0    # "status":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reconnectWithStatus(I)I
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doHandleReconnect(I)I

    move-result v0

    .line 300
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_1
    monitor-exit p0

    return v0

    .line 296
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeTechnology(I)V
    .locals 7
    .param p1, "tech"    # I

    .prologue
    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechIndex(I)I

    move-result v3

    .line 504
    .local v3, "techIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 505
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v1, v4, [I

    .line 506
    .local v1, "mNewTechList":[I
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 507
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 509
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 511
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v0, v4, [I

    .line 512
    .local v0, "mNewHandleList":[I
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 513
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 515
    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 517
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v2, v4, [I

    .line 518
    .local v2, "mNewTypeList":[I
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 519
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 521
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 523
    .end local v0    # "mNewHandleList":[I
    .end local v1    # "mNewTechList":[I
    .end local v2    # "mNewTypeList":[I
    :cond_0
    monitor-exit p0

    .line 524
    return-void

    .line 523
    .end local v3    # "techIndex":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V
    .locals 2
    .param p1, "presenceCheckDelay"    # I
    .param p2, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .prologue
    .line 236
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 237
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connect(I)Z

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;-><init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 242
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_1
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transceive([BZ[I)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "raw"    # Z
    .param p3, "returnCode"    # [I

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 312
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doTransceive([BZ[I)[B

    move-result-object v0

    .line 313
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_1
    monitor-exit p0

    return-object v0

    .line 309
    .end local v0    # "result":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized writeNdef([B)Z
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 354
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doWrite([B)Z

    move-result v0

    .line 355
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_1
    monitor-exit p0

    return v0

    .line 351
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
