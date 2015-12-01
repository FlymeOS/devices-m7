.class public Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;
.super Ljava/lang/Object;
.source "DLNAStatusBarData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPendingIntent:Landroid/app/PendingIntent;

.field private nFilterType:I

.field private szActionLaunch:Ljava/lang/String;

.field private szAppName:Ljava/lang/String;

.field private szControllerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData$1;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData$1;-><init>()V

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 24
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 24
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    .line 232
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->readFromParcel(Landroid/os/Parcel;)V

    .line 233
    return-void
.end method

.method public static getDLNAStatusBarData(Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;
    .locals 2

    .prologue
    .line 262
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    .line 264
    :cond_0
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;-><init>()V

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->getFilterType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->setFilterType(I)V

    .line 267
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->setAppName(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->getControllerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->setControllerName(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->getActionLaunch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->setActionLaunch(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->setContentIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getActionLaunch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getControllerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    return v0
.end method

.method public getInternalDLNAStatusBarData()Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;
    .locals 2

    .prologue
    .line 241
    new-instance v1, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    invoke-direct {v1}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;-><init>()V

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->getFilterType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->setFilterType(I)V

    .line 244
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->setAppName(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->getControllerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->setControllerName(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->getActionLaunch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->setActionLaunch(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->setContentIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-object v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 192
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 196
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setActionLaunch(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    .line 149
    return-void
.end method

.method public setControllerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setFilterType(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 172
    :try_start_0
    iget v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->nFilterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
