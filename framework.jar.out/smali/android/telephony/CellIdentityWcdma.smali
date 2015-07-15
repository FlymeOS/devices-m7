.class public final Landroid/telephony/CellIdentityWcdma;
.super Ljava/lang/Object;
.source "CellIdentityWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityWcdma"


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I

.field private final mPsc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Landroid/telephony/CellIdentityWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    .line 48
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    .line 49
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 50
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 51
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    .line 52
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "psc"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    .line 65
    iput p2, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    .line 66
    iput p3, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 67
    iput p4, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 68
    iput p5, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityWcdma$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellIdentityWcdma$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityWcdma;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityWcdma;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    .line 73
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    .line 74
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 75
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 76
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    .line 77
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v0, "CellIdentityWcdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityWcdma;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/telephony/CellIdentityWcdma;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentityWcdma;

    move-object v2, v0

    .line 132
    .local v2, "o":Landroid/telephony/CellIdentityWcdma;
    iget v4, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    iget v5, v2, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    iget v5, v2, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iget v5, v2, Landroid/telephony/CellIdentityWcdma;->mLac:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iget v5, v2, Landroid/telephony/CellIdentityWcdma;->mCid:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iget v5, v2, Landroid/telephony/CellIdentityWcdma;->mPsc:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 141
    .end local v2    # "o":Landroid/telephony/CellIdentityWcdma;
    :cond_0
    :goto_0
    return v3

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    return v0
.end method

.method public getPsc()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 122
    const/16 v0, 0x1f

    .line 123
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellIdentityWcdma:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " mMcc=xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, " mMnc=xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, " mLac=xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, " mCid=xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, " mPsc=xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 178
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return-void
.end method
