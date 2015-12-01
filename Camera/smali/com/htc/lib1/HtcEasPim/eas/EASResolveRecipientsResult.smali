.class public Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;
.super Ljava/lang/Object;
.source "EASResolveRecipientsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;",
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
            "Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected nResolveReturnStatus:I

.field protected nStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/htc/lib1/HtcEasPim/eas/e;

    invoke-direct {v0}, Lcom/htc/lib1/HtcEasPim/eas/e;-><init>()V

    sput-object v0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->nStatus:I

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->nStatus:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->nResolveReturnStatus:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    if-lez v2, :cond_0

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->elements:Ljava/util/ArrayList;

    .line 168
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 169
    iget-object v3, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->elements:Ljava/util/ArrayList;

    const-class v0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/HtcEasPim/eas/e;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 118
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->nStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->nResolveReturnStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->elements:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 122
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method
