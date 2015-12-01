.class public Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;
.super Lcom/htc/camera/photopattern/UniFormPattern;
.source "FilmPhotoBoothPattern.java"


# instance fields
.field private final NUMBEROFCOL:I

.field private final NUMBEROFROW:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "FlimPhotoBoothPattern"

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/UniFormPattern;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->NUMBEROFROW:I

    .line 13
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->NUMBEROFCOL:I

    .line 18
    return-void
.end method


# virtual methods
.method public getColums()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->mOrientation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x4

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoPosition(I)Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->getNumberofPhotos()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->mOrientation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->mPhotoWidth:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->mPhotoHeight:I

    mul-int/lit8 v2, v2, 0x0

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->mPhotoWidth:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->mPhotoHeight:I

    mul-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->mPhotoHeight:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->mPhotoWidth:I

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->mPhotoHeight:I

    mul-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;->mOrientation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f08039e

    return v0
.end method
