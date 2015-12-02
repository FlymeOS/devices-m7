.class public Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;
.super Ljava/lang/Object;
.source "DLNAControlItemData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentAlbum:Ljava/lang/String;

.field private contentArtist:Ljava/lang/String;

.field private contentDate:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private curContentID:Ljava/lang/String;

.field private currentIndex:J

.field private downloadStoreAlbumArtPath:Ljava/lang/String;

.field private fDuration:J

.field private fileSize:J

.field private rendererID:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData$1;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData$1;-><init>()V

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->readFromParcel(Landroid/os/Parcel;)V

    .line 258
    return-void
.end method

.method public static getDLNAControlItemData(Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;
    .locals 3

    .prologue
    .line 353
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 372
    :goto_0
    return-object v0

    .line 355
    :cond_0
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;-><init>()V

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setFileSize(J)V

    .line 358
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getRendererID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setRendererID(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setCurContentID(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setThumbnailPath(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setDownloadStoreAlbumArtPath(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurrentIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setCurrentIndex(J)V

    .line 363
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setDuration(J)V

    .line 364
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setContentDate(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setContentTitle(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setContentArtist(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->setContentAlbum(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 263
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->currentIndex:J

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->fDuration:J

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->fileSize:J

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIndex()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->currentIndex:J

    return-wide v0
.end method

.method public getDownloadStoreAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->fDuration:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->fileSize:J

    return-wide v0
.end method

.method public getInternalDLNAControlItemData()Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;
    .locals 4

    .prologue
    .line 326
    new-instance v1, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;

    invoke-direct {v1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;-><init>()V

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setFileSize(J)V

    .line 329
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getRendererID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setRendererID(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setCurContentID(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setThumbnailPath(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setDownloadStoreAlbumArtPath(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getCurrentIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setCurrentIndex(J)V

    .line 334
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setDuration(J)V

    .line 335
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getContentDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setContentDate(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setContentTitle(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getContentArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setContentArtist(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->getContentAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->setContentAlbum(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-object v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRendererID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setContentDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setCurrentIndex(J)V
    .locals 0

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->currentIndex:J

    .line 149
    return-void
.end method

.method public setDownloadStoreAlbumArtPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->fDuration:J

    .line 167
    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->fileSize:J

    .line 59
    return-void
.end method

.method public setRendererID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->currentIndex:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 308
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->fDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 309
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 310
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
