.class public Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;
.super Ljava/lang/Object;
.source "EASResolveRecipientsResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public RecipientCount:I

.field public Status:I

.field public To:Ljava/lang/String;

.field protected elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/htc/lib1/HtcEasPim/eas/d;

    invoke-direct {v0}, Lcom/htc/lib1/HtcEasPim/eas/d;-><init>()V

    sput-object v0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->To:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->Status:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->RecipientCount:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    if-lez v2, :cond_0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->elements:Ljava/util/ArrayList;

    .line 133
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 134
    iget-object v3, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->elements:Ljava/util/ArrayList;

    const-class v0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/HtcEasPim/eas/d;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->To:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->Status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->RecipientCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->elements:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 85
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsResponse;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method
