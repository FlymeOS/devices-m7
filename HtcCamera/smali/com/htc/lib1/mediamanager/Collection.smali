.class public Lcom/htc/lib1/mediamanager/Collection;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/lib1/mediamanager/Collection;",
        ">;"
    }
.end annotation


# static fields
.field public static COMPARATOR_BY_TIME_ASC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/lib1/mediamanager/Collection;",
            ">;"
        }
    .end annotation
.end field

.field public static COMPARATOR_BY_TIME_DESC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/lib1/mediamanager/Collection;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/mediamanager/Collection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCollectionType:Ljava/lang/String;

.field protected mContainsMediaType:I

.field protected mCoverImage:Lcom/htc/lib1/mediamanager/CoverImage;

.field protected mCoverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/mediamanager/CoverImage;",
            ">;"
        }
    .end annotation
.end field

.field protected mCoverMedia:Lcom/htc/lib1/mediamanager/MediaObject;

.field protected mCoverMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/mediamanager/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field protected mDateName:Ljava/lang/String;

.field protected mDrmImageCount:I

.field protected mDrmVideoCount:I

.field protected mExtra:Landroid/os/Bundle;

.field protected mId:Ljava/lang/String;

.field protected mImageCount:I

.field protected mLatitude:F

.field protected mLevel:I

.field protected mLocaleString:Ljava/lang/String;

.field protected mLongitude:F

.field protected mMediaType:I

.field protected mName:Ljava/lang/String;

.field protected mOnlineImageCount:I

.field protected mOnlineVideoCount:I

.field protected mSourceType:I

.field protected mSubCollectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/mediamanager/Collection;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaggedType:I

.field protected mTime:J

.field private mVersion:F

.field protected mVideoCount:I

