.class public Lcom/htc/camera/photopattern/GridPhotoBoothPattern;
.super Lcom/htc/camera/photopattern/UniFormPattern;
.source "GridPhotoBoothPattern.java"


# instance fields
.field private final NUMBEROFCOL:I

.field private final NUMBEROFROW:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 18
    const-string v0, "GridPhotoBoothPattern"

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/UniFormPattern;-><init>(Ljava/lang/String;)V

    .line 13
    iput v1, p0, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;->NUMBEROFROW:I

    .line 14
    iput v1, p0, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;->NUMBEROFCOL:I

    .line 20
    return-void
.end method


# virtual methods
.method public getColums()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

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

    const v1, 0x7f02007e

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

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoPosition(I)Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;->getNumberofPhotos()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;->getColums()I

    move-result v0

    div-int v1, p1, v0

    .line 28
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;->getColums()I

    move-result v0

    rem-int v2, p1, v0

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;->mPhotoWidth:I

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;->mPhotoHeight:I

    mul-int/2addr v4, v1

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;->mPhotoWidth:I

    mul-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    iget v5, p0, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;->mPhotoHeight:I

    mul-int/2addr v1, v5

    invoke-direct {v0, v3, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getPhotoSizeMode()Lcom/htc/camera/PhotoSizeMode;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f08039f

    return v0
.end method
