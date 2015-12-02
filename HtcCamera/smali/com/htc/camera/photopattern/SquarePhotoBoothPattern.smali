.class public Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;
.super Lcom/htc/camera/photopattern/UniFormPattern;
.source "SquarePhotoBoothPattern.java"


# instance fields
.field private final NUMBEROFCOL:I

.field private final NUMBEROFROW:I

.field private mshortEdge:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 19
    const-string v0, "SquarePhotoBoothPattern"

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/UniFormPattern;-><init>(Ljava/lang/String;)V

    .line 14
    iput v1, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->NUMBEROFROW:I

    .line 15
    iput v1, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->NUMBEROFCOL:I

    .line 21
    return-void
.end method


# virtual methods
.method public getColums()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x2

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const v1, 0x7f020080

    .line 56
    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoPosition(I)Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->getNumberofPhotos()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->getColums()I

    move-result v0

    div-int v1, p1, v0

    .line 29
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->getColums()I

    move-result v0

    rem-int v2, p1, v0

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mshortEdge:I

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mshortEdge:I

    mul-int/2addr v4, v1

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mshortEdge:I

    mul-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    iget v5, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mshortEdge:I

    mul-int/2addr v1, v5

    invoke-direct {v0, v3, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getPhotoResolution()Lcom/htc/camera/imaging/Size;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget v1, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mshortEdge:I

    iget v2, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mshortEdge:I

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 39
    return-object v0
.end method

.method public getPhotoSizeMode()Lcom/htc/camera/PhotoSizeMode;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    return v0
.end method

.method public getStitchHeight()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->getStitchWidth()I

    move-result v0

    return v0
.end method

.method public getStitchWidth()I
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mPhotoHeight:I

    iget v1, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mPhotoWidth:I

    if-ge v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->getColums()I

    move-result v0

    iget v1, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mPhotoHeight:I

    mul-int/2addr v0, v1

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->getRows()I

    move-result v0

    iget v1, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mPhotoWidth:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0803a0

    return v0
.end method

.method public setPhotoResolution(IILcom/htc/camera/rotate/UIRotation;Z)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/camera/photopattern/UniFormPattern;->setPhotoResolution(IILcom/htc/camera/rotate/UIRotation;Z)V

    .line 45
    if-le p1, p2, :cond_0

    iget v0, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mPhotoHeight:I

    :goto_0
    iput v0, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mshortEdge:I

    .line 46
    return-void

    .line 45
    :cond_0
    iget v0, p0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;->mPhotoWidth:I

    goto :goto_0
.end method
