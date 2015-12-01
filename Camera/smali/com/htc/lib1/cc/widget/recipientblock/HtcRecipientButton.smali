.class public Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;
.super Landroid/widget/LinearLayout;
.source "HtcRecipientButton.java"


# instance fields
.field private mIndicator:Landroid/graphics/drawable/Drawable;

.field private mMaxWidth:I

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mRes:Landroid/content/res/Resources;

.field private mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

.field private mStyle:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mMaxWidth:I

    .line 40
    iput v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mWidth:I

    .line 41
    iput v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mStyle:I

    .line 42
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    .line 45
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 46
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRes:Landroid/content/res/Resources;

    .line 51
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->initView()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mMaxWidth:I

    .line 40
    iput v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mWidth:I

    .line 41
    iput v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mStyle:I

    .line 42
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    .line 45
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 46
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRes:Landroid/content/res/Resources;

    .line 57
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->initView()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->viewClicked()V

    return-void
.end method

.method private createIndicator(Z)V
    .locals 2

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_collapse_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_expand_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getImageWidth()I
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getCompoundDrawablePadding(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getTextWidth()I
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setOrientation(I)V

    .line 62
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    .line 63
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->addView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method private setReceiverTag(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setTag(Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method private setText(I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setText(I)V

    .line 89
    :cond_0
    return-void
.end method

.method private viewClicked()V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->performClick()Z

    .line 234
    return-void
.end method


# virtual methods
.method protected getBtnWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mWidth:I

    return v0
.end method

.method public getButton()Lcom/htc/lib1/cc/widget/HtcRimButton;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    return-object v0
.end method

.method protected getButtonHeight(I)I
    .locals 3

    .prologue
    .line 212
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 213
    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v2, v0, v1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->measure(II)V

    .line 215
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getButtonWidth()I
    .locals 2

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getTextWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getImageWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 229
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected setIndicatorExpanded(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 168
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->createIndicator(Z)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getCompoundDrawablePadding(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setCompoundDrawablePadding(I)V

    .line 176
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v3, v1, v3}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    new-instance v1, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton$1;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton$1;-><init>(Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected setStyle(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 127
    iput-object v6, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 128
    packed-switch p1, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iput v5, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mStyle:I

    .line 138
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->removeView(Landroid/view/View;)V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->initView()V

    goto :goto_0

    .line 151
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mStyle:I

    .line 152
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->initView()V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM1(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM1(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM1(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM1(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setPadding(IIII)V

    .line 158
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0, v6}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setClickable(Z)V

    .line 160
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/htc/lib1/cc/k;->list_secondary_m:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected setWidth(I)V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 187
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mRimButton:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setWidth(I)V

    .line 191
    iput p1, p0, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->mWidth:I

    .line 192
    return-void
.end method
