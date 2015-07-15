.class Lcom/htc/widget/DigitalControls$MaskDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DigitalControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DigitalControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskDrawable"
.end annotation


# instance fields
.field private mImage:Landroid/graphics/Bitmap;

.field private mMask:Landroid/graphics/Bitmap;

.field private mMode:Landroid/graphics/PorterDuffXfermode;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "mask"    # Landroid/graphics/Bitmap;

    .prologue
    .line 515
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 510
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mPaint:Landroid/graphics/Paint;

    .line 513
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mMode:Landroid/graphics/PorterDuffXfermode;

    .line 516
    iput-object p1, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mImage:Landroid/graphics/Bitmap;

    .line 517
    iput-object p2, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mMask:Landroid/graphics/Bitmap;

    .line 518
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mMask:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 526
    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 527
    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 528
    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mMask:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 529
    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 530
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 540
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 544
    return-void
.end method
