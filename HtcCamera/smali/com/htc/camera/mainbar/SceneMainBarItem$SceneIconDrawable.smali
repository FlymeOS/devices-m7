.class final Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;
.super Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;
.source "SceneMainBarItem.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/SceneMainBarItem;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;->this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;-><init>(Lcom/htc/camera/mainbar/MainBarItem;Landroid/content/res/Resources;)V

    .line 53
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;->m_Res:Landroid/content/res/Resources;

    const v1, 0x7f02004d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    .line 54
    return-void
.end method


# virtual methods
.method public setScene(Lcom/htc/camera/effect/EffectBase;)V
    .locals 3

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;->this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->access$000(Lcom/htc/camera/mainbar/SceneMainBarItem;)Ljava/lang/String;

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

    .line 65
    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->getMenuIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
