.class final Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconDrawable;
.super Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;
.source "EffectMainBarItem.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/EffectMainBarItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/EffectMainBarItem;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconDrawable;->this$0:Lcom/htc/camera/mainbar/EffectMainBarItem;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;-><init>(Lcom/htc/camera/mainbar/MainBarItem;Landroid/content/res/Resources;)V

    .line 53
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v1, 0x7f020081

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 54
    return-void
.end method
