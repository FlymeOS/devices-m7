.class Lcom/htc/camera/zoe/ZoeUI$16;
.super Lcom/htc/camera/trigger/Trigger;
.source "ZoeUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 5

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->initializeUI()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$3600(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 1098
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->showProgressIndicator()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$1500(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 1101
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2200(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/ICaptureBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1102
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    const-class v2, Lcom/htc/camera/ICaptureBar;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeUI;->access$3700(Lcom/htc/camera/zoe/ZoeUI;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureBar;

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;
    invoke-static {v1, v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2202(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/ICaptureBar;)Lcom/htc/camera/ICaptureBar;

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2200(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/ICaptureBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_ZoeCaptureIconHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$3800(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;
    invoke-static {v1}, Lcom/htc/camera/zoe/ZoeUI;->access$2200(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/ICaptureBar;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/ICaptureBar$CaptureButton;->Photo:Lcom/htc/camera/ICaptureBar$CaptureButton;

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    const v4, 0x7f020209

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/htc/camera/zoe/ZoeUI;->access$3900(Lcom/htc/camera/zoe/ZoeUI;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/camera/ICaptureBar;->setCaptureIcon(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_ZoeCaptureIconHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->access$3802(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$600(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->showIndicatorToast()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$4000(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 1117
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$16;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->showSDCardWarningToast()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$4100(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 1120
    :cond_2
    return-void
.end method
