.class final Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus$1;
.super Ljava/lang/Object;
.source "InternalDLNAControllerStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;

    invoke-direct {v0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;
    .locals 1

    .prologue
    .line 403
    new-array v0, p1, [Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus$1;->newArray(I)[Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;

    move-result-object v0

    return-object v0
.end method
