.class public Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;
.super Ljava/lang/Object;
.source "ReceiverList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addr:Ljava/lang/String;

.field public canAddToGroup:Z

.field public contactId:J

.field public contactPhoto:Landroid/graphics/Bitmap;

.field public group:I

.field public haveDisplayName:Z

.field public id:J

.field public isContactUpdated:Z

.field public mPhotoId:J

.field public methodId:J

.field public name:Ljava/lang/String;

.field public typeId:J

.field public view:Landroid/view/View;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/htc/lib1/cc/widget/recipientblock/b;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/recipientblock/b;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->id:J

    .line 14
    iput-wide v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->contactId:J

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->contactPhoto:Landroid/graphics/Bitmap;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->isContactUpdated:Z

    .line 26
    iput-wide v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->mPhotoId:J

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->id:J

    .line 14
    iput-wide v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->contactId:J

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->contactPhoto:Landroid/graphics/Bitmap;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->isContactUpdated:Z

    .line 26
    iput-wide v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->mPhotoId:J

    .line 41
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/cc/widget/recipientblock/b;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->id:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->contactId:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->methodId:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->typeId:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->addr:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->name:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->group:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->width:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->haveDisplayName:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->canAddToGroup:Z

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->contactPhoto:Landroid/graphics/Bitmap;

    .line 128
    return-void

    :cond_0
    move v0, v2

    .line 125
    goto :goto_0

    :cond_1
    move v1, v2

    .line 126
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-wide v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->contactId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-wide v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->methodId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-wide v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->typeId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->group:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->haveDisplayName:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->canAddToGroup:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 113
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->contactPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 114
    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    :cond_1
    move v1, v2

    .line 112
    goto :goto_1
.end method
