.class public abstract Lcom/htc/camera/photopattern/PhotoBoothPattern;
.super Ljava/lang/Object;
.source "PhotoBoothPattern.java"


# instance fields
.field mBackgroundFrame:Landroid/graphics/drawable/Drawable;

.field protected mOrientation:Lcom/htc/camera/rotate/UIRotation;

.field protected mPhotoHeight:I

.field protected mPhotoWidth:I

.field private final m_Name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothPattern;->mOrientation:Lcom/htc/camera/rotate/UIRotation;

    .line 26
    if-nez p1, :cond_0

    .line 28
    const-string v0, "name"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothPattern;->m_Name:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getBackgroundFrame()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->haveBackgroundFrame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothPattern;->mBackgroundFrame:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract getColums()I
.end method

.method public getIconDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v2}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v2}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothPattern;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getNumberofPhotos()I
.end method

.method public getPhotoPosition(I)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getNumberofPhotos()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/camera/photopattern/PhotoBoothPattern;->mPhotoWidth:I

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothPattern;->mPhotoHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getPhotoResolution()Lcom/htc/camera/imaging/Size;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget v1, p0, Lcom/htc/camera/photopattern/PhotoBoothPattern;->mPhotoWidth:I

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothPattern;->mPhotoHeight:I

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 96
    return-object v0
.end method

.method public getPhotoSizeMode()Lcom/htc/camera/PhotoSizeMode;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    return-object v0
.end method

.method public abstract getRows()I
.end method

.method public abstract getStitchHeight()I
.end method

.method public abstract getStitchWidth()I
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f08039e

    return v0
.end method

.method public haveBackgroundFrame()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setPhotoResolution(IILcom/htc/camera/rotate/UIRotation;Z)V
.end method
