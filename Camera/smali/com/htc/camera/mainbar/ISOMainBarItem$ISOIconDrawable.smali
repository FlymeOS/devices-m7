.class final Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;
.super Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;
.source "ISOMainBarItem.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/ISOMainBarItem;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;-><init>(Lcom/htc/camera/mainbar/MainBarItem;Landroid/content/res/Resources;)V

    .line 54
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v1, 0x7f020072

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 55
    return-void
.end method


# virtual methods
.method public setISO(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ISOMainBarItem;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->access$000(Lcom/htc/camera/mainbar/ISOMainBarItem;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setISO() - iso = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 64
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020072

    iget-object v3, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 81
    :goto_0
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    :cond_0
    return-void

    .line 66
    :cond_1
    const-string v1, "ISO100"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02006d

    iget-object v3, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "ISO200"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02006f

    iget-object v3, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 70
    :cond_3
    const-string v1, "ISO400"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020070

    iget-object v3, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 72
    :cond_4
    const-string v1, "ISO800"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020071

    iget-object v3, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 74
    :cond_5
    const-string v1, "ISO1600"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02006e

    iget-object v3, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 77
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 78
    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$ISOIconDrawable;->this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ISOMainBarItem;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/mainbar/ISOMainBarItem;->access$100(Lcom/htc/camera/mainbar/ISOMainBarItem;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setISO() - iso = null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
