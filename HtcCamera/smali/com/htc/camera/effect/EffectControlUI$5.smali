.class Lcom/htc/camera/effect/EffectControlUI$5;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$5;->this$0:Lcom/htc/camera/effect/EffectControlUI;

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
    .line 213
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$5;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->showControls()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$400(Lcom/htc/camera/effect/EffectControlUI;)V

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$5;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->hideControls()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$100(Lcom/htc/camera/effect/EffectControlUI;)V

    goto :goto_0
.end method
