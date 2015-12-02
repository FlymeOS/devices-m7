.class public Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;
.super Ljava/lang/Object;
.source "CloudTagCollectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mExtra:Landroid/os/Bundle;

.field protected mTagName:Ljava/lang/String;

.field protected mTagType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/htc/lib1/mediamanager/a;

    invoke-direct {v0}, Lcom/htc/lib1/mediamanager/a;-><init>()V

    sput-object v0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mTagName:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mTagType:I

    .line 12
    iput-object v1, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mExtra:Landroid/os/Bundle;

    .line 59
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/mediamanager/a;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mTagName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mTagType:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mExtra:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mTagType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mExtra:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mExtra:Landroid/os/Bundle;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mExtra:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method
