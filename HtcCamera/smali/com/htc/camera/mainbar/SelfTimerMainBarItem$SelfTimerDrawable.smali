.class final Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;
.super Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;
.source "SelfTimerMainBarItem.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;-><init>(Lcom/htc/camera/mainbar/MainBarItem;Landroid/content/res/Resources;)V

    .line 47
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Res:Landroid/content/res/Resources;

    const v1, 0x7f02004d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method


# virtual methods
.method public setSelfTimer(I)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->access$000(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelfTimer() - time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 57
    if-nez p1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020044

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 70
    :goto_0
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 75
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->drawShadowOnIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    :cond_1
    return-void

    .line 59
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020042

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 63
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 64
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020043

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 65
    :cond_4
    const/16 v1, 0xa

    if-ne p1, v1, :cond_5

    .line 66
    iget-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020041

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 68
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
