.class Lcom/htc/camera/component/PortraitSceneUI$1;
.super Ljava/lang/Object;
.source "PortraitSceneUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/PortraitSceneUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PortraitSceneUI;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/camera/component/PortraitSceneUI$1;->this$0:Lcom/htc/camera/component/PortraitSceneUI;

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
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lcom/htc/camera/component/PortraitSceneUI$1;->this$0:Lcom/htc/camera/component/PortraitSceneUI;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1, v0}, Lcom/htc/camera/component/PortraitSceneUI;->onEffectApplied(Lcom/htc/camera/effect/EffectBase;)V

    .line 172
    return-void
.end method
