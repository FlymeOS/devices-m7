.class Lcom/htc/camera/component/QuickTipsUI$9;
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
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/QuickTipsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/QuickTipsUI;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$9;->this$0:Lcom/htc/camera/component/QuickTipsUI;

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
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$9;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$1000(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI$9;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;
    invoke-static {v1}, Lcom/htc/camera/component/QuickTipsUI;->access$1100(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$9;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showSettingsQuickTips(ZZ)V
    invoke-static {v0, v2, v3}, Lcom/htc/camera/component/QuickTipsUI;->access$1200(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$9;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$1000(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI$9;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # getter for: Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;
    invoke-static {v1}, Lcom/htc/camera/component/QuickTipsUI;->access$1300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 367
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$9;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showSettingsAutoSelfieQuickTips(ZZ)V
    invoke-static {v0, v2, v3}, Lcom/htc/camera/component/QuickTipsUI;->access$1400(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 369
    :cond_1
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_2

    .line 370
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$9;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v3, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 372
    :cond_2
    return-void
.end method