.field protected mVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/htc/lib1/mediamanager/b;

    invoke-direct {v0}, Lcom/htc/lib1/mediamanager/b;-><init>()V

    sput-object v0, Lcom/htc/lib1/mediamanager/Collection;->COMPARATOR_BY_TIME_ASC:Ljava/util/Comparator;

    .line 94
    new-instance v0, Lcom/htc/lib1/mediamanager/c;

    invoke-direct {v0}, Lcom/htc/lib1/mediamanager/c;-><init>()V

    sput-object v0, Lcom/htc/lib1/mediamanager/Collection;->COMPARATOR_BY_TIME_DESC:Ljava/util/Comparator;

    .line 659
    new-instance v0, Lcom/htc/lib1/mediamanager/d;

    invoke-direct {v0}, Lcom/htc/lib1/mediamanager/d;-><init>()V

    sput-object v0, Lcom/htc/lib1/mediamanager/Collection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mSourceType:I

    .line 33
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mLocaleString:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mVisibility:Z

    .line 35
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mCollectionType:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mId:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mName:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mDateName:Ljava/lang/String;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mTime:J

    .line 40
    iput v4, p0, Lcom/htc/lib1/mediamanager/Collection;->mLongitude:F

    .line 41
    iput v4, p0, Lcom/htc/lib1/mediamanager/Collection;->mLatitude:F

    .line 42
    iput v3, p0, Lcom/htc/lib1/mediamanager/Collection;->mImageCount:I

    .line 43
    iput v3, p0, Lcom/htc/lib1/mediamanager/Collection;->mVideoCount:I

    .line 44
    iput v3, p0, Lcom/htc/lib1/mediamanager/Collection;->mDrmImageCount:I

    .line 45
    iput v3, p0, Lcom/htc/lib1/mediamanager/Collection;->mDrmVideoCount:I

    .line 46
    const/16 v0, 0x3ff

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mMediaType:I

    .line 47
    iput v3, p0, Lcom/htc/lib1/mediamanager/Collection;->mContainsMediaType:I

    .line 48
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mLevel:I

    .line 49
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverImage:Lcom/htc/lib1/mediamanager/CoverImage;

    .line 50
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    .line 51
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverList:Ljava/util/ArrayList;

    .line 54
    iput v3, p0, Lcom/htc/lib1/mediamanager/Collection;->mOnlineImageCount:I

    .line 55
    iput v3, p0, Lcom/htc/lib1/mediamanager/Collection;->mOnlineVideoCount:I

    .line 56
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverMedia:Lcom/htc/lib1/mediamanager/MediaObject;

    .line 57
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverMediaList:Ljava/util/ArrayList;

    .line 58
    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mSubCollectionList:Ljava/util/ArrayList;

    .line 59
    iput v3, p0, Lcom/htc/lib1/mediamanager/Collection;->mTaggedType:I

    .line 674
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/Collection;->readFromParcel(Landroid/os/Parcel;)V

    .line 675
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/mediamanager/b;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/lib1/mediamanager/Collection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getClassVersion()F
    .locals 1

    .prologue
    .line 67
    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/htc/lib1/mediamanager/Collection;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 840
    if-eqz p1, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/htc/lib1/mediamanager/Collection;->getTime()J

    move-result-wide v1

    .line 843
    invoke-virtual {p1}, Lcom/htc/lib1/mediamanager/Collection;->getTime()J

    move-result-wide v3

    .line 844
    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v0

    .line 844
    :cond_1
    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/htc/lib1/mediamanager/Collection;

    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/Collection;->compareTo(Lcom/htc/lib1/mediamanager/Collection;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x0

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 369
    iget-wide v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mTime:J

    return-wide v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 681
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mVersion:F

    .line 682
    const-string v2, "Collection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[readFromParcel] pass in version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lib1/mediamanager/Collection;->mVersion:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/htc/lib1/mediamanager/Collection;->getClassVersion()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mSourceType:I

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mLocaleString:Ljava/lang/String;

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mVisibility:Z

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCollectionType:Ljava/lang/String;

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mId:Ljava/lang/String;

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mName:Ljava/lang/String;

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mDateName:Ljava/lang/String;

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mTime:J

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mLongitude:F

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mLatitude:F

    .line 694
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mImageCount:I

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mVideoCount:I

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mDrmImageCount:I

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mDrmVideoCount:I

    .line 698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mMediaType:I

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mContainsMediaType:I

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mLevel:I

    .line 702
    const-class v0, Lcom/htc/lib1/mediamanager/CoverImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/mediamanager/CoverImage;

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverImage:Lcom/htc/lib1/mediamanager/CoverImage;

    .line 703
    const-class v0, Lcom/htc/lib1/mediamanager/CoverImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverList:Ljava/util/ArrayList;

    .line 707
    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 709
    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    .line 710
    iget-object v3, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverList:Ljava/util/ArrayList;

    aget-object v0, v2, v1

    check-cast v0, Lcom/htc/lib1/mediamanager/CoverImage;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 686
    goto/16 :goto_0

    .line 713
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    .line 715
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    .line 717
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-class v1, Lcom/htc/lib1/mediamanager/MediaObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 718
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_int_online_image_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_int_online_image_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mOnlineImageCount:I

    .line 723
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_int_online_video_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 725
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_int_online_video_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mOnlineVideoCount:I

    .line 728
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_parcelable_cover_media"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 730
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_parcelable_cover_media"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/mediamanager/MediaObject;

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverMedia:Lcom/htc/lib1/mediamanager/MediaObject;

    .line 733
    :cond_5
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_parcelablearray_cover_media_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 735
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_parcelablearray_cover_media_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverMediaList:Ljava/util/ArrayList;

    .line 739
    :cond_6
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-class v1, Lcom/htc/lib1/mediamanager/Collection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 740
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "KEY_PARCELABLEARRAY_SUB_COLLECTION_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 742
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "KEY_PARCELABLEARRAY_SUB_COLLECTION_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mSubCollectionList:Ljava/util/ArrayList;

    .line 745
    :cond_7
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_int_taggedtype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 747
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_int_taggedtype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mTaggedType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_8
    :goto_2
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 754
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 767
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mVersion:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 768
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mSourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mLocaleString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 770
    iget-boolean v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mVisibility:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCollectionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mDateName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    iget-wide v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 776
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mLongitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 777
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mLatitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 778
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mImageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mVideoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mDrmImageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mDrmVideoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mMediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mContainsMediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    iget v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverImage:Lcom/htc/lib1/mediamanager/CoverImage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 787
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 789
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/htc/lib1/mediamanager/CoverImage;

    .line 790
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/mediamanager/CoverImage;

    aput-object v0, v2, v1

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 770
    goto :goto_0

    .line 792
    :cond_1
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 800
    :goto_2
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 802
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 807
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_int_online_image_count"

    iget v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mOnlineImageCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_int_online_video_count"

    iget v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mOnlineVideoCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 809
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverMedia:Lcom/htc/lib1/mediamanager/MediaObject;

    if-eqz v0, :cond_3

    .line 811
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_parcelable_cover_media"

    iget-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverMedia:Lcom/htc/lib1/mediamanager/MediaObject;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 815
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverMediaList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 817
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_parcelablearray_cover_media_list"

    iget-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mCoverMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 820
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mSubCollectionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mSubCollectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 822
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "KEY_PARCELABLEARRAY_SUB_COLLECTION_LIST"

    iget-object v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mSubCollectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    const-string v1, "key_int_taggedtype"

    iget v2, p0, Lcom/htc/lib1/mediamanager/Collection;->mTaggedType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 828
    :cond_6
    iget-object v0, p0, Lcom/htc/lib1/mediamanager/Collection;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 829
    return-void

    .line 796
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto :goto_2
.end method
