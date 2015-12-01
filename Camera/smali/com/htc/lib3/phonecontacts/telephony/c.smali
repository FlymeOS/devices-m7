.class final Lcom/htc/lib3/phonecontacts/telephony/c;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;

    invoke-direct {v0, p1}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;
    .locals 1

    .prologue
    .line 123
    new-array v0, p1, [Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/htc/lib3/phonecontacts/telephony/c;->a(Landroid/os/Parcel;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/htc/lib3/phonecontacts/telephony/c;->a(I)[Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Selection;

    move-result-object v0

    return-object v0
.end method
