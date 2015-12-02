.class Lcom/htc/camera/capturemode/CaptureMode$4;
.super Ljava/lang/Object;
.source "CaptureMode.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/CaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/CaptureMode;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureMode$4;->this$0:Lcom/htc/camera/capturemode/CaptureMode;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode$4;->this$0:Lcom/htc/camera/capturemode/CaptureMode;

    # getter for: Lcom/htc/camera/capturemode/CaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureMode;->access$400(Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/effect/EffectContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectContext;->clearEffectsAndScenes()V

    .line 208
    :cond_0
    return-void
.end method
