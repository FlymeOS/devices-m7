.class Lcom/htc/camera/component/QuickTipsUI$6;
.super Ljava/lang/Object;
.source "QuickTipsUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/QuickTipsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/QuickTipsUI;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$6;->this$0:Lcom/htc/camera/component/QuickTipsUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$6;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$200(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$6;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$200(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$6;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$200(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isSingleShotMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$6;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$200(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$6;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP2:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$6;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showOneCamQuickTips(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$100(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 327
    :cond_0
    return-void
.end method
