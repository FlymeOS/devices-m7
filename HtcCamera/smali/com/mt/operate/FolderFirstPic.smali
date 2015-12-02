.class public Lcom/mt/operate/FolderFirstPic;
.super Ljava/lang/Object;
.source "FolderFirstPic.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x49f39b36e305dae3L


# instance fields
.field public FirstPicPath:Ljava/lang/String;

.field public PicCount:I

.field public mFirstPic:Ljava/lang/String;

.field public mFolderName:Ljava/lang/String;

.field public mLastModifyTime:J

.field public mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstPicPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mt/operate/FolderFirstPic;->FirstPicPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPicCount()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/mt/operate/FolderFirstPic;->PicCount:I

    return v0
.end method

.method public getmLastModifyTime()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/mt/operate/FolderFirstPic;->mLastModifyTime:J

    return-wide v0
.end method

.method public setFirstPicPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mt/operate/FolderFirstPic;->FirstPicPath:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPicCount(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/mt/operate/FolderFirstPic;->PicCount:I

    .line 40
    return-void
.end method

.method public setmLastModifyTime(J)V
    .locals 0

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/mt/operate/FolderFirstPic;->mLastModifyTime:J

    .line 34
    return-void
.end method
