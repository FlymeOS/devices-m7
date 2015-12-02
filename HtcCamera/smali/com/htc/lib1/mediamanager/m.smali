.class final Lcom/htc/lib1/mediamanager/m;
.super Ljava/lang/Object;
.source "ServiceObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/mediamanager/ServiceObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/ServiceObject;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/htc/lib1/mediamanager/ServiceObject;

    invoke-direct {v0, p1}, Lcom/htc/lib1/mediamanager/ServiceObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/mediamanager/ServiceObject;
    .locals 1

    .prologue
    .line 76
    new-array v0, p1, [Lcom/htc/lib1/mediamanager/ServiceObject;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/m;->a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/ServiceObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/m;->a(I)[Lcom/htc/lib1/mediamanager/ServiceObject;

    move-result-object v0

    return-object v0
.end method
