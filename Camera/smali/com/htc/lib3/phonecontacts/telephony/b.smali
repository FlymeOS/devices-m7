.class final Lcom/htc/lib3/phonecontacts/telephony/b;
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
        "Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;
    .locals 1

    .prologue
    .line 468
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;

    invoke-direct {v0, p1}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;
    .locals 1

    .prologue
    .line 473
    new-array v0, p1, [Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/htc/lib3/phonecontacts/telephony/b;->a(Landroid/os/Parcel;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/htc/lib3/phonecontacts/telephony/b;->a(I)[Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;

    move-result-object v0

    return-object v0
.end method
