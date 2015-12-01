.class Lcom/htc/lib1/cc/view/viewpager/os/ParcelableCompat$CompatCreator;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mCallbacks:Lcom/htc/lib1/cc/view/viewpager/os/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/lib1/cc/view/viewpager/os/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/view/viewpager/os/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/lib1/cc/view/viewpager/os/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/os/ParcelableCompat$CompatCreator;->mCallbacks:Lcom/htc/lib1/cc/view/viewpager/os/a;

    .line 48
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/os/ParcelableCompat$CompatCreator;->mCallbacks:Lcom/htc/lib1/cc/view/viewpager/os/a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/htc/lib1/cc/view/viewpager/os/a;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/os/ParcelableCompat$CompatCreator;->mCallbacks:Lcom/htc/lib1/cc/view/viewpager/os/a;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/view/viewpager/os/a;->b(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
