.class public final Lcom/htc/camera/photopattern/b;
.super Lcom/htc/camera/photopattern/e;
.source "GridPhotoBoothPatternFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/photopattern/e",
        "<",
        "Lcom/htc/camera/photopattern/GridPhotoBoothPattern;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/camera/photopattern/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/htc/camera/photopattern/GridPhotoBoothPattern;
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;

    invoke-direct {v0}, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;-><init>()V

    return-object v0
.end method

.method public synthetic b()Lcom/htc/camera/photopattern/PhotoBoothPattern;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/b;->a()Lcom/htc/camera/photopattern/GridPhotoBoothPattern;

    move-result-object v0

    return-object v0
.end method
