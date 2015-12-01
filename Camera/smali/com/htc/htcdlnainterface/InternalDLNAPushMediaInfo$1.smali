.class final Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo$1;
.super Ljava/lang/Object;
.source "InternalDLNAPushMediaInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    invoke-direct {v0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;
    .locals 1

    .prologue
    .line 32
    new-array v0, p1, [Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo$1;->newArray(I)[Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;

    move-result-object v0

    return-object v0
.end method
