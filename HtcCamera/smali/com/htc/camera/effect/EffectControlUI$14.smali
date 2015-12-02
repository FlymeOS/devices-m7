.class Lcom/htc/camera/effect/EffectControlUI$14;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/htc/camera/widget/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$14;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCenterChanged(Lcom/htc/camera/widget/EffectControlCircle;Landroid/graphics/Point;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$14;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->onCenterPointChanged(Landroid/graphics/Point;)V
    invoke-static {v0, p2}, Lcom/htc/camera/effect/EffectControlUI;->access$1000(Lcom/htc/camera/effect/EffectControlUI;Landroid/graphics/Point;)V

    .line 345
    return-void
.end method
