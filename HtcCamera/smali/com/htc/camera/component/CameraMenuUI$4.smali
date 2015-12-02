.class Lcom/htc/camera/component/CameraMenuUI$4;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$4;->this$0:Lcom/htc/camera/component/CameraMenuUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$4;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$000(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-ne v0, v1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$4;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->sendCloseMenuMessage(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$3100(Lcom/htc/camera/component/CameraMenuUI;Z)V

    .line 726
    :cond_0
    return-void
.end method
