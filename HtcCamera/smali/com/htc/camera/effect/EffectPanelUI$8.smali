.class Lcom/htc/camera/effect/EffectPanelUI$8;
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
        "Ljava/util/List",
        "<",
        "Lcom/htc/camera/effect/EffectBase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$8;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

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
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;>;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$8;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1700(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/effect/EffectPanelAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$8;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1700(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/effect/EffectPanelAdapter;

    move-result-object v1

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/htc/camera/effect/EffectPanelAdapter;->updateEffectList(Ljava/util/List;)V

    .line 410
    :cond_0
    return-void
.end method
