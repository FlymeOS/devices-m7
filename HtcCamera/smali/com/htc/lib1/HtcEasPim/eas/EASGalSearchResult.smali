.class public Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;
.super Ljava/lang/Object;
.source "EASGalSearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;",
            ">;"
        }
    .end annotation
.end field

.field protected nSearchReturnCode:I

.field protected nStatus:I

.field protected nStoreReturnCode:I

.field protected nTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/htc/lib1/HtcEasPim/eas/b;

    invoke-direct {v0}, Lcom/htc/lib1/HtcEasPim/eas/b;-><init>()V

    sput-object v0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nTotal:I

    .line 71
    iput v1, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nStatus:I

    .line 72
    iput v1, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nStoreReturnCode:I

    .line 73
    iput v1, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nSearchReturnCode:I

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nTotal:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nSearchReturnCode:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nStoreReturnCode:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nStatus:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    if-lez v2, :cond_0

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    .line 227
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 228
    iget-object v3, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    const-class v0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/HtcEasPim/eas/b;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 174
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nSearchReturnCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nStoreReturnCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->nStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 180
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method
