.class final Lcom/htc/lib1/HtcEasPim/eas/e;
.super Ljava/lang/Object;
.source "EASResolveRecipientsResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;-><init>(Landroid/os/Parcel;Lcom/htc/lib1/HtcEasPim/eas/e;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;
    .locals 1

    .prologue
    .line 141
    new-array v0, p1, [Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/htc/lib1/HtcEasPim/eas/e;->a(Landroid/os/Parcel;)Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/htc/lib1/HtcEasPim/eas/e;->a(I)[Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;

    move-result-object v0

    return-object v0
.end method
