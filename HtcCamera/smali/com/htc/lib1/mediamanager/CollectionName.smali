.class public Lcom/htc/lib1/mediamanager/CollectionName;
.super Ljava/lang/Object;
.source "CollectionName.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/mediamanager/CollectionName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCollectionId:Ljava/lang/String;

.field mCollectionType:Ljava/lang/String;

.field mDateName:Ljava/lang/String;

.field mLatitude:F

.field mLocale:Ljava/lang/String;

.field mLongitude:F

.field mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/htc/lib1/mediamanager/e;

    invoke-direct {v0}, Lcom/htc/lib1/mediamanager/e;-><init>()V

    sput-object v0, Lcom/htc/lib1/mediamanager/CollectionName;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    const/high16 v0, 0x437f0000    # 255.0f

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mLatitude:F

    .line 18
    iput v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mLongitude:F

    .line 38
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/CollectionName;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/mediamanager/e;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/lib1/mediamanager/CollectionName;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mCollectionId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mCollectionType:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mLocale:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mLatitude:F

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mLongitude:F

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mDateName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mCollectionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mCollectionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mLatitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 63
    iget v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mLongitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 64
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/CollectionName;->mDateName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void
.end method
