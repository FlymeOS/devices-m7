.class Lcom/htc/camera/component/CameraComponent$1;
.super Ljava/lang/Object;
.source "CameraComponent.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraComponent;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraComponent;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/camera/component/CameraComponent$1;->this$0:Lcom/htc/camera/component/CameraComponent;

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
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 85
    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent$1;->this$0:Lcom/htc/camera/component/CameraComponent;

    # getter for: Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v1}, Lcom/htc/camera/component/CameraComponent;->access$000(Lcom/htc/camera/component/CameraComponent;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    .line 86
    iget-object v2, p0, Lcom/htc/camera/component/CameraComponent$1;->this$0:Lcom/htc/camera/component/CameraComponent;

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/component/CameraComponent;->onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent$1;->this$0:Lcom/htc/camera/component/CameraComponent;

    # getter for: Lcom/htc/camera/component/CameraComponent;->m_RotationFlags:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraComponent;->access$100(Lcom/htc/camera/component/CameraComponent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 91
    iget-object v1, p0, Lcom/htc/camera/component/CameraComponent$1;->this$0:Lcom/htc/camera/component/CameraComponent;

    # getter for: Lcom/htc/camera/component/CameraComponent;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v1}, Lcom/htc/camera/component/CameraComponent;->access$000(Lcom/htc/camera/component/CameraComponent;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    .line 92
    iget-object v2, p0, Lcom/htc/camera/component/CameraComponent$1;->this$0:Lcom/htc/camera/component/CameraComponent;

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/component/CameraComponent;->onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
