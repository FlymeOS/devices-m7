.class Lcom/htc/camera/effect/EffectControlUI$12;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$12;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI$12;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->updateEffectCircleBounds(Landroid/graphics/Rect;)V
    invoke-static {v1, v0}, Lcom/htc/camera/effect/EffectControlUI;->access$900(Lcom/htc/camera/effect/EffectControlUI;Landroid/graphics/Rect;)V

    .line 290
    return-void
.end method
