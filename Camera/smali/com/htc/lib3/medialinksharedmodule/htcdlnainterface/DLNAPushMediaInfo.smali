.class public Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;
.super Ljava/lang/Object;
.source "DLNAPushMediaInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloadedSize:J

.field private mediaFilePath:Ljava/lang/String;

.field private metaDataFilePath:Ljava/lang/String;

.field private thumbFilePath:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo$1;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo$1;-><init>()V

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 18
    iput-wide v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 19
    iput-wide v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 18
    iput-wide v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 19
    iput-wide v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    .line 177
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 178
    return-void
.end method

.method public static getDLNAPushMediaInfo(Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;
    .locals 3

    .prologue
    .line 263
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    .line 265
    :cond_0
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->getMetaDataFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->setMetaDataFilePath(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->getThumbFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->setThumbFilePath(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->getTotalFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->setTotalFileSize(J)V

    .line 272
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->getDownloadedSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->setDownloadedSize(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 184
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadedSize()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    return-wide v0
.end method

.method public getInternalDLNAPushMediaInfo()Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;
    .locals 4

    .prologue
    .line 241
    new-instance v1, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    invoke-direct {v1}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;-><init>()V

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getMetaDataFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->setMetaDataFilePath(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getThumbFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->setThumbFilePath(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getTotalFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->setTotalFileSize(J)V

    .line 248
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getDownloadedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;->setDownloadedSize(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFileSize()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    return-wide v0
.end method

.method public setDownloadedSize(J)V
    .locals 0

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    .line 92
    return-void
.end method

.method public setMediaFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setMetaDataFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setThumbFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTotalFileSize(J)V
    .locals 0

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 156
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
