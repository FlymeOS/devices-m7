.class public Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;
.super Ljava/lang/Object;
.source "DLNAControllerStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bMute:Z

.field private bShuffle:Z

.field private contentAlbum:Ljava/lang/String;

.field private contentArtist:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private curContentID:Ljava/lang/String;

.field private curDMRContentTitle:Ljava/lang/String;

.field private curDMRPlayState:I

.field private currentIndex:J

.field private fDuration:J

.field private playState:I

.field private position:J

.field private rendererID:Ljava/lang/String;

.field private repeatState:I

.field private thumbnailPath:Ljava/lang/String;

.field private totalCount:J

.field private volumeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 395
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus$1;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus$1;-><init>()V

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 426
    return-void
.end method

.method public static getDLNAControllerStatus(Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;
    .locals 3

    .prologue
    .line 545
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 570
    :goto_0
    return-object v0

    .line 547
    :cond_0
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;-><init>()V

    .line 549
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setRendererId(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setContentTitle(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getContentArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setContentArtist(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getContentAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setContentAlbum(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setThumbnailPath(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getTotalCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setTotalCount(J)V

    .line 555
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setCurrentIndex(J)V

    .line 556
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setDuration(J)V

    .line 557
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setPosition(J)V

    .line 558
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setPlayState(I)V

    .line 559
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getVolumeValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setVolumeValue(I)V

    .line 560
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getRepeatState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setRepeatState(I)V

    .line 561
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setMute(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getShuffle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setShuffle(Z)V

    .line 563
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurDMRContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setCurDMRContentTitle(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurDMRPlayState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setCurDMRPlayState(I)V

    .line 565
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurContentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->setCurContentID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v1

    .line 567
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getCurDMRContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurDMRPlayState()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    return v0
.end method

.method public getCurrentIndex()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->currentIndex:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->fDuration:J

    return-wide v0
.end method

.method public getInternalDLNAControllerStatus()Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;
    .locals 4

    .prologue
    .line 512
    new-instance v1, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;

    invoke-direct {v1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;-><init>()V

    .line 514
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getRendererId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setRendererId(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setContentTitle(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getContentArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setContentArtist(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getContentAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setContentAlbum(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setThumbnailPath(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getTotalCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setTotalCount(J)V

    .line 520
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setCurrentIndex(J)V

    .line 521
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setDuration(J)V

    .line 522
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setPosition(J)V

    .line 523
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getPlayState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setPlayState(I)V

    .line 524
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getVolumeValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setVolumeValue(I)V

    .line 525
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getRepeatState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setRepeatState(I)V

    .line 526
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getMute()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setMute(Z)V

    .line 527
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getShuffle()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setShuffle(Z)V

    .line 528
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getCurDMRContentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setCurDMRContentTitle(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setCurDMRPlayState(I)V

    .line 530
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->getCurContentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->setCurContentID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    return-object v1

    .line 531
    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->bMute:Z

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->playState:I

    return v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->position:J

    return-wide v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->rendererID:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatState()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->repeatState:I

    return v0
.end method

.method public getShuffle()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->bShuffle:Z

    return v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->totalCount:J

    return-wide v0
.end method

.method public getVolumeValue()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->volumeValue:I

    return v0
.end method

.method public isShuffle()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->bShuffle:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 483
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->rendererID:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentTitle:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentArtist:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->totalCount:J

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->currentIndex:J

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->fDuration:J

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->position:J

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->playState:I

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->volumeValue:I

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->repeatState:I

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->bMute:Z

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->bShuffle:Z

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentArtist:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentTitle:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setCurDMRContentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setCurDMRPlayState(I)V
    .locals 0

    .prologue
    .line 366
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    .line 367
    return-void
.end method

.method public setCurrentIndex(J)V
    .locals 0

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->currentIndex:J

    .line 185
    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->fDuration:J

    .line 206
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->bMute:Z

    .line 307
    return-void
.end method

.method public setPlayState(I)V
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->playState:I

    .line 246
    return-void
.end method

.method public setPosition(J)V
    .locals 0

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->position:J

    .line 226
    return-void
.end method

.method public setRendererId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->rendererID:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRepeatState(I)V
    .locals 0

    .prologue
    .line 286
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->repeatState:I

    .line 287
    return-void
.end method

.method public setShuffle(Z)V
    .locals 0

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->bShuffle:Z

    .line 327
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setTotalCount(J)V
    .locals 0

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->totalCount:J

    .line 165
    return-void
.end method

.method public setVolumeValue(I)V
    .locals 0

    .prologue
    .line 265
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->volumeValue:I

    .line 266
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->totalCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 457
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->currentIndex:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 458
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->fDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 459
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->position:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 460
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->playState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->volumeValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->repeatState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->bMute:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 464
    iget-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->bShuffle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
