.class public final Lcom/htc/camera/photopattern/a;
.super Lcom/htc/camera/photopattern/e;
.source "FilmPhotoBoothPatternFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/photopattern/e",
        "<",
        "Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;",
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
.method public a()Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;

    invoke-direct {v0}, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;-><init>()V

    return-object v0
.end method

.method public synthetic b()Lcom/htc/camera/photopattern/PhotoBoothPattern;
    .locals 1

    .prologue
    .line 4
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/a;->a()Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;

    move-result-object v0

    return-object v0
.end method
