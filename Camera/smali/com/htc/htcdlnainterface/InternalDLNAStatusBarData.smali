.class public Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;
.super Ljava/lang/Object;
.source "InternalDLNAStatusBarData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;",
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
    .line 214
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    .line 25
    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    .line 25
    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    .line 239
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->readFromParcel(Landroid/os/Parcel;)V

    .line 240
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getActionLaunch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getControllerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 203
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setActionLaunch(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    .line 156
    return-void
.end method

.method public setControllerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setFilterType(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 179
    :try_start_0
    iget v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->nFilterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szControllerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
