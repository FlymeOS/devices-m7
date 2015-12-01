.class Lcom/htc/camera/component/CameraMenuUI$14;
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
    .line 830
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$14;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 834
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$14;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$000(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-ne v0, v1, :cond_0

    .line 836
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$14;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$14;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$3900(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/lib1/cc/widget/HtcIconButton;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/camera/component/CameraMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$14;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$14;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$3900(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/lib1/cc/widget/HtcIconButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/component/CameraMenuUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
