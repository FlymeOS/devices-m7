.class final Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;
.super Lcom/htc/camera/mainbar/ExpandableMenuUI$IconDrawable;
.source "ExpandableMenuUI.java"


# instance fields
.field private m_IsSceneIconVisible:Z

.field private m_MenuIcon:Landroid/graphics/Bitmap;

.field private m_MenuIconPos:[I

.field private m_MenuSceneIconSize:Lcom/htc/camera/imaging/Size;

.field private m_SceneIcon:Landroid/graphics/Bitmap;

.field private m_SceneIconOffsetX:I

.field private m_SceneIconPos:[I

.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 186
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$IconDrawable;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/content/res/Resources;)V

    .line 189
    const v0, 0x7f0a0164

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIcon:Landroid/graphics/Bitmap;

    .line 193
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v3, 0x7f020077

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    .line 194
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v3, v2, 0x4

    sub-int/2addr v0, v3

    .line 195
    :goto_0
    new-instance v3, Lcom/htc/camera/imaging/Size;

    iget-object v4, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v3, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuSceneIconSize:Lcom/htc/camera/imaging/Size;

    .line 196
    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "menu scene icon width  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuSceneIconSize:Lcom/htc/camera/imaging/Size;

    invoke-virtual {v4}, Lcom/htc/camera/imaging/Size;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", menu icon width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIconPos:[I

    .line 198
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIconPos:[I

    aput v1, v0, v1

    .line 199
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIconPos:[I

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 200
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIconPos:[I

    .line 201
    iput-boolean v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_IsSceneIconVisible:Z

    .line 202
    mul-int/lit8 v0, v2, -0x2

    iput v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIconOffsetX:I

    .line 203
    return-void

    :cond_0
    move v0, v1

    .line 194
    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIconPos:[I

    aget v1, v1, v4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIconPos:[I

    aget v2, v2, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_IsSceneIconVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIconPos:[I

    aget v1, v1, v4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIconPos:[I

    aget v2, v2, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 286
    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_IsSceneIconVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuSceneIconSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_IsSceneIconVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuSceneIconSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getMenuIconWidth()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScene(Lcom/htc/camera/effect/EffectBase;)V
    .locals 3

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$200(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setScene() - scene is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScene() - scene = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->getMenuIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setSceneIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$100(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSceneIconDrawable() - drawable is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setSceneIconVisibile(Z)V
    .locals 0

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_IsSceneIconVisible:Z

    .line 263
    return-void
.end method

.method public setUIRotation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUIRotation() - rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIconPos:[I

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIconPos:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 255
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIconPos:[I

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIconPos:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIconOffsetX:I

    add-int/2addr v1, v2

    aput v1, v0, v3

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIconPos:[I

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIconPos:[I

    aget v2, v0, v3

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_1
    sub-int v0, v2, v0

    iget v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_SceneIconOffsetX:I

    sub-int/2addr v0, v2

    aput v0, v1, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->m_MenuIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_1

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
