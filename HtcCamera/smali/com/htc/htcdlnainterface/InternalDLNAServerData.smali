.class public Lcom/htc/htcdlnainterface/InternalDLNAServerData;
.super Ljava/lang/Object;
.source "InternalDLNAServerData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/InternalDLNAServerData;",
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
    .line 119
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAServerData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/InternalDLNAServerData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 155
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->readFromParcel(Landroid/os/Parcel;)V

    .line 156
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setServerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
