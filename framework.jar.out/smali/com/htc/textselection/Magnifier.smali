.class public Lcom/htc/textselection/Magnifier;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/textselection/Magnifier$MagnifierView;,
        Lcom/htc/textselection/Magnifier$TouchingMode;,
        Lcom/htc/textselection/Magnifier$LayoutMode;
    }
.end annotation


# static fields
.field public static final MAGNIFIER_SCALE:F = 1.5f

.field private static mANCHOR_HEIGHT:I


# instance fields
.field private CONTENT_HEIGHT:I

.field private CONTENT_WIDTH:I

.field private DENSITY:F

.field private MAGNIFIER_TO_FINGER:I

.field private TOTAL_HEIGHT:I

.field private TOTAL_WIDTH:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContentRect:Landroid/graphics/Rect;

.field private mDestinationRect:Landroid/graphics/Rect;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableBonds:Landroid/graphics/Rect;

.field private mDrawablePadding:Landroid/graphics/Rect;

.field private mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

.field private mLayoutFillWidth:Landroid/widget/LinearLayout;

.field private mLayoutFullScreen:Landroid/widget/LinearLayout;

.field private mLayoutMode:Lcom/htc/textselection/Magnifier$LayoutMode;

.field private mLocationInWindow:[I

.field private mManager:Lcom/htc/textselection/TextSelectionManager;

.field private mNoSpaceAdjust:Z

.field private mNoSpaceToShow:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSingleNoSpaceToShow:Z

.field private mTempRectf:Landroid/graphics/RectF;

.field private mTextHeight:I

.field private mTextView:Landroid/widget/TextView;

.field private mWindow:Landroid/widget/PopupWindow;

.field private mWindowFillWidth:Landroid/widget/PopupWindow;

.field private mWindowFullScreen:Landroid/widget/PopupWindow;

.field private mx:I

.field private my:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/htc/textselection/Magnifier;->mANCHOR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/high16 v10, 0x3fc00000    # 1.5f

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    .line 40
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mWindowFullScreen:Landroid/widget/PopupWindow;

    .line 41
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mLayoutFullScreen:Landroid/widget/LinearLayout;

    .line 42
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mWindowFillWidth:Landroid/widget/PopupWindow;

    .line 43
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mLayoutFillWidth:Landroid/widget/LinearLayout;

    .line 44
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

    .line 45
    sget-object v1, Lcom/htc/textselection/Magnifier$LayoutMode;->FULLSCREEN:Lcom/htc/textselection/Magnifier$LayoutMode;

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mLayoutMode:Lcom/htc/textselection/Magnifier$LayoutMode;

    .line 46
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    .line 49
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 50
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mCanvas:Landroid/graphics/Canvas;

    .line 51
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mPaint:Landroid/graphics/Paint;

    .line 52
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mBitmapRect:Landroid/graphics/Rect;

    .line 53
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mLocationInWindow:[I

    .line 57
    iput-object v2, p0, Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;

    .line 58
    iput v7, p0, Lcom/htc/textselection/Magnifier;->mTextHeight:I

    .line 59
    iput v7, p0, Lcom/htc/textselection/Magnifier;->mx:I

    .line 60
    iput v7, p0, Lcom/htc/textselection/Magnifier;->my:I

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mContentRect:Landroid/graphics/Rect;

    .line 62
    iput-boolean v7, p0, Lcom/htc/textselection/Magnifier;->mNoSpaceToShow:Z

    .line 63
    iput-boolean v7, p0, Lcom/htc/textselection/Magnifier;->mSingleNoSpaceToShow:Z

    .line 64
    iput-boolean v7, p0, Lcom/htc/textselection/Magnifier;->mNoSpaceAdjust:Z

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mDestinationRect:Landroid/graphics/Rect;

    .line 69
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mTempRectf:Landroid/graphics/RectF;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/htc/textselection/Magnifier;->DENSITY:F

    .line 76
    const v1, 0x30200b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 79
    const/high16 v1, 0x43160000    # 150.0f

    iget v2, p0, Lcom/htc/textselection/Magnifier;->DENSITY:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/textselection/Magnifier;->TOTAL_WIDTH:I

    .line 80
    const/high16 v1, 0x428c0000    # 70.0f

    iget v2, p0, Lcom/htc/textselection/Magnifier;->DENSITY:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/textselection/Magnifier;->TOTAL_HEIGHT:I

    .line 81
    iget v1, p0, Lcom/htc/textselection/Magnifier;->TOTAL_WIDTH:I

    iget-object v2, p0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/textselection/Magnifier;->CONTENT_WIDTH:I

    .line 82
    iget v1, p0, Lcom/htc/textselection/Magnifier;->TOTAL_HEIGHT:I

    iget-object v2, p0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/textselection/Magnifier;->CONTENT_HEIGHT:I

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/textselection/Magnifier;->TOTAL_WIDTH:I

    iget v3, p0, Lcom/htc/textselection/Magnifier;->TOTAL_HEIGHT:I

    invoke-direct {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mDrawableBonds:Landroid/graphics/Rect;

    .line 85
    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/textselection/Magnifier;->mDrawableBonds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/htc/textselection/Magnifier;->TOTAL_WIDTH:I

    iget-object v5, p0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/textselection/Magnifier;->TOTAL_HEIGHT:I

    iget-object v6, p0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mContentRect:Landroid/graphics/Rect;

    .line 90
    iget v1, p0, Lcom/htc/textselection/Magnifier;->CONTENT_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v10

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/textselection/Magnifier;->CONTENT_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 96
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/htc/textselection/Magnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mCanvas:Landroid/graphics/Canvas;

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/textselection/Magnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/textselection/Magnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mBitmapRect:Landroid/graphics/Rect;

    .line 99
    new-instance v1, Lcom/htc/textselection/Magnifier$MagnifierView;

    invoke-direct {v1, p0, p1}, Lcom/htc/textselection/Magnifier$MagnifierView;-><init>(Lcom/htc/textselection/Magnifier;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

    .line 100
    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/textselection/Magnifier$MagnifierView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mLayoutFullScreen:Landroid/widget/LinearLayout;

    .line 103
    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mLayoutFullScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mLayoutFullScreen:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mLayoutFullScreen:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/htc/textselection/Magnifier;->mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mLayoutFillWidth:Landroid/widget/LinearLayout;

    .line 108
    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mLayoutFillWidth:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mLayoutFillWidth:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lcom/htc/textselection/Magnifier;->DENSITY:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/textselection/Magnifier;->MAGNIFIER_TO_FINGER:I

    .line 112
    invoke-static {}, Lcom/htc/textselection/TextSelectionManager;->getInstance()Lcom/htc/textselection/TextSelectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/textselection/Magnifier;->mManager:Lcom/htc/textselection/TextSelectionManager;

    .line 113
    const/high16 v1, 0x42700000    # 60.0f

    iget v2, p0, Lcom/htc/textselection/Magnifier;->DENSITY:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/htc/textselection/Magnifier;->mANCHOR_HEIGHT:I

    .line 114
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/textselection/Magnifier;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/textselection/Magnifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/textselection/Magnifier;->CONTENT_WIDTH:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/textselection/Magnifier;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/textselection/Magnifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/textselection/Magnifier;->CONTENT_HEIGHT:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/textselection/Magnifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/textselection/Magnifier;->mx:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/textselection/Magnifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/textselection/Magnifier;->my:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mDestinationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/htc/textselection/Magnifier;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mBitmapRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTextViewToWindowX(Landroid/widget/TextView;I)I
    .locals 3
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "x"    # I

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mLocationInWindow:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private getTextViewToWindowY(Landroid/widget/TextView;I)I
    .locals 3
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "y"    # I

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/htc/textselection/Magnifier;->mLocationInWindow:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 307
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;

    .line 308
    return-void
.end method

.method public isParentView(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V
    .locals 25
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "offset"    # I
    .param p5, "mode"    # Lcom/htc/textselection/Magnifier$TouchingMode;

    .prologue
    .line 134
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    if-nez v21, :cond_1

    .line 276
    .end local p3    # "y":I
    :cond_0
    :goto_0
    return-void

    .line 135
    .restart local p3    # "y":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->willNotDraw()Z

    move-result v21

    if-nez v21, :cond_0

    .line 137
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 141
    .local v6, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mLocationInWindow:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 146
    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 147
    .local v8, "line":I
    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 148
    .local v10, "lineTop":I
    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    .line 149
    .local v9, "lineBottom":I
    sub-int v21, v9, v10

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/textselection/Magnifier;->mTextHeight:I

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/text/Layout;->getLineCount()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/4 v5, 0x1

    .line 152
    .local v5, "isSingleLine":Z
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/textselection/Magnifier;->mx:I

    .line 153
    if-nez v5, :cond_2

    sget-object v21, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_WORD:Lcom/htc/textselection/Magnifier$TouchingMode;

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_3

    :cond_2
    add-int v21, v10, v9

    div-int/lit8 v21, v21, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    add-int p3, v21, v22

    .end local p3    # "y":I
    :cond_3
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/textselection/Magnifier;->my:I

    .line 156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->mx:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/textselection/Magnifier;->getTextViewToWindowX(Landroid/widget/TextView;I)I

    move-result v19

    .line 157
    .local v19, "xWnd":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->my:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/textselection/Magnifier;->getTextViewToWindowY(Landroid/widget/TextView;I)I

    move-result v20

    .line 158
    .local v20, "yWnd":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/htc/textselection/Magnifier;->getTextViewToWindowY(Landroid/widget/TextView;I)I

    move-result v11

    .line 160
    .local v11, "lineTopWnd":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->TOTAL_WIDTH:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    sub-int v14, v19, v21

    .line 161
    .local v14, "paddingLeft":I
    const/4 v15, 0x0

    .line 162
    .local v15, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mManager:Lcom/htc/textselection/TextSelectionManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/textselection/TextSelectionManager;->getStatusBarHeight()I

    move-result v16

    .line 165
    .local v16, "statusBarHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->mTextHeight:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move/from16 v0, v21

    if-gt v11, v0, :cond_5

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/textselection/Magnifier;->mNoSpaceToShow:Z

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->mTextHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v11, v0, :cond_6

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/textselection/Magnifier;->mSingleNoSpaceToShow:Z

    .line 169
    sget-object v21, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_UPPER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 170
    int-to-float v0, v11

    move/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->mTextHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3fc00000    # 1.5f

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->MAGNIFIER_TO_FINGER:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    sget v23, Lcom/htc/textselection/Magnifier;->mANCHOR_HEIGHT:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_7

    const/16 v21, 0x1

    :goto_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/textselection/Magnifier;->mNoSpaceAdjust:Z

    .line 177
    :goto_5
    if-eqz v5, :cond_12

    .line 178
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/textselection/Magnifier;->mSingleNoSpaceToShow:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    goto/16 :goto_0

    .line 151
    .end local v5    # "isSingleLine":Z
    .end local v11    # "lineTopWnd":I
    .end local v14    # "paddingLeft":I
    .end local v15    # "paddingTop":I
    .end local v16    # "statusBarHeight":I
    .end local v19    # "xWnd":I
    .end local v20    # "yWnd":I
    .restart local p3    # "y":I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 165
    .end local p3    # "y":I
    .restart local v5    # "isSingleLine":Z
    .restart local v11    # "lineTopWnd":I
    .restart local v14    # "paddingLeft":I
    .restart local v15    # "paddingTop":I
    .restart local v16    # "statusBarHeight":I
    .restart local v19    # "xWnd":I
    .restart local v20    # "yWnd":I
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 167
    :cond_6
    const/16 v21, 0x0

    goto :goto_3

    .line 170
    :cond_7
    const/16 v21, 0x0

    goto :goto_4

    .line 173
    :cond_8
    int-to-float v0, v11

    move/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->mTextHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3fc00000    # 1.5f

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->MAGNIFIER_TO_FINGER:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_9

    const/16 v21, 0x1

    :goto_6
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/textselection/Magnifier;->mNoSpaceAdjust:Z

    goto :goto_5

    :cond_9
    const/16 v21, 0x0

    goto :goto_6

    .line 181
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/textselection/Magnifier;->mNoSpaceAdjust:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->TOTAL_HEIGHT:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    sub-int v15, v20, v21

    .line 202
    :goto_7
    if-nez v5, :cond_b

    sget-object v21, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_WORD:Lcom/htc/textselection/Magnifier$TouchingMode;

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 203
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v21

    sub-int v15, v15, v21

    .line 207
    :cond_c
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 208
    .local v18, "windowPosition":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getWindowPosition([I)V

    .line 210
    const/16 v21, 0x1

    aget v21, v18, v21

    if-eqz v21, :cond_16

    sget-object v7, Lcom/htc/textselection/Magnifier$LayoutMode;->FILLWIDTH:Lcom/htc/textselection/Magnifier$LayoutMode;

    .line 214
    .local v7, "layoutMode":Lcom/htc/textselection/Magnifier$LayoutMode;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mLayoutMode:Lcom/htc/textselection/Magnifier$LayoutMode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-eq v0, v7, :cond_e

    .line 215
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/textselection/Magnifier;->mLayoutMode:Lcom/htc/textselection/Magnifier$LayoutMode;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/textselection/Magnifier$MagnifierView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    if-eqz v21, :cond_d

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/textselection/Magnifier$MagnifierView;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 220
    .local v17, "v":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 224
    .end local v17    # "v":Landroid/view/ViewGroup;
    :cond_d
    sget-object v21, Lcom/htc/textselection/Magnifier$LayoutMode;->FILLWIDTH:Lcom/htc/textselection/Magnifier$LayoutMode;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_17

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mLayoutFillWidth:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/textselection/Magnifier$MagnifierView;->invalidate()V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string/jumbo v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 235
    .local v13, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Display;->getWidth()I

    move-result v21

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 239
    .local v12, "mMagnifierWindowHeight":I
    sget-object v21, Lcom/htc/textselection/Magnifier$LayoutMode;->FILLWIDTH:Lcom/htc/textselection/Magnifier$LayoutMode;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_19

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFillWidth:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-nez v21, :cond_f

    .line 243
    new-instance v21, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mLayoutFillWidth:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/textselection/Magnifier;->mWindowFillWidth:Landroid/widget/PopupWindow;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFillWidth:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x3ea

    invoke-virtual/range {v21 .. v22}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFillWidth:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFillWidth:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFillWidth:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 251
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFillWidth:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mLayoutFillWidth:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-nez v21, :cond_18

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 184
    .end local v7    # "layoutMode":Lcom/htc/textselection/Magnifier$LayoutMode;
    .end local v12    # "mMagnifierWindowHeight":I
    .end local v13    # "mWindowManager":Landroid/view/WindowManager;
    .end local v18    # "windowPosition":[I
    :cond_10
    sget-object v21, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_UPPER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->TOTAL_HEIGHT:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->MAGNIFIER_TO_FINGER:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sget v22, Lcom/htc/textselection/Magnifier;->mANCHOR_HEIGHT:I

    sub-int v15, v21, v22

    goto/16 :goto_7

    .line 187
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->TOTAL_HEIGHT:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->MAGNIFIER_TO_FINGER:I

    move/from16 v22, v0

    sub-int v15, v21, v22

    goto/16 :goto_7

    .line 189
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/textselection/Magnifier;->mNoSpaceToShow:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    goto/16 :goto_0

    .line 192
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/textselection/Magnifier;->mNoSpaceAdjust:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 193
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->TOTAL_HEIGHT:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, -0x1

    add-int v21, v21, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->mTextHeight:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3fc00000    # 1.5f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v15, v21, v22

    goto/16 :goto_7

    .line 195
    :cond_14
    sget-object v21, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_UPPER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->TOTAL_HEIGHT:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->MAGNIFIER_TO_FINGER:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sget v22, Lcom/htc/textselection/Magnifier;->mANCHOR_HEIGHT:I

    sub-int v15, v21, v22

    goto/16 :goto_7

    .line 198
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->TOTAL_HEIGHT:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/textselection/Magnifier;->MAGNIFIER_TO_FINGER:I

    move/from16 v22, v0

    sub-int v15, v21, v22

    goto/16 :goto_7

    .line 210
    .restart local v18    # "windowPosition":[I
    :cond_16
    sget-object v7, Lcom/htc/textselection/Magnifier$LayoutMode;->FULLSCREEN:Lcom/htc/textselection/Magnifier$LayoutMode;

    goto/16 :goto_8

    .line 227
    .restart local v7    # "layoutMode":Lcom/htc/textselection/Magnifier$LayoutMode;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mLayoutFullScreen:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mImageView:Lcom/htc/textselection/Magnifier$MagnifierView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    .line 257
    .restart local v12    # "mMagnifierWindowHeight":I
    .restart local v13    # "mWindowManager":Landroid/view/WindowManager;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 260
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFullScreen:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-nez v21, :cond_1a

    .line 262
    new-instance v21, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mLayoutFullScreen:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/textselection/Magnifier;->mWindowFullScreen:Landroid/widget/PopupWindow;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFullScreen:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x3ea

    invoke-virtual/range {v21 .. v22}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFullScreen:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFullScreen:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFullScreen:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 270
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindowFullScreen:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mLayoutFullScreen:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-nez v21, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/Magnifier;->mWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 207
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
