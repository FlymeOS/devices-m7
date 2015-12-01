.class Lcom/htc/camera/component/AutoSceneUI$6;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoSceneUI;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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
    .line 303
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    # getter for: Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneUI;->access$200(Lcom/htc/camera/component/AutoSceneUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - Effect change, but not photo mode, return."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    # getter for: Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneUI;->access$300(Lcom/htc/camera/component/AutoSceneUI;)Lcom/htc/camera/effect/IEffectManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    # getter for: Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneUI;->access$400(Lcom/htc/camera/component/AutoSceneUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - Disable Smart Scene Detection by selecting Effect"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    # getter for: Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneUI;->access$100(Lcom/htc/camera/component/AutoSceneUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoSceneUI;->exitSmartSceneDetectMode()V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    # getter for: Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneUI;->access$500(Lcom/htc/camera/component/AutoSceneUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - Enable Smart Scene Detection by selecting None Effect"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    # getter for: Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneUI;->access$100(Lcom/htc/camera/component/AutoSceneUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Normal:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoSceneUI;->enterSmartSceneDetectMode()V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI$6;->this$0:Lcom/htc/camera/component/AutoSceneUI;

    # invokes: Lcom/htc/camera/component/AutoSceneUI;->checkScene()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneUI;->access$000(Lcom/htc/camera/component/AutoSceneUI;)V

    goto :goto_0
.end method
