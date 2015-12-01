.class public Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;
.super Ljava/lang/Object;
.source "InternalDLNAControllerStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;",
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
    .line 396
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 427
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getCurDMRContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurDMRPlayState()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRPlayState:I

    return v0
.end method

.method public getCurrentIndex()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->currentIndex:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->fDuration:J

    return-wide v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bMute:Z

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->playState:I

    return v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->position:J

    return-wide v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->rendererID:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatState()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->repeatState:I

    return v0
.end method

.method public getShuffle()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bShuffle:Z

    return v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->totalCount:J

    return-wide v0
.end method

.method public getVolumeValue()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->volumeValue:I

    return v0
.end method

.method public isShuffle()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bShuffle:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 484
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->rendererID:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentTitle:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentArtist:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->totalCount:J

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->currentIndex:J

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->fDuration:J

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->position:J

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->playState:I

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->volumeValue:I

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->repeatState:I

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bMute:Z

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bShuffle:Z

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRPlayState:I

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curContentID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentArtist:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentTitle:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curContentID:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setCurDMRContentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setCurDMRPlayState(I)V
    .locals 0

    .prologue
    .line 367
    iput p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRPlayState:I

    .line 368
    return-void
.end method

.method public setCurrentIndex(J)V
    .locals 0

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->currentIndex:J

    .line 186
    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->fDuration:J

    .line 207
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bMute:Z

    .line 308
    return-void
.end method

.method public setPlayState(I)V
    .locals 0

    .prologue
    .line 246
    iput p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->playState:I

    .line 247
    return-void
.end method

.method public setPosition(J)V
    .locals 0

    .prologue
    .line 226
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->position:J

    .line 227
    return-void
.end method

.method public setRendererId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->rendererID:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setRepeatState(I)V
    .locals 0

    .prologue
    .line 287
    iput p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->repeatState:I

    .line 288
    return-void
.end method

.method public setShuffle(Z)V
    .locals 0

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bShuffle:Z

    .line 328
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setTotalCount(J)V
    .locals 0

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->totalCount:J

    .line 166
    return-void
.end method

.method public setVolumeValue(I)V
    .locals 0

    .prologue
    .line 266
    iput p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->volumeValue:I

    .line 267
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->totalCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 458
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->currentIndex:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 459
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->fDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 460
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->position:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 461
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->playState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->volumeValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->repeatState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget-boolean v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bMute:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 465
    iget-boolean v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->bShuffle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curDMRPlayState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->curContentID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
