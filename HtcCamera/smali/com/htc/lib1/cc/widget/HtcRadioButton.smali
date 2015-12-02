.class public Lcom/htc/lib1/cc/widget/HtcRadioButton;
.super Lcom/htc/lib1/cc/widget/HtcCompoundButton;
.source "HtcRadioButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;IZZ)V

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mIsContentMultiplyRequired:Z

    .line 82
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mHasOnState:Z

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 95
    const/4 v0, 0x1

    .line 98
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mBackgroundMode:I

    packed-switch v1, :pswitch_data_0

    .line 116
    invoke-static {p1, p2, p3, v2}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    invoke-static {p1, p2, p3, v2}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 118
    invoke-static {p1, p2, p3, v5}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 119
    invoke-static {p1, p2, p3, v5}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move v3, v0

    .line 123
    :goto_0
    if-eqz v3, :cond_0

    move-object v0, p0

    move-object v3, v6

    invoke-super/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setButtonDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_0
    return-void

    .line 100
    :pswitch_0
    invoke-static {p1, p2, p3, v4}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    invoke-static {p1, p2, p3, v4}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 102
    const/16 v3, 0x9

    invoke-static {p1, p2, p3, v3}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 103
    const/16 v3, 0x9

    invoke-static {p1, p2, p3, v3}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move v3, v0

    .line 104
    goto :goto_0

    .line 106
    :pswitch_1
    sget v1, Lcom/htc/lib1/cc/e;->automotive_common_circle_outer:I

    sget v2, Lcom/htc/lib1/cc/e;->automotive_common_circle_outer:I

    sget v4, Lcom/htc/lib1/cc/e;->automotive_common_radio_rest_light:I

    sget v5, Lcom/htc/lib1/cc/e;->automotive_common_radio_rest_light:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setButtonDrawableResources(IIIII)V

    move-object v4, v6

    move-object v5, v6

    move-object v2, v6

    move-object v1, v6

    .line 109
    goto :goto_0

    .line 111
    :pswitch_2
    sget v1, Lcom/htc/lib1/cc/e;->automotive_common_b_circle_outer:I

    sget v2, Lcom/htc/lib1/cc/e;->automotive_common_b_circle_outer:I

    sget v4, Lcom/htc/lib1/cc/e;->automotive_common_radio_rest_dark:I

    sget v5, Lcom/htc/lib1/cc/e;->automotive_common_radio_rest_dark:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setButtonDrawableResources(IIIII)V

    move-object v4, v6

    move-object v5, v6

    move-object v2, v6

    move-object v1, v6

    .line 114
    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected drawPressOff(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 195
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawPressOff(Landroid/graphics/Canvas;)V

    .line 196
    return-void
.end method

.method protected drawPressOn(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 175
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawPressOn(Landroid/graphics/Canvas;)V

    .line 176
    return-void
.end method

.method protected drawRestOff(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 165
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawRestOff(Landroid/graphics/Canvas;)V

    .line 166
    return-void
.end method

.method protected drawRestOn(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcRadioButton;->mCategoryColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 185
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawRestOn(Landroid/graphics/Canvas;)V

    .line 186
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 146
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 155
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->toggle()V

    .line 138
    :cond_0
    return-void
.end method
