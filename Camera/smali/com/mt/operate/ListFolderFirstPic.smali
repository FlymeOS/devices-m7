.class public Lcom/mt/operate/ListFolderFirstPic;
.super Ljava/lang/Object;
.source "ListFolderFirstPic.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x60e14be20de95068L


# instance fields
.field public list_FirPic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mt/operate/FolderFirstPic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mt/operate/ListFolderFirstPic;->list_FirPic:Ljava/util/List;

    .line 12
    return-void
.end method


# virtual methods
.method public getList_FirPic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mt/operate/FolderFirstPic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mt/operate/ListFolderFirstPic;->list_FirPic:Ljava/util/List;

    return-object v0
.end method

.method public setList_FirPic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mt/operate/FolderFirstPic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mt/operate/ListFolderFirstPic;->list_FirPic:Ljava/util/List;

    .line 26
    return-void
.end method
