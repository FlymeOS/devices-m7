.class Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;
.super Lcom/htc/camera/menu/IconMenuItem;
.source "PhotoBoothMainBarItem.java"


# instance fields
.field private pattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/photopattern/PhotoBoothPattern;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p2}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getTitleRes()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V

    .line 79
    iput-object p2, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->pattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 80
    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;)Lcom/htc/camera/photopattern/PhotoBoothPattern;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->pattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    return-object v0
.end method


# virtual methods
.method public getItemPatternIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->pattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0, p1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getMenuIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public setRotationDegree(I)V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Lcom/htc/camera/rotate/UIRotation;->fromDeviceOrientation(I)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->getItemPatternIcon(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iput p1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->m_RotationDegree:I

    .line 89
    iget-object v0, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    iget v1, p0, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem$PatternIconMenuItem;->m_RotationDegree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setRotation(F)V

    .line 90
    return-void
.end method
