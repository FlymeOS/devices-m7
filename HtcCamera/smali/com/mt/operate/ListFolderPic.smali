.class public Lcom/mt/operate/ListFolderPic;
.super Ljava/lang/Object;
.source "ListFolderPic.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7311860f590d5db9L


# instance fields
.field public mFirstPic:Ljava/lang/String;

.field public mFolderName:Ljava/lang/String;

.field public mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastModifyTime:J

.field public mPath:Ljava/lang/String;

.field public mPicList:[Ljava/lang/String;

.field public mPicNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    .line 31
    iput-object v1, p0, Lcom/mt/operate/ListFolderPic;->mFolderName:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mt/operate/ListFolderPic;->mLastModifyTime:J

    .line 33
    return-void
.end method


# virtual methods
.method public getImageFiles()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 98
    :goto_0
    array-length v5, v2

    if-lt v0, v5, :cond_0

    .line 110
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    move v2, v1

    .line 111
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 115
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/mt/operate/ListFolderPic;->mPicNum:I

    .line 116
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mt/operate/ListFolderPic;->mLastModifyTime:J

    .line 117
    iget-object v0, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mt/operate/ListFolderPic;->mFirstPic:Ljava/lang/String;

    .line 119
    return-object v4

    .line 99
    :cond_0
    aget-object v5, v2, v0

    .line 101
    invoke-virtual {v5}, Ljava/io/File;->isHidden()Z

    move-result v6

    if-nez v6, :cond_1

    .line 103
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mt/mtgif/MyPro;->getImageFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    const-string v5, "TEMP1"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "i="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " path="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v5, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v2

    .line 111
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public getPicList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    return-object v0

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/mt/operate/ListFolderPic;->mPicList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public updateImageFiles()V
    .locals 4

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 74
    iget-object v0, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 88
    iget-object v0, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/mt/operate/ListFolderPic;->mPicNum:I

    goto :goto_0

    .line 77
    :cond_1
    aget-object v2, v1, v0

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v3

    if-nez v3, :cond_2

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/mtgif/MyPro;->getImageFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    iget-object v3, p0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
