.class public Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;
.super Ljava/lang/Object;
.source "DLNAServerData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private serverID:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData$1;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData$1;-><init>()V

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 125
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->readFromParcel(Landroid/os/Parcel;)V

    .line 126
    return-void
.end method

.method public static getDLNAServerData(Lcom/htc/htcdlnainterface/InternalDLNAServerData;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;
    .locals 4

    .prologue
    .line 168
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 170
    :cond_0
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;-><init>()V

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->setServerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getInternalDLNAServerData()Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    .locals 4

    .prologue
    .line 151
    new-instance v1, Lcom/htc/htcdlnainterface/InternalDLNAServerData;

    invoke-direct {v1}, Lcom/htc/htcdlnainterface/InternalDLNAServerData;-><init>()V

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->setServerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setServerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
