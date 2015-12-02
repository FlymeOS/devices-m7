.class Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;
.super Lcom/htc/camera/menu/IconMenuItem;
.source "SceneMainBarItem.java"


# instance fields
.field private scene:Lcom/htc/camera/effect/EffectBase;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p2}, Lcom/htc/camera/effect/EffectBase;->getMenuIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/camera/effect/EffectBase;->getTitleRes()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V

    .line 77
    iput-object p2, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;

    return-object v0
.end method
