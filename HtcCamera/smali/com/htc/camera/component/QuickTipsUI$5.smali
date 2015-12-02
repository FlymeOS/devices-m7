.class Lcom/htc/camera/component/QuickTipsUI$5;
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
    .line 277
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$200(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$200(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingEvenShown:Z
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$400(Lcom/htc/camera/component/QuickTipsUI;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    .line 285
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP2:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP3:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-ne v0, v1, :cond_2

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v2, v3}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    goto :goto_0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$200(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingEvenShown:Z
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$400(Lcom/htc/camera/component/QuickTipsUI;)Z

    move-result v0

    if-eq v0, v3, :cond_1

    .line 294
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP2:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP3:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-ne v0, v1, :cond_5

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v2, v3}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 297
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showStopRecordingQuickTips(ZZ)V
    invoke-static {v0, v3, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$500(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    goto :goto_0

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 301
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showStopRecordingQuickTips(ZZ)V
    invoke-static {v0, v3, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$500(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    goto :goto_0

    .line 305
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showStopRecordingQuickTips(ZZ)V
    invoke-static {v0, v2, v3}, Lcom/htc/camera/component/QuickTipsUI;->access$500(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 306
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP2:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP3:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-ne v0, v1, :cond_8

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v2, v3}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 308
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$5;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v3, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    goto :goto_0
.end method
