.class public final Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# instance fields
.field private curContentID:Ljava/lang/String;

.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mIndex:J

.field private mMute:Z

.field private mPlayState:I

.field private mPosition:I

.field private mRendererId:Ljava/lang/String;

.field private mRendererName:Ljava/lang/String;

.field private mRepeat:I

.field private mShuffle:Z

.field private mThumbnailPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTotal:J

.field private mVolume:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 1443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    .line 1357
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1362
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1367
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1372
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1377
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1383
    iput-wide v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1387
    iput-wide v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1394
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1405
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1444
    return-void
.end method

.method static synthetic access$1802(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0

    .prologue
    .line 1346
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0

    .prologue
    .line 1346
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return p1
.end method

.method static synthetic access$2002(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z
    .locals 0

    .prologue
    .line 1346
    iput-boolean p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0

    .prologue
    .line 1346
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return p1
.end method

.method static synthetic access$2202(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0

    .prologue
    .line 1346
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return p1
.end method

.method static synthetic access$2402(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0

    .prologue
    .line 1346
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0

    .prologue
    .line 1346
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    return-wide p1
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1476
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 1509
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 1455
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1532
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRendererName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 1600
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1669
    return-void
.end method

.method public setArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1703
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 1646
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1736
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDate:Ljava/lang/String;

    .line 1737
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 1487
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    .line 1488
    return-void
.end method

.method public setIndex(J)V
    .locals 0

    .prologue
    .line 1498
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1499
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .prologue
    .line 1554
    iput-boolean p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mMute:Z

    .line 1555
    return-void
.end method

.method public setPlayState(I)V
    .locals 0

    .prologue
    .line 1466
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1467
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 1543
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1544
    return-void
.end method

.method public setRendererName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1624
    return-void
.end method

.method public setRepeat(I)V
    .locals 0

    .prologue
    .line 1576
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 1577
    return-void
.end method

.method public setShuffle(Z)V
    .locals 0

    .prologue
    .line 1565
    iput-boolean p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 1566
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1748
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1726
    return-void
.end method

.method public setTotal(J)V
    .locals 0

    .prologue
    .line 1520
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1521
    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .prologue
    .line 1588
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 1589
    return-void
.end method
