.class final Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;
.super Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;
.source "ExposureMainBarItem.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/ExposureMainBarItem;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;-><init>(Lcom/htc/camera/mainbar/MainBarItem;Landroid/content/res/Resources;)V

    .line 48
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Res:Landroid/content/res/Resources;

    const v1, 0x7f020074

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 49
    return-void
.end method


# virtual methods
.method public setExposure(F)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$000(Lcom/htc/camera/mainbar/ExposureMainBarItem;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposure() - exposure = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 58
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$100(Lcom/htc/camera/mainbar/ExposureMainBarItem;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020060

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 79
    :goto_0
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    :cond_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$100(Lcom/htc/camera/mainbar/ExposureMainBarItem;)[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020066

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$100(Lcom/htc/camera/mainbar/ExposureMainBarItem;)[F

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    .line 63
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02005f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$100(Lcom/htc/camera/mainbar/ExposureMainBarItem;)[F

    move-result-object v1

    const/4 v2, 0x3

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_4

    .line 65
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020065

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$100(Lcom/htc/camera/mainbar/ExposureMainBarItem;)[F

    move-result-object v1

    const/4 v2, 0x4

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_5

    .line 67
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020061

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 68
    :cond_5
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$100(Lcom/htc/camera/mainbar/ExposureMainBarItem;)[F

    move-result-object v1

    const/4 v2, 0x5

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_6

    .line 69
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02005d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 70
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$100(Lcom/htc/camera/mainbar/ExposureMainBarItem;)[F

    move-result-object v1

    const/4 v2, 0x6

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_7

    .line 71
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020062

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 72
    :cond_7
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$100(Lcom/htc/camera/mainbar/ExposureMainBarItem;)[F

    move-result-object v1

    const/4 v2, 0x7

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_8

    .line 73
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02005e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 74
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_ExposureValue:[F
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$100(Lcom/htc/camera/mainbar/ExposureMainBarItem;)[F

    move-result-object v1

    const/16 v2, 0x8

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_9

    .line 75
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020063

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 77
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method
