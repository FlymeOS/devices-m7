.class Lcom/htc/camera/effect/EffectPanelUI$12;
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
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$12;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$12;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->openUI()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1800(Lcom/htc/camera/effect/EffectPanelUI;)V

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$12;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->closeUI()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$200(Lcom/htc/camera/effect/EffectPanelUI;)V

    goto :goto_0
.end method
