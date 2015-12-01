.class public Lcom/mt/operate/MapFolderAllPic;
.super Ljava/lang/Object;
.source "MapFolderAllPic.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x68451a038ddce5afL


# instance fields
.field public mSealFolderPic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mt/operate/FolderAllPic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mt/operate/MapFolderAllPic;->mSealFolderPic:Ljava/util/HashMap;

    .line 11
    return-void
.end method


# virtual methods
.method public getmSealFolderPic()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mt/operate/FolderAllPic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mt/operate/MapFolderAllPic;->mSealFolderPic:Ljava/util/HashMap;

    return-object v0
.end method

.method public setmSealFolderPic(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mt/operate/FolderAllPic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mt/operate/MapFolderAllPic;->mSealFolderPic:Ljava/util/HashMap;

    .line 25
    return-void
.end method
