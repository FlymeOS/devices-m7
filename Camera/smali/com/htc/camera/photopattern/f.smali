.class public final Lcom/htc/camera/photopattern/f;
.super Lcom/htc/camera/photopattern/e;
.source "SquarePhotoBoothPatternFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/photopattern/e",
        "<",
        "Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/htc/camera/photopattern/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;

    invoke-direct {v0}, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;-><init>()V

    return-object v0
.end method

.method public synthetic b()Lcom/htc/camera/photopattern/PhotoBoothPattern;
    .locals 1

    .prologue
    .line 4
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/f;->a()Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;

    move-result-object v0

    return-object v0
.end method
