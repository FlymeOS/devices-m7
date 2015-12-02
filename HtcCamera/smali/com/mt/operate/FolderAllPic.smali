.class public Lcom/mt/operate/FolderAllPic;
.super Ljava/lang/Object;
.source "FolderAllPic.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x11747203289e5776L


# instance fields
.field public mLastModifyTime:J

.field public mSmallPic:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmLastModifyTime()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/mt/operate/FolderAllPic;->mLastModifyTime:J

    return-wide v0
.end method

.method public getmSmallPic()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mt/operate/FolderAllPic;->mSmallPic:[Ljava/lang/String;

    return-object v0
.end method

.method public setmLastModifyTime(J)V
    .locals 0

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/mt/operate/FolderAllPic;->mLastModifyTime:J

    .line 29
    return-void
.end method

.method public setmSmallPic([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mt/operate/FolderAllPic;->mSmallPic:[Ljava/lang/String;

    .line 21
    return-void
.end method
