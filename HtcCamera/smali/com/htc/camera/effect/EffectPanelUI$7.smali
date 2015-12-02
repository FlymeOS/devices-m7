.class Lcom/htc/camera/effect/EffectPanelUI$7;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/effect/EffectBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$7;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$7;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1200(Lcom/htc/camera/effect/EffectPanelUI;)V

    .line 401
    return-void
.end method
