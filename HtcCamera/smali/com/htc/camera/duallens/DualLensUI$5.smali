.class Lcom/htc/camera/duallens/DualLensUI$5;
.super Ljava/lang/Object;
.source "DualLensUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensUI;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensUI$5;->this$0:Lcom/htc/camera/duallens/DualLensUI;

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
            "Lcom/htc/camera/CameraMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$5;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    # invokes: Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensUI;->access$400(Lcom/htc/camera/duallens/DualLensUI;)V

    .line 180
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI$5;->this$0:Lcom/htc/camera/duallens/DualLensUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/duallens/DualLensUI;->m_IsBlocked:Z
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensUI;->access$502(Lcom/htc/camera/duallens/DualLensUI;Z)Z

    .line 182
    :cond_0
    return-void
.end method
