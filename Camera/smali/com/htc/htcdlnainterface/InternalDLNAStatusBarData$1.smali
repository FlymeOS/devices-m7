.class final Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData$1;
.super Ljava/lang/Object;
.source "InternalDLNAStatusBarData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    invoke-direct {v0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;
    .locals 1

    .prologue
    .line 220
    new-array v0, p1, [Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData$1;->newArray(I)[Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;

    move-result-object v0

    return-object v0
.end method
