.class public Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;
.super Ljava/lang/Object;
.source "InternalDLNAContentItemDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentAlbum:Ljava/lang/String;

.field private contentArtist:Ljava/lang/String;

.field private contentBitRate:J

.field private contentComposer:Ljava/lang/String;

.field private contentDate:Ljava/lang/String;

.field private contentDiscNumber:Ljava/lang/String;

.field private contentDuration:J

.field private contentFps:J

.field private contentGenre:Ljava/lang/String;

.field private contentPath:Ljava/lang/String;

.field private contentResolution:Ljava/lang/String;

.field private contentSize:J

.field private contentStatus:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private contentTrackNumber:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private downloadStoreAlbumArtPath:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private nameDMS:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->readFromParcel(Landroid/os/Parcel;)V

    .line 451
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 456
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDate:Ljava/lang/String;

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentType:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentSize:J

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDuration:J

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentBitRate:J

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentFps:J

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentBitRate()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentBitRate:J

    return-wide v0
.end method

.method public getContentComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDiscNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDuration()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDuration:J

    return-wide v0
.end method

.method public getContentFps()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentFps:J

    return-wide v0
.end method

.method public getContentGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    return-object v0
.end method

.method public getContentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getContentResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getContentSize()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentSize:J

    return-wide v0
.end method

.method public getContentStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTrackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStoreAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameDMS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setContentBitRate(J)V
    .locals 0

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentBitRate:J

    .line 163
    return-void
.end method

.method public setContentComposer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setContentDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDate:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setContentDiscNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setContentDuration(J)V
    .locals 0

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDuration:J

    .line 145
    return-void
.end method

.method public setContentFps(J)V
    .locals 0

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentFps:J

    .line 127
    return-void
.end method

.method public setContentGenre(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setContentPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setContentResolution(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setContentSize(J)V
    .locals 0

    .prologue
    .line 180
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentSize:J

    .line 181
    return-void
.end method

.method public setContentStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setContentTrackNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentType:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setDownloadStoreAlbumArtPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public setNameDMS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 514
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 515
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 516
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentFps:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 517
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 524
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
