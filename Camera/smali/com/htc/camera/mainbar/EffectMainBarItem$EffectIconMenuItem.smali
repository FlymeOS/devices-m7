.class Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;
.super Lcom/htc/camera/menu/IconMenuItem;
.source "EffectMainBarItem.java"


# instance fields
.field private effect:Lcom/htc/camera/effect/EffectBase;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;

    invoke-virtual {p2}, Lcom/htc/camera/effect/EffectBase;->getMenuIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/htc/camera/effect/EffectBase;->getTitleRes()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V

    .line 63
    iput-object p2, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;->effect:Lcom/htc/camera/effect/EffectBase;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;->effect:Lcom/htc/camera/effect/EffectBase;

    return-object v0
.end method
