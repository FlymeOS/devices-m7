.class Lcom/htc/camera/effect/EffectPanelUI$4;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$4;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$4;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->closeUI()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$200(Lcom/htc/camera/effect/EffectPanelUI;)V

    .line 287
    return-void
.end method
