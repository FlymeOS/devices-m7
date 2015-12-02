.class final Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData$1;
.super Ljava/lang/Object;
.source "DLNAStatusBarData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;

    invoke-direct {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;
    .locals 1

    .prologue
    .line 213
    new-array v0, p1, [Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData$1;->newArray(I)[Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;

    move-result-object v0

    return-object v0
.end method
