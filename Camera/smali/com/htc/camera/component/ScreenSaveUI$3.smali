.class Lcom/htc/camera/component/ScreenSaveUI$3;
.super Ljava/lang/Object;
.source "ScreenSaveUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ScreenSaveUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ScreenSaveUI;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/camera/component/ScreenSaveUI$3;->this$0:Lcom/htc/camera/component/ScreenSaveUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 98
    iget-object v0, p0, Lcom/htc/camera/component/ScreenSaveUI$3;->this$0:Lcom/htc/camera/component/ScreenSaveUI;

    iget-object v1, p0, Lcom/htc/camera/component/ScreenSaveUI$3;->this$0:Lcom/htc/camera/component/ScreenSaveUI;

    iget-object v3, p0, Lcom/htc/camera/component/ScreenSaveUI$3;->this$0:Lcom/htc/camera/component/ScreenSaveUI;

    invoke-virtual {v3}, Lcom/htc/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/HTCCamera;->isSuspendInSightSeeing:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/htc/camera/component/ScreenSaveUI;->SCREEN_DELAY_RESETCHECK_DELAY_SIGHTSEEING:I
    invoke-static {}, Lcom/htc/camera/component/ScreenSaveUI;->access$100()I

    move-result v3

    int-to-long v3, v3

    :goto_0
    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ScreenSaveUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 99
    return-void

    .line 98
    :cond_0
    const-wide/32 v3, 0x1d0d8

    goto :goto_0
.end method
