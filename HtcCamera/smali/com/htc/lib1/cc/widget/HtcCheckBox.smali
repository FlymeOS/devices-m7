.class public Lcom/htc/lib1/cc/widget/HtcCheckBox;
.super Lcom/htc/lib1/cc/widget/HtcCompoundButton;
.source "HtcCheckBox.java"


# static fields
.field private static states:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;IZZ)V

    .line 81
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mBackgroundMode:I

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method private drawPartialSelection(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 271
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 273
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsContentMultiplyRequired:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mHasOnState:Z

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setButtonDrawables(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsPartialSelect:Z

    .line 90
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mSkipFirstUpDraw:Z

    .line 91
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mTheSameWithPressOn:Z

    .line 92
    return-void
.end method

.method private static loadSkinDrawables(Landroid/content/Context;Landroid/util/AttributeSet;II)[Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 180
    const/4 v0, 0x5

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    .line 182
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[HtcCheckBox.loadSkinDrawables] Null context passed in"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 195
    invoke-static {p0, p1, p2, v5}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, v6

    .line 196
    const/4 v0, 0x6

    invoke-static {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, v3

    .line 197
    const/4 v0, 0x0

    aput-object v0, v1, v4

    .line 198
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, v7

    .line 199
    if-ne p3, v3, :cond_2

    const/16 v0, 0x10

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, v5

    .line 204
    :goto_1
    return-object v1

    .line 187
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/htc/lib1/cc/e;->automotive_common_circle_pressed:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, v6

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/htc/lib1/cc/e;->automotive_common_checkbox_rest:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, v3

    .line 189
    const/4 v0, 0x0

    aput-object v0, v1, v4

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/htc/lib1/cc/e;->automotive_common_checkbox_on:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, v7

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-ne p3, v4, :cond_1

    sget v0, Lcom/htc/lib1/cc/e;->automotive_common_b_checkbox_rest:I

    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, v5

    goto :goto_1

    :cond_1
    sget v0, Lcom/htc/lib1/cc/e;->automotive_common_checkbox_rest:I

    goto :goto_2

    .line 199
    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected drawFgOn(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsPartialModeEnabled:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->drawPartialSelection(Landroid/graphics/Canvas;)V

    .line 252
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mUnCheckUpAnimating:Z

    if-nez v0, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsAnimating:Z

    if-nez v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 250
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentPress:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 248
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentPress:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 251
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mUnCheckUpAnimating:Z

    goto :goto_0
.end method

.method protected drawFgRest(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsPartialModeEnabled:Z

    if-eqz v0, :cond_1

    .line 261
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->drawPartialSelection(Landroid/graphics/Canvas;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentRest:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 264
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawOuter(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 224
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsPartialModeEnabled:Z

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 227
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mUnCheckUpAnimating:Z

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 231
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawPressOn(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->drawPressed(Landroid/graphics/Canvas;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->drawFgOn(Landroid/graphics/Canvas;)V

    .line 216
    return-void
.end method

.method protected getStatesBitmap()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->states:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 130
    const-class v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 139
    const-class v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 122
    return-void
.end method

.method public setButtonDrawables(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    .line 171
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mBackgroundMode:I

    invoke-static {p1, p2, p3, v0}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->loadSkinDrawables(Landroid/content/Context;Landroid/util/AttributeSet;II)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 173
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x4

    aget-object v4, v0, v4

    const/4 v5, 0x3

    aget-object v5, v0, v5

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setButtonDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mCategoryColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 177
    :cond_1
    return-void
.end method

.method public setPartialSelection(Z)V
    .locals 3

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsPartialSelect:Z

    if-eq v0, p1, :cond_1

    .line 100
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsPartialModeEnabled:Z

    .line 101
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mIsPartialSelect:Z

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mContentPress:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcCheckBox;->mCategoryColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->setChecked(Z)V

    .line 113
    :cond_1
    return-void
.end method
