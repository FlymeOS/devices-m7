.class final Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;
.super Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;
.source "WhiteBalanceMainBarItem.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;-><init>(Lcom/htc/camera/mainbar/MainBarItem;Landroid/content/res/Resources;)V

    .line 95
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v1, 0x7f02004e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method


# virtual methods
.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->access$200(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBalance() - white balance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 105
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02004e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 126
    :goto_0
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    :cond_0
    return-void

    .line 107
    :cond_1
    const-string v1, "cloudy-daylight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020058

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 109
    :cond_2
    const-string v1, "daylight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020059

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 111
    :cond_3
    const-string v1, "fluorescent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02006a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 113
    :cond_4
    const-string v1, "incandescent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 114
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02008a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 115
    :cond_5
    const-string v1, "shade"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02004c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 117
    :cond_6
    const-string v1, "twilight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f02008c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 119
    :cond_7
    const-string v1, "warm-fluorescent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f020075

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 122
    :cond_8
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 123
    iget-object v1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$WhiteBalancePopupIconDrawable;->this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->access$300(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setWhiteBalance() - iso = null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
