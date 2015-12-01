.class public Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;
.super Ljava/lang/Object;
.source "InternalDLNAControlItemData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;",
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
    .line 34
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->readFromParcel(Landroid/os/Parcel;)V

    .line 268
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 273
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->rendererID:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentTitle:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentArtist:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentAlbum:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentDate:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->currentIndex:J

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fDuration:J

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fileSize:J

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->curContentID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIndex()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->currentIndex:J

    return-wide v0
.end method

.method public getDownloadStoreAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fDuration:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fileSize:J

    return-wide v0
.end method

.method public getRendererID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->rendererID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentAlbum:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentArtist:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setContentDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentDate:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentTitle:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->curContentID:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setCurrentIndex(J)V
    .locals 0

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->currentIndex:J

    .line 159
    return-void
.end method

.method public setDownloadStoreAlbumArtPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fDuration:J

    .line 177
    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fileSize:J

    .line 69
    return-void
.end method

.method public setRendererID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->rendererID:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->contentDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->currentIndex:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 318
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 319
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 320
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->curContentID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
