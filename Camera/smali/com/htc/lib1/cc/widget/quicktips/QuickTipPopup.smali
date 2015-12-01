.class public Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;
.super Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;
.source "QuickTipPopup.java"


# static fields
.field private static mImageHeight:I


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mCloseIcon:Landroid/widget/ImageView;

.field private mCloseIconForTextOnly:Landroid/widget/ImageView;

.field private mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

.field mContext:Landroid/content/Context;

.field private mImageSection:Landroid/widget/FrameLayout;

.field private mMaxWidth:I

.field private mRotateRelativeLayout:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

.field private mScreenMode:B

.field private mTipImage:Landroid/widget/ImageView;

.field private mTipText:Landroid/widget/TextView;

.field private mVisible_panel:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mScreenMode:B

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mAnchorView:Landroid/view/View;

    .line 53
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mVisible_panel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    const/4 v0, 0x1

    const/high16 v2, 0x42da0000    # 109.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageHeight:I

    .line 63
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 64
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M4:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mMaxWidth:I

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    sget v2, Lcom/htc/lib1/cc/i;->layout_quicktips:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    .line 69
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    sget v2, Lcom/htc/lib1/cc/g;->quicktip_frame:I

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mRotateRelativeLayout:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    .line 70
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    sget v2, Lcom/htc/lib1/cc/g;->quicktip_image_section:I

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageSection:Landroid/widget/FrameLayout;

    .line 71
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    sget v2, Lcom/htc/lib1/cc/g;->visible_panel:I

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mVisible_panel:Landroid/widget/LinearLayout;

    .line 73
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->initBackgroundColor()V

    .line 75
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    sget v2, Lcom/htc/lib1/cc/g;->quicktip_text:I

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    sget v2, Lcom/htc/lib1/cc/k;->fixed_darklist_primary_m:I

    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 77
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    sget v2, Lcom/htc/lib1/cc/g;->quicktip_image:I

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipImage:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    sget v2, Lcom/htc/lib1/cc/g;->quicktip_close_text:I

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    sget v2, Lcom/htc/lib1/cc/e;->icon_btn_cancel_dark_s:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    sget v2, Lcom/htc/lib1/cc/g;->quicktip_close_image:I

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIcon:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIcon:Landroid/widget/ImageView;

    sget v2, Lcom/htc/lib1/cc/e;->icon_btn_cancel_dark_s:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    sget v0, Lcom/htc/lib1/cc/j;->details_page_close:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    sget v0, Lcom/htc/lib1/cc/e;->icon_btn_cancel_dark_s:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mClearIconWidth:I

    .line 87
    sget v0, Lcom/htc/lib1/cc/e;->icon_btn_cancel_dark_s:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mClearIconWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mClearIconWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$1;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$1;-><init>(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$2;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$2;-><init>(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setPopupWindowParams()V

    .line 117
    return-void
.end method

.method private initBackgroundColor()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_popupmenu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCategoryColor:I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->applyColorMultiply(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mVisible_panel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method

.method private isOrientationChanged(B)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 320
    iget-byte v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mScreenMode:B

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 321
    iput-byte p1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mScreenMode:B

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    iget-byte v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mScreenMode:B

    .line 326
    iput-byte p1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mScreenMode:B

    .line 328
    if-eqz p1, :cond_2

    if-ne p1, v4, :cond_4

    .line 329
    :cond_2
    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 330
    :cond_4
    if-eq p1, v0, :cond_5

    const/4 v3, 0x3

    if-ne p1, v3, :cond_8

    .line 331
    :cond_5
    if-eqz v2, :cond_6

    if-ne v2, v4, :cond_7

    :cond_6
    move v1, v0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 334
    goto :goto_0
.end method

.method private resetLayoutParam()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, -0x2

    .line 339
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageSrc:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v3, v0

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 342
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mClearIconWidth:I

    move v7, v0

    .line 343
    :goto_1
    if-nez v7, :cond_5

    sget v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    move v6, v0

    .line 345
    :goto_2
    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move-object v0, v1

    .line 346
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    sget v5, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M3:I

    sget v8, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    sget v9, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M2:I

    invoke-virtual {v0, v2, v5, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 350
    :goto_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mMaxWidth:I

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 351
    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mMaxWidth:I

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v6

    sub-int/2addr v0, v7

    int-to-float v0, v0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v5, v0

    .line 356
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mExpandDirection:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    .line 357
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 358
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 359
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 360
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 361
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 362
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 364
    sget v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    add-int/2addr v0, v5

    add-int/2addr v0, v6

    add-int/2addr v0, v7

    iget v9, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mPopupShadowLeft:I

    add-int/2addr v0, v9

    iget v9, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mPopupShadowRight:I

    add-int/2addr v0, v9

    .line 365
    aget v9, v2, v4

    sub-int v0, v9, v0

    iget v9, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleLandHeadOffset:I

    iget v10, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mPopupShadowRight:I

    sub-int/2addr v9, v10

    sub-int/2addr v0, v9

    iget v9, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mXoff:I

    add-int/2addr v0, v9

    .line 368
    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleLandBodyOffset:I

    iget v10, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mPopupShadowLeft:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    if-ge v0, v8, :cond_9

    .line 369
    aget v0, v2, v4

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleLandBodyOffset:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleLandHeadOffset:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mXoff:I

    sub-int/2addr v0, v2

    .line 370
    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    add-int/2addr v2, v6

    add-int/2addr v2, v7

    sub-int/2addr v0, v2

    .line 377
    :cond_1
    :goto_4
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 379
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 380
    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 382
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 383
    if-eqz v3, :cond_7

    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mMaxWidth:I

    .line 384
    :goto_5
    if-nez v1, :cond_8

    .line 385
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 386
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    :goto_6
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v1, v0, v11}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->measure(II)V

    .line 398
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 399
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 400
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 401
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 402
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 403
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 404
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 407
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setWidth(I)V

    .line 408
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setHeight(I)V

    .line 410
    return-void

    :cond_3
    move v3, v4

    .line 339
    goto/16 :goto_0

    :cond_4
    move v7, v4

    .line 342
    goto/16 :goto_1

    .line 343
    :cond_5
    sget v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M2:I

    mul-int/lit8 v0, v0, 0x2

    move v6, v0

    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    .line 348
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    sget v5, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M3:I

    sget v8, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M2:I

    sget v9, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M2:I

    invoke-virtual {v0, v2, v5, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 383
    :cond_7
    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    add-int/2addr v0, v2

    add-int/2addr v0, v6

    add-int/2addr v0, v7

    goto :goto_5

    .line 388
    :cond_8
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 389
    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6

    :cond_9
    move v0, v5

    goto/16 :goto_4
.end method

.method private setPopupWindowParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 487
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->resetLayoutParam()V

    .line 488
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setContentView(Landroid/view/View;)V

    .line 489
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setFocusable(Z)V

    .line 490
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setOutsideTouchable(Z)V

    .line 491
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setClipToScreenEnabled(Z)V

    .line 492
    return-void
.end method


# virtual methods
.method protected releaseTouchDelegate()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mVisible_panel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mVisible_panel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 452
    :cond_0
    return-void
.end method

.method protected resetHeight(Landroid/view/WindowManager$LayoutParams;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageSrc:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 458
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 459
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mClearIconWidth:I

    move v5, v2

    .line 460
    :goto_1
    if-nez v5, :cond_2

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    .line 461
    :goto_2
    iget v3, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mMaxWidth:I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 462
    sget v3, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    .line 463
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, ""

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 464
    sget v1, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    sub-int v1, v4, v1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 467
    :goto_3
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 469
    const/high16 v0, -0x80000000

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 470
    const/4 v1, -0x2

    .line 472
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v2, v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->measure(II)V

    .line 475
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 476
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 478
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 479
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    .line 480
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 482
    :goto_4
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 483
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 484
    return-void

    :cond_0
    move v1, v2

    .line 457
    goto/16 :goto_0

    :cond_1
    move v5, v2

    .line 459
    goto/16 :goto_1

    .line 460
    :cond_2
    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M2:I

    mul-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    :cond_3
    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v3

    goto :goto_3
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 543
    sget v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setImage(Landroid/graphics/drawable/Drawable;I)V

    .line 544
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 557
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 558
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageSrc:Landroid/graphics/drawable/Drawable;

    .line 559
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageSection:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    if-lez p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageSection:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 565
    if-nez v0, :cond_2

    .line 566
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 567
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageSection:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->resetLayoutParam()V

    .line 581
    :cond_1
    :goto_1
    return-void

    .line 569
    :cond_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 570
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 575
    :cond_3
    if-nez p1, :cond_1

    .line 576
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageSection:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 577
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mIsCloseVisible:Z

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOrientation(B)V
    .locals 19

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mRotateRelativeLayout:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mExpandDirection:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    move/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->setRotation(IZ)V

    .line 205
    invoke-direct/range {p0 .. p1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isOrientationChanged(B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    :cond_0
    :goto_1
    return-void

    .line 203
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 208
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mParent:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v3, v1

    .line 209
    :goto_2
    const/4 v1, 0x0

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->dismiss()V

    .line 213
    const/4 v1, 0x1

    move v4, v1

    .line 216
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v13

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v9

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 221
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 222
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageSrc:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    move v5, v2

    .line 224
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mClearIconWidth:I

    move v12, v2

    .line 225
    :goto_5
    if-nez v12, :cond_a

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    move v11, v2

    .line 226
    :goto_6
    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    :cond_3
    const/4 v2, 0x1

    move v8, v2

    .line 227
    :goto_7
    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mImageSection:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sget v10, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    add-int/2addr v2, v10

    move v10, v2

    .line 229
    :goto_8
    if-eqz v8, :cond_10

    .line 231
    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mExpandDirection:I

    const/4 v8, 0x5

    if-eq v2, v8, :cond_17

    .line 232
    const/4 v8, 0x0

    .line 234
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContext:Landroid/content/Context;

    const-string v15, "window"

    invoke-virtual {v2, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 237
    :cond_4
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 238
    invoke-virtual {v3, v15}, Landroid/view/View;->getLocationInWindow([I)V

    .line 240
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->getStatusBarHeight(Landroid/view/View;)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    .line 242
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mExpandDirection:I

    if-nez v2, :cond_5

    .line 243
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 244
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 245
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    const/16 v18, 0x1

    aget v18, v2, v18

    sub-int v17, v17, v18

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mYoff:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/16 v18, 0x1

    aget v2, v2, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mYoff:I

    move/from16 v18, v0

    sub-int v2, v2, v18

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v2, v2, v18

    move/from16 v0, v17

    if-ge v0, v2, :cond_d

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mExpandDirection:I

    .line 250
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mPopupShadowBottom:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mPopupShadowTop:I

    add-int/2addr v2, v13

    .line 252
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mExpandDirection:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_e

    const/4 v13, 0x1

    aget v13, v15, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleHeadOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mPopupShadowBottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    sub-int v13, v13, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleBodyOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mPopupShadowTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    sub-int v13, v13, v17

    sub-int v13, v13, v16

    if-ge v13, v2, :cond_e

    .line 254
    const/4 v2, 0x1

    aget v2, v15, v2

    iget v8, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleHeadOffset:I

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleBodyOffset:I

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mYoff:I

    sub-int/2addr v2, v8

    sub-int v8, v2, v16

    .line 256
    const/4 v2, 0x1

    .line 264
    :goto_a
    if-eqz v2, :cond_15

    .line 265
    if-eqz v5, :cond_f

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v8, v2

    .line 266
    :goto_b
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 267
    const/4 v5, -0x2

    .line 268
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 269
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->measure(II)V

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v10

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M2:I

    add-int/2addr v1, v2

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M3:I

    add-int/2addr v1, v2

    .line 272
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_c
    move v6, v1

    move v1, v7

    .line 295
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v2, v6, v1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->measure(II)V

    .line 298
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v2

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 301
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    .line 302
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 303
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 304
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 307
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setWidth(I)V

    .line 308
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setHeight(I)V

    .line 311
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 312
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mExpandDirection:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    .line 313
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 208
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mAnchorView:Landroid/view/View;

    move-object v3, v1

    goto/16 :goto_2

    .line 223
    :cond_8
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_4

    .line 224
    :cond_9
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_5

    .line 225
    :cond_a
    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M2:I

    mul-int/lit8 v2, v2, 0x2

    move v11, v2

    goto/16 :goto_6

    .line 226
    :cond_b
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_7

    .line 227
    :cond_c
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_8

    .line 245
    :cond_d
    const/4 v2, 0x2

    goto/16 :goto_9

    .line 257
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mExpandDirection:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v13, v0, :cond_16

    const/4 v13, 0x1

    aget v13, v15, v13

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleHeadOffset:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mPopupShadowTop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleBodyOffset:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mPopupShadowBottom:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int v13, v13, v16

    add-int/2addr v2, v13

    iget v13, v14, Landroid/graphics/Rect;->bottom:I

    if-le v2, v13, :cond_16

    .line 260
    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleHeadOffset:I

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mBubbleBodyOffset:I

    sub-int/2addr v2, v8

    const/4 v8, 0x1

    aget v8, v15, v8

    sub-int/2addr v2, v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v2, v8

    .line 261
    const/4 v2, 0x1

    goto/16 :goto_a

    .line 265
    :cond_f
    sget v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    sub-int v2, v8, v2

    sub-int/2addr v2, v11

    sub-int/2addr v2, v12

    goto/16 :goto_b

    .line 277
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mMaxWidth:I

    sget v6, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    .line 278
    if-nez v5, :cond_14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_14

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 279
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mMaxWidth:I

    sget v6, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v11

    sub-int/2addr v2, v12

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    move v6, v2

    .line 281
    :goto_e
    if-eqz v5, :cond_11

    const/4 v2, -0x1

    .line 282
    :goto_f
    const/4 v7, -0x2

    .line 283
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 284
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 286
    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mMaxWidth:I

    .line 287
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mContentView:Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 288
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 289
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 292
    const/4 v1, -0x2

    goto/16 :goto_d

    .line 281
    :cond_11
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_f

    .line 286
    :cond_12
    sget v1, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->M1:I

    add-int/2addr v1, v6

    add-int/2addr v1, v11

    add-int/2addr v1, v12

    goto :goto_10

    .line 315
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->showAsDropDown(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_14
    move v6, v2

    goto :goto_e

    :cond_15
    move v1, v6

    goto/16 :goto_c

    :cond_16
    move v2, v8

    move v8, v9

    goto/16 :goto_a

    :cond_17
    move v1, v7

    goto/16 :goto_d

    :cond_18
    move v4, v1

    goto/16 :goto_3
.end method

.method public setOrientation(BLandroid/view/View;)V
    .locals 0

    .prologue
    .line 184
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mAnchorView:Landroid/view/View;

    .line 185
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setOrientation(B)V

    .line 186
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mTipText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->resetLayoutParam()V

    .line 507
    :cond_0
    return-void
.end method

.method protected setTouchDelegate()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mVisible_panel:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mIsCloseVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIconForTextOnly:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mVisible_panel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$3;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$3;-><init>(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 444
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mVisible_panel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 430
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mIsCloseVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mVisible_panel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$4;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$4;-><init>(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
