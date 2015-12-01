.class public Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;
.super Ljava/lang/Object;
.source "HuxProvResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/htc/lib1/HtcEasPim/hux/a;

    invoke-direct {v0}, Lcom/htc/lib1/HtcEasPim/hux/a;-><init>()V

    sput-object v0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;->status:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;->errorCode:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
