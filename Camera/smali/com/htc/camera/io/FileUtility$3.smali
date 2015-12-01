.class final Lcom/htc/camera/io/FileUtility$3;
.super Ljava/lang/Object;
.source "FileUtility.java"

# interfaces
.implements Lcom/htc/camera/io/d;


# instance fields
.field final synthetic val$maxFileCount:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 449
    iput p1, p0, Lcom/htc/camera/io/FileUtility$3;->val$maxFileCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 452
    check-cast p2, [I

    check-cast p2, [I

    .line 453
    aget v1, p2, v0

    iget v2, p0, Lcom/htc/camera/io/FileUtility$3;->val$maxFileCount:I

    if-lt v1, v2, :cond_0

    .line 456
    :goto_0
    return v0

    .line 455
    :cond_0
    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 456
    const/4 v0, 0x1

    goto :goto_0
.end method
