.class public abstract Lcom/htc/camera/photopattern/UniFormPattern;
.super Lcom/htc/camera/photopattern/PhotoBoothPattern;
.source "UniFormPattern.java"


# instance fields
.field private final NUMBEROFCOL:I

.field private final NUMBEROFROW:I

.field private final SCALERATE:F

.field private mNeedToscale:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;-><init>(Ljava/lang/String;)V

    .line 8
    iput v1, p0, Lcom/htc/camera/photopattern/UniFormPattern;->NUMBEROFROW:I

    .line 9
    iput v1, p0, Lcom/htc/camera/photopattern/UniFormPattern;->NUMBEROFCOL:I

    .line 12
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/htc/camera/photopattern/UniFormPattern;->SCALERATE:F

    .line 13
    iput-boolean v1, p0, Lcom/htc/camera/photopattern/UniFormPattern;->mNeedToscale:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getColums()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public getNumberofPhotos()I
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/UniFormPattern;->getRows()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/UniFormPattern;->getColums()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public getScaleRate()F
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/UniFormPattern;->mNeedToscale:Z

    if-eqz v0, :cond_0

    .line 73
    const/high16 v0, 0x3f000000    # 0.5f

    .line 75
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getStitchHeight()I
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/UniFormPattern;->getRows()I

    move-result v0

    iget v1, p0, Lcom/htc/camera/photopattern/UniFormPattern;->mPhotoHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getStitchWidth()I
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/UniFormPattern;->getColums()I

    move-result v0

    iget v1, p0, Lcom/htc/camera/photopattern/UniFormPattern;->mPhotoWidth:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public setPhotoResolution(IILcom/htc/camera/rotate/UIRotation;Z)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    iput-object p3, p0, Lcom/htc/camera/photopattern/UniFormPattern;->mOrientation:Lcom/htc/camera/rotate/UIRotation;

    .line 25
    iput-boolean p4, p0, Lcom/htc/camera/photopattern/UniFormPattern;->mNeedToscale:Z

    .line 26
    invoke-virtual {p3}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    int-to-float v2, p2

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/UniFormPattern;->getScaleRate()F

    move-result v0

    :goto_0
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/photopattern/UniFormPattern;->mPhotoWidth:I

    .line 29
    int-to-float v0, p1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/UniFormPattern;->getScaleRate()F

    move-result v1

    :cond_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/photopattern/UniFormPattern;->mPhotoHeight:I

    .line 36
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 28
    goto :goto_0

    .line 33
    :cond_2
    int-to-float v2, p1

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/UniFormPattern;->getScaleRate()F

    move-result v0

    :goto_2
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/photopattern/UniFormPattern;->mPhotoWidth:I

    .line 34
    int-to-float v0, p2

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/UniFormPattern;->getScaleRate()F

    move-result v1

    :cond_3
    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/photopattern/UniFormPattern;->mPhotoHeight:I

    goto :goto_1

    :cond_4
    move v0, v1

    .line 33
    goto :goto_2
.end method
