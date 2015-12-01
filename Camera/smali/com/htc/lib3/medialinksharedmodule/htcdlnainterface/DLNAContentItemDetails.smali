.class public Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;
.super Ljava/lang/Object;
.source "DLNAContentItemDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;",
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
    .line 414
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails$1;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails$1;-><init>()V

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->readFromParcel(Landroid/os/Parcel;)V

    .line 446
    return-void
.end method

.method public static getDLNAContentItemDetails(Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;
    .locals 3

    .prologue
    .line 570
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 599
    :goto_0
    return-object v0

    .line 572
    :cond_0
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;-><init>()V

    .line 575
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setThumbnailPath(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getNameDMS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setNameDMS(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentTrackNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentTrackNumber(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentDiscNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentDiscNumber(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentFps()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentFps(J)V

    .line 580
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentDuration(J)V

    .line 581
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentBitRate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentBitRate(J)V

    .line 582
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentSize(J)V

    .line 583
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentType(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentResolution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentResolution(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentComposer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentComposer(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentGenre(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentDate(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentAlbum(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentArtist(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentTitle(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentPath(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setFileName(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getContentStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setContentStatus(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->setDownloadStoreAlbumArtPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 595
    :catch_0
    move-exception v1

    .line 596
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 451
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentBitRate()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    return-wide v0
.end method

.method public getContentComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDiscNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDuration()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    return-wide v0
.end method

.method public getContentFps()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    return-wide v0
.end method

.method public getContentGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    return-object v0
.end method

.method public getContentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getContentResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getContentSize()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    return-wide v0
.end method

.method public getContentStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTrackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStoreAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalDLNAContentItemDetails()Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;
    .locals 4

    .prologue
    .line 531
    new-instance v1, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;

    invoke-direct {v1}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;-><init>()V

    .line 534
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setThumbnailPath(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getNameDMS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setNameDMS(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentTrackNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentTrackNumber(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentDiscNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentDiscNumber(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentFps()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentFps(J)V

    .line 539
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentDuration(J)V

    .line 540
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentBitRate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentBitRate(J)V

    .line 541
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentSize(J)V

    .line 542
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentType(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentResolution(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentComposer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentComposer(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentGenre(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentDate(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentAlbum(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentArtist(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentTitle(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentPath(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setFileName(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getContentStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setContentStatus(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;->setDownloadStoreAlbumArtPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    return-object v1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNameDMS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setContentBitRate(J)V
    .locals 0

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    .line 161
    return-void
.end method

.method public setContentComposer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setContentDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setContentDiscNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setContentDuration(J)V
    .locals 0

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    .line 143
    return-void
.end method

.method public setContentFps(J)V
    .locals 0

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    .line 125
    return-void
.end method

.method public setContentGenre(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setContentPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setContentResolution(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setContentSize(J)V
    .locals 0

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    .line 179
    return-void
.end method

.method public setContentStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setContentTrackNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setDownloadStoreAlbumArtPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setNameDMS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 509
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 510
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 511
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 512
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 519
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
