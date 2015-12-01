.class public Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;
.super Ljava/lang/Object;
.source "DLNARemotePlaylistInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private containerID:Ljava/lang/String;

.field private contentID:Ljava/lang/String;

.field private direction:I

.field private durationMillis:J

.field private endIndex:J

.field private filterCapability:I

.field private serverID:Ljava/lang/String;

.field private startIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo$1;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo$1;-><init>()V

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 229
    return-void
.end method

.method public static getDLNARemotePlaylistInfo(Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;
    .locals 3

    .prologue
    .line 319
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    .line 321
    :cond_0
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 323
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->getDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->setDirection(I)V

    .line 324
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->getEndIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->setEndIndex(J)V

    .line 325
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->getStartIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->setStartIndex(J)V

    .line 326
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->getFilterCapability()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->setFilterCapability(I)V

    .line 327
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->getContainerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->setContainerID(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->getContentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->setContentID(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->getDurationMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->setDurationMillis(J)V

    .line 330
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->getServerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->setServerID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 234
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->direction:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->direction:I

    return v0
.end method

.method public getDurationMillis()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    return-wide v0
.end method

.method public getEndIndex()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    return-wide v0
.end method

.method public getFilterCapability()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    return v0
.end method

.method public getInternalDLNARemotePlaylistInfo()Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;
    .locals 4

    .prologue
    .line 295
    new-instance v1, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;

    invoke-direct {v1}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;-><init>()V

    .line 297
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->getDirection()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->setDirection(I)V

    .line 298
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->getEndIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->setEndIndex(J)V

    .line 299
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->getStartIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->setStartIndex(J)V

    .line 300
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->getFilterCapability()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->setFilterCapability(I)V

    .line 301
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->getContainerID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->setContainerID(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->getContentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->setContentID(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->getDurationMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->setDurationMillis(J)V

    .line 304
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->getServerID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;->setServerID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getStartIndex()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    return-wide v0
.end method

.method public setContainerID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 59
    return-void
.end method

.method public setDurationMillis(J)V
    .locals 0

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 189
    return-void
.end method

.method public setEndIndex(J)V
    .locals 0

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 81
    return-void
.end method

.method public setFilterCapability(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 125
    return-void
.end method

.method public setServerID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setStartIndex(J)V
    .locals 0

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 103
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 278
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARemotePlaylistInfo;->direction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
