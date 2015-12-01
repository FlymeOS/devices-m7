.class public Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 463
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/b;

    invoke-direct {v0}, Lcom/htc/lib3/phonecontacts/telephony/b;-><init>()V

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    if-eqz p1, :cond_0

    .line 423
    instance-of v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 424
    check-cast v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;

    iget-object v0, v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    .line 425
    check-cast p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;

    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    instance-of v0, p1, Landroid/os/Parcel;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 428
    check-cast v0, Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    .line 429
    check-cast p1, Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    goto :goto_0

    .line 433
    :cond_2
    :try_start_0
    const-string v0, "title"

    invoke-static {p1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 436
    :goto_1
    :try_start_1
    const-string v0, "summary"

    invoke-static {p1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0

    .line 434
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 480
    if-eqz p1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    :cond_0
    return-void
.end method
