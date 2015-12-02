.class Lcom/htc/camera/zoe/ZoeUI$9;
.super Ljava/lang/Object;
.source "ZoeUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$9;->this$0:Lcom/htc/camera/zoe/ZoeUI;

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
    .line 926
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$9;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$9;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$9;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_BaseLayout:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$1300(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v2

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v3, v0}, Lcom/htc/camera/zoe/ZoeUI;->access$1400(Lcom/htc/camera/zoe/ZoeUI;Landroid/view/View;ZZ)V

    .line 929
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$9;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->showProgressIndicator()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$1500(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 931
    :cond_0
    return-void
.end method
