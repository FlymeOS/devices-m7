.class public Lcom/mt/mtgif/MyPro$DirNumName;
.super Ljava/lang/Object;
.source "MyPro.java"


# instance fields
.field public mFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mt/operate/ListFolderPic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mt/operate/ListFolderPic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p1, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    .line 791
    return-void
.end method


# virtual methods
.method public addFolderDir(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 802
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 805
    if-gez v0, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v2

    .line 808
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 809
    const-string v0, "/."

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_0

    move v1, v2

    .line 813
    :goto_1
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 820
    :goto_2
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 821
    new-instance v0, Lcom/mt/operate/ListFolderPic;

    invoke-direct {v0}, Lcom/mt/operate/ListFolderPic;-><init>()V

    .line 822
    iput-object v4, v0, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    .line 824
    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mt/operate/ListFolderPic;->mFolderName:Ljava/lang/String;

    .line 825
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/mt/operate/ListFolderPic;->mLastModifyTime:J

    .line 826
    iget-object v1, v0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 827
    iput v3, v0, Lcom/mt/operate/ListFolderPic;->mPicNum:I

    .line 828
    const-string v1, "MTXX"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_2

    const-string v1, "DCIM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_5

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_3
    move v2, v3

    .line 833
    goto :goto_0

    .line 814
    :cond_3
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mt/operate/ListFolderPic;

    iget-object v0, v0, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 815
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mt/operate/ListFolderPic;

    iget v5, v0, Lcom/mt/operate/ListFolderPic;->mPicNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/mt/operate/ListFolderPic;->mPicNum:I

    .line 816
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mt/operate/ListFolderPic;

    iget-object v0, v0, Lcom/mt/operate/ListFolderPic;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 813
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 831
    :cond_5
    iget-object v1, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public folderFilter(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 857
    iget-object v1, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    move v2, v0

    move v3, v0

    .line 860
    :goto_1
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    .line 870
    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mt/operate/ListFolderPic;

    iget-object v0, v0, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 863
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    .line 865
    :cond_3
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mt/operate/ListFolderPic;

    iget-object v0, v0, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/mnt"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 867
    add-int/lit8 v0, v2, 0x1

    .line 860
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public folderFilterALL()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 842
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    move v1, v2

    .line 843
    :goto_0
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 846
    :goto_1
    array-length v0, v3

    if-lt v2, v0, :cond_1

    .line 851
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/mt/mtgif/MyPro$DirNumName;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mt/operate/ListFolderPic;

    iget-object v0, v0, Lcom/mt/operate/ListFolderPic;->mPath:Ljava/lang/String;

    aput-object v0, v3, v1

    .line 843
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 847
    :cond_1
    aget-object v0, v3, v2

    const-string v1, "/mnt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 848
    aget-object v0, v3, v2

    invoke-virtual {p0, v0}, Lcom/mt/mtgif/MyPro$DirNumName;->folderFilter(Ljava/lang/String;)V

    .line 846
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
