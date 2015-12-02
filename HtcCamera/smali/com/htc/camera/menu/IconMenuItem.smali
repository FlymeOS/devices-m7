.class public Lcom/htc/camera/menu/IconMenuItem;
.super Lcom/htc/camera/widget/ItemBase;
.source "IconMenuItem.java"


# instance fields
.field private m_Context:Lcom/htc/camera/HTCCamera;

.field private m_Height:I

.field protected m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

.field private m_IconDrawable:Landroid/graphics/drawable/Drawable;

.field private m_IconFilter:Landroid/widget/ImageView;

.field private m_IconFilterDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

.field private m_IsFilterVisible:Z

.field private m_IsIndicatorVisible:Z

.field private m_IsSelected:Z

.field private m_MainContainer:Landroid/widget/RelativeLayout;

.field private m_ParentIconMenu:Lcom/htc/camera/menu/IconMenu;

.field protected m_RotationDegree:I

.field private m_Width:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/camera/widget/ItemBase;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    .line 54
    iput-object p2, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p0, p3}, Lcom/htc/camera/menu/IconMenuItem;->setTitle(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/camera/widget/ItemBase;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    .line 46
    iput-object p2, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p0, p3}, Lcom/htc/camera/menu/IconMenuItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/menu/IconMenuItem;)Lcom/htc/camera/menu/IconMenu;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_ParentIconMenu:Lcom/htc/camera/menu/IconMenu;

    return-object v0
.end method

.method private setupUI()V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/16 v9, 0x8

    const/4 v8, -0x2

    const/4 v7, 0x1

    .line 171
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_MainContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0456

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Width:I

    .line 175
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0457

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Height:I

    .line 176
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_MainContainer:Landroid/widget/RelativeLayout;

    .line 177
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Width:I

    iget v2, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    iget-object v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_MainContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0458

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 182
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0459

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 183
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 185
    iget v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Width:I

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    .line 186
    iget v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Height:I

    iget-object v2, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 187
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenuItem;->TAG:Ljava/lang/String;

    const-string v3, "setupUI() - DrawableWidth: "

    iget-object v4, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", DrawableHeight: "

    iget-object v6, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenuItem;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setupUI() - Width: "

    aput-object v5, v3, v4

    iget v4, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string v5, ", Height: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, " paddingWidth: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, ", paddingHeight: "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    new-instance v2, Lcom/htc/camera/widget/ColorMultiplyImageView;

    iget-object v3, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/widget/ColorMultiplyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    .line 193
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    iget-object v3, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v3, v2}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v2, v1, v0, v1, v0}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setPadding(IIII)V

    .line 197
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    new-instance v1, Lcom/htc/camera/menu/IconMenuItem$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/menu/IconMenuItem$1;-><init>(Lcom/htc/camera/menu/IconMenuItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v7}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setFocusable(Z)V

    .line 208
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {p0}, Lcom/htc/camera/menu/IconMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v0, Lcom/htc/camera/widget/ColorMultiplyDrawable;

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    iget-object v2, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/widget/ColorMultiplyDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconFilterDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    .line 214
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a045b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 215
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconFilter:Landroid/widget/ImageView;

    .line 216
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 217
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconFilter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconFilter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconFilterDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconFilter:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenuItem;->updateIconFilterVisibility()V

    .line 224
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_MainContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_MainContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconFilter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IsIndicatorVisible:Z

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;

    invoke-virtual {v0, v7}, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->setIndicatorImageVisibility(Z)V

    .line 230
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_3
    return-void
.end method

.method private updateIconFilterVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconFilter:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IsSelected:Z

    if-eqz v0, :cond_2

    .line 250
    iget-boolean v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IsFilterVisible:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconFilter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    goto :goto_0

    .line 257
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IsFilterVisible:Z

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconFilter:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getTitle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/htc/camera/menu/IconMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/htc/camera/widget/ItemBase;->getTitle()Ljava/lang/Object;

    move-result-object v0

    .line 73
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_MainContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_Width:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IsSelected:Z

    return v0
.end method

.method public setFilterVisibility(Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IsFilterVisible:Z

    .line 109
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    return-void
.end method

.method public setIndicatorVisibility(Z)V
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IsIndicatorVisible:Z

    .line 143
    return-void
.end method

.method public setParentView(Lcom/htc/camera/menu/IconMenu;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_ParentIconMenu:Lcom/htc/camera/menu/IconMenu;

    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenuItem;->setupUI()V

    .line 164
    :cond_0
    return-void
.end method

.method public setRotationDegree(I)V
    .locals 2

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_RotationDegree:I

    .line 151
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IconButton:Lcom/htc/camera/widget/ColorMultiplyImageView;

    iget v1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_RotationDegree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setRotation(F)V

    .line 153
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IsSelected:Z

    if-eq v0, p1, :cond_1

    .line 118
    iput-boolean p1, p0, Lcom/htc/camera/menu/IconMenuItem;->m_IsSelected:Z

    .line 121
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_ParentIconMenu:Lcom/htc/camera/menu/IconMenu;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem;->m_ParentIconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v0, p0}, Lcom/htc/camera/menu/IconMenu;->updateSelectedItem(Lcom/htc/camera/menu/IconMenuItem;)V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenuItem;->updateIconFilterVisibility()V

    .line 127
    :cond_1
    return-void
.end method
